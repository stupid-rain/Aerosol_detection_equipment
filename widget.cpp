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
        modbusClient->setConnectionParameter(QModbusTcpClient::NetworkPortParameter, 502); // 默认Modbus TCP端口

        //设置超时时间
        modbusClient->setTimeout(1000); //1秒
        //设置失败重试次数
        modbusClient->setNumberOfRetries(3);

        //连接到服务端
        bool ok = modbusClient->connectDevice();
        if (!ok)
        {
            ui->lineEdit_plc_connect_status->setText("已连接");
            qDebug() << "modbusDevice->connectDevice failed";
        }
    }
    else
    {
        //断开连接
        modbusClient->disconnectDevice();
        ui->btn_connect_plc->setText(tr("连接"));

        // ui->btnCoil->setEnabled(false);
        // ui->btnDiscreteInputs->setEnabled(false);
        // ui->btnHoldingRegisters->setEnabled(false);
        // ui->btnInputRegisters->setEnabled(false);
    }

}

void Widget::readData()
{
    // 读取整型数据 (假设地址 0 和 1 存储 16 位整型)
    QModbusDataUnit readUnit(QModbusDataUnit::HoldingRegisters, 0, 2);  // 地址0，2个寄存器
    auto reply = modbusClient->sendReadRequest(readUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onReadFinished);
    } else {
        qDebug() << "Failed to send read request for integer.";
    }

    // 读取字符数据 (假设地址 2 存储字符数据)
    QModbusDataUnit readCharUnit(QModbusDataUnit::HoldingRegisters, 2, 1);  // 地址2，1个寄存器
    reply = modbusClient->sendReadRequest(readCharUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onReadFinished);
    } else {
        qDebug() << "Failed to send read request for character.";
    }

    // 读取字符串数据 (假设地址 3 和 4 存储字符串数据)
    QModbusDataUnit readStringUnit(QModbusDataUnit::HoldingRegisters, 3, 2);  // 地址3，2个寄存器
    reply = modbusClient->sendReadRequest(readStringUnit, 1);  // 设备地址为 1
    if (reply) {
        connect(reply, &QModbusReply::finished, this, &Widget::onReadFinished);
    } else {
        qDebug() << "Failed to send read request for string.";
    }
}

void Widget::writeData()
{
    // 写入整型数据 (假设地址 5 存储整型数据)
    QModbusDataUnit writeUnit(QModbusDataUnit::HoldingRegisters, 5, 2);  // 地址5，2个寄存器
    writeUnit.setValue(0, 123456);  // 设置整型值
    writeUnit.setValue(1, 654321);  // 设置整型值的第二部分
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
    if (reply->error() == QModbusDevice::NoError) {
        QModbusDataUnit unit = reply->result();
        if (unit.startAddress() == 0) {
            // 整型数据
            int value = unit.value(0) << 16 | unit.value(1); // 合并两个16位寄存器
            qDebug() << "Read Integer:" << value;
        } else if (unit.startAddress() == 2) {
            // 字符数据
            char character = static_cast<char>(unit.value(0));
            qDebug() << "Read Character:" << character;
        } else if (unit.startAddress() == 3) {
            // 字符串数据
            QString str = QString::fromUtf8(reinterpret_cast<const char *>(unit.values().data()), unit.valueCount());
            qDebug() << "Read String:" << str;
        }
    } else {
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








