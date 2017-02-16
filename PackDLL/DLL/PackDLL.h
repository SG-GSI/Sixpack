//////////////////////////////////////////
// PackDLL.cpp
//
//  DLL für die Sixpack-/Quadpack-Befehle
//
//  (c) 2002 by Trinamic Microchips GmbH
//              www.trinamic.com
//////////////////////////////////////////

#ifdef PACKDLL_EXPORTS
#define PACKDLL_API __declspec(dllexport)
#else
#define PACKDLL_API __declspec(dllimport)
#endif

//Konstanten
#define TTLOUT1_LOW 0
#define TTLOUT1_HIGH 1
#define TTLOUT1_READY 2

#define TTLIO1_LOW 0
#define TTLIO1_HIGH 1
#define TTLIO1_INPUT 2

#define MOTOR0 1
#define MOTOR1 2
#define MOTOR2 4
#define MOTOR3 8
#define MOTOR4 16
#define MOTOR5 32

#define MT_PI 1
#define MT_ROTARY 2
#define MT_AUTONULLCMD 4
#define MT_TESTNULL 8
#define MT_NULLLEFT 16
#define MT_NULLCENTRE 32
#define MT_STOPNULL 64
#define MT_FILTERSWITCH 128
#define MT_OPTIMIZEWAY 256
#define MT_FASTREF 512
#define MT_MECHREF 1024
#define MT_DELAYTESTNULL 2048
#define MT_STOPSOFT 4096
#define MT_STOPNOREF 8192
#define MT_NULLPOSITIVE 16384
#define MT_STOPFULLSTEP 32768

#ifdef __cplusplus
extern "C" {
#endif

//Schnittstelle öffnen/schließen
PACKDLL_API HANDLE __stdcall OpenPort(char *PortName, int BaudRate);
PACKDLL_API void __stdcall ClosePort(HANDLE Handle);

//Stromsteuerfunktionen
PACKDLL_API BOOLEAN __stdcall SetPeakCurrent(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, UCHAR Value);
PACKDLL_API BOOLEAN __stdcall SetCurrentControl(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, UCHAR PowerDownCurrent,
								  UCHAR StandingCurrent, UCHAR RunningCurrent, UCHAR AcceleratingCurrent,
								  USHORT PowerDownDelay);

//Geschwindigkeit & Beschleunigung
PACKDLL_API BOOLEAN __stdcall SetStepFrequency(HANDLE Handle, USHORT UnitAddress, UCHAR ClockDivider);
PACKDLL_API BOOLEAN __stdcall SetVMinVStart(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, USHORT VMin, USHORT VStart, UCHAR Div);
PACKDLL_API BOOLEAN __stdcall SetAMaxVMax(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, USHORT AMax, USHORT VMax);

//Motor- und Referenzfahrtparameter
PACKDLL_API BOOLEAN __stdcall SetMotorParameters(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, ULONG PosLimit, USHORT MotorType);
PACKDLL_API BOOLEAN __stdcall SetRefSearchParameters(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, USHORT VRefMax, UCHAR DebouncingTime);
PACKDLL_API BOOLEAN __stdcall WriteSineTable(HANDLE Handle, USHORT UnitAddress, UCHAR TableStart, UCHAR *Entries);
PACKDLL_API BOOLEAN __stdcall SetNullPointOffset(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, LONG NullOffset, USHORT TestNullRange);
PACKDLL_API BOOLEAN __stdcall SetPIParameter(HANDLE Handle,  USHORT UnitAddress, UCHAR MotNr, UCHAR PropDiv, USHORT IntDiv, USHORT IntClip, 
								   UCHAR IntIntpClip);
PACKDLL_API BOOLEAN __stdcall SetMargin(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, USHORT Margin);

//Bewegungsfunktionen
PACKDLL_API BOOLEAN __stdcall GetPositionAndActivity(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, UCHAR ResponseAddress,
										   LONG *Position, UCHAR *Activity, UCHAR *StopFlag);
PACKDLL_API BOOLEAN __stdcall GetVelocityAndActivity(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, UCHAR ResponseAddress,
										   SHORT *Velocity, UCHAR *Activity);
PACKDLL_API BOOLEAN __stdcall ReferenceSearch(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr);
PACKDLL_API BOOLEAN __stdcall StartRamp(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, LONG TargetPosition);
PACKDLL_API BOOLEAN __stdcall PITargetPosition(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, LONG TargetPosition);
PACKDLL_API BOOLEAN __stdcall ConstantRotation(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, SHORT Velocity);
PACKDLL_API BOOLEAN __stdcall SetTargetPosition(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, LONG TargetPosition);
PACKDLL_API BOOLEAN __stdcall SetActualPosition(HANDLE Handle, USHORT UnitAddress, UCHAR MotNr, LONG TargetPosition);
PACKDLL_API BOOLEAN __stdcall StartRampParallel(HANDLE Handle, USHORT UnitAddress, UCHAR Mask);
PACKDLL_API BOOLEAN __stdcall StopMotors(HANDLE Handle, USHORT UnitAddress, UCHAR Mask);
PACKDLL_API BOOLEAN __stdcall StartInterpolation(HANDLE Handle, USHORT UnitAddress, UCHAR Mask);

//I/O-Funktionen
PACKDLL_API BOOLEAN __stdcall GetInputValues(HANDLE Handle, USHORT UnitAddress, UCHAR Channel, UCHAR ResponseAddress,
								   USHORT *AnalogueValue, UCHAR *RefInput, UCHAR *AllInputs, UCHAR *TtlIo1);
PACKDLL_API BOOLEAN __stdcall SetStopSwitchLimits(HANDLE Handle, USHORT UnitAddress, UCHAR Channel, USHORT MinLeft, USHORT MaxRight);
PACKDLL_API BOOLEAN __stdcall SetOutputs(HANDLE Handle, USHORT UnitAddress, UCHAR TtlOut1, UCHAR TtlIO1);
PACKDLL_API BOOLEAN __stdcall SetReadyOutput(HANDLE Handle, USHORT UnitAddress, UCHAR ActiveMask, UCHAR ReferenceSearchMask);
PACKDLL_API BOOLEAN __stdcall SetPackBaudrate(HANDLE Handle, USHORT UnitAddress, ULONG BaudRate, USHORT Delay);
PACKDLL_API BOOLEAN __stdcall SetPacketTimeout(HANDLE Handle, USHORT UnitAddress, USHORT Timeout);
PACKDLL_API BOOLEAN __stdcall SetUnitAddress(HANDLE Handle, USHORT UnitAddress, UCHAR NewAddress);
PACKDLL_API BOOLEAN __stdcall GetUnitInformation(HANDLE Handle, USHORT UnitAddress, UCHAR ResponseAddress,
									   UCHAR *FirmwareRevision, UCHAR *ResetFlag, SHORT *Temperature, USHORT *SerialNumber);
PACKDLL_API BOOLEAN __stdcall ResetPack(HANDLE Handle, USHORT UnitAddress);

#ifdef __cplusplus
}
#endif
