#ifndef WIDGET_H
#define WIDGET_H

#include <QWidget>
#include <QDebug>//用于在控制台输出调试信息
#include <QMessageBox>
#include <Windows.h>
// #include "TcAdsDef.h"
// #include "TcAdsAPI.h"
#include <QElapsedTimer>
#include <QTimer>
#include <QString>
#include <QRegularExpression>
#include <QRegularExpressionMatchIterator>
#include <QModbusTcpClient>
#include <QModbusDataUnit>
QT_BEGIN_NAMESPACE
namespace Ui {
class Widget;
}
class PlcStruct_Read;
QT_END_NAMESPACE

class Widget : public QWidget
{
    Q_OBJECT

public:
    Widget(QWidget *parent = nullptr);
    ~Widget();

    void    onModbusStateChanged(int);
    void onReadFinished();
    void onWriteFinished();

private slots:
    void on_btn_get_plc_state_clicked();// 获取PLC状态

    void on_btn_connect_plc_clicked();  // 连接PLC

    void readData();
    void writeData();




private:
    Ui::Widget *ui;

    // Modbus tcp

    QModbusClient *modbusClient = nullptr;
    QTimer timer;
    QTimer writeTimer;

    // // 倍福ADS
    // AmsAddr  Addr;//定义AMS地址变量
    // PAmsAddr pAddr;//定义端口地址变量
    // long nPort;
    // USHORT  nAdsState;	//PLC状态信息
    // USHORT  nDeviceState;
    // bool BOOL1;
    // PlcStruct_Read *plc_read;

    // 定时器
    QTimer *_pTimerUpdate,*_pTimerUpdate1;
    QTimer *_pTimerUpdate2;// 保存数据定时器
    QTimer *_pTimerUpdate3;// 定时读取串口定时器
    QTimer *_pTimerUpdate4;// 定时上传数据定时器
    QElapsedTimer _elapsedTimer;        //之间计时
};
#endif // WIDGET_H
