unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, ExtCtrls,
  ComCtrls, StdCtrls, AsyncProcess, TATransformations, TASources, TAGraph,
  attabs, BCLabel, BGRACustomDrawn, BCImageButton, BCMaterialDesignButton,
  BCMDButton, BCMDButtonFocus, BCButton, RichMemo, tcp_udpport, ISOTCPDriver,
  PLCBlock, PLCBlockElement, TagBit, PLCStruct, PLCStructElement, Process,
  windows, hmi_draw_basic_vector_control, HMIEdit, hmi_polyline, HMIRadioButton,
  Tag, TASeries, JwaIpRtrMib, TAChartUtils, WinSock, JwaIpHlpAPI, FileUtil,
  LCLType, LCLIntf, uEButton;

function DwmGetWindowAttribute(hwnd: HWND; dwAttribute: DWORD; pvAttribute: PVOID; cbAttribute: DWORD): HRESULT; stdcall; external 'dwmapi.dll';

type

  { TForm1 }

  TForm1 = class(TForm)
    ActualDown1: TPLCBlockElement;
    ActualDown2: TPLCBlockElement;
    ActualDown3: TPLCBlockElement;
    ActualDown4: TPLCBlockElement;
    ActualDown5: TPLCBlockElement;
    ActualDown6: TPLCBlockElement;
    ActualDown7: TPLCBlockElement;
    ActualDown8: TPLCBlockElement;
    ActualDown9: TPLCBlockElement;
    ActualDown10: TPLCBlockElement;
    ActualDown11: TPLCBlockElement;
    ActualDown12: TPLCBlockElement;
    ActualDown13: TPLCBlockElement;
    ActualDown14: TPLCBlockElement;
    ActualDown15: TPLCBlockElement;
    ActualDown16: TPLCBlockElement;
    ActualDown17: TPLCBlockElement;
    ActualDown18: TPLCBlockElement;
    ActualDown19: TPLCBlockElement;
    ActualDown20: TPLCBlockElement;
    ActualDown21: TPLCBlockElement;
    ActualDown22: TPLCBlockElement;
    ActualDown23: TPLCBlockElement;
    ActualDown24: TPLCBlockElement;
    ActualDown25: TPLCBlockElement;
    ActualDown26: TPLCBlockElement;
    ActualDown27: TPLCBlockElement;
    ActualDown28: TPLCBlockElement;
    ActualDown29: TPLCBlockElement;
    ActualDown30: TPLCBlockElement;
    ActualDown31: TPLCBlockElement;
    ActualDown32: TPLCBlockElement;
    ActualDown33: TPLCBlockElement;
    ActualDown34: TPLCBlockElement;
    ActualDown35: TPLCBlockElement;
    ActualDown36: TPLCBlockElement;
    ActualDown37: TPLCBlockElement;
    ActualDown38: TPLCBlockElement;
    ActualDown39: TPLCBlockElement;
    ActualDown40: TPLCBlockElement;
    ActualDown41: TPLCBlockElement;
    ActualDown42: TPLCBlockElement;
    ActualDown43: TPLCBlockElement;
    ActualDown44: TPLCBlockElement;
    ActualDown45: TPLCBlockElement;
    ActualDown46: TPLCBlockElement;
    ActualDown47: TPLCBlockElement;
    ActualDown48: TPLCBlockElement;
    ActualDown49: TPLCBlockElement;
    ActualDown50: TPLCBlockElement;
    ActualDown51: TPLCBlockElement;
    ActualDown52: TPLCBlockElement;
    ActualDown53: TPLCBlockElement;
    ActualDown54: TPLCBlockElement;
    ActualDown55: TPLCBlockElement;
    ActualDown56: TPLCBlockElement;
    ActualDown57: TPLCBlockElement;
    ActualDown58: TPLCBlockElement;
    ActualDown59: TPLCBlockElement;
    ActualDown60: TPLCBlockElement;
    ActualDown61: TPLCBlockElement;
    ActualDown62: TPLCBlockElement;
    ActualDown63: TPLCBlockElement;
    ActualDown64: TPLCBlockElement;
    ActualDown65: TPLCBlockElement;
    ActualDown66: TPLCBlockElement;
    ActualDown67: TPLCBlockElement;
    ActualDown68: TPLCBlockElement;
    ActualDown69: TPLCBlockElement;
    ActualDown70: TPLCBlockElement;
    ActualDown71: TPLCBlockElement;
    ActualDown72: TPLCBlockElement;
    ActualDown73: TPLCBlockElement;
    ActualDown74: TPLCBlockElement;
    ActualDown75: TPLCBlockElement;
    ActualDown76: TPLCBlockElement;
    ActualDown77: TPLCBlockElement;
    ActualDown78: TPLCBlockElement;
    ActualDown79: TPLCBlockElement;
    ActualDown80: TPLCBlockElement;
    ActualDown81: TPLCBlockElement;
    ActualDown82: TPLCBlockElement;
    ActualDown83: TPLCBlockElement;
    ActualDown84: TPLCBlockElement;
    ActualDown85: TPLCBlockElement;
    ActualDown86: TPLCBlockElement;
    ActualDown87: TPLCBlockElement;
    ActualDown88: TPLCBlockElement;
    ActualDown89: TPLCBlockElement;
    ActualDown90: TPLCBlockElement;
    ActualDown91: TPLCBlockElement;
    ActualDown92: TPLCBlockElement;
    ActualDown93: TPLCBlockElement;
    ActualDown94: TPLCBlockElement;
    ActualDown95: TPLCBlockElement;
    ActualDown96: TPLCBlockElement;
    ActualDown97: TPLCBlockElement;
    ActualDown98: TPLCBlockElement;
    ActualDown99: TPLCBlockElement;
    ActualDown100: TPLCBlockElement;
    ActualUp1: TPLCBlockElement;
    ActualUp10: TPLCBlockElement;
    ActualUp100: TPLCBlockElement;
    ActualUp11: TPLCBlockElement;
    ActualUp12: TPLCBlockElement;
    ActualUp13: TPLCBlockElement;
    ActualUp14: TPLCBlockElement;
    ActualUp15: TPLCBlockElement;
    ActualUp16: TPLCBlockElement;
    ActualUp17: TPLCBlockElement;
    ActualUp18: TPLCBlockElement;
    ActualUp19: TPLCBlockElement;
    ActualUp2: TPLCBlockElement;
    ActualUp20: TPLCBlockElement;
    ActualUp21: TPLCBlockElement;
    ActualUp22: TPLCBlockElement;
    ActualUp23: TPLCBlockElement;
    ActualUp24: TPLCBlockElement;
    ActualUp25: TPLCBlockElement;
    ActualUp26: TPLCBlockElement;
    ActualUp27: TPLCBlockElement;
    ActualUp28: TPLCBlockElement;
    ActualUp29: TPLCBlockElement;
    ActualUp3: TPLCBlockElement;
    ActualUp30: TPLCBlockElement;
    ActualUp31: TPLCBlockElement;
    ActualUp32: TPLCBlockElement;
    ActualUp33: TPLCBlockElement;
    ActualUp34: TPLCBlockElement;
    ActualUp35: TPLCBlockElement;
    ActualUp36: TPLCBlockElement;
    ActualUp37: TPLCBlockElement;
    ActualUp38: TPLCBlockElement;
    ActualUp39: TPLCBlockElement;
    ActualUp4: TPLCBlockElement;
    ActualUp40: TPLCBlockElement;
    ActualUp41: TPLCBlockElement;
    ActualUp42: TPLCBlockElement;
    ActualUp43: TPLCBlockElement;
    ActualUp44: TPLCBlockElement;
    ActualUp45: TPLCBlockElement;
    ActualUp46: TPLCBlockElement;
    ActualUp47: TPLCBlockElement;
    ActualUp48: TPLCBlockElement;
    ActualUp49: TPLCBlockElement;
    ActualUp5: TPLCBlockElement;
    ActualUp50: TPLCBlockElement;
    ActualUp51: TPLCBlockElement;
    ActualUp52: TPLCBlockElement;
    ActualUp53: TPLCBlockElement;
    ActualUp54: TPLCBlockElement;
    ActualUp55: TPLCBlockElement;
    ActualUp56: TPLCBlockElement;
    ActualUp57: TPLCBlockElement;
    ActualUp58: TPLCBlockElement;
    ActualUp59: TPLCBlockElement;
    ActualUp6: TPLCBlockElement;
    ActualUp60: TPLCBlockElement;
    ActualUp61: TPLCBlockElement;
    ActualUp62: TPLCBlockElement;
    ActualUp63: TPLCBlockElement;
    ActualUp64: TPLCBlockElement;
    ActualUp65: TPLCBlockElement;
    ActualUp66: TPLCBlockElement;
    ActualUp67: TPLCBlockElement;
    ActualUp68: TPLCBlockElement;
    ActualUp69: TPLCBlockElement;
    ActualUp7: TPLCBlockElement;
    ActualUp70: TPLCBlockElement;
    ActualUp71: TPLCBlockElement;
    ActualUp72: TPLCBlockElement;
    ActualUp73: TPLCBlockElement;
    ActualUp74: TPLCBlockElement;
    ActualUp75: TPLCBlockElement;
    ActualUp76: TPLCBlockElement;
    ActualUp77: TPLCBlockElement;
    ActualUp78: TPLCBlockElement;
    ActualUp79: TPLCBlockElement;
    ActualUp8: TPLCBlockElement;
    ActualUp80: TPLCBlockElement;
    ActualUp81: TPLCBlockElement;
    ActualUp82: TPLCBlockElement;
    ActualUp83: TPLCBlockElement;
    ActualUp84: TPLCBlockElement;
    ActualUp85: TPLCBlockElement;
    ActualUp86: TPLCBlockElement;
    ActualUp87: TPLCBlockElement;
    ActualUp88: TPLCBlockElement;
    ActualUp89: TPLCBlockElement;
    ActualUp9: TPLCBlockElement;
    ActualUp90: TPLCBlockElement;
    ActualUp91: TPLCBlockElement;
    ActualUp92: TPLCBlockElement;
    ActualUp93: TPLCBlockElement;
    ActualUp94: TPLCBlockElement;
    ActualUp95: TPLCBlockElement;
    ActualUp96: TPLCBlockElement;
    ActualUp97: TPLCBlockElement;
    ActualUp98: TPLCBlockElement;
    ActualUp99: TPLCBlockElement;
    AutoPingBatchFile: TButton;
    BCMaterialDesignButton1: TBCMaterialDesignButton;
    BCMaterialDesignButton10: TBCMaterialDesignButton;
    BCMaterialDesignButton11: TBCMaterialDesignButton;
    BCMaterialDesignButton12: TBCMaterialDesignButton;
    BCMaterialDesignButton13: TBCMaterialDesignButton;
    BCMaterialDesignButton14: TBCMaterialDesignButton;
    BCMaterialDesignButton15: TBCMaterialDesignButton;
    BCMaterialDesignButton2: TBCMaterialDesignButton;
    BCMaterialDesignButton3: TBCMaterialDesignButton;
    BCMaterialDesignButton4: TBCMaterialDesignButton;
    BCMaterialDesignButton5: TBCMaterialDesignButton;
    BCMaterialDesignButton6: TBCMaterialDesignButton;
    BCMaterialDesignButton7: TBCMaterialDesignButton;
    BCMaterialDesignButton8: TBCMaterialDesignButton;
    BCMaterialDesignButton9: TBCMaterialDesignButton;
    Button1: TButton;
    ButtonComputerName: TButton;
    ButtonGetIPAddress: TButton;
    ButtonIpconfig: TButton;
    ButtonIpconfigAl: TButton;
    ButtonPing: TButton;
    CalibrateButton: TBCMaterialDesignButton;
    CalibrateButton1: TBCMaterialDesignButton;
    CalibrateError: TShape;
    CalibrateError1: TShape;
    CalibrateError2: TShape;
    CalibrateEvents: TLabel;
    Chart2LineSeries1: TLineSeries;
    Chart2LineSeries2: TLineSeries;
    Chart2LineSeries3: TLineSeries;
    Chart2LineSeries4: TLineSeries;
    ChartPercentDown: TChart;
    ChartPercentUp: TChart;
    ChartRampUp: TChart;
    ChartRampDown: TChart;
    ChartForceManual: TChart;
    ChartForceManualLineSeries5: TLineSeries;
    ChartAxisTransformations1: TChartAxisTransformations;
    ChartAxisTransformations1LinearAxisTransform1: TLinearAxisTransform;
    ChartMenu: TPopupMenu;
    ChartRefreshMenu: TMenuItem;
    ChartZoomOutMenu: TMenuItem;
    DB1_DBD64: TPLCStructItem;
    DB1_DBD74: TPLCStructItem;
    DB1_DBW10: TPLCStructItem;
    DB1_DBW12: TPLCStructItem;
    DB1_DBW14: TPLCStructItem;
    DB1_DBW16: TPLCStructItem;
    DB1_DBW18: TPLCStructItem;
    DB1_DBW20: TPLCStructItem;
    DB1_DBW22: TPLCStructItem;
    DB1_DBW24: TPLCStructItem;
    DB1_DBW26: TPLCStructItem;
    DB1_DBW28: TPLCStructItem;
    DB1_DBW30: TPLCStructItem;
    DB1_DBW32: TPLCStructItem;
    DB1_DBW34: TPLCStructItem;
    DB1_DBW36: TPLCStructItem;
    DB1_DBW38: TPLCStructItem;
    DB1_DBW40: TPLCStructItem;
    DB1_DBW42: TPLCStructItem;
    DB1_DBW44: TPLCStructItem;
    DB1_DBW46: TPLCStructItem;
    DB1_DBW48: TPLCStructItem;
    DB1_DBW50: TPLCStructItem;
    DB1_DBW52: TPLCStructItem;
    DB1_DBW54: TPLCStructItem;
    DB1_DBW56: TPLCStructItem;
    DB1_DBW58: TPLCStructItem;
    DB1_DBW60: TPLCStructItem;
    DB1_DBW78: TPLCStructItem;
    DB1_DBW78_0: TTagBit;
    DB1_DBW78_1: TTagBit;
    DB1_DBW78_2: TTagBit;
    DB1_DBW78_3: TTagBit;
    DB1_DBD80: TPLCStructItem;
    DB1_DBW84_to_DBW888: TPLCBlock;
    DB1_DBX60_0: TTagBit;
    DB1_DBW62: TPLCStructItem;
    DB1_DBW68: TPLCStructItem;
    DB1_DBW70: TPLCStructItem;
    DB1_DBW72: TPLCStructItem;
    DB1_DBW8: TPLCStructItem;
    DB1_DBX10_0: TTagBit;
    DB1_DBX10_1: TTagBit;
    DB1_DBX10_2: TTagBit;
    DB1_DBX10_3: TTagBit;
    DB1_DBX10_4: TTagBit;
    DB1_DBX10_5: TTagBit;
    DB1_DBX18_0: TTagBit;
    DB1_DBX18_1: TTagBit;
    DB1_DBX68_0: TTagBit;
    DB1_DBX68_1: TTagBit;
    DB1_DBX68_2: TTagBit;
    DB1_DBX68_3: TTagBit;
    DBB1_to_DBB1_Group1: TPLCStruct;
    DistanceError: TShape;
    DistanceError1: TShape;
    DistanceError2: TShape;
    Down_Dir: TShape;
    Edit1: TEdit;
    FProcess: TAsyncProcess;
    HMIEdit10: THMIEdit;
    HMIEdit11: THMIEdit;
    HMIEdit12: THMIEdit;
    HMIEdit13: THMIEdit;
    HMIEdit14: THMIEdit;
    HMIEdit15: THMIEdit;
    HMIEdit16: THMIEdit;
    HMIEdit17: THMIEdit;
    HMIEdit18: THMIEdit;
    HMIEdit19: THMIEdit;
    HMIEdit20: THMIEdit;
    HMIEdit21: THMIEdit;
    HMIEdit22: THMIEdit;
    HMIEdit23: THMIEdit;
    HMIEdit24: THMIEdit;
    HMIEdit25: THMIEdit;
    HMIEdit26: THMIEdit;
    HMIEdit27: THMIEdit;
    HMIEdit28: THMIEdit;
    HMIEdit29: THMIEdit;
    HMIEdit9: THMIEdit;
    HMIPolyline1: THMIPolyline;
    HMIPolyline2: THMIPolyline;
    HMIPolyline3: THMIPolyline;
    HMIPolyline4: THMIPolyline;
    HMIPolyline5: THMIPolyline;
    HMIRadioButton1: THMIRadioButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    CalibrationTimeStamp: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    HMIEdit1: THMIEdit;
    HMIEdit2: THMIEdit;
    HMIEdit3: THMIEdit;
    HMIEdit4: THMIEdit;
    HMIEdit5: THMIEdit;
    HMIEdit6: THMIEdit;
    HMIEdit7: THMIEdit;
    HMIEdit8: THMIEdit;
    I0_0: TTagBit;
    I0_0_: TShape;
    I0_1_: TShape;
    I0_2_: TShape;
    I0_3_: TShape;
    I0_4_: TShape;
    I0_5_: TShape;
    I0_6_: TShape;
    I0_7_: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    LimitHeightError: TShape;
    LimitHeightError1: TShape;
    LimitHeightError2: TShape;
    LimitLowError: TShape;
    LimitLowError1: TShape;
    LimitLowError2: TShape;
    ListChartSource5: TListChartSource;
    M0_2: TShape;
    M0_2_1: TShape;
    M0_2_2: TShape;
    M0_3_1: TShape;
    M0_3_2: TShape;
    M0_4_1: TShape;
    M0_4_2: TShape;
    M0_5_: TShape;
    M0_5_1: TShape;
    M0_5_2: TShape;
    M0_6_: TShape;
    M0_6_1: TShape;
    M0_6_2: TShape;
    M0_7_: TShape;
    M0_3: TShape;
    M0_4: TShape;
    M0_5: TShape;
    M0_6: TShape;
    M0_7: TShape;
    M0_3_: TShape;
    M0_4_: TShape;
    M0_2_: TShape;
    M0_7_1: TShape;
    M0_7_2: TShape;
    Memo1: TMemo;
    MenuItem1: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ScrollBox2: TScrollBox;
    SSC: TMenuItem;
    SaveScreenCapture: TMenuItem;
    SaveToCSVFile: TMenuItem;
    DB1_DBW884: TPLCBlockElement;
    DB1_DBW886: TPLCBlockElement;
    DB1_DBW888: TPLCBlockElement;
    Page: TMenuItem;
    MenuItem2: TMenuItem;
    PageControl1: TPageControl;
    I0_1: TTagBit;
    I0_2: TTagBit;
    I0_3: TTagBit;
    I0_4: TTagBit;
    I0_5: TTagBit;
    I0_6: TTagBit;
    I0_7: TTagBit;
    IB0: TPLCBlockElement;
    IB0_to_IB0: TPLCBlock;
    ISOTCPDriver1: TISOTCPDriver;
    MainMenu1: TMainMenu;
    MB0: TPLCBlockElement;
    MB0_0: TTagBit;
    MB0_1: TTagBit;
    MB0_2: TTagBit;
    MB0_3: TTagBit;
    MB0_4: TTagBit;
    MB0_5: TTagBit;
    MB0_6: TTagBit;
    MB0_7: TTagBit;
    MB0_to_MB0: TPLCBlock;
    MenuConnect: TMenuItem;
    Connect_: TMenuItem;
    Disconnect_: TMenuItem;
    RampTab: TPageControl;
    PIW272: TPLCBlockElement;
    PIW272_to_PIW286: TPLCBlock;
    PIW274: TPLCBlockElement;
    PIW276: TPLCBlockElement;
    PIW278: TPLCBlockElement;
    PIW280: TPLCBlockElement;
    PIW282: TPLCBlockElement;
    PIW284: TPLCBlockElement;
    PIW286: TPLCBlockElement;
    PopupSaveFile: TPopupMenu;
    Q0_0: TTagBit;
    Q0_0_: TShape;
    Q0_1: TTagBit;
    Q0_1_: TShape;
    Q0_2: TTagBit;
    Q0_2_: TShape;
    Q0_3: TTagBit;
    Q0_3_: TShape;
    Q0_4: TTagBit;
    Q0_4_: TShape;
    Q0_5: TTagBit;
    Q0_5_: TShape;
    Q0_6: TTagBit;
    Q0_6_: TShape;
    Q0_7: TTagBit;
    Q0_7_: TShape;
    QB0: TPLCBlockElement;
    QB0_to_QB0: TPLCBlock;
    ForceManual: TTabSheet;
    Calibrate: TTabSheet;
    HardwareTab: TTabSheet;
    OnlineConfig: TTabSheet;
    ScrollBox1: TScrollBox;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Timer2: TTimer;
    TimeUp1: TPLCBlockElement;
    TimeUp2: TPLCBlockElement;
    TimeUp3: TPLCBlockElement;
    TimeUp4: TPLCBlockElement;
    TimeUp5: TPLCBlockElement;
    TimeUp6: TPLCBlockElement;
    TimeUp7: TPLCBlockElement;
    TimeUp8: TPLCBlockElement;
    TimeUp9: TPLCBlockElement;
    TimeUp10: TPLCBlockElement;
    TimeUp11: TPLCBlockElement;
    TimeUp12: TPLCBlockElement;
    TimeUp13: TPLCBlockElement;
    TimeUp14: TPLCBlockElement;
    TimeUp15: TPLCBlockElement;
    TimeUp16: TPLCBlockElement;
    TimeUp17: TPLCBlockElement;
    TimeUp18: TPLCBlockElement;
    TimeUp19: TPLCBlockElement;
    TimeUp20: TPLCBlockElement;
    TimeUp21: TPLCBlockElement;
    TimeUp22: TPLCBlockElement;
    TimeUp23: TPLCBlockElement;
    TimeUp24: TPLCBlockElement;
    TimeUp25: TPLCBlockElement;
    TimeUp26: TPLCBlockElement;
    TimeUp27: TPLCBlockElement;
    TimeUp28: TPLCBlockElement;
    TimeUp29: TPLCBlockElement;
    TimeUp30: TPLCBlockElement;
    TimeUp31: TPLCBlockElement;
    TimeUp32: TPLCBlockElement;
    TimeUp33: TPLCBlockElement;
    TimeUp34: TPLCBlockElement;
    TimeUp35: TPLCBlockElement;
    TimeUp36: TPLCBlockElement;
    TimeUp37: TPLCBlockElement;
    TimeUp38: TPLCBlockElement;
    TimeUp39: TPLCBlockElement;
    TimeUp40: TPLCBlockElement;
    TimeUp41: TPLCBlockElement;
    TimeUp42: TPLCBlockElement;
    TimeUp43: TPLCBlockElement;
    TimeUp44: TPLCBlockElement;
    TimeUp45: TPLCBlockElement;
    TimeUp46: TPLCBlockElement;
    TimeUp47: TPLCBlockElement;
    TimeUp48: TPLCBlockElement;
    TimeUp49: TPLCBlockElement;
    TimeUp50: TPLCBlockElement;
    TimeUp51: TPLCBlockElement;
    TimeUp52: TPLCBlockElement;
    TimeUp53: TPLCBlockElement;
    TimeUp54: TPLCBlockElement;
    TimeUp55: TPLCBlockElement;
    TimeUp56: TPLCBlockElement;
    TimeUp57: TPLCBlockElement;
    TimeUp58: TPLCBlockElement;
    TimeUp59: TPLCBlockElement;
    TimeUp60: TPLCBlockElement;
    TimeUp61: TPLCBlockElement;
    TimeUp62: TPLCBlockElement;
    TimeUp63: TPLCBlockElement;
    TimeUp64: TPLCBlockElement;
    TimeUp65: TPLCBlockElement;
    TimeUp66: TPLCBlockElement;
    TimeUp67: TPLCBlockElement;
    TimeUp68: TPLCBlockElement;
    TimeUp69: TPLCBlockElement;
    TimeUp70: TPLCBlockElement;
    TimeUp71: TPLCBlockElement;
    TimeUp72: TPLCBlockElement;
    TimeUp73: TPLCBlockElement;
    TimeUp74: TPLCBlockElement;
    TimeUp75: TPLCBlockElement;
    TimeUp76: TPLCBlockElement;
    TimeUp77: TPLCBlockElement;
    TimeUp78: TPLCBlockElement;
    TimeUp79: TPLCBlockElement;
    TimeUp80: TPLCBlockElement;
    TimeUp81: TPLCBlockElement;
    TimeUp82: TPLCBlockElement;
    TimeUp83: TPLCBlockElement;
    TimeUp84: TPLCBlockElement;
    TimeUp85: TPLCBlockElement;
    TimeUp86: TPLCBlockElement;
    TimeUp87: TPLCBlockElement;
    TimeUp88: TPLCBlockElement;
    TimeUp89: TPLCBlockElement;
    TimeUp90: TPLCBlockElement;
    TimeUp91: TPLCBlockElement;
    TimeUp92: TPLCBlockElement;
    TimeUp93: TPLCBlockElement;
    TimeUp94: TPLCBlockElement;
    TimeUp95: TPLCBlockElement;
    TimeUp96: TPLCBlockElement;
    TimeUp97: TPLCBlockElement;
    TimeUp98: TPLCBlockElement;
    TimeUp99: TPLCBlockElement;
    TimeUp100: TPLCBlockElement;
    TimeDown1: TPLCBlockElement;
    TimeDown2: TPLCBlockElement;
    TimeDown3: TPLCBlockElement;
    TimeDown4: TPLCBlockElement;
    TimeDown5: TPLCBlockElement;
    TimeDown6: TPLCBlockElement;
    TimeDown7: TPLCBlockElement;
    TimeDown8: TPLCBlockElement;
    TimeDown9: TPLCBlockElement;
    TimeDown10: TPLCBlockElement;
    TimeDown11: TPLCBlockElement;
    TimeDown12: TPLCBlockElement;
    TimeDown13: TPLCBlockElement;
    TimeDown14: TPLCBlockElement;
    TimeDown15: TPLCBlockElement;
    TimeDown16: TPLCBlockElement;
    TimeDown17: TPLCBlockElement;
    TimeDown18: TPLCBlockElement;
    TimeDown19: TPLCBlockElement;
    TimeDown20: TPLCBlockElement;
    TimeDown21: TPLCBlockElement;
    TimeDown22: TPLCBlockElement;
    TimeDown23: TPLCBlockElement;
    TimeDown24: TPLCBlockElement;
    TimeDown25: TPLCBlockElement;
    TimeDown26: TPLCBlockElement;
    TimeDown27: TPLCBlockElement;
    TimeDown28: TPLCBlockElement;
    TimeDown29: TPLCBlockElement;
    TimeDown30: TPLCBlockElement;
    TimeDown31: TPLCBlockElement;
    TimeDown32: TPLCBlockElement;
    TimeDown33: TPLCBlockElement;
    TimeDown34: TPLCBlockElement;
    TimeDown35: TPLCBlockElement;
    TimeDown36: TPLCBlockElement;
    TimeDown37: TPLCBlockElement;
    TimeDown38: TPLCBlockElement;
    TimeDown39: TPLCBlockElement;
    TimeDown40: TPLCBlockElement;
    TimeDown41: TPLCBlockElement;
    TimeDown42: TPLCBlockElement;
    TimeDown43: TPLCBlockElement;
    TimeDown44: TPLCBlockElement;
    TimeDown45: TPLCBlockElement;
    TimeDown46: TPLCBlockElement;
    TimeDown47: TPLCBlockElement;
    TimeDown48: TPLCBlockElement;
    TimeDown49: TPLCBlockElement;
    TimeDown50: TPLCBlockElement;
    TimeDown51: TPLCBlockElement;
    TimeDown52: TPLCBlockElement;
    TimeDown53: TPLCBlockElement;
    TimeDown54: TPLCBlockElement;
    TimeDown55: TPLCBlockElement;
    TimeDown56: TPLCBlockElement;
    TimeDown57: TPLCBlockElement;
    TimeDown58: TPLCBlockElement;
    TimeDown59: TPLCBlockElement;
    TimeDown60: TPLCBlockElement;
    TimeDown61: TPLCBlockElement;
    TimeDown62: TPLCBlockElement;
    TimeDown63: TPLCBlockElement;
    TimeDown64: TPLCBlockElement;
    TimeDown65: TPLCBlockElement;
    TimeDown66: TPLCBlockElement;
    TimeDown67: TPLCBlockElement;
    TimeDown68: TPLCBlockElement;
    TimeDown69: TPLCBlockElement;
    TimeDown70: TPLCBlockElement;
    TimeDown71: TPLCBlockElement;
    TimeDown72: TPLCBlockElement;
    TimeDown73: TPLCBlockElement;
    TimeDown74: TPLCBlockElement;
    TimeDown75: TPLCBlockElement;
    TimeDown76: TPLCBlockElement;
    TimeDown77: TPLCBlockElement;
    TimeDown78: TPLCBlockElement;
    TimeDown79: TPLCBlockElement;
    TimeDown80: TPLCBlockElement;
    TimeDown81: TPLCBlockElement;
    TimeDown82: TPLCBlockElement;
    TimeDown83: TPLCBlockElement;
    TimeDown84: TPLCBlockElement;
    TimeDown85: TPLCBlockElement;
    TimeDown86: TPLCBlockElement;
    TimeDown87: TPLCBlockElement;
    TimeDown88: TPLCBlockElement;
    TimeDown89: TPLCBlockElement;
    TimeDown90: TPLCBlockElement;
    TimeDown91: TPLCBlockElement;
    TimeDown92: TPLCBlockElement;
    TimeDown93: TPLCBlockElement;
    TimeDown94: TPLCBlockElement;
    TimeDown95: TPLCBlockElement;
    TimeDown96: TPLCBlockElement;
    TimeDown97: TPLCBlockElement;
    TimeDown98: TPLCBlockElement;
    TimeDown99: TPLCBlockElement;
    TimeDown100: TPLCBlockElement;
    TCP_UDPPort1: TTCP_UDPPort;
    Timer1: TTimer;
    Up_Dir: TShape;
    _SourcePercentDown_: TListChartSource;
    _SourcePercentUp_: TListChartSource;
    _SourceDown_: TListChartSource;
    _SourceUp_: TListChartSource;
    procedure ActualUp7AsyncValueChange(Sender: TObject;
      const Value: TArrayOfDouble);
    procedure AutoPingBatchFileClick(Sender: TObject);
    procedure BCMaterialDesignButton12Click(Sender: TObject);
    procedure ButtonComputerNameClick(Sender: TObject);
    procedure ButtonGetIPAddressClick(Sender: TObject);
    procedure ButtonIpconfigAlClick(Sender: TObject);
    procedure ButtonIpconfigClick(Sender: TObject);
    procedure ButtonPingClick(Sender: TObject);
    procedure CalibrateButtonClick(Sender: TObject);
    procedure BCMaterialDesignButton14Click(Sender: TObject);
    procedure BCMaterialDesignButton1Click(Sender: TObject);
    procedure BCMaterialDesignButton2Click(Sender: TObject);
    procedure BCMaterialDesignButton3Click(Sender: TObject);
    procedure BCMaterialDesignButton6Click(Sender: TObject);
    procedure BCMaterialDesignButton7Click(Sender: TObject);
    procedure BCMaterialDesignButton8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ChartForceManualClick(Sender: TObject);
    procedure ChartForceManualDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ChartForceManualMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ChartForceManualMouseEnter(Sender: TObject);
    procedure ChartForceManualMouseLeave(Sender: TObject);
    procedure ChartRefreshMenuClick(Sender: TObject);
    procedure ChartZoomOutMenuClick(Sender: TObject);
    procedure Connect_Click(Sender: TObject);
    procedure Disconnect_Click(Sender: TObject);
    procedure Edit1EditingDone(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure SaveScreenCaptureClick(Sender: TObject);
    procedure SaveToCSVFileClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private

  public
    Function CheckDirectory(C_DNAME: string;Debug_:TMemo):boolean;
    Function DoubleBooleanToStr(DoubleBoolean: double):string;
    procedure Log(const s : string);
    procedure Log(Const Fmt : String; const Args : Array of const);
    procedure ScreenshotToFile(const Filename: string; Monitor_: integer);
    function get_ss_of(window: hwnd; var bmp: graphics.TBitmap): integer;
  end;

var
  Form1: TForm1;
  Directory_:string;
  FileName_:string;
  Chart_Enter:boolean;
  Chatr_Zoom:integer;
  ChartSimulate:boolean;
  CPU_Clock_counter:integer;
  CPU_Clock_OldBit:Boolean;
  Old_CPU_Clock_counter:integer;
  Error_CPU_Clock_counter:integer;
  BaseUp_: array of double;
  BaseDown_: array of double;
  CalibbrateUpValue:double;
  CalibbrateDownValue:double;
  PotenDistance:double;
implementation

{$R *.lfm}

{ TForm1 }
function TForm1.get_ss_of(window: hwnd; var bmp: graphics.TBitmap): integer;
var
  outer: TRect;
  dc: HDC;
begin
  result := 0; // 0 = success
  if not IsWindow(window) then exit(1);
  if not (DwmGetWindowAttribute(window, 9{DWMWA_EXTENDED_FRAME_BOUNDS}, @outer, sizeof(outer)) = S_OK) then exit(2);
  bmp.Width := outer.Width;
  bmp.Height := outer.Height;
  bmp.PixelFormat := pf24bit;
  dc := GetDC(GetDesktopWindow);
  bmp.BeginUpdate(true);
  if not BitBlt(bmp.Canvas.Handle, 0, 0, outer.Width, outer.Height, dc, outer.Left, outer.Top, SRCCOPY) then result := 3;
  bmp.EndUpdate(true);
  bmp.Canvas.Changed;
  ReleaseDC(GetDesktopWindow, dc);
end;

procedure TForm1.ScreenshotToFile(const Filename: string; Monitor_: integer);
var
  BMP: Graphics.TBitmap;
  ScreenDC: HDC;
  M: TMonitor;
  W, H, X0, Y0: integer;
begin
  // Initialize coordinates of full composite area
  X0 := Screen.DesktopLeft;
  Y0 := Screen.DesktopTop;
  W  := Screen.DesktopWidth;
  H  := Screen.DesktopHeight;
  // Monitor=-1 takes entire screen, otherwise takes specified monitor
  if (Monitor_ >= 0) and (Monitor_ < Screen.MonitorCount) then begin
    M  := Screen.Monitors[Monitor_];
    X0 := M.Left;
    Y0 := M.Top;
    W  := M.Width;
    H  := M.Height;
  end;
  // prepare the bitmap
  BMP := Graphics.TBitmap.Create;
  BMP.Width  := W;
  BMP.Height := H;
  BMP.Canvas.Brush.Color := clWhite;
  BMP.Canvas.FillRect(0, 0, W, H);
  ScreenDC := GetDC(GetDesktopWindow);
  // copy the required area:
  BitBlt(BMP.Canvas.Handle, 0, 0, W, H, ScreenDC, X0, Y0, SRCCOPY);
  ReleaseDC(0, ScreenDC);
  // save to file (possibly to TStream, etc.)
  BMP.SaveToFile(Filename);
  BMP.Free;
end;

Function TForm1.CheckDirectory(C_DNAME: string;Debug_:TMemo):boolean; //True=Error
var
  tfOut: TextFile;
begin
  result:= false;

  if(C_DNAME<>'')then
  if Not DirectoryExists(C_DNAME) Then
  begin
    {$I-}
    //{$I-} or {$IOCHECKS OFF}
    //{$I-} rewrite (f); {$I+}
    //if IOResult<>0 then begin Writeln ('Error opening file: "file.txt"'); exit; end;
    mkdir(C_DNAME);
    {$I+}
    if IOResult<>0 then
    begin
      Debug_.Append('Directory '+C_DNAME+' error occurred. Details: '+ EInOutError.ClassName);
      ShowMessage('Cannot create '+C_DNAME+' directory. Details: '+ EInOutError.ClassName);
      result:= true;
    end;
  end;

end;
Function TForm1.DoubleBooleanToStr(DoubleBoolean: double):string;
begin
  result:='False';
  if DoubleBoolean<=0 then result:='False';
  if DoubleBoolean>0 then result:='True';
end;

procedure TForm1.Connect_Click(Sender: TObject);
begin
  TCP_UDPPort1.Active:=true;
end;

procedure TForm1.Log(const s : string);
begin
  Memo1.Lines.Add(s);
end;

procedure TForm1.Log(const Fmt : String; const Args : array of const);
begin
  Log(Format(Fmt,Args));
end;

procedure TForm1.ActualUp7AsyncValueChange(Sender: TObject;
  const Value: TArrayOfDouble);
begin

end;

procedure TForm1.AutoPingBatchFileClick(Sender: TObject);
begin
  //sc query  Winmgmt | find "RUNNING" >nul 2>&1 && (echo service is started) || (echo service is stopped)
  Log('----- AutoPing.bat -----');
  Log('@echo off');
  Log(':LOOPSTART');
  Log('set IPADDRESS=10.10.10.40');
  Log('set File=Ping_%date:~4,2%_%date:~7,2%_%date:~10,4%.log');
  Log('echo ------------------------ >> %File%');
  Log('echo %date% %time% >> %File%');
  Log('rem ping %IPADDRESS% -n 1 -I 10 | find "Reply from" >> %File%');
  Log('ping %IPADDRESS% -n 1 -l 10 | find "Reply from" > nul 2>&1 >> %File% || (echo Request timed out) >> %File%');
  Log('rem ping 127.0.0.1 -n 1 > NUL');
  Log('rem sleep 1000');
  Log('rem timeout /t 1 /nobreak');
  Log('timeout 1 > NUL');
  Log('GOTO LOOPSTART');
end;

procedure TForm1.BCMaterialDesignButton12Click(Sender: TObject);
begin
  DB1_DBW12.Value:=4;
  DB1_DBX10_0.Value:=1;
  if DB1_DBX10_0.Value=1 then
    DB1_DBX10_0.Value:=0
  else
    DB1_DBX10_0.Value:=1;
end;

procedure TForm1.ButtonComputerNameClick(Sender: TObject);
var
ComputerName: Array [0 .. 256] of char;
Size: DWORD;
begin
     Size := 256;
     GetComputerName(ComputerName, Size);
     Log('>> %s',[ComputerName]);
end;

procedure TForm1.ButtonGetIPAddressClick(Sender: TObject);
var
  Ret: DWord;
  Table: PMib_IPAddrTable;
  TableSize: ULong;
  i: Integer;
  //Row: PMib_IPAddrRow;
  Addr: IN_ADDR;
begin
  // We begin by assuming there's just one entry, so we allocate space
  // for that one
  TableSize := SizeOf(Table^);
  GetMem(Table, TableSize);
  try
    // Request a list of IP addresses, unsorted
    Ret := GetIpAddrTable(Table, TableSize, False);
    case Ret of
      No_Error: ; // No error. Continue at the end of the case statement
      Error_Insufficient_Buffer:
      begin
        // Oops. Space for just one entry wasn't enough. Allocate more.
        ReallocMem(Table, TableSize);
        Ret := GetIpAddrTable(Table, TableSize, False);
        if Ret <> No_Error then
        begin
          // Function expects signed value, but Ret is unsigned. Type
          // cast to avoid range-check error, however unlikely.
          RaiseLastOSError(Integer(Ret));
        end;
      end;
    else
      RaiseLastOSError(Integer(Ret));
    end;
  //writeln(Table.dwNumEntries, ' entries:');

  if Table^.dwNumEntries > 0 then
  begin
    //Row := @Table^.Table[0];
    //for i := 0 to Pred(Table^.dwNumEntries) do
    //begin
    //  //writeln(inet_ntoa(in_addr(Row.dwAddr)));
    //  log(inet_ntoa(in_addr(Row^.dwAddr)));
    //  Inc(Row);
    //end;

    for i := 0 to Table^.dwNumEntries-1 do
    begin
      // Convert ADDR to String and add to IPList
      Addr.S_addr := Table^.table[i].dwAddr;
      // Prevent implicit string conversion warning in D2009 by explicit cast to string
      log(inet_ntoa(Addr));
    end;

  end;
  finally
    FreeMem(Table);
  end;
end;

procedure TForm1.ButtonIpconfigAlClick(Sender: TObject);
const
  BUF_SIZE = 2048; // Buffer size for reading the output in chunks

var
  AProcess     : TProcess;
  OutputStream : TStream;
  BytesRead    : longint;
  Buffer       : array[1..BUF_SIZE] of byte;
begin
  // Set up the process; as an example a recursive directory search is used
  // because that will usually result in a lot of data.
  AProcess := TProcess.Create(nil);

  // The commands for Windows and *nix are different hence the $IFDEFs
  {$IFDEF Windows}
    // In Windows the dir command cannot be used directly because it's a build-in
    // shell command. Therefore cmd.exe and the extra parameters are needed.
    AProcess.Executable := 'c:\windows\system32\cmd.exe';
    AProcess.Parameters.Add('/c');
    AProcess.Parameters.Add('ipconfig /all');     //'dir /s c:\windows' //'dir /w'
  {$ENDIF Windows}

  // Process option poUsePipes has to be used so the output can be captured.
  // Process option poWaitOnExit can not be used because that would block
  // this program, preventing it from reading the output data of the process.
  AProcess.Options := [poUsePipes];

  AProcess.ShowWindow:=swoHide;   //swoShow   //swoHide
  Log('>> %s',['Please wait']);

  // Start the process (run the dir/ls command)
  AProcess.Execute;

  // Create a stream object to store the generated output in. This could
  // also be a file stream to directly save the output to disk.
  OutputStream := TMemoryStream.Create;

  // All generated output from AProcess is read in a loop until no more data is available
  repeat
    // Get the new data from the process to a maximum of the buffer size that was allocated.
    // Note that all read(...) calls will block except for the last one, which returns 0 (zero).
    BytesRead := AProcess.Output.Read(Buffer, BUF_SIZE);

    // Add the bytes that were read to the stream for later usage
    OutputStream.Write(Buffer, BytesRead)

  until BytesRead = 0;  // Stop if no more data is available

  // The process has finished so it can be cleaned up
  AProcess.Free;

  // Or the data can be shown on screen
  with TStringList.Create do
  begin
    OutputStream.Position := 0; // Required to make sure all data is copied from the start
    LoadFromStream(OutputStream);
    Log('>> %s',[Text]);
    Free
  end;

  // Clean up
  OutputStream.Free;
end;

procedure TForm1.ButtonIpconfigClick(Sender: TObject);
const
  BUF_SIZE = 2048; // Buffer size for reading the output in chunks

var
  AProcess     : TProcess;
  OutputStream : TStream;
  BytesRead    : longint;
  Buffer       : array[1..BUF_SIZE] of byte;
begin
  // Set up the process; as an example a recursive directory search is used
  // because that will usually result in a lot of data.
  AProcess := TProcess.Create(nil);

  // The commands for Windows and *nix are different hence the $IFDEFs
  {$IFDEF Windows}
    // In Windows the dir command cannot be used directly because it's a build-in
    // shell command. Therefore cmd.exe and the extra parameters are needed.
    AProcess.Executable := 'c:\windows\system32\cmd.exe';
    AProcess.Parameters.Add('/c');
    AProcess.Parameters.Add('ipconfig');     //'dir /s c:\windows' //'dir /w'
  {$ENDIF Windows}

  // Process option poUsePipes has to be used so the output can be captured.
  // Process option poWaitOnExit can not be used because that would block
  // this program, preventing it from reading the output data of the process.
  AProcess.Options := [poUsePipes];

  AProcess.ShowWindow:=swoHide;   //swoShow   //swoHide
  Log('>> %s',['Please wait']);

  // Start the process (run the dir/ls command)
  AProcess.Execute;

  // Create a stream object to store the generated output in. This could
  // also be a file stream to directly save the output to disk.
  OutputStream := TMemoryStream.Create;

  // All generated output from AProcess is read in a loop until no more data is available
  repeat
    // Get the new data from the process to a maximum of the buffer size that was allocated.
    // Note that all read(...) calls will block except for the last one, which returns 0 (zero).
    BytesRead := AProcess.Output.Read(Buffer, BUF_SIZE);

    // Add the bytes that were read to the stream for later usage
    OutputStream.Write(Buffer, BytesRead)

  until BytesRead = 0;  // Stop if no more data is available

  // The process has finished so it can be cleaned up
  AProcess.Free;

  // Or the data can be shown on screen
  with TStringList.Create do
  begin
    OutputStream.Position := 0; // Required to make sure all data is copied from the start
    LoadFromStream(OutputStream);
    Log('>> %s',[Text]);
    Free
  end;

  // Clean up
  OutputStream.Free;
end;


procedure TForm1.ButtonPingClick(Sender: TObject);
const
  BUF_SIZE = 2048; // Buffer size for reading the output in chunks

var
  AProcess     : TProcess;
  OutputStream : TStream;
  BytesRead    : longint;
  Buffer       : array[1..BUF_SIZE] of byte;
begin
  // Set up the process; as an example a recursive directory search is used
  // because that will usually result in a lot of data.
  AProcess := TProcess.Create(nil);

  // The commands for Windows and *nix are different hence the $IFDEFs
  {$IFDEF Windows}
    // In Windows the dir command cannot be used directly because it's a build-in
    // shell command. Therefore cmd.exe and the extra parameters are needed.
    AProcess.Executable := 'c:\windows\system32\cmd.exe';
    AProcess.Parameters.Add('/c');
    AProcess.Parameters.Add('ping '+Edit1.Caption);     //'dir /s c:\windows' //'dir /w'
  {$ENDIF Windows}

  // Process option poUsePipes has to be used so the output can be captured.
  // Process option poWaitOnExit can not be used because that would block
  // this program, preventing it from reading the output data of the process.
  AProcess.Options := [poUsePipes];

  AProcess.ShowWindow:=swoHide;   //swoShow   //swoHide
  Log('>> %s',['Please wait']);

  // Start the process (run the dir/ls command)
  AProcess.Execute;

  // Create a stream object to store the generated output in. This could
  // also be a file stream to directly save the output to disk.
  OutputStream := TMemoryStream.Create;

  // All generated output from AProcess is read in a loop until no more data is available
  repeat
    // Get the new data from the process to a maximum of the buffer size that was allocated.
    // Note that all read(...) calls will block except for the last one, which returns 0 (zero).
    BytesRead := AProcess.Output.Read(Buffer, BUF_SIZE);

    // Add the bytes that were read to the stream for later usage
    OutputStream.Write(Buffer, BytesRead)

  until BytesRead = 0;  // Stop if no more data is available

  // The process has finished so it can be cleaned up
  AProcess.Free;

  // Or the data can be shown on screen
  with TStringList.Create do
  begin
    OutputStream.Position := 0; // Required to make sure all data is copied from the start
    LoadFromStream(OutputStream);
    Log('>> %s',[Text]);
    Free
  end;

  // Clean up
  OutputStream.Free;
end;

procedure TForm1.CalibrateButtonClick(Sender: TObject);
begin
  DB1_DBW12.Value:=3;
  DB1_DBX10_0.Value:=1;
end;

procedure TForm1.BCMaterialDesignButton14Click(Sender: TObject);
var
  c: TComponent;
  dd: TPLCBlockElement;
  i2:double;
  YMIN:double;
  YMAX:double;
  i:integer;
begin

    _SourceUp_.Clear;
    YMAX:=0.0;
    YMIN:=999.99;
    ChartRampUp.Extent.YMin := 0;
    ChartRampUp.ExtentSizeLimit.YMin:= 0;
    ChartRampUp.Extent.YMax := 0;
    ChartRampUp.ExtentSizeLimit.YMax:= 0;
    for i:=1 to 100 do
    begin
      i2:=0;
      c := Form1.findcomponent('ActualUp'+inttostr(i));
      if c=nil then
      begin
        _SourceUp_.Add(i,i2);
        BaseUp_[i-1]:=i2;
        if (YMIN>i2) then YMIN:=i2;
        if (YMAX<i2) then YMAX:=i2;
      end
      else
      begin
        if not (c is TPLCBlockElement) then
        begin
          _SourceUp_.Add(i,i2);
          BaseUp_[i-1]:=i2;
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
        end
        else
        begin
          dd:= TPLCBlockElement(c);
          _SourceUp_.Add(i,dd.Value);
          i2:=dd.Value;
          BaseUp_[i-1]:=i2;
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
          c:=nil;
          dd:=nil;
        end;
      end;
    end;
    if ChartRampUp.Extent.YMax < YMAX+2 then
    begin
      ChartRampUp.Extent.YMax := YMAX+2;
      ChartRampUp.ExtentSizeLimit.YMax:= YMAX+2; ;
    end;
    if ChartRampUp.Extent.YMin > YMIN then
    begin
      ChartRampUp.Extent.YMin := YMIN;
      ChartRampUp.ExtentSizeLimit.YMin:= YMIN; ;
    end;

    _SourceDown_.Clear;
    YMAX:=0.0;
    YMIN:=999.99;
    ChartRampDown.Extent.YMin := 0;
    ChartRampDown.ExtentSizeLimit.YMin:= 0;
    ChartRampDown.Extent.YMax := 0;
    ChartRampDown.ExtentSizeLimit.YMax:= 0;
    for i:=1 to 100 do
    begin
      i2:=0;
      c := Form1.findcomponent('ActualDown'+inttostr(i));
      if c=nil then
      begin
        _SourceDown_.Add(i,i2);
        BaseDown_[i-1]:=i2;
        if (YMIN>i2) then YMIN:=i2;
        if (YMAX<i2) then YMAX:=i2;
      end
      else
      begin
        if not (c is TPLCBlockElement) then
        begin
          _SourceDown_.Add(i,i2);
          BaseDown_[i-1]:=i2;
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
        end
        else
        begin
          dd:= TPLCBlockElement(c);
          _SourceDown_.Add(i,dd.Value);
          i2:=dd.Value;
          BaseDown_[i-1]:=i2;
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
          c:=nil;
          dd:=nil;
        end;
      end;
    end;
    if ChartRampDown.Extent.YMax < YMAX+2 then
    begin
      ChartRampDown.Extent.YMax := YMAX+2;
      ChartRampDown.ExtentSizeLimit.YMax:= YMAX+2; ;
    end;
    if ChartRampDown.Extent.YMin > YMIN then
    begin
      ChartRampDown.Extent.YMin := YMIN;
      ChartRampDown.ExtentSizeLimit.YMin:= YMIN; ;
    end;

    CalibbrateUpValue:=DB1_DBW44.Value;
    CalibbrateDownValue:=DB1_DBW46.Value;
    PotenDistance:=DB1_DBW62.Value;
    _SourcePercentUp_.Clear;
    _SourcePercentDown_.Clear;
    if (DB1_DBX60_0.Value=0) and (DB1_DBX68_0.Value=0) and(PotenDistance<>0) then
    begin
      //ManActPosiPercent:=((((PotenActual-CalibrateDown)+0.0)/(PotenDistance+0.0))+0.0)*100.0;
      YMAX:=0.0;
      YMIN:=999.99;
      ChartPercentUp.Extent.YMin := 0;
      ChartPercentUp.ExtentSizeLimit.YMin:= 0;
      ChartPercentUp.Extent.YMax := 0;
      ChartPercentUp.ExtentSizeLimit.YMax:= 0;
      for i:=1 to 100 do
      begin
        i2:=((BaseUp_[i-1]-CalibbrateDownValue)/PotenDistance)*100;
          _SourcePercentUp_.Add(i,i2);
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
      end;
      if ChartPercentUp.Extent.YMax < YMAX+2 then
      begin
        ChartPercentUp.Extent.YMax := YMAX+2;
        ChartPercentUp.ExtentSizeLimit.YMax:= YMAX+2; ;
      end;
      if ChartPercentUp.Extent.YMin > YMIN then
      begin
        ChartPercentUp.Extent.YMin := YMIN;
        ChartPercentUp.ExtentSizeLimit.YMin:= YMIN;
      end;

      YMAX:=0.0;
      YMIN:=999.99;
      ChartPercentDown.Extent.YMin := 0;
      ChartPercentDown.ExtentSizeLimit.YMin:= 0;
      ChartPercentDown.Extent.YMax := 0;
      ChartPercentDown.ExtentSizeLimit.YMax:= 0;
      for i:=1 to 100 do
      begin
        i2:=((BaseDown_[i-1]-CalibbrateDownValue)/PotenDistance)*100;
          _SourcePercentDown_.Add(i,i2);
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
      end;
      if ChartPercentDown.Extent.YMax < YMAX+2 then
      begin
        ChartPercentDown.Extent.YMax := YMAX+2;
        ChartPercentDown.ExtentSizeLimit.YMax:= YMAX+2; ;
      end;
      if ChartPercentDown.Extent.YMin > YMIN then
      begin
        ChartPercentDown.Extent.YMin := YMIN;
        ChartPercentDown.ExtentSizeLimit.YMin:= YMIN;
      end;

    end;

end;

procedure TForm1.BCMaterialDesignButton1Click(Sender: TObject);
begin
  DB1_DBW12.Value:=1;
  DB1_DBX10_0.Value:=1;
end;

procedure TForm1.BCMaterialDesignButton2Click(Sender: TObject);
begin
  DB1_DBX10_0.Value:=0;
end;

procedure TForm1.BCMaterialDesignButton3Click(Sender: TObject);
begin
  DB1_DBW12.Value:=2;
  DB1_DBX10_0.Value:=1;
end;

procedure TForm1.BCMaterialDesignButton6Click(Sender: TObject);
begin
  DB1_DBX10_5.Value:=1;
end;

procedure TForm1.BCMaterialDesignButton7Click(Sender: TObject);
begin
  DB1_DBX10_4.Value:=1;
end;

procedure TForm1.BCMaterialDesignButton8Click(Sender: TObject);
begin
  DB1_DBW78_2.Value:=1;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i:integer;
  c: TComponent;
  dd: TPLCBlockElement;
  i2:double;
begin
  _SourceUp_.Clear;

  //for i:=0 to form1.ComponentCount-1 do  // Every componnent on form1
  //begin
  //  if form1.Components[i] is TPLCBlockElement then // is it a tlabel ?
  //  begin
  //    with form1.Components[i] as TPLCBlockElement do  // using with so you can easily set multiple properties
  //    begin
  //      memo1.Append(Name);
  //    end;
  //  end;
  //end;
  //c := Form1.findcomponent('ActualUp1');
  //dd:= TPLCBlockElement(c);
  //if c=nil then showmessage('ActualUp1 not found on Form1');
  //if not (c is TPLCBlockElement) then showmessage('ActualUp1 found on Form1, but it is not a TPLCBlockElement');
  //if (c is TPLCBlockElement) then showmessage(c.Name + FloatToStr(dd.Value));

  for i:=1 to 100 do
  begin
    i2:=i;
    c := Form1.findcomponent('ActualUp'+inttostr(i));
    if c=nil then
    begin
      _SourceUp_.Add(i,0);       //_SourceUp_.Add(i,i+0 );     //ActualUp1.Value
    end
    else
    begin
      if not (c is TPLCBlockElement) then
      begin
        _SourceUp_.Add(i,0);
      end
      else
      begin
        dd:= TPLCBlockElement(c);
        _SourceUp_.Add(i,dd.Value);
        i2:=dd.Value;
        c:=nil;
        dd:=nil;
      end;
    end;

    if ChartRampUp.Extent.YMax < i2+2 then
    begin
      ChartRampUp.Extent.YMax := i2+2;
      ChartRampUp.ExtentSizeLimit.YMax:= i2+2; ;
    end;
  end;
end;

procedure TForm1.ChartForceManualClick(Sender: TObject);
begin
   ChartForceManual.Tag :=1;
end;

procedure TForm1.ChartForceManualDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   ChartForceManual.Tag :=1;
end;

procedure TForm1.ChartForceManualMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   ChartForceManual.Tag :=1;
end;

procedure TForm1.ChartForceManualMouseEnter(Sender: TObject);
begin
  Chart_Enter:=true;
end;

procedure TForm1.ChartForceManualMouseLeave(Sender: TObject);
begin
  Chart_Enter:=true;
end;

procedure TForm1.ChartRefreshMenuClick(Sender: TObject);
begin
  ChartForceManual.Tag:=0;
  Chatr_Zoom:=0;
end;

procedure TForm1.ChartZoomOutMenuClick(Sender: TObject);
var
  AC: TDoublePoint;
  AZ: TDoubleRect;
begin
  ChartForceManual.Tag:=1;
  AC:=ChartForceManual.LogicalExtent.a;
  AC.X:=AC.X-2;
  AC.Y:=AC.Y-2;
  AZ.a:=AC;
  AC:=ChartForceManual.LogicalExtent.b;
  AC.X:=AC.X+2;
  AC.Y:=AC.Y+2;
  AZ.b:=AC;
  ChartForceManual.LogicalExtent:=AZ;
  Chatr_Zoom:=Chatr_Zoom-5;
end;

procedure TForm1.Disconnect_Click(Sender: TObject);
begin
  TCP_UDPPort1.Active:=false;
end;

procedure TForm1.Edit1EditingDone(Sender: TObject);
begin
  TCP_UDPPort1.Host:=Edit1.Text;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Chart_Enter:=false;
  ChartForceManual.Tag:=0;
  Chatr_Zoom:=0;

  PageControl1.TabIndex:=0;
  RampTab.TabIndex:=0;
  Directory_:=FormatDateTime('MM YYYY',Now);
  FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.CSV';
  //if CheckDirectory(Directory_,Memo1) then begin Application.Terminate; end;
  Memo1.Append('Directory ='+Directory_);
  Memo1.Append('FileName ='+FileName_);

  ScrollBox1.VertScrollBar.Position:=0;
  ScrollBox2.VertScrollBar.Position:=0;
  Setlength(BaseUp_,100);
  Setlength(BaseDown_,100);
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  TCP_UDPPort1.Active:=false;
  Timer1.Enabled:=false;
end;

procedure TForm1.Image1Click(Sender: TObject);
var
  bmp: graphics.TBitmap;
  i:integer;
begin
  if (FormatDateTime('MM YYYY',Now)<>Directory_) then
  begin
    Directory_:=FormatDateTime('MM YYYY',Now);
    FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.bmp';
      if PageControl1.TabIndex=0 then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'ForceManual.bmp';
      if (PageControl1.TabIndex=1) and (RampTab.TabIndex=0) then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'RampUp.bmp';
      if (PageControl1.TabIndex=1) and (RampTab.TabIndex=1) then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'RampDown.bmp';
      if (PageControl1.TabIndex=1) and (RampTab.TabIndex=2) then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'RampUpPercent.bmp';
      if (PageControl1.TabIndex=1) and (RampTab.TabIndex=3) then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'RampDownPercent.bmp';
      if PageControl1.TabIndex=2 then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'Hardware.bmp';
      if PageControl1.TabIndex=3 then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'NetworkConfig.bmp';
  end;
  if CheckDirectory(Directory_,Memo1) then begin showmessage('Unable to save file'); Exit; end;

  try
    bmp := graphics.TBitmap.Create;
    for i:=1 to 1000 do
    begin
      Application.ProcessMessages
    end;
    if get_ss_of(Form1.Handle, bmp) = 0 then
    begin
      // display on TImage
      //image1.Picture.Assign(bmp);
      // or save to file
      FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.bmp';
      if PageControl1.TabIndex=0 then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'ForceManual.bmp';
      if (PageControl1.TabIndex=1) and (RampTab.TabIndex=0) then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'RampUp.bmp';
      if (PageControl1.TabIndex=1) and (RampTab.TabIndex=1) then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'RampDown.bmp';
      if (PageControl1.TabIndex=1) and (RampTab.TabIndex=2) then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'RampUpPercent.bmp';
      if (PageControl1.TabIndex=1) and (RampTab.TabIndex=3) then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'RampDownPercent.bmp';
      if PageControl1.TabIndex=2 then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'Hardware.bmp';
      if PageControl1.TabIndex=3 then FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'NetworkConfig.bmp';
      bmp.SaveToFile(FileName_);
    end;
  finally
    bmp.Free;
  end;
end;

procedure TForm1.Label10Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
  PageControl1.TabIndex:=1;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  PageControl1.TabIndex:=0;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
  PageControl1.TabIndex:=2;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  PageControl1.TabIndex:=3;
end;

procedure TForm1.SaveScreenCaptureClick(Sender: TObject);
var
  bmp: graphics.TBitmap;
  i:integer;
begin
  if (FormatDateTime('MM YYYY',Now)<>Directory_) then
  begin
    Directory_:=FormatDateTime('MM YYYY',Now); FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.bmp';
  end;
  if CheckDirectory(Directory_,Memo1) then begin showmessage('Unable to save file'); Exit; end;

  try
    bmp := graphics.TBitmap.Create;
    for i:=1 to 1000 do
    begin
      Application.ProcessMessages
    end;
    if get_ss_of(Form1.Handle, bmp) = 0 then
    begin
      // display on TImage
      //image1.Picture.Assign(bmp);
      // or save to file
      FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.bmp';
      bmp.SaveToFile(FileName_);
    end;
  finally
    bmp.Free;
  end;
  //ScreenshotToFile('123.bmp',0);
end;

procedure TForm1.SaveToCSVFileClick(Sender: TObject);
var
  i:integer;
  i2:double;
  i3:double;
  //MaxRecordTime:integer;
  //Txt:String;
  fileout : TextFile;
  S_Name:string;
  File_OK:Boolean;
  Txt:String;

begin

  if (FormatDateTime('MM YYYY',Now)<>Directory_) then
  begin
    Directory_:=FormatDateTime('MM YYYY',Now); FileName_:= Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.CSV';
  end;
  if CheckDirectory(Directory_,Memo1) then begin showmessage('Unable to save file'); Exit; end;

  S_Name:=Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'.CSV';
  i:=0;
  File_OK:=True;

  try
    AssignFile(fileout, S_Name);
  except
    on E: EInOutError do
    begin
      //showmessage('AssignFile: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
      File_OK:=False;
    end;
  end;

  //if File_OK then showmessage('File_OK=OK');
  //if not File_OK then showmessage('File_OK=not OK');
  //Timer3.Enabled:=False;

  while((File_OK = False) and (i<100)) do
  begin
    i:=i+1;
    S_Name:=Directory_+'\'+FormatDateTime('DD MM YYYY hh nn ss',Now)+'_'+IntToStr(i)+'.CSV';
    File_OK:=True;
    try
      AssignFile(fileout, S_Name);
    except
      on E: EInOutError do
      begin
        //showmessage('AssignFile: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
        File_OK:=False;
      end;
    end;
  end;

   try
     Append(fileout);
   except
     //on E: EInOutError do
     //showmessage('Append: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
     on E: EInOutError do
     try
       rewrite (fileout);
       writeln(fileout, 'TimeStamp='+CalibrationTimeStamp.Caption+',-,-,-,-');
       writeln(fileout, 'Timex200ms,UpValue,DownValue,PercentUp,PercentDown');
     except
       //on E: EInOutError do
       //showmessage('Append: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
     end;
   end;

   try         //FloatToStr(Int(Random(1*10)))
     begin
       CalibbrateUpValue:=DB1_DBW44.Value;
       CalibbrateDownValue:=DB1_DBW46.Value;
       PotenDistance:=DB1_DBW62.Value;
       for i:=1 to 100 do
       begin
         i2:=0.0;
         i3:=0.0;
         if (DB1_DBX60_0.Value=0) and (DB1_DBX68_0.Value=0) and(PotenDistance<>0) then  i2:=((BaseUp_[i-1]-CalibbrateDownValue)/PotenDistance)*100;
         if (DB1_DBX60_0.Value=0) and (DB1_DBX68_0.Value=0) and(PotenDistance<>0) then  i3:=((BaseDown_[i-1]-CalibbrateDownValue)/PotenDistance)*100;
         writeln(fileout,IntToStr(i)+','+FloatToStr(BaseUp_[i-1])+','+FloatToStr(BaseUp_[i-1])+','+FloatToStr(i2)+','+FloatToStr(i3));

       end;
     end;
     CloseFile(fileout);
   except
     //on E: EInOutError do
     //showmessage('Append: '+E.ClassName+'/'+ E.Message+'/'+IntToStr(E.ErrorCode));
   end;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  c: TComponent;
  dd: TPLCBlockElement;
  i2:double;
  YMIN:double;
  YMAX:double;
  i:integer;
begin
  if DB1_DBX68_3.Value>0 then
  begin
    CalibrateButton.NormalColor:=clLime;
    CalibrateButton1.NormalColor:=clLime;
    CalibrationTimeStamp.Caption:=FormatDateTime('DD/MM/YYYY',Now)+' '+FormatDateTime('hh:nn:ss',Now);
    DB1_DBX68_3.Value:=0;
    DB1_DBW12.Value:=0;
  end
   else
   begin
     CalibrateButton.NormalColor:=clWhite;
     CalibrateButton1.NormalColor:=clWhite;
   end;
  if DB1_DBW48.Value<1 then CalibrateEvents.Caption:='---';
  if DB1_DBW48.Value=1 then
  begin
    CalibrateEvents.Caption:='Initialize Up (1)';
    Shape4.Brush.Color:=clGreen;
  end
  else Shape4.Brush.Color:=clWhite;
  if DB1_DBW48.Value=2 then
  begin
    CalibrateEvents.Caption:='Initialize Down (2)';
    Shape5.Brush.Color:=clGreen;
  end
  else Shape5.Brush.Color:=clWhite;
  if DB1_DBW48.Value=3 then
  begin
    CalibrateEvents.Caption:='Recheck Up Direction (3)';
    Shape6.Brush.Color:=clGreen;
  end
  else Shape6.Brush.Color:=clWhite;
  if DB1_DBW48.Value=4 then
  begin
    CalibrateEvents.Caption:='Recheck Down Direction (4)';
    Shape7.Brush.Color:=clGreen;
  end
  else Shape7.Brush.Color:=clWhite;
  if (DB1_DBW48.Value=5) or (DB1_DBX68_3.Value>0) then
  begin
    CalibrateEvents.Caption:='Calibrate Successfully (5)';
    Shape8.Brush.Color:=clGreen;
  end;
  if (DB1_DBX60_0.Value<>0) or (DB1_DBX68_0.Value<>0) or ((DB1_DBW48.Value>0) and (DB1_DBW48.Value>5)) then
   begin
     Shape8.Brush.Color:=clWhite;
   end;

  if DB1_DBW48.Value>5 then CalibrateEvents.Caption:='---';

  if DB1_DBW48.Value>0 then CalibrationTimeStamp.Caption:= '---';

  if MB0_2.Value>0 then M0_2.Brush.Color:=clActiveCaption else M0_2.Brush.Color:=clWhite;
  if MB0_3.Value>0 then M0_3.Brush.Color:=clActiveCaption else M0_3.Brush.Color:=clWhite;
  if MB0_4.Value>0 then M0_4.Brush.Color:=clActiveCaption else M0_4.Brush.Color:=clWhite;
  if MB0_5.Value>0 then M0_5.Brush.Color:=clActiveCaption else M0_5.Brush.Color:=clWhite;
  if MB0_6.Value>0 then M0_6.Brush.Color:=clActiveCaption else M0_6.Brush.Color:=clWhite;
  if MB0_7.Value>0 then M0_7.Brush.Color:=clActiveCaption else M0_7.Brush.Color:=clWhite;
  M0_2_.Brush:=M0_2.Brush;
  M0_3_.Brush:=M0_3.Brush;
  M0_4_.Brush:=M0_4.Brush;
  M0_5_.Brush:=M0_5.Brush;
  M0_6_.Brush:=M0_6.Brush;
  M0_7_.Brush:=M0_7.Brush;
  M0_2_1.Brush:=M0_2.Brush;
  M0_3_1.Brush:=M0_3.Brush;
  M0_4_1.Brush:=M0_4.Brush;
  M0_5_1.Brush:=M0_5.Brush;
  M0_6_1.Brush:=M0_6.Brush;
  M0_7_1.Brush:=M0_7.Brush;
  M0_2_2.Brush:=M0_2.Brush;
  M0_3_2.Brush:=M0_3.Brush;
  M0_4_2.Brush:=M0_4.Brush;
  M0_5_2.Brush:=M0_5.Brush;
  M0_6_2.Brush:=M0_6.Brush;
  M0_7_2.Brush:=M0_7.Brush;

  if I0_0.Value>0 then I0_0_.Brush.Color:=clGreen else I0_0_.Brush.Color:=clWhite;
  if I0_1.Value>0 then I0_1_.Brush.Color:=clGreen else I0_1_.Brush.Color:=clWhite;
  if I0_2.Value>0 then I0_2_.Brush.Color:=clGreen else I0_2_.Brush.Color:=clWhite;
  if I0_3.Value>0 then I0_3_.Brush.Color:=clGreen else I0_3_.Brush.Color:=clWhite;
  if I0_4.Value>0 then I0_4_.Brush.Color:=clGreen else I0_4_.Brush.Color:=clWhite;
  if I0_5.Value>0 then I0_5_.Brush.Color:=clGreen else I0_5_.Brush.Color:=clWhite;
  if I0_6.Value>0 then I0_6_.Brush.Color:=clGreen else I0_6_.Brush.Color:=clWhite;
  if I0_7.Value>0 then I0_7_.Brush.Color:=clGreen else I0_7_.Brush.Color:=clWhite;

  if Q0_0.Value>0 then Q0_0_.Brush.Color:=clGreen else Q0_0_.Brush.Color:=clWhite;
  if Q0_1.Value>0 then Q0_1_.Brush.Color:=clGreen else Q0_1_.Brush.Color:=clWhite;
  if Q0_2.Value>0 then Q0_2_.Brush.Color:=clGreen else Q0_2_.Brush.Color:=clWhite;
  if Q0_3.Value>0 then Q0_3_.Brush.Color:=clGreen else Q0_3_.Brush.Color:=clWhite;
  if Q0_4.Value>0 then Q0_4_.Brush.Color:=clGreen else Q0_4_.Brush.Color:=clWhite;
  if Q0_5.Value>0 then Q0_5_.Brush.Color:=clGreen else Q0_5_.Brush.Color:=clWhite;
  if Q0_6.Value>0 then Q0_6_.Brush.Color:=clGreen else Q0_6_.Brush.Color:=clWhite;
  if Q0_7.Value>0 then Q0_7_.Brush.Color:=clGreen else Q0_7_.Brush.Color:=clWhite;

  if DB1_DBX18_0.Value>0 then Up_Dir.Brush.Color:=clGreen else Up_Dir.Brush.Color:=clWhite;
  if DB1_DBX18_1.Value>0 then Down_Dir.Brush.Color:=clGreen else Down_Dir.Brush.Color:=clWhite;

  if DB1_DBX60_0.Value>0 then CalibrateError.Brush.Color:=clRed else CalibrateError.Brush.Color:=clWhite;
  if DB1_DBX68_0.Value>0 then DistanceError.Brush.Color:=clRed else DistanceError.Brush.Color:=clWhite;
  if DB1_DBX68_1.Value>0 then LimitLowError.Brush.Color:=clRed else LimitLowError.Brush.Color:=clWhite;
  if DB1_DBX68_2.Value>0 then LimitHeightError.Brush.Color:=clRed else LimitHeightError.Brush.Color:=clWhite;

  CalibrateError1.Brush.Color:=CalibrateError.Brush.Color;
  DistanceError1.Brush.Color:=DistanceError.Brush.Color;
  LimitLowError1.Brush.Color:=LimitLowError.Brush.Color;
  LimitHeightError1.Brush.Color:=LimitHeightError.Brush.Color;
  CalibrateError2.Brush.Color:=CalibrateError.Brush.Color;
  DistanceError2.Brush.Color:=DistanceError.Brush.Color;
  LimitLowError2.Brush.Color:=LimitLowError.Brush.Color;
  LimitHeightError2.Brush.Color:=LimitHeightError.Brush.Color;

  if DB1_DBW12.Value=3 then
  begin
    _SourceUp_.Clear;
    YMAX:=0.0;
    YMIN:=999.99;
    ChartRampUp.Extent.YMin := 0;
    ChartRampUp.ExtentSizeLimit.YMin:= 0;
    ChartRampUp.Extent.YMax := 0;
    ChartRampUp.ExtentSizeLimit.YMax:= 0;
    for i:=1 to 100 do
    begin
      i2:=0;
      c := Form1.findcomponent('ActualUp'+inttostr(i));
      if c=nil then
      begin
        _SourceUp_.Add(i,i2);
        BaseUp_[i-1]:=i2;
        if (YMIN>i2) then YMIN:=i2;
        if (YMAX<i2) then YMAX:=i2;
      end
      else
      begin
        if not (c is TPLCBlockElement) then
        begin
          _SourceUp_.Add(i,i2);
          BaseUp_[i-1]:=i2;
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
        end
        else
        begin
          dd:= TPLCBlockElement(c);
          _SourceUp_.Add(i,dd.Value);
          i2:=dd.Value;
          BaseUp_[i-1]:=i2;
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
          c:=nil;
          dd:=nil;
        end;
      end;
    end;
    if ChartRampUp.Extent.YMax < YMAX+2 then
    begin
      ChartRampUp.Extent.YMax := YMAX+2;
      ChartRampUp.ExtentSizeLimit.YMax:= YMAX+2; ;
    end;
    if ChartRampUp.Extent.YMin > YMIN then
    begin
      ChartRampUp.Extent.YMin := YMIN;
      ChartRampUp.ExtentSizeLimit.YMin:= YMIN; ;
    end;
  end;

  if DB1_DBW12.Value=3 then
  begin
    _SourceDown_.Clear;
    YMAX:=0.0;
    YMIN:=999.99;
    ChartRampDown.Extent.YMin := 0;
    ChartRampDown.ExtentSizeLimit.YMin:= 0;
    ChartRampDown.Extent.YMax := 0;
    ChartRampDown.ExtentSizeLimit.YMax:= 0;
    for i:=1 to 100 do
    begin
      i2:=0;
      c := Form1.findcomponent('ActualDown'+inttostr(i));
      if c=nil then
      begin
        _SourceDown_.Add(i,i2);
        BaseDown_[i-1]:=i2;
        if (YMIN>i2) then YMIN:=i2;
        if (YMAX<i2) then YMAX:=i2;
      end
      else
      begin
        if not (c is TPLCBlockElement) then
        begin
          _SourceDown_.Add(i,i2);
          BaseDown_[i-1]:=i2;
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
        end
        else
        begin
          dd:= TPLCBlockElement(c);
          _SourceDown_.Add(i,dd.Value);
          i2:=dd.Value;
          BaseDown_[i-1]:=i2;
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
          c:=nil;
          dd:=nil;
        end;
      end;
    end;
    if ChartRampDown.Extent.YMax < YMAX+2 then
    begin
      ChartRampDown.Extent.YMax := YMAX+2;
      ChartRampDown.ExtentSizeLimit.YMax:= YMAX+2; ;
    end;
    if ChartRampDown.Extent.YMin > YMIN then
    begin
      ChartRampDown.Extent.YMin := YMIN;
      ChartRampDown.ExtentSizeLimit.YMin:= YMIN; ;
    end;
  end;

  if DB1_DBW12.Value=3 then
  begin
    CalibbrateUpValue:=DB1_DBW44.Value;
    CalibbrateDownValue:=DB1_DBW46.Value;
    PotenDistance:=DB1_DBW62.Value;
    _SourcePercentUp_.Clear;
    _SourcePercentDown_.Clear;
    if (DB1_DBX60_0.Value=0) and (DB1_DBX68_0.Value=0) and(PotenDistance<>0) then
    begin
      //ManActPosiPercent:=((((PotenActual-CalibrateDown)+0.0)/(PotenDistance+0.0))+0.0)*100.0;
      YMAX:=0.0;
      YMIN:=999.99;
      ChartPercentUp.Extent.YMin := 0;
      ChartPercentUp.ExtentSizeLimit.YMin:= 0;
      ChartPercentUp.Extent.YMax := 0;
      ChartPercentUp.ExtentSizeLimit.YMax:= 0;
      for i:=1 to 100 do
      begin
        i2:=((BaseUp_[i-1]-CalibbrateDownValue)/PotenDistance)*100;
          _SourcePercentUp_.Add(i,i2);
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
      end;
      if ChartPercentUp.Extent.YMax < YMAX+2 then
      begin
        ChartPercentUp.Extent.YMax := YMAX+2;
        ChartPercentUp.ExtentSizeLimit.YMax:= YMAX+2; ;
      end;
      if ChartPercentUp.Extent.YMin > YMIN then
      begin
        ChartPercentUp.Extent.YMin := YMIN;
        ChartPercentUp.ExtentSizeLimit.YMin:= YMIN;
      end;

      YMAX:=0.0;
      YMIN:=999.99;
      ChartPercentDown.Extent.YMin := 0;
      ChartPercentDown.ExtentSizeLimit.YMin:= 0;
      ChartPercentDown.Extent.YMax := 0;
      ChartPercentDown.ExtentSizeLimit.YMax:= 0;
      for i:=1 to 100 do
      begin
        i2:=((BaseDown_[i-1]-CalibbrateDownValue)/PotenDistance)*100;
          _SourcePercentDown_.Add(i,i2);
          if (YMIN>i2) then YMIN:=i2;
          if (YMAX<i2) then YMAX:=i2;
      end;
      if ChartPercentDown.Extent.YMax < YMAX+2 then
      begin
        ChartPercentDown.Extent.YMax := YMAX+2;
        ChartPercentDown.ExtentSizeLimit.YMax:= YMAX+2; ;
      end;
      if ChartPercentDown.Extent.YMin > YMIN then
      begin
        ChartPercentDown.Extent.YMin := YMIN;
        ChartPercentDown.ExtentSizeLimit.YMin:= YMIN;
      end;

    end;
  end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  i:integer;
  MaxRecordTime:integer;
  Txt:String;
  Ra:Double;

begin
   Randomize();

  MaxRecordTime:=60*60*12;
  if ListChartSource5.Count >= MaxRecordTime then
  begin
    for i:=0 to MaxRecordTime-2 do
    begin
      //ListChartSource1.Item[i]^.Y:=ListChartSource1.Item[i+1]^.Y;
      //ListChartSource1.Item[i]^.Text:=ListChartSource1.Item[i+1]^.Text;

      //ListChartSource4.Item[i]^.Y:=ListChartSource4.Item[i+1]^.Y;
      //ListChartSource4.Item[i]^.Text:=ListChartSource4.Item[i+1]^.Text;

      ListChartSource5.Item[i]^.Y:=ListChartSource5.Item[i+1]^.Y;
      ListChartSource5.Item[i]^.Text:=ListChartSource5.Item[i+1]^.Text;

    end;
    //ListChartSource1.Delete(MaxRecordTime-1);
    //ListChartSource4.Delete(MaxRecordTime-1);
    ListChartSource5.Delete(MaxRecordTime-1);
  end;


  Txt:=FormatDateTime('hh',  Now)+':'+FormatDateTime('nn',  Now)+':'+FormatDateTime('ss',  Now);

  //if TCP_UDPPort1.Active then Ra:= PIW272.Value;
  //if not TCP_UDPPort1.Active then Ra:=0.0;
  //if ChartSimulate then Ra:= Int(Random(1*1000));
  //if ChartForceManual.Extent.YMax<Ra then ChartForceManual.Extent.YMax:=Ra+1;
  //if ChartForceManual.Extent.YMin>Ra then ChartForceManual.Extent.YMin:=Ra-1;
  //if ListChartSource1.Count < MaxRecordTime then ListChartSource1.Add(ListChartSource1.Count,Ra,Txt,clBlue);    //I_DC_CheckBox  DB1_DBD68

  //if TCP_UDPPort1.Active then Ra:= PIW272.Value;
  //if not TCP_UDPPort1.Active then Ra:=0.0;
  //if ChartSimulate then Ra:= Int(Random(1*1000));
  //if ChartForceManual.Extent.YMax<Ra then ChartForceManual.Extent.YMax:=Ra+1;
  //if ChartForceManual.Extent.YMin>Ra then ChartForceManual.Extent.YMin:=Ra-1;
  //if ListChartSource4.Count < MaxRecordTime then ListChartSource2.Add(ListChartSource2.Count,Ra,Txt,clMaroon); //V_DC  DB1_DBD72

  //if TCP_UDPPort1.Active then Ra:= PIW272.Value;
  //if not TCP_UDPPort1.Active then Ra:=0.0;
  //if ChartSimulate then Ra:= Int(Random(1*1000));
  //if ChartForceManual.Extent.YMax<Ra then ChartForceManual.Extent.YMax:=Ra+1;
  //if ChartForceManual.Extent.YMin>Ra then ChartForceManual.Extent.YMin:=Ra-1;
  //if ListChartSource5.Count < MaxRecordTime then ListChartSource3.Add(ListChartSource3.Count,Ra,Txt,clFuchsia);   //LineSpeed  DB1_DBD76

  //if TCP_UDPPort1.Active then Ra:= PIW272.Value;
  //if not TCP_UDPPort1.Active then Ra:=0.0;
  //if ChartSimulate then Ra:= Int(Random(1*1000));
  //if ChartForceManual.Extent.YMax<Ra then ChartForceManual.Extent.YMax:=Ra+1;
  //if ChartForceManual.Extent.YMin>Ra then ChartForceManual.Extent.YMin:=Ra-1;
  //if ListChartSource5.Count < MaxRecordTime then ListChartSource4.Add(ListChartSource4.Count,Ra,Txt,clGreen);   //Power_Out  DB1_DBD252

  if TCP_UDPPort1.Active then Ra:= PIW272.Value;
  if not TCP_UDPPort1.Active then Ra:=0.0;
  if ChartSimulate then Ra:= Int(Random(1*1000));
  //if ChartForceManual.Extent.YMax<Ra then ChartForceManual.Extent.YMax:=Ra+1;
  //if ChartForceManual.Extent.YMin>Ra then ChartForceManual.Extent.YMin:=Ra-1;
  if ChartForceManual.Extent.YMax < Ra+2 then
    begin
      ChartForceManual.Extent.YMax := Ra+2;
      ChartForceManual.ExtentSizeLimit.YMax:= Ra+2; ;
    end;
    if ChartForceManual.Extent.YMin > Ra-1 then
    begin
      ChartForceManual.Extent.YMin := Ra-1;
      ChartForceManual.ExtentSizeLimit.YMin:= Ra-1; ;
    end;
  if ListChartSource5.Count < MaxRecordTime then ListChartSource5.Add(ListChartSource5.Count,Ra,Txt,clRed);   //V_Out  DB1_DBD258

If (ListChartSource5.Count>240) and (ChartForceManual.Tag = 0) then
  begin
    ChartForceManual.BottomAxis.Range.Max:=ListChartSource5.Count;
    //ChartForceManual.BottomAxis.Range.UseMax:=True;
    ChartForceManual.BottomAxis.Range.Min:=ListChartSource5.Count-240;
    //ChartForceManual.BottomAxis.Range.UseMin:=True;
    ChartForceManual.Extent.XMin:=ListChartSource5.Count-240;  ChartForceManual.Extent.XMax:=ListChartSource5.Count;
  end;
  If (ListChartSource5.Count<=240) and (ChartForceManual.Tag = 0) then
  begin
    if(ListChartSource5.Count<=60)then
    ChartForceManual.BottomAxis.Range.Max:=60;
    if(ListChartSource5.Count>60)then
    ChartForceManual.BottomAxis.Range.Max:=ListChartSource5.Count;
    ChartForceManual.BottomAxis.Range.Min:=0;
    ChartForceManual.Extent.XMin:=0;
    if(ListChartSource5.Count<=60)then
    ChartForceManual.Extent.XMax:=60;
    if(ListChartSource5.Count>60)then
    ChartForceManual.Extent.XMax:=ListChartSource5.Count;
  end;

end;

end.

