#include "widget.h"
#include "ui_widget.h"
struct Read_from_Plc			//定义结构体
{
    short intVal[7];			//整型
    bool  boolVal[9];			//布尔型
}rfp;

struct Writie_to_Plc			//定义结构体
{
    short intVal[4];			//整型
    bool  boolVal[9];			//布尔型
}wtp;
Widget::Widget(QWidget *parent)
    : QWidget(parent)
    , ui(new Ui::Widget)
{
    ui->setupUi(this);
    modbusClient = new QModbusTcpClient(this);
    if (nullptr == modbusClient )
    {
        qDebug() << "无法创建 Modbus 客户端";
    }
    else
    {
        connect(modbusClient, &QModbusClient::stateChanged,this, &Widget::onModbusStateChanged);
    }
}

Widget::~Widget()
{
    if (modbusClient)
    {
        modbusClient->disconnectDevice();
    }
    delete modbusClient;
    delete ui;
}

void Widget::on_btn_get_plc_state_clicked()
{
    readData();
}



void Widget::onModbusStateChanged(int state)
{
    //判断Modbus设备连接是否处于连接状态
    if (state == QModbusDevice::UnconnectedState)
    {
        qDebug() << "TCP Client连接到Server 未连接";
        ui->lineEdit_plc_connect_status->setText("未连接");
        ui->btn_connect_plc->setText(tr("连接"));

    }
    else if (state == QModbusDevice::ConnectingState)
    {
        qDebug() << "TCP Client正在连接Server";
    }
    else if (state == QModbusDevice::ConnectedState)
    {
        qDebug() << "TCP Client已经连接到Server";
        ui->lineEdit_plc_connect_status->setText("已连接");
        ui->btn_connect_plc->setText(tr("断开连接"));

    }
    else if (state == QModbusDevice::ClosingState)
    {
        qDebug() << "设备已经被关闭";
    }
}

void Widget::on_btn_connect_plc_clicked()
{
    const QString qv= (ui->lineEdit_plc_addr->text()) ;
    qDebug() <<ui->lineEdit_plc_addr->text();
    // 连接到Modbus服务器
    if (!modbusClient)
    {
        return;
    }
    if (modbusClient->state() != QModbusDevice::ConnectedState)
    {
        modbusClient->setConnectionParameter(QModbusTcpClient::NetworkAddressParameter,ui->lineEdit_plc_addr->text()); // 服务器IP
        modbusClient->setConnectionParameter(QModbusTcpClient::NetworkPortParameter, 510); // 默认Modbus TCP端口

        //设置超时时间
        modbusClient->setTimeout(1000); //1秒
        //设置失败重试次数
        modbusClient->setNumberOfRetries(3);

        //连接到服务端
        bool ok = modbusClient->connectDevice();
        if (ok)
        {
            ui->lineEdit_plc_connect_status->setText("已连接");
            _pTimerUpdate = new QTimer();
            //connect(_pTimerUpdate, SIGNAL(timeout()), this, SLOT(get_plc_state_by_modbus()));
            //_pTimerUpdate->start(3000);

        }
    }
    else
    {
        //断开连接
        modbusClient->disconnectDevice();
        ui->btn_connect_plc->setText(tr("连接"));
    }

}

void Widget::readData()
{
    // 读取整型数据 (假设地址 0 和 1 存储 16 位整型)
    QModbusDataUnit readUnit1(QModbusDataUnit::HoldingRegisters, 2769, 100);  // 地址1，1个寄存器
    auto reply = modbusClient->sendReadRequest(readUnit1, 0x1);  // 设备地址为 1
    if(nullptr==reply)
    {
        qDebug() << "读取数据失败";
    }
    else
    {
        qDebug() << "读取数据成功";
        if(!reply->isFinished())
        {
            qDebug() << "!reply->isFinished()";
            connect(reply, &QModbusReply::finished, this, &Widget::onReadFinished);
        }
        else
        {
            qDebug() << "reply->isFinished()";
        }
    }


}

void Widget::writeData()
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 5, 2);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1234);  // 设置整型值
    writeUnit.setValue(1, 6543);  // 设置整型值的第二部分
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);
    } else {
        qDebug() << "Failed to send write request for integer.";
    }

    // 写入字符数据 (假设地址 6 存储字符数据)
    QModbusDataUnit writeCharUnit(QModbusDataUnit::HoldingRegisters, 6, 1);  // 地址6，1个寄存器
    writeCharUnit.setValue(0, static_cast<quint16>('B'));  // 设置字符 'B'
    reply = modbusClient->sendWriteRequest(writeCharUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);
    } else {
        qDebug() << "Failed to send write request for character.";
    }

    // 写入字符串数据 (假设地址 7 和 8 存储字符串数据)
    QModbusDataUnit writeStringUnit(QModbusDataUnit::HoldingRegisters, 7, 2);  // 地址7，2个寄存器
    QByteArray str = "Hello";
    for (int i = 0; i < str.size() && i < 4; ++i) {
        writeStringUnit.setValue(i, static_cast<quint16>(str[i]));  // 将字符转换为 16 位
    }
    reply = modbusClient->sendWriteRequest(writeStringUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);
    } else {
        qDebug() << "Failed to send write request for string.";
    }
}

void Widget::onReadFinished()
{
    QModbusReply *reply = qobject_cast<QModbusReply *>(sender());
    if (!reply)

    {
        qDebug() << "REply erro";
        return;
    }

    // 处理读取的Modbus数据
    if (reply->error() == QModbusDevice::NoError)
    {
        const QModbusDataUnit unit = reply->result();

        // 电机1

        if(unit.value(3)) // 正限位
        {
            ui->lineEdit_AxiPosLimit_1->setText("就绪");
        }
        else
        {
            ui->lineEdit_AxiPosLimit_1->setText("未就绪");
        }
        if(unit.value(4))   // 负限位
        {
            ui->lineEdit_AxiNegLimit_1->setText("触发");
        }
        else
        {
            ui->lineEdit_AxiNegLimit_1->setText("未触发");
        }

        ui->lineEdit_AxiStatus_1->setText(QString::number(unit.value(5))); // 轴的当前位置

        if(unit.value(7))   // 轴的使能状态
        {
            ui->lineEdit_Axi_Enable_1->setText("使能");
        }
        else
        {
            ui->lineEdit_Axi_Enable_1->setText("未使能");
        }

        // 电机2

        if(unit.value(11)) // 正限位
        {
            ui->lineEdit_AxiPosLimit_1->setText("就绪");
        }
        else
        {
            ui->lineEdit_AxiPosLimit_1->setText("未就绪");
        }
        if(unit.value(12))   // 负限位
        {
            ui->lineEdit_AxiNegLimit_1->setText("触发");
        }
        else
        {
            ui->lineEdit_AxiNegLimit_1->setText("未触发");
        }

        ui->lineEdit_AxiStatus_1->setText(QString::number(unit.value(13))); // 轴的当前位置

        if(unit.value(15))   // 轴的使能状态
        {
            ui->lineEdit_Axi_Enable_1->setText("使能");
        }
        else
        {
            ui->lineEdit_Axi_Enable_1->setText("未使能");
        }

        // 电机3

        if(unit.value(19)) // 正限位
        {
            ui->lineEdit_AxiPosLimit_1->setText("就绪");
        }
        else
        {
            ui->lineEdit_AxiPosLimit_1->setText("未就绪");
        }
        if(unit.value(20))   // 负限位
        {
            ui->lineEdit_AxiNegLimit_1->setText("触发");
        }
        else
        {
            ui->lineEdit_AxiNegLimit_1->setText("未触发");
        }

        ui->lineEdit_AxiStatus_1->setText(QString::number(unit.value(21))); // 轴的当前位置

        if(unit.value(23))   // 轴的使能状态
        {
            ui->lineEdit_Axi_Enable_1->setText("使能");
        }
        else
        {
            ui->lineEdit_Axi_Enable_1->setText("未使能");
        }

        // 电机4

        if(unit.value(27)) // 正限位
        {
            ui->lineEdit_AxiPosLimit_1->setText("就绪");
        }
        else
        {
            ui->lineEdit_AxiPosLimit_1->setText("未就绪");
        }
        if(unit.value(28))   // 负限位
        {
            ui->lineEdit_AxiNegLimit_1->setText("触发");
        }
        else
        {
            ui->lineEdit_AxiNegLimit_1->setText("未触发");
        }

        ui->lineEdit_AxiStatus_1->setText(QString::number(unit.value(29))); // 轴的当前位置

        if(unit.value(31))   // 轴的使能状态
        {
            ui->lineEdit_Axi_Enable_1->setText("使能");
        }
        else
        {
            ui->lineEdit_Axi_Enable_1->setText("未使能");
        }

        // 电机5

        if(unit.value(35)) // 正限位
        {
            ui->lineEdit_AxiPosLimit_1->setText("就绪");
        }
        else
        {
            ui->lineEdit_AxiPosLimit_1->setText("未就绪");
        }
        if(unit.value(36))   // 负限位
        {
            ui->lineEdit_AxiNegLimit_1->setText("触发");
        }
        else
        {
            ui->lineEdit_AxiNegLimit_1->setText("未触发");
        }

        ui->lineEdit_AxiStatus_1->setText(QString::number(unit.value(37))); // 轴的当前位置

        if(unit.value(39))   // 轴的使能状态
        {
            ui->lineEdit_Axi_Enable_1->setText("使能");
        }
        else
        {
            ui->lineEdit_Axi_Enable_1->setText("未使能");
        }


        // 气缸

        QString qO[39],qP[39],qN[39];
        qO[1]  = (!unit.value(40))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_1->setText(qO[1]);
        qP[1]  = (!unit.value(41))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_1->setText(qP[1]);
        qN[1]  = (!unit.value(42))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_1->setText(qN[1]);

        qO[2]  = (!unit.value(43))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_2->setText(qO[2]);
        qP[2]  = (!unit.value(44))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_2->setText(qP[2]);
        qN[2]  = (!unit.value(45))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_2->setText(qN[2]);

        qO[3]  = (!unit.value(46))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_3->setText(qO[3]);
        qP[3]  = (!unit.value(47))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_3->setText(qP[3]);
        qN[3]  = (!unit.value(48))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_3->setText(qN[3]);

        qO[4]  = (!unit.value(49))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_4->setText(qO[4]);
        qP[4]  = (!unit.value(50))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_4->setText(qP[4]);
        qN[4]  = (!unit.value(51))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_4->setText(qN[4]);

        qO[5]  = (!unit.value(52))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_5->setText(qO[5]);
        qP[5]  = (!unit.value(53))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_5->setText(qP[5]);
        qN[5]  = (!unit.value(54))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_5->setText(qN[5]);

        qO[6]  = (!unit.value(55))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_6->setText(qO[6]);
        qP[6]  = (!unit.value(56))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_6->setText(qP[6]);
        qN[6]  = (!unit.value(57))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_6->setText(qN[6]);

        qO[7]  = (!unit.value(58))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_7->setText(qO[7]);
        qP[7]  = (!unit.value(59))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_7->setText(qP[7]);
        qN[7]  = (!unit.value(60))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_7->setText(qN[7]);

        qO[8]  = (!unit.value(61))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_8->setText(qO[8]);
        qP[8]  = (!unit.value(62))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_8->setText(qP[8]);
        qN[8]  = (!unit.value(63))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_8->setText(qN[8]);

        qO[9]  = (!unit.value(64))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_9->setText(qO[9]);
        qP[9]  = (!unit.value(65))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_9->setText(qP[9]);
        qN[9]  = (!unit.value(66))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_9->setText(qN[9]);

        qO[10]  = (!unit.value(67))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_10->setText(qO[10]);
        qP[10]  = (!unit.value(68))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_10->setText(qP[10]);
        qN[10]  = (!unit.value(69))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_10->setText(qN[10]);

        qO[11]  = (!unit.value(70))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_11->setText(qO[11]);
        qP[11]  = (!unit.value(71))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_11->setText(qP[11]);
        qN[11]  = (!unit.value(72))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_11->setText(qN[11]);

        qO[12]  = (!unit.value(73))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_12->setText(qO[12]);
        qP[12]  = (!unit.value(74))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_12->setText(qP[12]);
        qN[12]  = (!unit.value(75))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_12->setText(qN[12]);

        qO[13]  = (!unit.value(76))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_13->setText(qO[13]);
        qP[13]  = (!unit.value(77))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_13->setText(qP[13]);
        qN[13]  = (!unit.value(78))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_13->setText(qN[13]);

        qO[14]  = (!unit.value(79))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_14->setText(qO[14]);
        qP[14]  = (!unit.value(80))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_14->setText(qP[14]);
        qN[14]  = (!unit.value(81))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_14->setText(qN[14]);

        qO[15]  = (!unit.value(82))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_15->setText(qO[15]);
        qP[15]  = (!unit.value(83))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_15->setText(qP[15]);
        qN[15]  = (!unit.value(84))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_15->setText(qN[15]);

        qO[16]  = (!unit.value(85))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_16->setText(qO[16]);
        qP[16]  = (!unit.value(86))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_16->setText(qP[16]);
        qN[16]  = (!unit.value(87))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_16->setText(qN[16]);

        qO[17]  = (!unit.value(88))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_17->setText(qO[17]);
        qP[17]  = (!unit.value(89))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_17->setText(qP[17]);
        qN[17]  = (!unit.value(90))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_17->setText(qN[17]);

        qO[18]  = (!unit.value(91))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_18->setText(qO[18]);
        qP[18]  = (!unit.value(92))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_18->setText(qP[18]);
        qN[18]  = (!unit.value(93))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_18->setText(qN[18]);

        qO[19]  = (!unit.value(94))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_19->setText(qO[19]);
        qP[19]  = (!unit.value(95))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_19->setText(qP[19]);
        qN[19]  = (!unit.value(96))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_19->setText(qN[19]);

        qO[20]  = (!unit.value(97))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_20->setText(qO[20]);
        qP[20]  = (!unit.value(98))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_20->setText(qP[20]);
        qN[20]  = (!unit.value(99))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_20->setText(qN[20]);

        qO[21]  = (!unit.value(100))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_21->setText(qO[21]);
        qP[21]  = (!unit.value(101))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_21->setText(qP[21]);
        qN[21]  = (!unit.value(102))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_21->setText(qN[21]);

        qO[22]  = (!unit.value(103))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_22->setText(qO[22]);
        qP[22]  = (!unit.value(104))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_22->setText(qP[22]);
        qN[22]  = (!unit.value(105))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_22->setText(qN[22]);

        qO[23]  = (!unit.value(106))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_23->setText(qO[23]);
        qP[23]  = (!unit.value(107))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_23->setText(qP[23]);
        qN[23]  = (!unit.value(108))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_23->setText(qN[23]);

        qO[24]  = (!unit.value(109))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_24->setText(qO[24]);
        qP[24]  = (!unit.value(110))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_24->setText(qP[24]);
        qN[24]  = (!unit.value(111))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_24->setText(qN[24]);

        qO[25]  = (!unit.value(112))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_25->setText(qO[25]);
        qP[25]  = (!unit.value(113))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_25->setText(qP[25]);
        qN[25]  = (!unit.value(114))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_25->setText(qN[25]);

        qO[26]  = (!unit.value(115))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_26->setText(qO[26]);
        qP[26]  = (!unit.value(116))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_26->setText(qP[26]);
        qN[26]  = (!unit.value(117))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_26->setText(qN[26]);

        qO[27]  = (!unit.value(118))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_27->setText(qO[27]);
        qP[27]  = (!unit.value(119))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_27->setText(qP[27]);
        qN[27]  = (!unit.value(120))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_27->setText(qN[27]);

        qO[28]  = (!unit.value(121))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_28->setText(qO[28]);
        qP[28]  = (!unit.value(122))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_28->setText(qP[28]);
        qN[28]  = (!unit.value(123))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_28->setText(qN[28]);

        qO[29]  = (!unit.value(124))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_29->setText(qO[29]);
        qP[29]  = (!unit.value(125))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_29->setText(qP[29]);
        qN[29]  = (!unit.value(126))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_29->setText(qN[29]);

        qO[30]  = (!unit.value(127))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_30->setText(qO[30]);
        qP[30]  = (!unit.value(128))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_30->setText(qP[30]);
        qN[30]  = (!unit.value(129))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_30->setText(qN[30]);

        qO[31]  = (!unit.value(130))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_31->setText(qO[31]);
        qP[31]  = (!unit.value(131))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_31->setText(qP[31]);
        qN[31]  = (!unit.value(132))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_31->setText(qN[31]);

        qO[32]  = (!unit.value(133))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_32->setText(qO[32]);
        qP[32]  = (!unit.value(134))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_32->setText(qP[32]);
        qN[32]  = (!unit.value(135))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_32->setText(qN[32]);

        qO[33]  = (!unit.value(136))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_33->setText(qO[33]);
        qP[33]  = (!unit.value(137))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_33->setText(qP[33]);
        qN[33]  = (!unit.value(138))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_33->setText(qN[33]);

        qO[34]  = (!unit.value(139))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_34->setText(qO[34]);
        qP[34]  = (!unit.value(140))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_34->setText(qP[34]);
        qN[34]  = (!unit.value(141))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_34->setText(qN[34]);

        qO[35]  = (!unit.value(142))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_35->setText(qO[35]);
        qP[35]  = (!unit.value(143))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_35->setText(qP[35]);
        qN[35]  = (!unit.value(144))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_35->setText(qN[35]);

        qO[36]  = (!unit.value(145))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_36->setText(qO[36]);
        qP[36]  = (!unit.value(146))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_36->setText(qP[36]);
        qN[36]  = (!unit.value(147))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_36->setText(qN[36]);

        qO[37]  = (!unit.value(148))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_37->setText(qO[37]);
        qP[37]  = (!unit.value(149))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_37->setText(qP[37]);
        qN[37]  = (!unit.value(150))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_37->setText(qN[37]);

        qO[38]  = (!unit.value(151))? "已输出":"未输出";       ui->lineEdit_CylinderCmd_38->setText(qO[38]);
        qP[38]  = (!unit.value(152))? "已触发":"未触发"; ui->lineEdit_CylinderPosStatus_38->setText(qP[38]);
        qN[38]  = (!unit.value(153))? "已触发":"未触发"; ui->lineEdit_CylinderNegStatus_38->setText(qN[38]);


    }





    else
    {
        qDebug() << "Modbus read error:" << reply->errorString();
    }

    reply->deleteLater();
}

void Widget::onWriteFinished()
{
    QModbusReply *reply = qobject_cast<QModbusReply *>(sender());
    if (!reply) return;

    // 处理写入结果
    if (reply->error() == QModbusDevice::NoError) {
        qDebug() << "Write operation succeeded.";
    } else {
        qDebug() << "Modbus write error:" << reply->errorString();
    }

    reply->deleteLater();
}

void Widget::get_plc_state_by_modbus()
{
    QModbusDataUnit readUnit(QModbusDataUnit::HoldingRegisters, 42769, 15);  // 地址0，2个寄存器
    auto reply = modbusClient->sendReadRequest(readUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onReadFinished);
    } else {
        qDebug() << "Failed to send read request for integer.";
    }


}


// 轴1




void Widget::on_btn_Axi_SetPosition_1_clicked()         // 设置位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32923, 1);  // 地址5，2个寄存器

    writeUnit.setValue(0, ui->lineEdit_Axi_SetPosition_1->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

        QModbusDataUnit writeUnit2(QModbusDataUnit::HoldingRegisters, 32927, 1);  // 地址5，2个寄存器
        writeUnit2.setValue(0, 1);  // 设置整型值
        auto reply2 = modbusClient->sendWriteRequest(writeUnit2, 1);  // 设备地址为 1
        if (reply2)
        {
            connect(reply2, &QModbusReply::finished, this, &Widget::onWriteFinished);
        }
        else {
            qDebug() << "Failed to send write request for integer.";
        }

    } else {
        qDebug() << "Failed to send write request for integer.";
    }


}


void Widget::on_btn_Axi1_SetStandbyPosition_clicked()   // 设置待机位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32924, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi1_Standby->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi1_SetWorkPostion_1_clicked()     //  设置工作位置1
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32925, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi1_WorkStation_1->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi1_SetWorkPostion_2_clicked()     //  设置工作位置2
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32926, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi1_WorkStation_2->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}




void Widget::on_btn_Axi_SetVel_1_clicked()              // 设置速度
{

}

void Widget::on_btn_Axi_GoHome_1_clicked()          // 回原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32928, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_Enable_1_clicked()          //  使能
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32929, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_SetHome_1_clicked()         // 设置原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32930, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_Stop_1_clicked()        // 停止
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32931, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_btn_Axi_Reset_1_clicked()       // 复位
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32932, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


// 轴2



void Widget::on_btn_Axi_SetPosition_2_clicked()         // 设置位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32933, 1);  // 地址5，2个寄存器

    writeUnit.setValue(0, ui->lineEdit_Axi_SetPosition_2->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

        QModbusDataUnit writeUnit2(QModbusDataUnit::HoldingRegisters, 32938, 1);  // 地址5，2个寄存器
        writeUnit2.setValue(0, 1);  // 设置整型值
        auto reply2 = modbusClient->sendWriteRequest(writeUnit2, 1);  // 设备地址为 1
        if (reply2)
        {
            connect(reply2, &QModbusReply::finished, this, &Widget::onWriteFinished);
        }
        else {
            qDebug() << "Failed to send write request for integer.";
        }

    } else {
        qDebug() << "Failed to send write request for integer.";
    }


}


void Widget::on_btn_Axi2_SetStandbyPosition_clicked()   // 设置待机位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32934, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi1_Standby->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi2_SetWorkPostion_1_clicked()     //  设置工作位置1
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32935, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi2_WorkPostion_1->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi2_SetWorkPostion_2_clicked()     //  设置工作位置2
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32936, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi2_WorkPostion_2->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_btn_Axi2_SetWorkPostion_3_clicked() //  设置工作位置3
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32937, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi2_WorkPostion_3->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_SetVel_2_clicked()              // 设置速度
{

}

void Widget::on_btn_Axi_GoHome_2_clicked()          // 回原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32939, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_Enable_2_clicked()          //  使能
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32940, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_SetHome_2_clicked()         // 设置原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32941, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_Stop_2_clicked()        // 停止
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32942, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_btn_Axi_Reset_2_clicked()       // 复位
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32943, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}




// 轴3


void Widget::on_btn_Axi_SetPosition_3_clicked()         // 设置位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32944, 1);  // 地址5，2个寄存器

    writeUnit.setValue(0, ui->lineEdit_Axi_SetPosition_3->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

        QModbusDataUnit writeUnit2(QModbusDataUnit::HoldingRegisters, 32947, 1);  // 地址5，2个寄存器
        writeUnit2.setValue(0, 1);  // 设置整型值
        auto reply2 = modbusClient->sendWriteRequest(writeUnit2, 1);  // 设备地址为 1
        if (reply2)
        {
            connect(reply2, &QModbusReply::finished, this, &Widget::onWriteFinished);
        }
        else {
            qDebug() << "Failed to send write request for integer.";
        }

    } else {
        qDebug() << "Failed to send write request for integer.";
    }


}


void Widget::on_btn_Axi3_SetStandbyPosition_clicked()   // 设置待机位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32945, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi3_Standby->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi3_SetWorkPostion_1_clicked()     //  设置工作位置1
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32946, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi3_WorkStation_1->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_SetVel_3_clicked()              // 设置速度
{

}

void Widget::on_btn_Axi_GoHome_3_clicked()          // 回原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32948, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_Enable_3_clicked()          //  使能
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32949, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_SetHome_3_clicked()         // 设置原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32950, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_Stop_3_clicked()        // 停止
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32951, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_btn_Axi_Reset_3_clicked()       // 复位
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32952, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


// 轴4


void Widget::on_btn_Axi_SetPosition_4_clicked()         // 设置位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32953, 1);  // 地址5，2个寄存器

    writeUnit.setValue(0, ui->lineEdit_Axi_SetPosition_4->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

        QModbusDataUnit writeUnit2(QModbusDataUnit::HoldingRegisters, 32956, 1);  // 地址5，2个寄存器
        writeUnit2.setValue(0, 1);  // 设置整型值
        auto reply2 = modbusClient->sendWriteRequest(writeUnit2, 1);  // 设备地址为 1
        if (reply2)
        {
            connect(reply2, &QModbusReply::finished, this, &Widget::onWriteFinished);
        }
        else {
            qDebug() << "Failed to send write request for integer.";
        }

    } else {
        qDebug() << "Failed to send write request for integer.";
    }


}


void Widget::on_btn_Axi4_SetStandbyPosition_clicked()   // 设置待机位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32954, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi4__Standby->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi4_SetWorkPostion_1_clicked()     //  设置工作位置1
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32955, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi3_WorkStation_1->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_SetVel_4_clicked()              // 设置速度
{

}

void Widget::on_btn_Axi_GoHome_4_clicked()          // 回原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32957, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_Enable_4_clicked()          //  使能
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32958, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_SetHome_4_clicked()         // 设置原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32959, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_Stop_4_clicked()        // 停止
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32960, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_btn_Axi_Reset_4_clicked()       // 复位
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32961, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



// 轴5


void Widget::on_btn_Axi_SetPosition_5_clicked()         // 设置位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32962, 1);  // 地址5，2个寄存器

    writeUnit.setValue(0, ui->lineEdit_Axi_SetPosition_5->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

        QModbusDataUnit writeUnit2(QModbusDataUnit::HoldingRegisters, 32965, 1);  // 地址5，2个寄存器
        writeUnit2.setValue(0, 1);  // 设置整型值
        auto reply2 = modbusClient->sendWriteRequest(writeUnit2, 1);  // 设备地址为 1
        if (reply2)
        {
            connect(reply2, &QModbusReply::finished, this, &Widget::onWriteFinished);
        }
        else {
            qDebug() << "Failed to send write request for integer.";
        }

    } else {
        qDebug() << "Failed to send write request for integer.";
    }


}


void Widget::on_btn_Axi5_SetStandbyPosition_clicked()   // 设置待机位置
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32963, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi5__Standby->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi5_SetWorkPostion_1_clicked()     //  设置工作位置1
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32964, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, ui->lineEdit_Axi5_WorkStation_1->text().toUShort());  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_SetVel_5_clicked()              // 设置速度
{

}

void Widget::on_btn_Axi_GoHome_5_clicked()          // 回原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32966, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_Enable_5_clicked()          //  使能
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32967, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_SetHome_5_clicked()         // 设置原点
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32968, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_btn_Axi_Stop_5_clicked()        // 停止
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32969, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_btn_Axi_Reset_5_clicked()       // 复位
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 32970, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else {
        qDebug() << "Failed to send write request for integer.";
    }
}



void Widget::on_check_OpenCylinder_1_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2971, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_2_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2972, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_3_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2973, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_4_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2974, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_5_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2975, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_6_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2976, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_7_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2977, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_8_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2978, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_9_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2979, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}

void Widget::on_check_OpenCylinder_10_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2980, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_11_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2981, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_12_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2982, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_13_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2983, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_14_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2984, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_15_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2985, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_16_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2986, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_17_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2987, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_18_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2988, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_19_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2989, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_20_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2990, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}



void Widget::on_check_OpenCylinder_21_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2991, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_22_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2992, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_23_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2993, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_24_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2994, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_25_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2995, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_26_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2996, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_27_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2997, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_28_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2998, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_29_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 2999, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}

void Widget::on_check_OpenCylinder_30_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3000, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_check_OpenCylinder_31_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3001, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_32_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3002, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_33_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3003, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_34_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3004, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_35_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3005, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}
void Widget::on_check_OpenCylinder_36_clicked(bool checked) //气缸
{

    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3006, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }

}
void Widget::on_check_OpenCylinder_37_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3007, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_check_OpenCylinder_38_clicked(bool checked) //气缸
{
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3008, 1);  // 地址5，2个寄存器


    quint16 j = checked? 1:0;

    writeUnit.setValue(0, j);  // 设置整型值

    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply)
    {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    }
    else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

void Widget::on_btn_Axi_All_Start_clicked()
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3009, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_All_GoHome_clicked()
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3010, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_ALL_Reset_clicked()
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3011, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_All_Stop_clicked()
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3012, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}


void Widget::on_btn_Axi_All_GoPreparePosition_clicked()
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 3013, 1);  // 地址5，2个寄存器
    writeUnit.setValue(0, 1);  // 设置整型值
    auto reply = modbusClient->sendWriteRequest(writeUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onWriteFinished);

    } else
    {
        qDebug() << "Failed to send write request for integer.";
    }
}

