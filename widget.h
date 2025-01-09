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
    void onReadFinished1();
    void onReadFinished2();
    void onReadFinished3();

    void onWriteFinished();


private slots:
    void on_btn_get_plc_state_clicked();// 获取PLC状态
    void get_plc_state_by_modbus();
    void set_plc_state_by_modbus();

    void on_btn_connect_plc_clicked();  // 连接PLC

    void readData();
    void writeData();




    void on_btn_Axi1_SetStandbyPosition_clicked();  // 设置待机位置

    void on_btn_Axi1_SetWorkPostion_1_clicked();    // 设置工作位置1

    void on_btn_Axi1_SetWorkPostion_2_clicked();    // 设置工作位置2

    void on_btn_Axi_SetPosition_1_clicked();        // 设置位置

    void on_btn_Axi_SetVel_1_clicked();             //设置速度



    void on_check_Axi_Enable_1_clicked(bool checked);             // 设置使能

    void on_btn_Axi_GoHome_1_clicked();             // 回原点

    void on_btn_Axi_SetHome_1_clicked();            // 设置原点

    void on_btn_Axi_Reset_1_clicked();              // 复位

    void on_btn_Axi_Stop_1_clicked();               // 停止
    void on_btn_Axi_GoHome_1_pressed();
    void on_btn_Axi_Reset_1_pressed();
    void on_btn_Axi_SetHome_1_pressed();
    void on_btn_Axi_Stop_1_pressed();





    void on_btn_Axi2_SetStandbyPosition_clicked();  // 设置待机位置

    void on_btn_Axi2_SetWorkPostion_1_clicked();    // 设置工作位置1

    void on_btn_Axi2_SetWorkPostion_2_clicked();    // 设置工作位置2

    void on_btn_Axi2_SetWorkPostion_3_clicked();

    void on_btn_Axi_SetPosition_2_clicked();        // 设置位置

    void on_btn_Axi_SetVel_2_clicked();             //设置速度

    void on_check_Axi_Enable_2_clicked(bool checked);             // 设置使能

    void on_btn_Axi_GoHome_2_clicked();             // 回原点

    void on_btn_Axi_SetHome_2_clicked();            // 设置原点

    void on_btn_Axi_Reset_2_clicked();              // 复位

    void on_btn_Axi_Stop_2_clicked();               // 停止
    void on_btn_Axi_GoHome_2_pressed();
    void on_btn_Axi_Reset_2_pressed();
    void on_btn_Axi_SetHome_2_pressed();
    void on_btn_Axi_Stop_2_pressed();




    void on_btn_Axi3_SetStandbyPosition_clicked();  // 设置待机位置

    void on_btn_Axi3_SetWorkPostion_1_clicked();    // 设置工作位置1


    void on_btn_Axi_SetPosition_3_clicked();        // 设置位置

    void on_btn_Axi_SetVel_3_clicked();             //设置速度

    void on_check_Axi_Enable_3_clicked(bool checked);             // 设置使能

    void on_btn_Axi_GoHome_3_clicked();             // 回原点

    void on_btn_Axi_SetHome_3_clicked();            // 设置原点

    void on_btn_Axi_Reset_3_clicked();              // 复位

    void on_btn_Axi_Stop_3_clicked();               // 停止
    void on_btn_Axi_GoHome_3_pressed();
    void on_btn_Axi_Reset_3_pressed();
    void on_btn_Axi_SetHome_3_pressed();
    void on_btn_Axi_Stop_3_pressed();



    void on_btn_Axi4_SetStandbyPosition_clicked();  // 设置待机位置

    void on_btn_Axi4_SetWorkPostion_1_clicked();    // 设置工作位置1


    void on_btn_Axi_SetPosition_4_clicked();        // 设置位置

    void on_btn_Axi_SetVel_4_clicked();             //设置速度

    void on_check_Axi_Enable_4_clicked(bool checked);             // 设置使能

    void on_btn_Axi_GoHome_4_clicked();             // 回原点

    void on_btn_Axi_SetHome_4_clicked();            // 设置原点

    void on_btn_Axi_Reset_4_clicked();              // 复位

    void on_btn_Axi_Stop_4_clicked();               // 停止

    void on_btn_Axi_GoHome_4_pressed();
    void on_btn_Axi_Reset_4_pressed();
    void on_btn_Axi_SetHome_4_pressed();
    void on_btn_Axi_Stop_4_pressed();



    void on_btn_Axi5_SetStandbyPosition_clicked();  // 设置待机位置

    void on_btn_Axi5_SetWorkPostion_1_clicked();    // 设置工作位置1


    void on_btn_Axi_SetPosition_5_clicked();        // 设置位置

    void on_btn_Axi_SetVel_5_clicked();             //设置速度

    void on_check_Axi_Enable_5_clicked(bool checked);            // 设置使能

    void on_btn_Axi_GoHome_5_clicked();             // 回原点

    void on_btn_Axi_SetHome_5_clicked();            // 设置原点

    void on_btn_Axi_Reset_5_clicked();              // 复位

    void on_btn_Axi_Stop_5_clicked();               // 停止
    void on_btn_Axi_GoHome_5_pressed();
    void on_btn_Axi_Reset_5_pressed();
    void on_btn_Axi_SetHome_5_pressed();
    void on_btn_Axi_Stop_5_pressed();



    void on_check_OpenCylinder_1_clicked(bool checked); //气缸1
    void on_check_OpenCylinder_2_clicked(bool checked); //气缸
    void on_check_OpenCylinder_3_clicked(bool checked); //气缸
    void on_check_OpenCylinder_4_clicked(bool checked); //气缸
    void on_check_OpenCylinder_5_clicked(bool checked); //气缸
    void on_check_OpenCylinder_6_clicked(bool checked); //气缸
    void on_check_OpenCylinder_7_clicked(bool checked); //气缸
    void on_check_OpenCylinder_8_clicked(bool checked); //气缸
    void on_check_OpenCylinder_9_clicked(bool checked); //气缸
    void on_check_OpenCylinder_10_clicked(bool checked); //气缸
    void on_check_OpenCylinder_11_clicked(bool checked); //气缸
    void on_check_OpenCylinder_12_clicked(bool checked); //气缸
    void on_check_OpenCylinder_13_clicked(bool checked); //气缸
    void on_check_OpenCylinder_14_clicked(bool checked); //气缸
    void on_check_OpenCylinder_15_clicked(bool checked); //气缸
    void on_check_OpenCylinder_16_clicked(bool checked); //气缸
    void on_check_OpenCylinder_17_clicked(bool checked); //气缸
    void on_check_OpenCylinder_18_clicked(bool checked); //气缸
    void on_check_OpenCylinder_19_clicked(bool checked); //气缸
    void on_check_OpenCylinder_20_clicked(bool checked); //气缸
    void on_check_OpenCylinder_21_clicked(bool checked); //气缸
    void on_check_OpenCylinder_22_clicked(bool checked); //气缸
    void on_check_OpenCylinder_23_clicked(bool checked); //气缸
    void on_check_OpenCylinder_24_clicked(bool checked); //气缸
    void on_check_OpenCylinder_25_clicked(bool checked); //气缸
    void on_check_OpenCylinder_26_clicked(bool checked); //气缸
    void on_check_OpenCylinder_27_clicked(bool checked); //气缸
    void on_check_OpenCylinder_28_clicked(bool checked); //气缸
    void on_check_OpenCylinder_29_clicked(bool checked); //气缸
    void on_check_OpenCylinder_30_clicked(bool checked); //气缸
    void on_check_OpenCylinder_31_clicked(bool checked); //气缸
    void on_check_OpenCylinder_32_clicked(bool checked); //气缸
    void on_check_OpenCylinder_33_clicked(bool checked); //气缸
    void on_check_OpenCylinder_34_clicked(bool checked); //气缸
    void on_check_OpenCylinder_35_clicked(bool checked); //气缸
    void on_check_OpenCylinder_36_clicked(bool checked); //气缸
    void on_check_OpenCylinder_37_clicked(bool checked); //气缸
    void on_check_OpenCylinder_38_clicked(bool checked); //气缸




    void on_btn_Axi_All_Start_clicked();

    void on_btn_Axi_All_GoHome_clicked();

    void on_btn_Axi_ALL_Reset_clicked();

    void on_btn_Axi_All_Stop_clicked();

    void on_btn_Axi_All_GoPreparePosition_clicked();



    void on_btn_Axi_All_Start_pressed();

    void on_btn_Axi_All_GoHome_pressed();

    void on_btn_Axi_ALL_Reset_pressed();

    void on_btn_Axi_All_Stop_pressed();

    void on_btn_Axi_All_GoPreparePosition_pressed();



    void on_btn_GetPaper_pressed();

    void on_btn_GetPaper_clicked();

    void on_btn_Collect_pressed();

    void on_btn_Collect_clicked();

    void on_btn_SetPaper_pressed();

    void on_btn_SetPaper_clicked();

    void on_btn_CutPaper_pressed();

    void on_btn_CutPaper_clicked();

    void on_btn_SetBox_pressed();

    void on_btn_SetBox_clicked();

    void on_btn_Axi_SetPosition_5_pressed();

    void on_btn_Axi_SetPosition_1_pressed();

    void on_btn_Axi_SetPosition_2_pressed();

    void on_btn_Axi_SetPosition_3_pressed();

    void on_btn_Axi_SetPosition_4_pressed();

    void on_btn_Axi_Jog_Pos_1_pressed();

    void on_btn_Axi_Jog_Neg_1_clicked();

    void on_btn_Axi_Jog_Neg_1_pressed();

    void on_btn_Axi_Jog_Pos_1_clicked();

    void on_btn_Axi_Jog_Pos_2_pressed();

    void on_btn_Axi_Jog_Neg_2_clicked();

    void on_btn_Axi_Jog_Neg_2_pressed();

    void on_btn_Axi_Jog_Pos_2_clicked();

    void on_btn_Axi_Jog_Pos_3_pressed();

    void on_btn_Axi_Jog_Neg_3_clicked();

    void on_btn_Axi_Jog_Neg_3_pressed();

    void on_btn_Axi_Jog_Pos_3_clicked();


    void on_btn_Axi_Jog_Pos_4_pressed();

    void on_btn_Axi_Jog_Neg_4_clicked();

    void on_btn_Axi_Jog_Neg_4_pressed();

    void on_btn_Axi_Jog_Pos_4_clicked();
private:
    Ui::Widget *ui;
    // Modbus tcp
    QModbusClient *modbusClient = nullptr;
    QTimer timer;
    QTimer writeTimer;
    // 定时器
    QTimer *_pTimerUpdate,*_pTimerUpdate1;
    QTimer *_pTimerUpdate_setting;// 保存数据定时器
};
#endif // WIDGET_H
