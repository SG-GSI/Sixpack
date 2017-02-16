unit PackDLL;
//////////////////////////////////////////
// PackDLL.cpp
//
//  DLL für die Sixpack-/Quadpack-Befehle
//   Anbindung für Delphi
//
//  (c) 2002 by Trinamic Microchips GmbH
//              www.trinamic.com
//////////////////////////////////////////


interface

const
  TTLOUT1_LOW = 0;
  TTLOUT1_HIGH = 1;
  TTLOUT1_READY = 2;

  TTLIO1_LOW = 0;
  TTLIO1_HIGH = 1;
  TTLIO1_INPUT = 2;

  MOTOR0 = 1;
  MOTOR1 = 2;
  MOTOR2 = 4;
  MOTOR3 = 8;
  MOTOR4 = 16;
  MOTOR5 = 32;

  MT_PI = 1;
  MT_ROTARY = 2;
  MT_AUTONULLCMD = 4;
  MT_TESTNULL = 8;
  MT_NULLLEFT = 16;
  MT_NULLCENTRE = 32;
  MT_STOPNULL = 64;
  MT_FILTERSWITCH = 128;
  MT_OPTIMIZEWAY = 256;
  MT_FASTREF = 512;
  MT_MECHREF = 1024;
  MT_DELAYTESTNULL = 2048;
  MT_STOPSOFT = 4096;
  MT_STOPNOREF = 8192;
  MT_NULLPOSITIVE = 16384;
  MT_STOPFULLSTEP = 32768;

//Schnittstelle öffnen/schließen
function OpenPort(PortName:PChar; BaudRate:cardinal):THandle; stdcall;
  external 'PackDLL.dll' name '_OpenPort@8';

procedure ClosePort(Handle:THandle); stdcall;
  external 'PackDLL.dll' name '_ClosePort@4';

//Stromsteuerfunktionen
function SetPeakCurrent(Handle:THandle; UnitAddress:word; MotNr, Value:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_SetPeakCurrent@16';

function SetCurrentControl(Handle:THandle; UnitAddress:word;
          MotNr, PowerDownCurrent, StandingCurrent, RunningCurrent, AcceleratingCurrent:byte;
	  PowerDownDelay:word):boolean; stdcall;
  external 'PackDLL.dll' name '_SetCurrentControl@32';

//Geschwindigkeit & Beschleunigung
function SetStepFrequency(Handle:THandle; UnitAddress:word; ClockDivider:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_SetStepFrequency@12';

function SetVMinVStart(Handle:THandle; UnitAddress:word; MotNr:byte; VMin, VStart:word;
          Divider:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_SetVMinVStart@24';

function SetAMaxVMax(Handle:THandle; UnitAddress:word; MotNr:byte; AMax, VMax:word):boolean; stdcall;
  external 'PackDLL.dll' name '_SetAMaxVMax@20';

//Motor- und Referenzfahrtparameter
function SetMotorParameters(Handle:THandle; UnitAddress:word; MotNr:byte;
          PosLimit:cardinal; MotorType:word):boolean; stdcall;
  external 'PackDLL.dll' name '_SetMotorParameters@20';

function SetRefSearchParameters(Handle:THandle; UnitAddress:word; MotNr:byte; VRefMax: word;
          DebouncingTime:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_SetRefSearchParameters@20';

function WriteSineTable(Handle:THandle; UnitAddress:word; TableStart:byte; Entries: PByte):boolean; stdcall;
  external 'PackDLL.dll' name '_WriteSineTable@16';

function SetNullPointOffset(Handle:THandle; UnitAddress:word; MotNr:byte; NullOffset:integer;
          TestNullRange:word):boolean; stdcall;
  external 'PackDLL.dll' name '_SetNullPointOffset@20';

function SetPIParameter(Handle:THandle; UnitAddress:word; MotNr, PropDiv:byte;
          IntDiv, IntClip:word; IntIntpClip:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_SetPIParameter@28';

function SetMargin(Handle:THandle; UnitAddress:word; MotNr:byte; Margin:word):boolean; stdcall;
  external 'PackDLL.dll' name '_SetMargin@16';

//Bewegungsfunktionen
function GetPositionAndActivity(Handle:THandle; UnitAddress:word; MotNr, ResponseAddress:byte;
          var Position:integer; var Activity, StopFlag:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_GetPositionAndActivity@28';

function GetVelocityAndActivity(Handle:THandle; UnitAddress:word; MotNr, ResponseAddress:byte;
          var Velocity:ShortInt; var Activity:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_GetVelocityAndActivity@24';

function ReferenceSearch(Handle:THandle; UnitAddress:word; MotNr:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_ReferenceSearch@12';

function StartRamp(Handle:THandle; UnitAddress:word; MotNr:byte; TargetPosition:integer):boolean; stdcall;
  external 'PackDLL.dll' name '_StartRamp@16';

function PITargetPosition(Handle:THandle; UnitAddress:word; MotNr:byte; TargetPosition:integer):boolean; stdcall;
  external 'PackDLL.dll' name '_PITargetPosition@16';

function ConstantRotation(Handle:THandle; UnitAddress:word; MotNr:byte; Velocity:ShortInt):boolean; stdcall;
  external 'PackDLL.dll' name '_ConstantRotation@16';

function SetTargetPosition(Handle:THandle; UnitAddress:word; MotNr:byte; TargetPosition:integer):boolean; stdcall;
  external 'PackDLL.dll' name '_SetTargetPosition@16';

function SetActualPosition(Handle:THandle; UnitAddress:word; MotNr:byte; TargetPosition:integer):boolean; stdcall;
  external 'PackDLL.dll' name '_SetActualPosition@16';

function StartRampParallel(Handle:THandle; UnitAddress:word; Mask:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_StartRampParallel@12';

function StopMotors(Handle:THandle; UnitAddress:word; Mask:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_StopMotors@12';

function StartInterpolation(Handle:THandle; UnitAddress:word; Mask:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_StartInterpolation@12';

//I/O-Funktionen
function GetInputValues(Handle:THandle; UnitAddress:word; Channel, ResponseAddress:byte;
          var AnalogueValue:word; var RefInput:byte; var AllInputs:byte; var TtlIo1:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_GetInputValues@32';

function SetStopSwitchLimits(Handle:THandle; UnitAddress:word; Channel:byte;
          MinLeft,  MaxRight:word):boolean; stdcall;
  external 'PackDLL.dll' name '_SetStopSwitchLimits@20';

function SetOutputs(Handle:THandle; UnitAddress:word; TtlOut1, TtlIO1:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_SetOutputs@16';

function SetReadyOutput(Handle:THandle; UnitAddress:word;
          ActiveMask, ReferenceSearchMask:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_SetReadyOutput@16';

function SetPackBaudrate(Handle:THandle; UnitAddress:word; BaudRate:cardinal; Delay:word):boolean; stdcall;
  external 'PackDLL.dll' name '_SetPackBaudrate@16';

function SetPacketTimeout(Handle:THandle; UnitAddress, Timeout:word):boolean; stdcall;
  external 'PackDLL.dll' name '_SetPacketTimeout@12';

function SetUnitAddress(Handle:THandle; UnitAddress:word; NewAddress:byte):boolean; stdcall;
  external 'PackDLL.dll' name '_SetUnitAddress@12';

function GetUnitInformation(Handle:THandle; UnitAddress:word; ResponseAddress:byte;
	  var FirmwareRevision, ResetFlag:byte; var Temperature:ShortInt;
          var SerialNumber:word):boolean; stdcall;
  external 'PackDLL.dll' name '_GetUnitInformation@28';

function ResetPack(Handle:THandle; UnitAddress:word):boolean; stdcall;
  external 'PackDLL.dll' name '_ResetPack@8';

implementation

end.
