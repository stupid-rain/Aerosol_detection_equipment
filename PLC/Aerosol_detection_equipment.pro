CoDeSys+�  �                   @        @   2.3.9.50    @/    @                             vhg +    @                          ͹Ng        K�  @   r   C:\TwinCAT\PLC\LIB\TcFloatPC.lib @                                                                                          BOOL_TO_FLOAT               IN            ��                 BOOL_TO_FLOAT                                                  ���J  �    ����           DINT_TO_FLOAT               IN           ��                 DINT_TO_FLOAT               FLOAT                             ���J  �    ����           F_GETVERSIONTCFLOATPC               nVersionElement           ��                 F_GetVersionTcFloatPC                                     ���J  �    ����           FLOAT_TO_BOOL               IN                        ��                 FLOAT_TO_BOOL                                      ���J  �    ����           FLOAT_TO_DINT               IN               FLOAT   ��                 FLOAT_TO_DINT                                     ���J  �    ����           FLOAT_TO_INT               IN               FLOAT   ��                 FLOAT_TO_INT                                     ���J  �    ����           FLOAT_TO_SINT               IN               FLOAT   ��                 FLOAT_TO_SINT                                     ���J  �    ����           FLOAT_TO_STRING               IN               FLOAT   ��                 FLOAT_TO_STRING    Q       Q                              ���J  �    ����           FLOAT_TO_TIME               IN               FLOAT   ��                 FLOAT_TO_TIME                                     ���J  �    ����           FLOAT_TO_UDINT               IN               FLOAT   ��                 FLOAT_TO_UDINT                                     ���J  �    ����           FLOAT_TO_UINT               IN               FLOAT   ��                 FLOAT_TO_UINT                                     ���J  �    ����           FLOATISFINITE        	   ptrDouble    	                               ��           	   ptrSingle                  ��                 x                        ��                 FLOATIsFinite                                      ���J  �    ����           INT_TO_FLOAT               IN           ��                 INT_TO_FLOAT               FLOAT                             ���J  �    ����           SINT_TO_FLOAT               IN           ��                 SINT_TO_FLOAT               FLOAT                             ���J  �    ����           TIME_TO_FLOAT               IN           ��                 TIME_TO_FLOAT               FLOAT                             ���J  �    ����           UDINT_TO_FLOAT               IN           ��                 UDINT_TO_FLOAT               FLOAT                             ���J  �    ����           UINT_TO_FLOAT               IN           ��                 UINT_TO_FLOAT               FLOAT                             ���J  �    ����    t   C:\TwinCAT\PLC\LIB\TcUtilities.lib @                                                                                         ARG_TO_CSVFIELD           pSrc               ` ��           Pointer to the source buffer    pDest               ` ��       #    Pointer to the destination buffer    cbMax         ` ��           Max. number of input bytes    cbScan         ` ��           Input stream data byte number    cbReturn         ` ��           Number of result data bytes       in                 T_Arg   ��       T    Input data in PLC format (any data type, string, integer, floating point value...)    bQM            ��	       h    TRUE => Enclose result data in quotation marks, FALSE => Don't enclose result data in quotation marks.    pOutput           ��
       /    Address of output buffer (destination buffer)    cbOutput           ��       !    Max. byte size of output buffer       ARG_TO_CSVFIELD                                     ���V  �    ����        
   BCD_TO_DEC        
   RisingEdge                R_TRIG ` ��                 START            ��              BIN           ��                 BUSY            ��              ERR            ��              ERRID           ��	              DOUT           ��
       �   
	Error codes:
		0x00		: No Errors
		0x0F	: Parameter value NOT correct. Wrong BCD input value in Low Nibble.
		0xF0	: Parameter value NOT correct. Wrong BCD input value in High Nibble.
            ���V  �    ����           BE128_TO_HOST               in                T_UHUGE_INTEGER   ��                 BE128_TO_HOST                T_UHUGE_INTEGER                             ���V  �    ����           BE16_TO_HOST               in           ��                 BE16_TO_HOST                                     ���V  �    ����           BE32_TO_HOST           parr    	                            ` ��                 in           ��                 BE32_TO_HOST                                     ���V  �    ����           BE64_TO_HOST               in                T_ULARGE_INTEGER   ��                 BE64_TO_HOST                T_ULARGE_INTEGER                             ���V  �    ����           BYTE_TO_BINSTR           bits   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant bits    iPad            ��           Number of padding zeros    i            ��           	   Index7001                            in           ��           BYTE input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       BYTE_TO_BINSTR                T_MaxString                             ���V  �    ����           BYTE_TO_DECSTR           dec   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant decades    iPad            ��           Number of padding zeros    i            ��              digit            ��           	   Index7001                            in           ��           BYTE input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       BYTE_TO_DECSTR                T_MaxString                             ���V  �    ����           BYTE_TO_HEXSTR           hex   	                          ��       6    array of ASCII characters (inclusive null delimiter)    iSig            ��           number of significant nibbles    iPad            ��           number of padding zeros    i            ��           	   Index7001                            in           ��           BYTE input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.    bLoCase            ��	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       BYTE_TO_HEXSTR                T_MaxString                             ���V  �    ����           BYTE_TO_LREALEX               in           ��                 BYTE_TO_LREALEX                                                  ���V  �    ����           BYTE_TO_OCTSTR           oct   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant nibbles    iPad            ��           Number of padding zeros    i            ��           	   Index7001                            in           ��           BYTE input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       BYTE_TO_OCTSTR                T_MaxString                             ���V  �    ����           BYTEARR_TO_MAXSTRING               in   	  �                       ��                 BYTEARR_TO_MAXSTRING                T_MaxString                             ���V  �   ����           CSVFIELD_TO_ARG           pSrc               ` ��           Pointer to the source buffer    pDest               ` ��       $     Pointer to the destination buffer    cbMax         ` ��           Max. number of output bytes    cbScan         ` ��           Input stream data byte number    cbReturn         ` ��           Number of result data bytes    bQMPrior          ` ��       c    TRUE => Previous character was quotation mark. FALSE => Previous character was not quotation mark       pInput           ��       G    Address of input buffer with data in CSV field format (source buffer )   cbInput           ��	           Byte size of input data    bQM            ��
       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.    out                 T_Arg   ��       U    Output data in PLC format (any data type, string, integer, floating point value...)       CSVFIELD_TO_ARG                                     ���V  �    ����           CSVFIELD_TO_STRING           cbField         ` ��                 in                T_MaxString   ��       "    Input string in CSV field format    bQM            ��	       \    TRUE => Remove enclosing quotation marks. FALSE => Don't remove enclosing quotation marks.       CSVFIELD_TO_STRING                T_MaxString                             ���V  �    ����           DATA_TO_HEXSTR           iCase         ` ��              pCells    	  �                          ` ��              idx         ` ��                 pData           ��           Pointer to data buffer    cbData             U              ��           Byte size of data buffer    bLoCase            ��       9    Default: use "ABCDEF", if TRUE use "abcdef" characters.       DATA_TO_HEXSTR                T_MaxString                             ���V  �   ����        
   DCF77_TIME     "      DataBits   	  <                         ��              BitNo            ��              dtCurr            ��              dtNext            ��              tziCurr               E_TimeZoneID    ��       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    ��       8    Time zone information extracted from previous telegram    tDiff            ��           Two telegram time difference    bCheck             ��              Step         ` ��!           	   StartEdge                R_TRIG ` ��"              RisingPulse                R_TRIG ` ��$              FallingPulse                F_TRIG ` ��%           	   LongPulse                TON ` ��&           
   ShortPulse                TON ` ��'           
   DetectSync                TOF ` ��(              NoDCFSignal                TON ` ��)              DCFCycleLen                TON ` ��*           	   bIsRising          ` ��,           
   bIsFalling          ` ��-              bIsLong          ` ��.              bIsShort          ` ��/              Working          ` ��0           	   DataValid          ` ��2           
   ParitySum1         ` ��3           
   ParitySum2         ` ��4           
   ParitySum3         ` ��5              i         ` ��7           	   DummyByte         ` ��8              DummyString    Q       Q  ` ��9              Hour         ` ��;              Minute         ` ��<              Year         ` ��=              Month         ` ��>              Day         ` ��?              	   DCF_PULSE            ��           DCF77 pulse: 101010101...    RUN            ��       *    Enable/disable function block execution.       BUSY            ��           TRUE = Decoding in progress    ERR            ��	       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           ��
           Error code    ERRCNT           ��           Error counter    READY            ��       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           ��           date and time information             ���V  �    ����           DCF77_TIME_EX     #      DataBits   	  <                         ��           Decoded data bits    BitNo            ��           Decoded bit number    dtCurr            ��       %    Time extracted from latest telegram    dtNext            ��            Supposed next time    tziCurr               E_TimeZoneID    ��!       6    Time zone information extracted from latest telegram    tziPrev               E_TimeZoneID    ��"       8    Time zone information extracted from previous telegram    tDiff            ��#       )    Time difference of two latest telegrams    bCheck             ��$       H    TRUE = Plausibility check over two telegrams enabled, FALSE = disabled    Step         ` ��&           	   StartEdge                R_TRIG ` ��'              RisingPulse                R_TRIG ` ��)              FallingPulse                F_TRIG ` ��*           	   LongPulse                TON ` ��+           
   ShortPulse                TON ` ��,           
   DetectSync                TOF ` ��-              NoDCFSignal                TON ` ��.              DCFCycleLen                TON ` ��/           	   bIsRising          ` ��1           
   bIsFalling          ` ��2              bIsLong          ` ��3              bIsShort          ` ��4              Working          ` ��5           	   DataValid          ` ��7           
   ParitySum1         ` ��8           
   ParitySum2         ` ��9           
   ParitySum3         ` ��:              i         ` ��<           	   DummyByte         ` ��=              DummyString    Q       Q  ` ��>              Hour         ` ��@              Minute         ` ��A              Year         ` ��B              Month         ` ��C              Day         ` ��D           	   DayOfWeek         ` ��E              	   DCF_PULSE            ��           DCF77 pulse: 101010101...    RUN            ��       *    Enable/disable function block execution.    TLP    �      ��           Short/long pulse split point       BUSY            ��	           TRUE = Decoding in progress    ERR            ��
       ,    Error flag: TRUE = Error, FALSE = No error    ERRID           ��           Error code    ERRCNT           ��           Error counter    READY            ��       1    TRUE => CDT is valid, FALSE => CDT is not valid    CDT           ��           date and time information    DOW                         ��       0     ISO 8601 day of week: 1 = Monday.. 7 = Sunday    TZI               E_TimeZoneID   ��           time zone information    ADVTZI            ��       1    MEZ->MESZ or MESZ->MEZ time change notification    LEAPSEC            ��           TRUE = Leap second    RAWDT   	  <                        ��           Raw decoded data bits             ���V  �    ����        
   DEC_TO_BCD        
   RisingEdge                R_TRIG ` ��                 START            ��              DIN           ��                 BUSY            ��              ERR            ��              ERRID           ��	              BOUT           ��
       h   
	Error codes:
		0x00		: No errors
		0xFF	: Parameter value NOT correct. Wrong DECIMAL input value.
            ���V  �    ����        
   DEG_TO_RAD               ANGLE                        ��              
   DEG_TO_RAD                                                  ���V  �    ����           DINT_TO_DECSTR               in           ��           
   iPrecision           ��	                 DINT_TO_DECSTR                T_MaxString                             ���V  �    ����           DT_TO_FILETIME           ui64                T_ULARGE_INTEGER ` ��                 DTIN           ��                 DT_TO_FILETIME             
   T_FILETIME                             ���V  �    ����           DT_TO_SYSTEMTIME           sDT             ` ��              nDay         ` ��              b   	                 
    24(16#30)      0    ` ��              TS                   
   TIMESTRUCT ` ��           	   Index7001                            DTIN           ��                 DT_TO_SYSTEMTIME                   
   TIMESTRUCT                             ���V  �    ����           DWORD_TO_BINSTR           bits   	                        ` ��       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ��           number of significant bits    iPad         ` ��           number of padding zeros    i         ` ��           	   Index7001                            in           ��           
   iPrecision           ��                 DWORD_TO_BINSTR                T_MaxString                             ���V  �    ����           DWORD_TO_DECSTR           dec   	                       ` ��       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ��           number of significant nibbles    iPad         ` ��           number of padding zeros    i         ` ��              divider     ʚ; ` ��              number         ` ��           	   Index7001                            in           ��           
   iPrecision           ��                 DWORD_TO_DECSTR                T_MaxString                             ���V  �    ����           DWORD_TO_HEXSTR           hex   	                       ` ��       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ��           number of significant nibbles    iPad         ` ��           number of padding zeros    i         ` ��           	   Index7001                            in           ��           
   iPrecision           ��              bLoCase            ��	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       DWORD_TO_HEXSTR                T_MaxString                             ���V  �    ����           DWORD_TO_LREALEX               in           ��                 DWORD_TO_LREALEX                                                  ���V  �    ����           DWORD_TO_OCTSTR           oct   	                       ` ��       6    array of ASCII characters (inclusive null delimiter)    iSig         ` ��           number of significant nibbles    iPad         ` ��           number of padding zeros    i         ` ��           	   Index7001                            in           ��           
   iPrecision           ��                 DWORD_TO_OCTSTR                T_MaxString                             ���V  �    ����           F_ARGCMP               typeSafe            ��              arg1                 T_Arg   ��              arg2                 T_Arg   ��                 F_ARGCMP                                     ���V  �    ����           F_ARGCPY               typeSafe            ��                 F_ARGCPY                               dest                  T_Arg  ��
              src                  T_Arg  ��                   ���V  �    ����           F_ARGISZERO               arg                 T_Arg   ��                 F_ARGIsZero                                      ���V  �    ����        	   F_BIGTYPE               pData           ��            Address pointer of data buffer    cbLen           ��           Byte length of data buffer    	   F_BIGTYPE                 T_Arg                             ���V  �    ����           F_BOOL                   F_BOOL                 T_Arg                       in            ��                   ���V  �    ����           F_BYTE                   F_BYTE                 T_Arg                       in           ��                   ���V  �    ����           F_BYTE_TO_CRC16_CCITT               value           ��           Data value    crc           ��       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_BYTE_TO_CRC16_CCITT                                     ���V  �    ����           F_CHECKSUM16        	   wChkSum_I         ` ��	       %    internal ChkSum                        dataWord         ` ��
       %    current data byte                      iIdx         ` ��       %    current data buffer index              ptrData               ` ��       %    pointer to current data byte           	   dwSrcAddr           ��       %    address of data buffer                 cbLen           ��       %    length of data buffer                  wChkSum           ��       %    init value (16#0000) or last ChkSum       F_CheckSum16                                     ���V  �    ����           F_CRC16_CCITT           wCRC_I         ` ��
       $    internal CRC                          dataWord         ` ��       $    current data byte                     iIdx         ` ��       $    current data buffer index             ptrData               ` ��       $    pointer to current data byte          	   dwSrcAddr           ��       $    address of data buffer                cbLen           ��       $    length of data buffer                 wLastCRC           ��       $    init value (16#FFFF) or last CRC16       F_CRC16_CCITT                                     ���V  �    ����           F_CREATEHASHTABLEHND           p                     T_HashTableEntry      ` ��              i         ` ��                 pEntries                     T_HashTableEntry        ��       C    Pointer to the first entry of hash table database (element array) 	   cbEntries           ��       ;    Byte size (length) of hash table database (element array)       F_CreateHashTableHnd                                hTable         	               T_HHASHTABLE  ��           Hash table handle         ���V  �    ����           F_CREATELINKEDLISTHND           p                   T_LinkedListEntry      ` ��           Temp. previous node    n                   T_LinkedListEntry      ` ��           Temp. next node    i         ` ��           loop iterator       pEntries                   T_LinkedListEntry        ��       @    Pointer to the first linked list node database (element array) 	   cbEntries           ��       <    Byte size (length) of linked list database (element array)       F_CreateLinkedListHnd                                hList         	               T_HLINKEDLIST  ��           Linked list handle         ���V  �    ����           F_DATA_TO_CRC16_CCITT           i         ` ��                 pData           ��           Pointer to data    cbData           ��           Length of data    crc           ��       >    Initial value (16#FFFF or 16#0000) or previous CRC-16 result       F_DATA_TO_CRC16_CCITT                                     ���V  �    ����           F_DINT                   F_DINT                 T_Arg                       in           ��                   ���V  �    ����           F_DWORD                   F_DWORD                 T_Arg                       in           ��                   ���V  �    ����           F_FORMATARGTOSTR     	      pOut               ` ��              longword         ` ��              double                      ` ��              single          ` ��              short         ` ��              small         ` ��              longint         ` ��              iPaddingLen         ` ��              iCurrLen         ` ��           
      bSign            ��           Sign prefix flag    bBlank            ��           Blank prefix flag    bNull            ��           Null prefix flag    bHash            ��           Hash prefix flag    bLAlign            ��       4    FALSE => Right align (default), TRUE => Left align    bWidth            ��       C    FALSE => no width padding, TRUE => blank or zeros padding enabled    iWidth           ��	           Width length parameter 
   iPrecision           ��
           Precision length parameter    eFmtType               E_TypeFieldParam   ��           Format type field parameter    arg                 T_Arg   ��           Format argument       F_FormatArgToStr                               sOut                 T_MaxString  ��                   ���V  �    ����           F_GETDAYOFMONTHEX           dom         ` ��           Day of month    dow         ` ��           Day of week    n         ` ��              dwYears         ` ��              dwDays         ` ��                 wYear     A  A  kx             ��           Year: 1601..30827    wMonth                         ��           Month: 1..12    wWOM                         ��       �     Week of month. Occurrence of the day of the week within the month (1..5, where 5 indicates the final occurrence during the month if that day of the week does not occur 5 times).   wDOW                           ��       4    Day of week (0 = Sunday, 1 = Monday.. 6 = Saturday       F_GetDayOfMonthEx                                     ���V  �    ����           F_GETDAYOFWEEK           sysTime                   
   TIMESTRUCT ` ��	                 in           ��                 F_GetDayOfWeek                                     ���V  �    ����           F_GETDOYOFYEARMONTHDAY           bLY          ` ��
                 wYear           ��           Year: 0..2xxx    wMonth           ��           Month 1..12    wDay           ��           Day: 1..31       F_GetDOYOfYearMonthDay                                     ���V  �    ����           F_GETFLOATREC     
   	   ptrDouble    	                               ��              fValue                         ��
              fBegin                         ��              nBegin            ��              fDiv                         ��              nDig            ��              nDigit            ��              fMaxPrecision                         ��              i            ��              nLastDecDigit            ��                 fVal                        ��           
   iPrecision           ��              bRound            ��                 F_GetFloatRec              
   T_FloatRec                             ���V  �    ����           F_GETMAXMONTHDAYS               wYear           ��	              wMonth           ��
                 F_GetMaxMonthDays                                     ���V  �    ����           F_GETMONTHOFDOY           bLY          ` ��	              wMonth         ` ��
                 wYear           ��           Year: 0..2xxx    wDOY           ��           Year's day number: 1..366       F_GetMonthOfDOY                                     ���V  �    ����           F_GETVERSIONTCUTILITIES               nVersionElement           ��       d   
	Possible nVersionElement parameter:
	1	:	major number
	2	:	minor number
	3	:	revision number
      F_GetVersionTcUtilities                                     ���V  �    ����           F_GETWEEKOFTHEYEAR           date_sec         ` ��           date seconds    dow         ` ��	           day of week    year         ` ��
              KWStart         ` ��              first    ��yG ` ��              ff                      ` ��                 in           ��                 F_GetWeekOfTheYear                                     ���V  �    ����           F_HUGE                   F_HUGE                 T_Arg                       in                 T_HUGE_INTEGER  ��                   ���V  �    ����           F_INT                   F_INT                 T_Arg                       in           ��                   ���V  �    ����           F_LARGE                   F_LARGE                 T_Arg                       in                 T_LARGE_INTEGER  ��                   ���V  �    ����           F_LREAL                   F_LREAL                 T_Arg                       in                        ��                   ���V  �    ����           F_LTRIM           pChar               ` ��              pStr                 T_MaxString      ` ��	                 in                T_MaxString   ��                 F_LTrim                T_MaxString                             ���V  �    ����           F_PVOID                   F_PVOID                 T_Arg                       in                 PVOID  ��                   ���V  �    ����           F_REAL                   F_REAL                 T_Arg                       in            ��                   ���V  �    ����           F_RTRIM           n         ` ��              pChar               ` ��	                 in                T_MaxString   ��                 F_RTrim                T_MaxString                             ���V  �    ����           F_SINT                   F_SINT                 T_Arg                       in           ��                   ���V  �    ����           F_STRING                   F_STRING                 T_Arg                       in                 T_MaxString  ��                   ���V  �    ����        
   F_SWAPREAL           pReal    	                               ��              pResult    	                               ��                 fVal            ��              
   F_SwapReal                                      ���V  �    ����           F_SWAPREALEX           pIN    	                            ` ��              wSave         ` ��	                     F_SwapRealEx                                fVal            ��                   ���V  �    ����        	   F_TOLCASE           pDest               ` ��              idx                   MIN_SBCS_TABLE   MAX_SBCS_TABLE ` ��	                 in                T_MaxString   ��              	   F_ToLCase                T_MaxString                             ���V  �   ����        	   F_TOUCASE           pDest               ` ��              idx                   MIN_SBCS_TABLE   MAX_SBCS_TABLE ` ��	                 in                T_MaxString   ��              	   F_ToUCase                T_MaxString                             ���V  �   ����           F_TRANSLATEFILETIMEBIAS           ui64In                T_ULARGE_INTEGER ` ��       E    Input file time as 64 bit unsigned integer (number of 100ns ticks)     ui64Bias                T_ULARGE_INTEGER ` ��       ?    Bias value as 64 bit unsigned integer (number of 100ns ticks)    ui64Out                T_ULARGE_INTEGER ` ��       @    Local time as 64 bit unsigned integer (number of 100ns ticks)        in             
   T_FILETIME   ��       1    Input time in file time format to be translated    bias           ��       y    Bias value in minutes. The bias is the difference, in minutes, between Coordinated Universal Time (UTC) and local time.    toUTC            ��       U    TRUE => Translate from local time to UTC, FALSE => Translate from UTC to local Time       F_TranslateFileTimeBias             
   T_FILETIME                             ���V  �    ����           F_UDINT                   F_UDINT                 T_Arg                       in           ��                   ���V  �    ����           F_UHUGE                   F_UHUGE                 T_Arg                       in                 T_UHUGE_INTEGER  ��                   ���V  �    ����           F_UINT                   F_UINT                 T_Arg                       in           ��                   ���V  �    ����           F_ULARGE                   F_ULARGE                 T_Arg                       in                 T_ULARGE_INTEGER  ��                   ���V  �    ����           F_USINT                   F_USINT                 T_Arg                       in           ��                   ���V  �    ����           F_WORD                   F_WORD                 T_Arg                       in           ��                   ���V  �    ����           F_YEARISLEAPYEAR               wYear           ��                 F_YearIsLeapYear                                      ���V  �    ����           FB_ADDROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ADDREMOTE, IDXOFFS := 0 )        ADSWRITE ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��           	   dataEntry                ST_AmsRouteSystemEntry ` ��                 sNetID             
   T_AmsNetID   ��       &    TwinCAT network address (ams net id)    stRoute                    ST_AmsRouteEntry   ��       !    Structure with route parameters    bExecute            ��       -    Rising edge starts function block execution    tTimeout    �     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrID           ��                       ���V  �   ����           FB_AMSLOGGER        
   fbAdsWrite       [    ( PORT:= AMSPORT_AMSLOGGER, IDXGRP:= AMSLOGGER_IGR_GENERAL, IDXOFFS:= AMSLOGGER_IOF_MODE )        ADSWRITE ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              stReq                ST_AmsLoggerReq ` ��                 sNetId           ''     
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    eMode           AMSLOGGER_RUN       E_AmsLoggerMode   ��              sCfgFilePath           ''        T_MaxString   ��              bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrId           ��                       ���V  �   ����           FB_BASICPID           nERR_NOERROR           ��           no error						   nERR_INVALIDPARAM          ��           invalid parameter				   nERR_INVALIDCYCLETIME          ��           invalid cycle time				   fE               0.0            ��            error input					   fE_1               0.0            ��!           error input z^(-1)				   fY               0.0            ��"           control output				   fY_1               0.0            ��#           control output  z^(-1)			   fYP               0.0            ��$           P-part						   fYI               0.0            ��%           I-part						   fYI_1               0.0            ��&           I-part  z^(-1)					   fYD               0.0            ��'           D-T1-part					   fYD_1               0.0            ��(           D-T1-part  z^(-1)				   bInit            ��*       %    initialization flag for first cycle	   bIsIPart             ��+           I-part active ?				   bIsDPart             ��,           D-part active ?				   fDi               0.0            ��.           internal I param				   fDd               0.0            ��/           internal D param				   fCd               0.0            ��0           internal D param				   fCtrlCycleTimeOld               0.0            ��2              fKpOld               0.0            ��3              fTnOld               0.0            ��4              fTvOld               0.0            ��5              fTdOld               0.0            ��6                 fSetpointValue                        ��           setpoint value							   fActualValue                        ��           actual value							   bReset            ��           controller values    fCtrlCycleTime                        ��	       (    controller cycle time in seconds [s]			   fKp                        ��           proportional gain Kp	(P)					   fTn                        ��           integral gain Tn (I) [s]						   fTv                        ��       "    derivative gain Tv (D-T1) [s]				   fTd                        ��       (    derivative damping time Td (D-T1) [s]		      fCtrlOutput                        ��           controller output command				   nErrorStatus           ��       1    controller error output (0: no error; >0:error)	            ���V  �    ����           FB_BUFFEREDTEXTFILEWRITER           fbFile                FB_TextFileRingBuffer ` ��           
   closeTimer                TON ` ��           auto close timer    bRemove          ` ��              nStep         ` ��                 sNetId           ''     
   T_AmsNetId ` ��           ams net id 	   sPathName           'c:\Temp\data.dat'        T_MaxString ` ��	       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` ��
           default: Open generic file    bAppend         ` ��       )    TRUE = append lines, FALSE = not append 
   tAutoClose    �   ` ��              tTimeout    �   ` ��                 bBusy          ` ��              bError          ` ��              nErrID         ` ��                 fbBuffer                 FB_StringRingBuffer` ��           string ring buffer         ���V  �   ����           FB_CONNECTSCOPESERVER           stRecordDesc       d    (nRunMode:=0, nSopMode:=0, bStoreOnDisk:=FALSE, bUseLocalServer:=FALSE, bStartServerFromFile:=TRUE)                                #   ST_ScopeServerRecordModeDescription    ��              nState            ��              nErrorState            ��           
   fbAdsWrite                ADSWRITE    ��              fbQueryRegistry                FB_RegQueryValue    ��              sScopeServerDir                ��              sScopeServerPath                ��              fbStartServer                NT_StartProcess    ��              fbWait                TON    ��               bTriggerServerStart            ��!              nDwellTimeCounter            ��"              nPort           27110     	   T_AmsPort   ��%              Connect_IdxGrp     u     ��&          0x7500      sNetId           ''     
   T_AmsNetId   ��              bExecute            ��              sConfigFile    Q       Q    ��              tTimeout    �     ��                 bBusy            ��              bDone            ��              bError            ��              nErrorId           ��                       ���V  �   ����           FB_CSVMEMBUFFERREADER           state         ` ��              getBufferIndex         ` ��              scanPtr               ` ��              scanSize         ` ��              bField          ` ��              cbCopied         ` ��           
   bFirstChar          ` ��              bDQField          ` ��           	   bDQBefore          ` ��              pField         ` ��       U    If successfull then this variable returns the address of the first/next field value    cbField         ` ��       W    If successfull then this variable returns the byte size of the first/next field value    bEOF          ` ��           TRUE => End of field found    bBreak          ` ��                 eCmd           eEnumCmd_First       E_EnumCmdType   ��       )    Command type: read first or next field ?   pBuffer           ��       #    Address ( pointer) of data buffer    cbBuffer           ��           Max. byte size of data buffer       bOk            ��	       &    TRUE => Successfull, FALSE => Failed    getValue           ''        T_MaxString   ��
       N    If successfull then this output returns the first/next field value as string    pValue           ��       s    Pointer to the first value byte (HINT: String values are not null terminated. Empty string returns Null pointer )    cbValue           ��           Field value byte size    bCRLF            ��       .    TRUE => End of record separator found (CRLF)    cbRead           ��       )    Number of successfully parse data bytes             ���V  �    ����           FB_CSVMEMBUFFERWRITER           fbReader                                    FB_CSVMemBufferReader ` ��              temp   	  ,                    ` ��           Temp buffer    cbTemp         ` ��       %    Number of data bytes in temp buffer    cbCopied         ` ��       9    Number of data bytes copied to the external data buffer    bNewLine         ` ��           TRUE => start with new line       eCmd           eEnumCmd_First       E_EnumCmdType   ��       *    Command type: write first or next field ?   putValue           ''        T_MaxString   ��       &    New first/next field value as string    pValue           ��       C    OPTIONAL: Pointer to external buffer containing field value data.    cbValue           ��       F    OPTIONAL: Byte size of external buffer containing field value data.     bCRLF            ��       0    TRUE = > Append end of record separator (CRLF)    pBuffer           ��	       #    Address ( pointer) of data buffer    cbBuffer           ��
           Max. byte size of data buffer       bOk            ��       &    TRUE => Successfull, FALSE => Failed    cbSize           ��           Number fo used data bytes    cbFree           ��           Number of free data bytes    nFields           ��           Number of fields    nRecords           ��           Number of records    cbWrite           ��       +    Number of successfully written data bytes             ���V  �    ����           FB_DBGOUTPUTCTRL           fbFormat                FB_FormatString ` ��              fbBuffer                FB_StringRingBuffer ` ��              fbFile       +    (ePath := PATH_BOOTPATH, bAppend := TRUE )                 PATH_GENERIC    
   E_OpenPath                      FB_BufferedTextFileWriter ` ��              buffer   	  '                   ` ��              state         ` ��              nItems         ` ��              k         ` ��               bInit         ` ��!           Hex logging    i         ` ��$              cells   	                               ` ��%              pCells                 T_MaxString      ` ��&              cbL1         ` ��'              cbL2         ` ��'              idx         ` ��'              pSrc1               ` ��(              pSrc2               ` ��(                 dwCtrl         ` ��       &    Debug message target: DBG_OUTPUT_LOG    sFormat           ''        T_MaxString ` ��           Debug message format string    arg1                 T_Arg ` ��           Format string argument    arg2                 T_Arg ` ��              arg3                 T_Arg ` ��	              arg4                 T_Arg ` ��
              arg5                 T_Arg ` ��              arg6                 T_Arg ` ��              arg7                 T_Arg ` ��              arg8                 T_Arg ` ��              arg9                 T_Arg ` ��              arg10                 T_Arg ` ��              sFilter           ''        T_MaxString ` ��                 bError          ` ��              nError         ` ��           	   nOverflow         ` ��                       ���V  �   ����           FB_DISCONNECTSCOPESERVER        
   fbAdsWrite                ADSWRITE    ��              nState            ��                 sNetId             
   T_AmsNetId   ��              bExecute            ��              tTimeout    �     ��                 bBusy            ��              bDone            ��	              bError            ��
              nErrorId           ��                       ���V  �   ����           FB_ENUMFINDFILEENTRY        
   fbAdsRdWrt       B    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_FFILEFIND )        ADSRDWRT ` ��           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_CLOSEHANDLE )        ADSWRITE ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��           	   dataEntry                            ST_AmsFindFileSystemEntry ` ��              eFindCmd               E_EnumCmdType ` ��                 sNetId             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id) 	   sPathName                T_MaxString   ��       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   ��           Enumerator navigation command    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��              bError            ��              nErrID           ��              bEOE            ��           End of enumeration 
   stFindFile                     ST_FindFileEntry   ��           Find file entry             ���V  �   ����           FB_ENUMFINDFILELIST           fbEnum                              FB_EnumFindFileEntry ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              cbEntry         ` ��              nEntries         ` ��              pEntry                      ST_FindFileEntry      ` ��                 sNetId             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id) 	   sPathName                T_MaxString   ��       %    dir/path/file name, wildcards [*|?]    eCmd           eEnumCmd_First       E_EnumCmdType   ��           Enumerator navigation command 	   pFindList           ��       &    POINTER TO ARRAY OF ST_FindFileEntry 
   cbFindList           ��       (    Byte size of ARRAY OF ST_FindFileEntry    bExecute            ��	       6    Rising edge on this input activates the fb execution    tTimeout    �     ��
           Max fb execution time       bBusy            ��              bError            ��              nErrID           ��              bEOE            ��           End of enumeration 
   nFindFiles           ��           Number of find files             ���V  �   ����           FB_ENUMROUTEENTRY        	   fbAdsRead       Z    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_ENUMREMOTE (*, IDXGRP := index *) )        ADSREAD ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              index    ���� ` ��           	   dataEntry                ST_AmsRouteSystemEntry ` ��                 sNetID             
   T_AmsNetID   ��       '    TwinCAT network address (ams net id )    eCmd           eEnumCmd_First       E_EnumCmdType   ��           Enumerator navigation command    bExecute            ��       -    Rising edge starts function block execution    tTimeout    �     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrID           ��              bEOE            ��       l    End of enumeration. This value is TRUE after the first read that attempts to read next non existing entry.    stRoute                    ST_AmsRouteEntry   ��       !    Structure with route parameters             ���V  �   ����           FB_ENUMSTRINGNUMBERS           pSrc               ` ��              pDest               ` ��              pNext               ` ��              char         ` ��              state         ` ��              bEat          ` ��                 sSearch                T_MaxString   ��           Source string    eCmd           eEnumCmd_First       E_EnumCmdType   ��           Enumerator navigation command    eType           eNumGroup_Float       E_NumGroupTypes   ��           String number format type       sNumber                T_MaxString   ��           Found string number    nPos           ��	       )    <> 0 => Next scan/search start position    bEOS            ��
           TRUE = End of string             ���V  �    ����           FB_FILERINGBUFFER           fbOpen                FB_FileOpen ` ��              fbClose                FB_FileClose ` ��              fbWrite                FB_FileWrite ` ��              fbRead                FB_FileRead ` ��               fbSeek                FB_FileSeek ` ��!              nStep         ` ��"       X    0=idle, 1=init, 10,11=open, 20,21=seek, 30,31=read, 40,41=write, 50,51=close, 100=exit    bInit          ` ��#       5    TRUE=reading length chunk, FALSE=reading data chunk    bExit          ` ��$       O    FALSE=repeat reading/writing, TRUE=abort reading/writing, go to the exit step    bReopen          ` ��%       t    Open mode: TRUE=try to open existing file, FALSE=create new file, if open fails => try to create and open new file    bOpen          ` ��&       %    TRUE=file opened, FALSE=file closed    bGet          ` ��'       $    TRUE=get entry, FALSE=remove entry    bOW          ` ��(       b    TRUE=removing oldest entry (bOverwrite=TRUE), FALSE=don't remove oldest entry (bOverwrite=FALSE)    cbOW         ` ��)       /    Temp length of ovwerwritten length/data chunk    cbMoved         ` ��*       =    Number of successfully read/written length/data chunk bytes    ptrSaved         ` ��+       M    Seek pointer previous position (used by A_GetHead or read buffer underflow)    ptrMax         ` ��,       D    Seek pointer max. position = SIZEOF(ring buffer header) + cbBuffer    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` ��-              eOldCmd           eFileRBuffer_None       E_FileRBufferCmd ` ��.                 sNetId           ''     
   T_AmsNetId   ��           ams net id 	   sPathName           'c:\Temp\data.dat'        T_MaxString   ��       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath   ��           default: Open generic file    nID           ��           user defined version ID    cbBuffer          ��           max. file buffer byte size 
   bOverwrite            ��	       :    FALSE = don't overwrite, TRUE = overwrite oldest entries 
   pWriteBuff           ��
       "    pointer to external write buffer 
   cbWriteLen           ��       $    byte size of external write buffer 	   pReadBuff           ��       !    pointer to external read buffer 	   cbReadLen           ��       #    byte size of external read buffer    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrID           ��       �    ADS or function specific error codes:
	16#8000	= (File) buffer empty or overflow 
	16#8001 = (Application) buffer underflow (cbReadLen to small),  	
	16#8002	= Buffer is not opened  
	16#8003	= Invalid input parameter value    cbReturn           ��       !    number of recend read data bytes   stHeader                          ST_FileRBufferHead   ��           buffer status             ���V  �   ����            FB_FILETIMETOTZSPECIFICLOCALTIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )     "   FB_TranslateUtcToLocalTimeByZoneID ` ��           Underlaid base function block       in             
   T_FILETIME   ��       �    Time to be converted (UTC, file time format), 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   ��           Time zone settings       out             
   T_FILETIME   ��       *    Converted time in local file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��	       "    Daylight saving time information    bB            ��
            FALSE => A time, TRUE => B time            ���V  �    ����           FB_FORMATSTRING     	      pFormat               ` ��           pointer to the format string    pOut               ` ��           pointer to the result string 
   iRemOutLen         ` ��       $    Max remaining length of sOut buffer   bValid          ` ��       8    if set, the string character is valid format parameter    stFmt                              ST_FormatParameters ` ��           
   nArrayElem         ` ��           	   nArgument         ` ��              parArgs   	  
                     T_Arg              ` ��              sArgStr                T_MaxString ` ��                 sFormat                T_MaxString   ��              arg1                 T_Arg   ��              arg2                 T_Arg   ��              arg3                 T_Arg   ��              arg4                 T_Arg   ��              arg5                 T_Arg   ��              arg6                 T_Arg   ��	              arg7                 T_Arg   ��
              arg8                 T_Arg   ��              arg9                 T_Arg   ��              arg10                 T_Arg   ��                 bError            ��              nErrId           ��              sOut                T_MaxString   ��                       ���V  �   ����           FB_GETADAPTERSINFO     
   	   fbAdsRead       f    ( PORT:=AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_ADAPTERSINFO )        ADSREAD ` ��           
   fbRegQuery       P    ( sSubKey:= '\Software\Beckhoff\TwinCAT\Remote', sValName := 'DefaultAdapter' )        FB_RegQueryValue ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              cbInfo         ` ��              idx         ` ��              info   	                                      ST_IP_ADAPTER_INFO         ` ��           buffer for 12 entries    pInfo                                 ST_IP_ADAPTER_INFO      ` ��           
   nRealCount         ` ��           	   sDefaultA                T_MaxString ` ��                 sNetID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��	              bError            ��
              nErrID           ��              arrAdapters   	                                    ST_IpAdapterInfo           ��              nCount           ��           Max. number of found adapters    nGet           ��       %    Number of read adapter info entries             ���V  �   ����           FB_GETDEVICEIDENTIFICATION        	   iDataSize       @` ��           
   byTagStart    <    ` ��           '<'    byTagEnd    >    ` ��           '>' 
   byTagSlash    /    ` ��           '/' 	   fbAdsRead                ADSREAD ` ��              bExecutePrev          ` ��              iState         ` ��              iData   	                      ` ��           
   strActPath             ` ��              iLoopEndIdx         ` ��              iStructSize         ` ��              strHardwareCPU             ` ��              strTags   	  	        )       )          ` ��           	   iTagsSize   	  	                     ` ��              iCurrTag   	  (                     ` ��               iCurrTagData   	  P                     ` ��!           	   iPathSize         ` ��"              iTagIdx         ` ��$              iCurrTagIdx         ` ��%              iDataIdx         ` ��&              iCurrTagDataIdx         ` ��'              k         ` ��(              iMinCurrData         ` ��)           	   iFirstIdx         ` ��*              iLastIdx         ` ��+           	   bTagStart          ` ��-              bTagEnd          ` ��.           	   bTagSlash          ` ��/              bTagOpen          ` ��0                 bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��              sNetId             
   T_AmsNetId   ��           ams net id of target system       bBusy            ��              bError            ��	              nErrorID           ��
           
   stDevIdent                              ST_DeviceIdentification   ��       5    structure with available device identification data             ���V  �   ����           FB_GETDEVICEIDENTIFICATIONEX        	   iDataSize       @` ��           
   byTagStart    <    ` ��           '<'    byTagEnd    >    ` ��           '>' 
   byTagSlash    /    ` ��           '/' 	   fbAdsRead                ADSREAD ` ��              bExecutePrev          ` ��              iState         ` ��              iData   	                      ` ��           
   strActPath             ` ��              iLoopEndIdx         ` ��              iStructSize         ` ��              strHardwareCPU             ` ��              strTags   	  	        )       )          ` ��           	   iTagsSize   	  	                     ` ��              iCurrTag   	  (                     ` ��               iCurrTagData   	  P                     ` ��!           	   iPathSize         ` ��"              iTagIdx         ` ��$              iCurrTagIdx         ` ��%              iDataIdx         ` ��&              iCurrTagDataIdx         ` ��'              k         ` ��(              iMinCurrData         ` ��)           	   iFirstIdx         ` ��*              iLastIdx         ` ��+           	   bTagStart          ` ��-              bTagEnd          ` ��.           	   bTagSlash          ` ��/              bTagOpen          ` ��0                 bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��              sNetId             
   T_AmsNetId   ��           Ams net id of target system       bBusy            ��              bError            ��	              nErrorID           ��
           
   stDevIdent                              ST_DeviceIdentificationEx   ��       5    structure with available device identification data             ���V  �   ����           FB_GETHOSTADDRBYNAME           fbAdsRW       j    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_IPHELPERAPI, IDXOFFS:= IPHELPERAPI_IPADDRBYHOSTNAME )     
   ADSRDWRTEX ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��                 sNetID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id) 	   sHostName           ''        T_MaxString   ��       1    String containing host name. E.g. 'DataServer1'    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    ȯ     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrID           ��              sAddr           ''     
   T_IPv4Addr   ��       S    String containing an (Ipv4) Internet Protocol dotted address. E.g. '172.16.7.199'    arrAddr           0, 0, 0, 0        T_IPv4AddrArr   ��       C    Byte array containing an (Ipv4) Internet Protocol dotted address.             ���V  �    ����           FB_GETHOSTNAME        	   fbAdsRead       R    ( PORT :=  AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_IPHOSTNAME, IDXOFFS := 0 )        ADSREAD ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��                 sNetID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��	              bError            ��
              nErrID           ��           	   sHostName                T_MaxString   ��           The local host name             ���V  �   ����           FB_GETLOCALAMSNETID           fbRegQueryValue       W    ( sNetId:= '', sSubKey := 'SOFTWARE\Beckhoff\TwinCAT\System', sValName := 'AmsNetId' )        FB_RegQueryValue ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              tmpBytes                T_AmsNetIdArr ` ��                 bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeOut    �     ��           Max fb execution time       bBusy            ��              bError            ��	              nErrId           ��
           
   AddrString           '0.0.0.0.0.0'     
   T_AmsNetId   ��       -    TwinCAT -specific network address as string 	   AddrBytes           0,0,0,0,0,0        T_AmsNetIdArr   ��       3    TwinCAT-specific network address as array of byte             ���V  �   ����           FB_GETROUTERSTATUSINFO        	   fbAdsRead       &    ( PORT:= 1, IDXGRP:= 1, IDXOFFS:= 1 )        ADSREAD ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              adsRes   	                       ` ��                 sNetId           ''     
   T_AmsNetID   ��           Ams net id    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��	              bError            ��
              nErrID           ��              info                   ST_TcRouterStatusInfo   ��       #    TwinCAT Router status information             ���V  �   ����           FB_GETTIMEZONEINFORMATION        	   fbAdsRead       p    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_TIMEZONINFORMATION )        ADSREAD ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              res                ST_AmsGetTimeZoneInformation ` ��                 sNetID             
   T_AmsNetID   ��       &    TwinCAT network address (ams net id)    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��              bError            ��	              nErrID           ��
              tzID               E_TimeZoneID   ��              tzInfo                     ST_TimeZoneInformation   ��                       ���V  �   ����           FB_HASHTABLECTRL           p                     T_HashTableEntry      ` ��              n                     T_HashTableEntry      ` ��              nHash         ` ��                 key           ��       d    Entry key: used by A_Lookup, A_Remove method, the key.lookup variable is also used by A_Add method    putValue           ��           Entry value 	   putPosPtr                     T_HashTableEntry        ��	                 bOk            ��           TRUE = success, FALSE = error    getValue           ��           	   getPosPtr                     T_HashTableEntry        ��       R    returned by A_GetFirstEntry, A_GetNextEntry, A_Add, A_Lookup and A_Remove method       hTable         	               T_HHASHTABLE  ��           Hash table handle variable         ���V  �    ����           FB_LINKEDLISTCTRL           p                   T_LinkedListEntry      ` ��           Temp. previous node    n                   T_LinkedListEntry      ` ��           Temp. next node       putValue           ��           Linked list node value 	   putPosPtr                   T_LinkedListEntry        ��           Linked list node pointer       bOk            ��           TRUE = success, FALSE = error    getValue           ��           Linked list node value 	   getPosPtr                   T_LinkedListEntry        ��           Linked list node pointer       hList         	               T_HLINKEDLIST  ��           Linked list table handle         ���V  �    ����           FB_LOCALSYSTEMTIME     	      rtrig                R_TRIG ` ��              state         ` ��              fbNT             
   NT_GetTime ` ��              fbTZ                          FB_GetTimeZoneInformation ` ��              fbSET                NT_SetTimeToRTCTime ` ��              fbRTC                RTC_EX2 ` ��              timer                TON ` ��              nSync         ` ��              bNotSup          ` ��                 sNetID           ''     
   T_AmsNetID   ��       +    The target TwinCAT system network address    bEnable            ��       `    Enable/start cyclic time synchronisation (output is synchronized to Local Windows System Time)    dwCycle           �Q            ��       &    Time synchronisation cycle (seconds)    dwOpt          ��       R    Additional option flags: If bit 0 is set => Synchronize Windows Time to RTC time    tTimeout    �     ��       J    Max. ADS function block execution time (internal communication timeout).       bValid            ��       \    TRUE => The systemTime and tzID output is valid, FALSE => systemTime and tzID is not valid 
   systemTime                   
   TIMESTRUCT   ��       "    Local Windows System Time struct    tzID           eTimeZoneID_Invalid       E_TimeZoneID   ��       )    Daylight/standard time zone information             ���V  �   ����           FB_MEMBUFFERMERGE           pDest         ` ��              cbDest         ` ��                 eCmd           eEnumCmd_First       E_EnumCmdType   ��              pBuffer           ��           Pointer to destination buffer    cbBuffer           ��       &    Max. byte size of destination buffer    pSegment           ��       .    Pointer to data segment (optional, may be 0) 	   cbSegment           ��       -    Number of data segments (optional, may be 0)      bOk            ��       M    TRUE => Successfull, FALSE => End of enumeration or invalid input parameter    cbSize           ��           Data buffer fill state             ���V  �    ����           FB_MEMBUFFERSPLIT           pSrc         ` ��              cbSrc         ` ��                 eCmd           eEnumCmd_First       E_EnumCmdType   ��              pBuffer           ��           Pointer to source data buffer    cbBuffer           ��       !    Byte size of source data buffer    cbSize           ��           Max. segment byte size       bOk            ��
       N    TRUE => Successfull, FALSE => End of segmentation or invalid input parameter    pSegment           ��           Pointer to data segment 	   cbSegment           ��           Byte size of data segment    bEOS            ��       7    TRUE = End/last segment, FALSE = Next segment follows             ���V  �    ����           FB_MEMRINGBUFFER           idxLast         ` ��            byte index of last buffer byte    idxFirst         ` ��       "    byte buffer of first buffer byte    idxGet         ` ��              pTmp         ` ��              cbTmp         ` ��              cbCopied         ` ��                 pWrite           ��           pointer to write data    cbWrite           ��           byte size of write data    pRead           ��	           pointer to read data buffer    cbRead           ��
           byte size of read data buffer    pBuffer           ��       #    pointer to ring buffer data bytes    cbBuffer           ��           max. ring buffer byte size       bOk            ��       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    nCount           ��           number of fifo entries    cbSize           ��       "    current byte length of fifo data    cbReturn           ��       �    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             ���V  �    ����           FB_MEMRINGBUFFEREX           idxLast         ` ��       *    byte index of last (newest) buffer entry    idxFirst         ` ��       +    byte index of first (oldest) buffer entry    idxGet         ` ��           temporary index    idxEnd         ` ��       "    index of unused/free end segment    cbEnd         ` ��       &    byte size of unused/free end segment    cbAdd         ` ��!                 pWrite           ��           pointer to write data    cbWrite           ��           byte size of write data    pBuffer           ��       #    pointer to ring buffer data bytes    cbBuffer           ��           max. ring buffer byte size       bOk            ��       W    TRUE = new entry added or get, freed succesfully, FALSE = fifo overflow or fifo empty    pRead           ��       (    A_GetHead returns pointer to read data    cbRead           ��       *    A_GetHead returns byte size of read data    nCount           ��           number of fifo entries    cbSize           ��       "    current byte length of fifo data    cbFree           ��            biggest available free segment             ���V  �    ����           FB_MEMSTACKBUFFER               pWrite           ��           pointer to write data    cbWrite           ��           byte size of write data    pRead           ��	           pointer to read data buffer    cbRead           ��
           byte size of read data buffer    pBuffer           ��       #    pointer to LIFO buffer data bytes    cbBuffer           ��           max. LIFO buffer byte size       bOk            ��       T    TRUE = new entry added or removed succesfully, FALSE = LIFO overflow or LIFO empty    nCount           ��           number of LIFO entries    cbSize           ��       "    current byte length of LIFO data    cbReturn           ��       �    If bOk == TRUE => Number of recend realy returned (removed or get) data bytes
									   If bOk == FALSE and cbReturn <> 0 => Number of required read buffer data bytes (cbRead underflow)             ���V  �    ����           FB_REGQUERYVALUE           fbAdsRdWrtEx       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )     
   ADSRDWRTEX ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              s1Len         ` ��              s2Len         ` ��              ptr         ` ��              cbBuff         ` ��              tmpBuff                ST_HKeySrvRead ` ��                 sNetId             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    sSubKey                T_MaxString   ��       #    HKEY_LOCAL_MACHINE \ sub key name    sValName                T_MaxString   ��           Value name    cbData           ��           Number of data bytes to read    pData           ��       $    Points to registry key data buffer    bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeOut    �     ��	           Max fb execution time       bBusy            ��              bError            ��              nErrId           ��              cbRead           ��       '    Number of succesfully read data bytes             ���V  �   ����           FB_REGSETVALUE        
   fbAdsWrite       [    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_REG_HKEYLOCALMACHINE, IDXOFFS := 0 )        ADSWRITE ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              s1Len         ` ��              s2Len         ` ��              s3Len         ` ��              ptr         ` ��              nType         ` ��              cbBuff         ` ��              cbRealWrite         ` ��              tmpBuff                  ST_HKeySrvWrite ` ��                 sNetId             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    sSubKey                T_MaxString   ��       #    HKEY_LOCAL_MACHINE \ sub key name    sValName                T_MaxString   ��           Value name    eValType               E_RegValueType   ��           Value type    cbData           ��           Size of value data in bytes    pData           ��           Pointer to value data buffer   bExecute            ��	       6    Rising edge on this input activates the fb execution    tTimeOut    �     ��
           Max fb execution time       bBusy            ��              bError            ��              nErrId           ��              cbWrite           ��       +    Number of successfully written data bytes             ���V  �   ����           FB_REMOVEROUTEENTRY        
   fbAdsWrite       P    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_DELREMOTE, IDXOFFS := 0 )        ADSWRITE ` ��                 sNetID             
   T_AmsNetID   ��       '    TwinCAT network address (ams net id )    sName                 ��           Route name as string    bExecute            ��       -    Rising edge starts function block execution    tTimeout    �     ��           Max fb execution time       bBusy            ��
              bError            ��              nErrID           ��                       ���V  �   ����           FB_RESETSCOPESERVERCONTROL        
   fbAdsWrite                ADSWRITE    ��              nState            ��                 sNetId             
   T_AmsNetId   ��              bExecute            ��              tTimeout    �     ��                 bBusy            ��              bDone            ��	              bError            ��
              nErrorId           ��                       ���V  �   ����           FB_SAVESCOPESERVERDATA           nState            ��           
   fbAdsWrite       D    ( PORT := AMSPORT_R3_SCOPESERVER, IDXGRP := 16#750E, IDXOFFS := 0 )        ADSWRITE    ��                 sNetId             
   T_AmsNetId   ��              bExecute            ��           	   sSaveFile    Q       Q    ��              tTimeout    �     ��                 bBusy            ��	              bDone            ��
              bError            ��              nErrorId           ��                       ���V  �   ����           FB_SCOPESERVERCONTROL           eCurrentState           SCOPE_SERVER_IDLE       E_ScopeServerState    ��           	   fbConnect                                   FB_ConnectScopeServer    ��              fbStart                FB_StartScopeServer    ��              fbStop                FB_StopScopeServer    ��              fbSave        
                FB_SaveScopeServerData    ��              fbDisconnect        	               FB_DisconnectScopeServer    ��              fbReset        	               FB_ResetScopeServerControl    ��                  sNetId             
   T_AmsNetId   ��           	   eReqState               E_ScopeServerState   ��              sConfigFile    Q       Q    ��           	   sSaveFile    Q       Q    ��              tTimeout    �     ��                 bBusy            ��              bDone            ��              bError            ��              nErrorId           ��                       ���V  �   ����           FB_SETTIMEZONEINFORMATION        
   fbAdsWrite       o    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS	:= TIMESERVICE_TIMEZONINFORMATION )        ADSWRITE ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              req                ST_AmsGetTimeZoneInformation ` ��                 sNetID           ''     
   T_AmsNetID   ��       &    TwinCAT network address (ams net id)    tzInfo       ]   ( (*West Euoropa Standard Time *)
					bias:=-60,
					standardName:='W. Europe Standard Time',
					standardDate:=(wYear:=0, wMonth:=10, wDayOfWeek:=0, wDay:=5, wHour:=3),
					standardBias:=0,
					daylightName:='W. Europe Daylight Time',
					daylightDate:=(wYear:=0, wMonth:=3, wDayOfWeek:=0, wDay:=5, wHour:=2),
					daylightBias:=-60 )    ����        W. Europe Standard Time          
   TIMESTRUCT             
                                W. Europe Daylight Time          
   TIMESTRUCT                                 ����   ST_TimeZoneInformation   ��              bExecute            ��       6    Rising edge on this input activates the fb execution    tTimeout    �     ��           Max fb execution time       bBusy            ��              bError            ��              nErrID           ��                       ���V  �   ����           FB_STARTSCOPESERVER           nState            ��           
   fbAdsWrite                ADSWRITE    ��              nDummy   	                    0,0                     ��                 sNetId             
   T_AmsNetId   ��              bExecute            ��              tTimeout    �     ��                 bBusy            ��              bDone            ��	              bError            ��
              nErrorId           ��                       ���V  �   ����           FB_STOPSCOPESERVER           nState            ��           
   fbAdsWrite                ADSWRITE    ��              nDummy   	                    0,0                     ��                 sNetId             
   T_AmsNetId   ��              bExecute            ��              tTimeout    �     ��                 bBusy            ��              bDone            ��	              bError            ��
              nErrorId           ��                       ���V  �   ����           FB_STRINGRINGBUFFER           fbBuffer                              FB_MemRingBuffer ` ��       4    Internal (low level) buffer control function block    
   bOverwrite            ��       8    TRUE = overwrite oldest entry, FALSE = don't overwrite    putValue           ''        T_MaxString   ��       %    String to add (write) to the buffer    pBuffer           ��	       #    Pointer to ring buffer data bytes    cbBuffer           ��
           Max. ring buffer byte size       bOk            ��       T    TRUE = new entry added or removed succesfully, FALSE = fifo overflow or fifo empty    getValue           ''        T_MaxString   ��       #    String removed (read) from buffer    nCount           ��           Number of fifo entries    cbSize           ��       "    Current byte length of fifo data             ���V  �    ����        "   FB_SYSTEMTIMETOTZSPECIFICLOCALTIME           fbBase             "   FB_TranslateUtcToLocalTimeByZoneID ` ��           Underlaid base function block       in                   
   TIMESTRUCT   ��       p    Time to be converted (UTC, system time format). Structure that specifies the system time since January 1, 1601    tzInfo                     ST_TimeZoneInformation   ��           Time zone settings       out                   
   TIMESTRUCT   ��       ,    Converted time in local system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��	       "    Daylight saving time information    bB            ��
            FALSE => A time, TRUE => B time            ���V  �    ����           FB_TEXTFILERINGBUFFER           fbOpen                FB_FileOpen ` ��              fbClose                FB_FileClose ` ��              fbPuts                FB_FilePuts ` ��              nStep         ` ��       @    0=idle, 1=init, 10,11=open, 40,41=write, 50,51=close, 100=exit    eCmd           eFileRBuffer_None       E_FileRBufferCmd ` ��                 sNetId           ''     
   T_AmsNetId ` ��           ams net id 	   sPathName           'c:\Temp\data.dat'        T_MaxString ` ��       6    file buffer path name (max. length = 255 characters)    ePath           PATH_GENERIC    
   E_OpenPath ` ��           default: Open generic file    bAppend         ` ��       #    TRUE = append, FALSE = not append    putLine           ''        T_MaxString ` ��	              cbBuffer        ` ��
       5    max. file buffer byte size(RESERVED for future use)    tTimeout    �   ` ��                 bBusy          ` ��              bError          ` ��              nErrID         ` ��              bOpened          ` ��       )    TRUE = file opened, FALSE = file closed    getLine           ''        T_MaxString ` ��                       ���V  �   ����        "   FB_TRANSLATELOCALTIMETOUTCBYZONEID           inLocal                   
   TIMESTRUCT ` ��       9    Input time in local system time format (time structure) 	   tziSommer                   
   TIMESTRUCT ` ��       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` ��       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` ��       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` ��       ?    tzInfo.standardDate transition time in local file time Format    tziLocalSommerJump             
   T_FILETIME ` ��              tziLocalWinterJump             
   T_FILETIME ` ��              ui64LocalIn                T_ULARGE_INTEGER ` ��       (    Local input time as unsigned 64 number    ui64LocalSommer                T_ULARGE_INTEGER ` ��       5    Local tzInfo.daylightDate as unsigned 64 bit number    ui64LocalWinter                T_ULARGE_INTEGER ` ��       5    Local tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` ��       <    Input time[Local] to tzInfo.daylightDate[Local] cmp result    in_to_w         ` ��       <    Input time[Local] to tzInfo.standardDate[Local] cmp result    s_to_w         ` ��       E    tzInfo.daylightDate[Local] to tzInfo.standardDate[Local] cmp result    in_to_s_jump         ` ��        2    Input time[Local] to tzInfo jump time cmp result    in_to_w_jump         ` ��!       2    Input time[Local] to tzInfo jump time cmp result    iStandardBias         ` ��#              iDaylightBias         ` ��$              ui64PreviousIn                T_ULARGE_INTEGER ` ��&              ui64FallDiff                T_ULARGE_INTEGER ` ��'           	   bFallDiff          ` ��(           Nur zu Testzwecken    dtSommerJump         ` ��*              dtWinterJump         ` ��+                 in             
   T_FILETIME   ��       /    Time to be converted (Local file time format)    tzInfo                     ST_TimeZoneInformation   ��           Time zone information    wDldYear           ��       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           ��       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   ��
       '    Converted time (UTC file time format)    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��       +    Detected daylight saving time information    bB            ��            FALSE => A time, TRUE => B time   bias           ��           Bias value in minutes             ���V  �    ����        "   FB_TRANSLATEUTCTOLOCALTIMEBYZONEID           inUtc                   
   TIMESTRUCT ` ��       7    Input time in UTC system time format (time structure)    bInAsStruct          ` ��       k    TRUE => inUtc is valid/converted to UTC system time format, FALSE => inUtc is not valid/not converted yet 	   tziSommer                   
   TIMESTRUCT ` ��       A    tzInfo.daylightDate transition time in local system time format 	   tziWinter                   
   TIMESTRUCT ` ��       A    tzInfo.standardDate transition time in local system time Format    tziLocalSommer             
   T_FILETIME ` ��       ?    tzInfo.daylightDate transition time in local file time format    tziLocalWinter             
   T_FILETIME ` ��       ?    tzInfo.standardDate transition time in local file time Format    tziUtcSommer             
   T_FILETIME ` ��       =    tzInfo.daylightDate transition time in UTC file time format    tziUtcWinter             
   T_FILETIME ` ��       =    tzinfo.standardDate transition time in UTC file time format 	   ui64UtcIn                T_ULARGE_INTEGER ` ��       &    UTC input time as unsigned 64 number    ui64UtcSommer                T_ULARGE_INTEGER ` ��       3    UTC tzInfo.daylightDate as unsigned 64 bit number    ui64UtcWinter                T_ULARGE_INTEGER ` ��       3    UTC tzInfo.standardDate as unsigned 64 bit number    in_to_s         ` ��       8    Input time[UTC] to tzInfo.daylightDate[UTC] cmp result    in_to_w         ` ��       8    Input time[UTC] to tzInfo.standardDate[UTC] cmp result    s_to_w         ` ��        A    tzInfo.daylightDate[UTC] to tzInfo.standardDate[UTC] cmp result    out_to_s         ` ��!       =    Output time[local] to tzInfo.daylightDate[local] cmp result    out_to_w         ` ��"       =    Output time[local] to tzInfo.standardDate[local] cmp result       in             
   T_FILETIME   ��       .    Time to be converted (UTC, file time format)    tzInfo                     ST_TimeZoneInformation   ��           Time zone information    wDldYear           ��       p    Optional daylightDate.wYear value. If 0 => not used (default) else used only if tzInfo.daylightDate.wYear = 0.    wStdYear           ��       p    Optional standardDate.wYear value. If 0 => not used (default) else used only if tzInfo.standardDate.wYear = 0.       out             
   T_FILETIME   ��
       (    Converted time (local file time format)   eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��       0    Detected daylight saving time/zone information    bB            ��            FALSE => A time, TRUE => B time   bias           ��           Bias value in minutes             ���V  �    ����            FB_TZSPECIFICLOCALTIMETOFILETIME           fbBase       !    ( wStdYear := 0, wDldYear := 0 )                                         "   FB_TranslateLocalTimeToUtcByZoneID ` ��           Underlaid base function block       in             
   T_FILETIME   ��       }    Time zone's specific local file time. 64-bit value representing the number of 100-nanosecond intervals since January 1, 1601   tzInfo                     ST_TimeZoneInformation   ��           Time zone settings       out             
   T_FILETIME   ��       E    Converted time in Coordinated Universal Time (UTC) file time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��	       "    Daylight saving time information    bB            ��
            FALSE => A time, TRUE => B time            ���V  �    ����        "   FB_TZSPECIFICLOCALTIMETOSYSTEMTIME           fbBase                                         "   FB_TranslateLocalTimeToUtcByZoneID ` ��           Underlaid base function block       in                   
   TIMESTRUCT   ��       g    Time zone's specific local system time. Structure that specifies the system time since January 1, 1601   tzInfo                     ST_TimeZoneInformation   ��           Time zone settings       out                   
   TIMESTRUCT   ��       8    Coordinated Universal Time (UTC) in system time format    eTzID           eTimeZoneID_Unknown       E_TimeZoneID   ��	       "    Daylight saving time information    bB            ��
            FALSE => A time, TRUE => B time            ���V  �    ����           FB_WRITEPERSISTENTDATA           fbAdsWrtCtl       9    ( ADSSTATE := ADSSTATE_SAVECFG, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time    MODE           SPDM_2PASS       E_PersistentMode   ��       D    =SPDM_2PASS: optimized boost; =SPDM_VAR_BOOST: boost per variable;       BUSY            ��              ERR            ��              ERRID           ��                       ���V  �   ����           FILETIME_TO_DT           ui64                T_ULARGE_INTEGER ` ��	                 fileTime             
   T_FILETIME   ��           Windows file time.       FILETIME_TO_DT                                     ���V  �    ����           FILETIME_TO_SYSTEMTIME     	      D         ` ��              M         ` ��              Y         ` ��           
   uiPastDays                T_ULARGE_INTEGER ` ��	              uiPastYears                T_ULARGE_INTEGER ` ��
              uiRemainder                T_ULARGE_INTEGER ` ��           
   dwPastDays         ` ��              dwPastYears         ` ��           
   dwYearDays         ` ��                 fileTime             
   T_FILETIME   ��                 FILETIME_TO_SYSTEMTIME                   
   TIMESTRUCT                             ���V  �    ����           FIX16_TO_LREAL               in                 T_FIX16   ��                 FIX16_TO_LREAL                                                  ���V  �    ����           FIX16_TO_WORD               in                 T_FIX16   ��           16 bit fixed point number       FIX16_TO_WORD                                     ���V  �    ����           FIX16ADD               augend                 T_FIX16   ��              addend                 T_FIX16   ��                 FIX16Add                 T_FIX16                             ���V  �    ����        
   FIX16ALIGN               in                 T_FIX16   ��       #    16 bit signed fixed point number.    n                           ��       ,    Number of fractional bits (decimal places)    
   FIX16Align                 T_FIX16                             ���V  �    ����           FIX16DIV           tmpA         ` ��	                 dividend                 T_FIX16   ��              divisor                 T_FIX16   ��                 FIX16Div                 T_FIX16                             ���V  �    ����           FIX16MUL           tmp         ` ��	                 multiA                 T_FIX16   ��              multiB                 T_FIX16   ��                 FIX16Mul                 T_FIX16                             ���V  �    ����           FIX16SUB               minuend                 T_FIX16   ��           
   subtrahend                 T_FIX16   ��                 FIX16Sub                 T_FIX16                             ���V  �    ����           GETREMOTEPCINFO        	   fbAdsRead       #    ( PORT:=1, IDXGRP:=3, IDXOFFS:=1 )        ADSREAD ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��           
   RouterInfo   	  c            
                ST_AmsRouterInfoEntry         ` ��              iIndex         ` ��                 NETID             
   T_AmsNetId   ��       D    Target NetID, usually left as empty string for reading local infos    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��       
    Ads busy    ERR            ��	           Ads error    ERRID           ��
           Ads Error    RemotePCInfo               REMOTEPCINFOSTRUCT   ��       N    field with all NetID�s and PC names found in router, ordered as router gives             ���V  �   ����           GUID_TO_REGSTRING           sGuid    Q       Q     ��                 in                  GUID   ��           Structure with GUID       GUID_TO_REGSTRING    '       '                              ���V  �    ����           GUID_TO_STRING           sRetVal    Q       Q     ��              nDummyW            ��	              nDummyDW            ��
              sHex                T_MaxString    ��                 stIn                  GUID   ��           Structure with a GUID       GUID_TO_STRING    Q       Q                              ���V  �    ����           GUIDSEQUALBYVAL               guidA                  GUID   ��              guidB                  GUID   ��                 GuidsEqualByVal                                      ���V  �    ����           HEXASCNIBBLE_TO_BYTE               asc           ��       R   Ascii code of hexadecimal nibble character, ASC('0'..'9' or 'a'..'f' or 'A'..'F')       HEXASCNIBBLE_TO_BYTE                                     ���V  �    ����           HEXCHRNIBBLE_TO_BYTE               chr               ��       8    One string character: '0'..'9' or 'a'..'f' or 'A'..'F'       HEXCHRNIBBLE_TO_BYTE                                     ���V  �    ����           HEXSTR_TO_DATA           pSrc               ` ��
              pDest               ` ��              ascii         ` ��              nibble         ` ��              bAdd          ` ��              bLN          ` ��           hi/lo nibble       sHex                T_MaxString   ��           Hex string to convert    pData           ��           Pointer to destination buffer    cbData           ��       !    Byte size of destination buffer       HEXSTR_TO_DATA                                     ���V  �    ����           HOST_TO_BE128               in                T_UHUGE_INTEGER   ��                 HOST_TO_BE128                T_UHUGE_INTEGER                             ���V  �    ����           HOST_TO_BE16               in           ��                 HOST_TO_BE16                                     ���V  �    ����           HOST_TO_BE32           parr    	                            ` ��                 in           ��                 HOST_TO_BE32                                     ���V  �    ����           HOST_TO_BE64               in                T_ULARGE_INTEGER   ��                 HOST_TO_BE64                T_ULARGE_INTEGER                             ���V  �    ����           INT64_TO_LREAL               in                T_LARGE_INTEGER   ��                 INT64_TO_LREAL                                                  ���V  �    ����        
   INT64ADD64           bOV          ` ��	                 i64a                T_LARGE_INTEGER   ��              i64b                T_LARGE_INTEGER   ��              
   Int64Add64                T_LARGE_INTEGER                             ���V  �    ����           INT64ADD64EX               augend                T_LARGE_INTEGER   ��              addend                T_LARGE_INTEGER   ��                 Int64Add64Ex                T_LARGE_INTEGER                       bOV            ��       3    TRUE => arithmetic overflow, FALSE => no overflow         ���V  �    ����        
   INT64CMP64               i64a                T_LARGE_INTEGER   ��              i64b                T_LARGE_INTEGER   ��	              
   Int64Cmp64                                     ���V  �    ����           INT64DIV64EX           bIsNegative          ` ��           
   sRemainder                T_ULARGE_INTEGER ` ��                 dividend                T_LARGE_INTEGER   ��              divisor                T_LARGE_INTEGER   ��                 Int64Div64Ex                T_LARGE_INTEGER                    	   remainder                 T_LARGE_INTEGER  ��                   ���V  �    ����           INT64ISZERO               i64                T_LARGE_INTEGER   ��                 Int64IsZero                                      ���V  �    ����           INT64NEGATE               i64                T_LARGE_INTEGER   ��                 Int64Negate                T_LARGE_INTEGER                             ���V  �    ����           INT64NOT               i64                T_LARGE_INTEGER   ��                 Int64Not                T_LARGE_INTEGER                             ���V  �    ����        
   INT64SUB64               i64a                T_LARGE_INTEGER   ��       	    minuend    i64b                T_LARGE_INTEGER   ��           substrahend    
   Int64Sub64                T_LARGE_INTEGER                             ���V  �    ����           ISFINITE        	   ptrDouble    	                            ` ��           	   ptrSingle               ` ��	                 x                 T_ARG   ��                 IsFinite                                      ���V  �    ����           LARGE_INTEGER            
   dwHighPart           ��           	   dwLowPart           ��                 LARGE_INTEGER                T_LARGE_INTEGER                             ���V  �    ����           LARGE_TO_ULARGE               in                T_LARGE_INTEGER   ��                 LARGE_TO_ULARGE                T_ULARGE_INTEGER                             ���V  �    ����           LREAL_TO_FIX16               in                        ��           LREAL number to convert    n                          ��       ,    Number of fractional bits (decimal places)       LREAL_TO_FIX16                 T_FIX16                             ���V  �    ����           LREAL_TO_FMTSTR           rec              
   T_FloatRec ` ��              pOut               ` ��              iStart         ` ��              iEnd         ` ��              i         ` ��                 in                        ��
           
   iPrecision           ��              bRound            ��                 LREAL_TO_FMTSTR    �      �                             ���V  �    ����           LREAL_TO_INT64               in                        ��                 LREAL_TO_INT64                T_LARGE_INTEGER                             ���V  �    ����           LREAL_TO_UINT64           f64                      ` ��                 in                        ��                 LREAL_TO_UINT64                T_ULARGE_INTEGER                             ���V  �    ����           MAXSTRING_TO_BYTEARR           cbCopy         ` ��           	   Index7001                            in                T_MaxString   ��                 MAXSTRING_TO_BYTEARR   	  �                                                 ���V  �   ����           NT_ABORTSHUTDOWN           fbAdsWrtCtl       N    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_POWERGOOD, DEVSTATE := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��              ERR            ��	              ERRID           ��
                       ���V  �   ����        
   NT_GETTIME        	   fbAdsRead       i    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_TIMESERVICES, IDXOFFS := TIMESERVICE_DATEANDTIME )        ADSREAD ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��              ERR            ��	              ERRID           ��
              TIMESTR                   
   TIMESTRUCT   ��           Local windows system time             ���V  �   ����        	   NT_REBOOT           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 1 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    DELAY           ��           Reboot delay time [seconds]    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����           NT_SETLOCALTIME        
   fbAdsWrite       d    ( PORT:= AMSPORT_R3_SYSSERV, IDXGRP:= SYSTEMSERVICE_TIMESERVICES, IDXOFFS:=TIMESERVICE_DATEANDTIME)        ADSWRITE ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    TIMESTR                   
   TIMESTRUCT   ��           New local system time    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����           NT_SETTIMETORTCTIME        
   fbAdsWrite       :    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := 4, IDXOFFS := 0 )        ADSWRITE ` ��           
   fbRegQuery       K    ( sSubKey := 'Software\Beckhoff\TwinCAT\System', sValName := 'NumOfCPUs' )                         FB_RegQueryValue ` ��           	   fbTrigger                R_TRIG ` ��              bTmp         ` ��              state         ` ��              bInit         ` ��           	   numOfCPUs         ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    SET            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��              ERR            ��	              ERRID           ��
                       ���V  �   ����           NT_SHUTDOWN           fbAdsWrtCtl       M    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_SHUTDOWN, DEVSTATE := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    DELAY           ��           Shutdown delay time [seconds]    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����           NT_STARTPROCESS        
   fbAdsWrite       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP:=SYSTEMSERVICE_STARTPROCESS, IDXOFFS:=0 )        ADSWRITE ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              LenPath         ` ��              LenDir         ` ��           
   LenComLine         ` ��              req                  ST_AmsStartProcessReq ` ��           data buffer       NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PATHSTR                T_MaxString   ��              DIRNAME                T_MaxString   ��           	   COMNDLINE                T_MaxString   ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��              ERR            ��              ERRID           ��                       ���V  �   ����           OTSTRUCT_TO_TIME           tmpMilli         ` ��                 OTIN                    OTSTRUCT   ��                 OTSTRUCT_TO_TIME                                     ���V  �    ����           PBOOL_TO_BOOL               in                  ��                 PBOOL_TO_BOOL                                      ���V  �    ����           PBYTE_TO_BYTE               in                 ��                 PBYTE_TO_BYTE                                     ���V  �    ����           PDATE_TO_DATE               in                 ��                 PDATE_TO_DATE                                     ���V  �    ����           PDINT_TO_DINT               in                 ��                 PDINT_TO_DINT                                     ���V  �    ����        	   PDT_TO_DT               in                 ��              	   PDT_TO_DT                                     ���V  �    ����           PDWORD_TO_DWORD               in                 ��                 PDWORD_TO_DWORD                                     ���V  �    ����           PHUGE_TO_HUGE               in                 T_HUGE_INTEGER        ��                 PHUGE_TO_HUGE                T_HUGE_INTEGER                             ���V  �    ����           PINT_TO_INT               in                 ��                 PINT_TO_INT                                     ���V  �    ����           PLARGE_TO_LARGE               in                 T_LARGE_INTEGER        ��                 PLARGE_TO_LARGE                T_LARGE_INTEGER                             ���V  �    ����           PLC_READSYMINFO        	   fbAdsRead       3    ( IDXGRP := ADSIGRP_SYM_UPLOADINFO, IDXOFFS := 0 )        ADSREAD ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              SymInfoStruct   	                       ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��              SYMCOUNT           ��              SYMSIZE           ��                       ���V  �   ����           PLC_READSYMINFOBYNAME           fbReadEx                PLC_ReadSymInfoByNameEx ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              SYMNAME                T_MaxString   ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��	           Max fb execution time       BUSY            ��              ERR            ��              ERRID           ��              SYMINFO                     SYMINFOSTRUCT   ��                       ���V  �   ����           PLC_READSYMINFOBYNAMEEX        
   fbAdsRdWrt       5    ( IDXGRP := ADSIGRP_SYM_INFOBYNAMEEX, IDXOFFS := 0 )        ADSRDWRT ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              symInfoBuffer                            ST_AmsSymbolInfoEntry ` ��           
   nameLength         ` ��           
   typeLength         ` ��              commentLength         ` ��              nameAdrOffset         ` ��              typeAdrOffset         ` ��              commentAdrOffset         ` ��              nameCpyLength         ` ��              typeCpyLength         ` ��               commentCpyLength         ` ��!              endOfBufAdrOffset         ` ��"                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              SYMNAME                T_MaxString   ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��	           Max fb execution time       BUSY            ��              ERR            ��              ERRID           ��              SYMINFO                     SYMINFOSTRUCT   ��              OVTYPE            ��       @    TRUE => Type name string length overflow, FALSE => no overflow 	   OVCOMMENT            ��       >    TRUE => Comment string length overflow, FALSE => no overflow             ���V  �   ����        	   PLC_RESET           fbAdsWrtCtl       F    ( ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              RESET            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����        	   PLC_START           fbAdsWrtCtl       D    ( ADSSTATE := ADSSTATE_RUN, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����           PLC_STOP           fbAdsWrtCtl       E    ( ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��              STOP            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����           PLREAL_TO_LREAL               in                              ��                 PLREAL_TO_LREAL                                                  ���V  �    ����           PMAXSTRING_TO_MAXSTRING               in                 T_MaxString        ��                 PMAXSTRING_TO_MAXSTRING                T_MaxString                             ���V  �    ����           PREAL_TO_REAL               in                  ��                 PREAL_TO_REAL                                      ���V  �    ����           PROFILER     
      MAX_DATABUFF_SIZE    d   @  ��              RisingEdgeStart                R_TRIG ` ��              RisingEdgeReset                R_TRIG ` ��              FallingEdgeStart                F_TRIG ` ��              GETCPUACCOUNT1                GETCPUACCOUNT ` ��              OldCpuCntDW         ` ��              MeasureData   	  d                     ` ��              TimeSum         ` ��              MaxData        ` ��              idx         ` ��                 START            ��       0   rising edge starts measurement and falling stops   RESET            ��                 BUSY            ��              DATA                   PROFILERSTRUCT   ��                       ���V  �   ����           PSINT_TO_SINT               in                 ��                 PSINT_TO_SINT                                     ���V  �    ����           PSTRING_TO_STRING               in     Q       Q         ��                 PSTRING_TO_STRING    Q       Q                              ���V  �    ����           PTIME_TO_TIME               in                 ��                 PTIME_TO_TIME                                     ���V  �    ����           PTOD_TO_TOD               in                 ��                 PTOD_TO_TOD                                     ���V  �    ����           PUDINT_TO_UDINT               in                 ��                 PUDINT_TO_UDINT                                     ���V  �    ����           PUHUGE_TO_UHUGE               in                 T_UHUGE_INTEGER        ��                 PUHUGE_TO_UHUGE                T_UHUGE_INTEGER                             ���V  �    ����           PUINT64_TO_UINT64               in                 T_ULARGE_INTEGER        ��                 PUINT64_TO_UINT64                T_ULARGE_INTEGER                             ���V  �    ����           PUINT_TO_UINT               in                 ��                 PUINT_TO_UINT                                     ���V  �    ����           PULARGE_TO_ULARGE               in                 T_ULARGE_INTEGER        ��                 PULARGE_TO_ULARGE                T_ULARGE_INTEGER                             ���V  �    ����           PUSINT_TO_USINT               in                 ��                 PUSINT_TO_USINT                                     ���V  �    ����           PVOID_TO_BINSTR               in                PVOID   ��       -    PVOID input value (pointer) to be converted 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       PVOID_TO_BINSTR                T_MaxString                             ���V  �    ����           PVOID_TO_DECSTR               in                PVOID   ��       -    PVOID input value (pointer) to be converted 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       PVOID_TO_DECSTR                T_MaxString                             ���V  �    ����           PVOID_TO_HEXSTR               in                PVOID   ��       -    PVOID input value (pointer) to be converted 
   iPrecision           ��       ,    Precision. Number of digits to be printed.    bLoCase            ��	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       PVOID_TO_HEXSTR                T_MaxString                             ���V  �    ����           PVOID_TO_OCTSTR               in                PVOID   ��       -    PVOID input value (pointer) to be converted 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       PVOID_TO_OCTSTR                T_MaxString                             ���V  �    ����           PVOID_TO_STRING               in                PVOID   ��                 PVOID_TO_STRING                T_MaxString                             ���V  �    ����           PWORD_TO_WORD               in                 ��                 PWORD_TO_WORD                                     ���V  �    ����        
   RAD_TO_DEG               ANGLE                        ��              
   RAD_TO_DEG                                                  ���V  �    ����           REGSTRING_TO_GUID               in    '       '    ��       A    String containig GUID, '{xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx}'       REGSTRING_TO_GUID                  GUID                             ���V  �    ����           ROUTETRANSPORT_TO_STRING               eType               E_RouteTransportType   ��                 ROUTETRANSPORT_TO_STRING    Q       Q                              ���V  �    ����           RTC           fbGetCpuCounter                GETCPUCOUNTER ` ��           
   risingEdge                R_TRIG ` ��              oldTick         ` ��              currTick         ` ��              nanoDiff         ` ��              nanoRest         ` ��              secDiff         ` ��              init         ` ��                 EN            ��              PDT           ��                 Q            ��              CDT           ��	                       ���V  �    ����           RTC_EX           fbGetCpuCounter                GETCPUCOUNTER ` ��           
   risingEdge                R_TRIG ` ��              oldTick         ` ��              currTick         ` ��              nanoDiff         ` ��              nanoRest         ` ��              secDiff         ` ��              init         ` ��                 EN            ��              PDT           ��              PMSEK           ��                 Q            ��	              CDT           ��
              CMSEK           ��                       ���V  �    ����           RTC_EX2     	      fbGetCpuCounter                GETCPUCOUNTER ` ��           
   risingEdge                R_TRIG ` ��              oldTick         ` ��              currTick         ` ��              nanoDiff         ` ��              nanoRest         ` ��              secDiff         ` ��              dateTime         ` ��              init         ` ��                 EN            ��              PDT                   
   TIMESTRUCT   ��              PMICRO           ��                 Q            ��	              CDT       ;    ( wYear := 1970, wMonth := 1, wDay := 1, wDayOfWeek := 4 )    �                  
   TIMESTRUCT   ��
              CMICRO           ��                       ���V  �    ����           SCOPEASCIIEXPORT        
   fbAdsWrite                ADSWRITE    ��                 bExecute            ��           	   sFilePath                T_MaxString   ��              tTimeout    �     ��                 bBusy            ��              bError            ��	              iErrorId           ��
                       ���V  �   ����        	   SCOPEEXIT        
   fbAdsWrite                ADSWRITE    ��           
   RisingEdge                R_TRIG    ��              step            ��              fbDelay                TON    ��                 bExecute            ��       -    Rising edge starts function block execution    tTimeOut    �     ��       >    Maximum time allowed for the execution of the function block       bBusy            ��              bError            ��              iErrorId           ��	                       ���V  �   ����           SCOPEGETRECORDLEN        	   fbAdsRead                ADSREAD    ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��           
   fRecordLen                        ��	                       ���V  �    ����           SCOPEGETSTATE        	   fbAdsRead                ADSREAD    ��              State            ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��              bOnline            ��	                       ���V  �    ����           SCOPELOADFILE        
   fbAdsWrite                ADSWRITE    ��                 bExecute            ��           	   sFilePath                T_MaxString   ��              tTimeout    �     ��                 bBusy            ��              bError            ��	              iErrorId           ��
                       ���V  �   ����           SCOPEMANUALTRIGGER        
   fbAdsWrite                ADSWRITE    ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��                       ���V  �    ����           SCOPESAVEAS        
   RisingEdge                R_TRIG ` ��           
   fbAdsWrite       D    ( NETID := '', PORT := 14000, IDXGRP := 16#2000, IDXOFFS := 16#11 )        ADSWRITE ` ��              step         ` ��                 bExecute            ��       -    Rising edge starts function block execution 	   sFilePath                T_MaxString   ��           e.g. c:\Axis1.scp   tTimeout    �     ��       >    Maximum time allowed for the execution of the function block       bBusy            ��              bError            ��	              iErrorId           ��
                       ���V  �   ����           SCOPESETOFFLINE        
   fbAdsWrite                ADSWRITE    ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��                       ���V  �    ����           SCOPESETONLINE        
   fbAdsWrite                ADSWRITE    ��                 bExecute            ��                 bBusy            ��              bError            ��              iErrorId           ��                       ���V  �    ����           SCOPESETRECORDLEN        
   fbAdsWrite                ADSWRITE    ��                 bExecute            ��           
   fRecordLen                        ��                 bBusy            ��              bError            ��              iErrorId           ��	                       ���V  �    ����           SCOPEVIEWEXPORT        
   fbAdsWrite                ADSWRITE    ��                 bExecute            ��           	   sFilePath                T_MaxString   ��              tTimeout    �     ��                 bBusy            ��              bError            ��	              iErrorId           ��
                       ���V  �   ����           STRING_TO_CSVFIELD           cbField         ` ��                 in                T_MaxString   ��       !    Input data in PLC string format    bQM            ��	       l    TRUE => Enclose result string in quotation marks, FALSE => Don't enclose result string in quotation marks.       STRING_TO_CSVFIELD                T_MaxString                             ���V  �    ����           STRING_TO_GUID           b   	  #                        ��	              g                  GUID    ��
              n            ��              nibble            ��           	   Index7001                            in    %       %    ��       @    String containing GUID, 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'       STRING_TO_GUID                  GUID                             ���V  �    ����           STRING_TO_PVOID           ui32            ��                 in    Q       Q    ��       .    String containing the 32 bit pointer address       STRING_TO_PVOID                PVOID                             ���V  �    ����           STRING_TO_SYSTEMTIME           b   	                 �   16#31, 16#36, 16#30, 16#31, 	(* year 1601 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30(*000*), (* milliseconds *)
								16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` ��           null delimiter    ts       *    ( wYear := 1601, wMonth := 1, wDay := 1 )    A               
   TIMESTRUCT ` ��              n         ` ��              bFmt          ` ��              dwYears         ` ��              dwDays         ` ��           	   Index7001                            in               ��       1    Input string, format: '2007-03-05-17:35:09.223'       STRING_TO_SYSTEMTIME                   
   TIMESTRUCT                             ���V  �    ����           STRING_TO_UINT64           ptr               ` ��              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` ��	                 in               ��                 STRING_TO_UINT64                T_ULARGE_INTEGER                             ���V  �    ����           SYSTEMTIME_TO_DT           b   	                 �    16#44, 16#54, 16#23(*DT#*),
										16#31, 16#39, 16#37, 16#30(*1970*),
										16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#31(*01*), 16#2D(*-*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#3A(*:*), 16#30, 16#30(*00*), 16#00      D      T      #      1      9      7      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0           ` ��              str             ` ��
              nSeconds         ` ��           	   Index7001                            TIMESTR                   
   TIMESTRUCT   ��                 SYSTEMTIME_TO_DT                                     ���V  �    ����           SYSTEMTIME_TO_FILETIME           tmp1                T_ULARGE_INTEGER ` ��	              tmp2                T_ULARGE_INTEGER ` ��
              pastDays         ` ��              i         ` ��              
   systemTime                   
   TIMESTRUCT   ��                 SYSTEMTIME_TO_FILETIME             
   T_FILETIME                             ���V  �    ����           SYSTEMTIME_TO_STRING           b   	                 �   16#31, 16#36, 16#30, 16#31(*1601*),		(* year *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* month *)
										16#2D(*-*), 16#30, 16#31(*01*),				(* day *)
										16#2D(*-*), 16#30, 16#30(*00*),				(* hour *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* minute *)
										16#3A(*:*), 16#30, 16#30(*00*),				(* second *)
										16#2E(*.*), 16#30, 16#30, 16#30(*000*),		(* milliseconds *)
										16#00      1      6      0      1      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0           ` ��           	   Index7001                            in                   
   TIMESTRUCT   ��                 SYSTEMTIME_TO_STRING                                         ���V  �    ����        	   TC_CONFIG           fbAdsWrtCtl       e    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RECONFIG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    SET            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����           TC_CPUUSAGE        	   fbAdsRead       5    ( PORT:= AMSPORT_R0_RTIME, IDXGRP:= 1, IDXOFFS:= 6 )        ADSREAD ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��              USAGE           ��          in %            ���V  �   ����        
   TC_RESTART           fbAdsWrtCtl       b    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_RESET, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    RESTART            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����           TC_STOP           fbAdsWrtCtl       a    ( PORT := AMSPORT_R3_SYSSERV, ADSSTATE := ADSSTATE_STOP, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    STOP            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��                       ���V  �   ����           TC_SYSLATENCY        	   fbAdsRead       8    ( PORT := AMSPORT_R0_RTIME, IDXGRP := 1, IDXOFFS := 2 )        ADSREAD ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��              tmpData   	                      ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��	              ERR            ��
              ERRID           ��              ACTUAL           ��           Actual latency in �s    MAXIMUM           ��           Maximum latency in �s             ���V  �   ����           TIME_TO_OTSTRUCT           tmpMilli         ` ��                 TIN           ��                 TIME_TO_OTSTRUCT                    OTSTRUCT                             ���V  �    ����           UDINT_TO_LREALEX               in           ��                 UDINT_TO_LREALEX                                                  ���V  �    ����           UINT32X32TO64           Tmp1         ` ��	              Tmp2         ` ��
              Tmp3         ` ��              Tmp4         ` ��              DW1         ` ��              DW2         ` ��              DW3         ` ��              DW4         ` ��                 ui32a           ��              ui32b           ��                 UInt32x32To64                T_ULARGE_INTEGER                             ���V  �    ����           UINT64_TO_LREAL               in                T_ULARGE_INTEGER   ��                 UINT64_TO_LREAL                                                  ���V  �    ����           UINT64_TO_STRING        	   remainder                T_ULARGE_INTEGER ` ��              constTen       &     ( dwHighPart := 0, dwLowPart := 10 )    
           T_ULARGE_INTEGER ` ��	                 in                T_ULARGE_INTEGER   ��                 UINT64_TO_STRING                                         ���V  �    ����           UINT64ADD64           bOV          ` ��	                 ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��                 UInt64Add64                T_ULARGE_INTEGER                             ���V  �    ����           UINT64ADD64EX               augend                T_ULARGE_INTEGER   ��              addend                T_ULARGE_INTEGER   ��                 UInt64Add64Ex                T_ULARGE_INTEGER                       bOV            ��       3    TRUE => arithmetic overflow, FALSE => no overflow         ���V  �    ����        	   UINT64AND               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��              	   UInt64And                T_ULARGE_INTEGER                             ���V  �    ����           UINT64CMP64               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��	                 UInt64Cmp64                                     ���V  �    ����           UINT64DIV16EX        	   pDividend    	                            ` ��              pResult    	                            ` ��              rest         ` ��                 dividend                T_ULARGE_INTEGER   ��              divisor           ��                 UInt64Div16Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  ��                   ���V  �    ����           UINT64DIV64        	   remainder                T_ULARGE_INTEGER ` ��	                 dividend                T_ULARGE_INTEGER   ��              divisor                T_ULARGE_INTEGER   ��                 UInt64Div64                T_ULARGE_INTEGER                             ���V  �    ����           UINT64DIV64EX           msBit       /    ( dwHighPart := 16#80000000, 	dwLowPart := 0 )            �   T_ULARGE_INTEGER ` ��              bitShift         ` ��              cmp         ` ��              in   	                      T_ULARGE_INTEGER         ` ��              out   	                      T_ULARGE_INTEGER         ` ��           
   cbReturned         ` ��           	   Index7001                            dividend                T_ULARGE_INTEGER   ��              divisor                T_ULARGE_INTEGER   ��                 UInt64Div64Ex                T_ULARGE_INTEGER                    	   remainder                 T_ULARGE_INTEGER  ��                   ���V  �    ����           UINT64ISZERO               ui64                T_ULARGE_INTEGER   ��                 UInt64isZero                                      ���V  �    ����           UINT64LIMIT               ui64min                T_ULARGE_INTEGER   ��              ui64in                T_ULARGE_INTEGER   ��              ui64max                T_ULARGE_INTEGER   ��                 UInt64Limit                T_ULARGE_INTEGER                             ���V  �    ����        	   UINT64MAX               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��              	   UInt64Max                T_ULARGE_INTEGER                             ���V  �    ����        	   UINT64MIN               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��              	   UInt64Min                T_ULARGE_INTEGER                             ���V  �    ����           UINT64MOD64               dividend                T_ULARGE_INTEGER   ��              divisor                T_ULARGE_INTEGER   ��                 UInt64Mod64                T_ULARGE_INTEGER                             ���V  �    ����           UINT64MUL64           bOV          ` ��	                 multiplicand                T_ULARGE_INTEGER   ��           
   multiplier                T_ULARGE_INTEGER   ��                 UInt64Mul64                T_ULARGE_INTEGER                             ���V  �    ����           UINT64MUL64EX           bCarry          ` ��           	   bSumCarry          ` ��              n         ` ��              m         ` ��                 multiplicand                T_ULARGE_INTEGER   ��           
   multiplier                T_ULARGE_INTEGER   ��                 UInt64Mul64Ex                T_ULARGE_INTEGER                       bOV            ��       3    TRUE => Arithmetic overflow, FALSE => no overflow         ���V  �    ����        	   UINT64NOT               ui64                T_ULARGE_INTEGER   ��              	   UInt64Not                T_ULARGE_INTEGER                             ���V  �    ����           UINT64OR               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��                 UInt64Or                T_ULARGE_INTEGER                             ���V  �    ����        	   UINT64ROL           bMSB          ` ��	                 ui64                T_ULARGE_INTEGER   ��              n           ��              	   UInt64Rol                T_ULARGE_INTEGER                             ���V  �    ����        	   UINT64ROR           bLSB          ` ��	                 ui64                T_ULARGE_INTEGER   ��              n           ��              	   UInt64Ror                T_ULARGE_INTEGER                             ���V  �    ����        	   UINT64SHL               ui64                T_ULARGE_INTEGER   ��              n           ��              	   UInt64Shl                T_ULARGE_INTEGER                             ���V  �    ����        	   UINT64SHR               ui64                T_ULARGE_INTEGER   ��              n           ��              	   UInt64Shr                T_ULARGE_INTEGER                             ���V  �    ����           UINT64SUB64               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��                 UInt64Sub64                T_ULARGE_INTEGER                             ���V  �    ����        	   UINT64XOR               ui64a                T_ULARGE_INTEGER   ��              ui64b                T_ULARGE_INTEGER   ��              	   UInt64Xor                T_ULARGE_INTEGER                             ���V  �    ����           UINT_TO_LREALEX               in           ��                 UINT_TO_LREALEX                                                  ���V  �    ����           ULARGE_INTEGER            
   dwHighPart           ��           	   dwLowPart           ��                 ULARGE_INTEGER                T_ULARGE_INTEGER                             ���V  �    ����           ULARGE_TO_LARGE               in                T_ULARGE_INTEGER   ��                 ULARGE_TO_LARGE                T_LARGE_INTEGER                             ���V  �    ����           USINT_TO_LREALEX               in           ��                 USINT_TO_LREALEX                                                  ���V  �    ����           WORD_TO_BINSTR           bits   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant bits    iPad            ��           Number of padding zeros    i            ��           	   Index7001                            in           ��           WORD input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       WORD_TO_BINSTR                T_MaxString                             ���V  �    ����           WORD_TO_DECSTR           dec   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant decades    iPad            ��           Number of padding zeros    i            ��              digit            ��           	   Index7001                            in           ��           WORD input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       WORD_TO_DECSTR                T_MaxString                             ���V  �    ����           WORD_TO_FIX16               in           ��           16 bit fixed point number    n                           ��           number of fractional bits       WORD_TO_FIX16                 T_FIX16                             ���V  �    ����           WORD_TO_HEXSTR           hex   	                          ��       6    array of ASCII characters (inclusive null delimiter)    iSig            ��           number of significant nibbles    iPad            ��           number of padding zeros    i            ��           	   Index7001                            in           ��           WORD input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.    bLoCase            ��	       8   Default: use "ABCDEF", if TRUE use "abcdef" characters.       WORD_TO_HEXSTR                T_MaxString                             ���V  �    ����           WORD_TO_LREALEX               in           ��                 WORD_TO_LREALEX                                                  ���V  �    ����           WORD_TO_OCTSTR           oct   	                          ��       6    Array of ASCII characters (inclusive null delimiter)    iSig            ��           Number of significant nibbles    iPad            ��           Number of padding zeros    i            ��           	   Index7001                            in           ��           WORD input value 
   iPrecision           ��       ,    Precision. Number of digits to be printed.       WORD_TO_OCTSTR                T_MaxString                             ���V  �    ����           WRITEPERSISTENTDATA           fbAdsWrtCtl       H    ( ADSSTATE := ADSSTATE_SAVECFG, DEVSTATE := 0, LEN := 0, SRCADDR := 0 )     	   ADSWRTCTL ` ��                 NETID             
   T_AmsNetId   ��       &    TwinCAT network address (ams net id)    PORT           ��       l    Contains the ADS port number of the PLC run-time system whose persistent data is to be stored (801, 811...)   START            ��       6    Rising edge on this input activates the fb execution    TMOUT    �     ��           Max fb execution time       BUSY            ��
              ERR            ��              ERRID           ��                       ���V  �   ����    s   C:\TwinCAT\PLC\LIB\TcEtherCAT.lib @                                                                                H          CONVERTDCTIMETOPATHPOS           fbCall       O    ( funGrp := GENERIC_FB_GRP_NC, funNum:= GENERIC_FB_NC_CONVERTDCTIMETOPATHPOS )        FW_CallGenericFb ` ��              in   	                       ` ��       #    12 byte = nGrpId, nSubIdx, dcTime       nGrpId           ��       
    Group ID    nSubIdx           ��              dcTime            
   T_DCTIME32   ��           32 bit distributed clock time    	   fPosition                        ��              iErr           ��	                       r�>X  �    ����           CONVERTDCTIMETOPOS           fbCall       K    ( funGrp := GENERIC_FB_GRP_NC, funNum:= GENERIC_FB_NC_CONVERTDCTIMETOPOS )        FW_CallGenericFb ` ��              in   	                       ` ��       $    12 byte = nAxisId, nSubIdx, dcTime       nAxisId           ��              nSubIdx           ��              dcTime            
   T_DCTIME32   ��           32 bit distributed clock time    	   fPosition                        ��              iErr           ��	                       r�>X  �    ����           CONVERTPATHPOSTODCTIME           fbCall       P    ( 	funGrp := GENERIC_FB_GRP_NC, funNum:= GENERIC_FB_NC_CONVERTPATHPOSTODCTIME )        FW_CallGenericFb ` ��              in   	                       ` ��       &    16 byte = nGrpId, nSubIdx, fPosition       nGrpId           ��       
    Group ID    nSubIdx           ��           	   fPosition                        ��                 dcTime            
   T_DCTIME32   ��           32 bit distributed clock time    iErr           ��	                       r�>X  �    ����           CONVERTPOSTODCTIME           fbCall       K    ( funGrp := GENERIC_FB_GRP_NC, funNum:= GENERIC_FB_NC_CONVERTPOSTODCTIME )        FW_CallGenericFb ` ��              in   	                       ` ��       '    16 byte = nAxisId, nSubIdx, fPosition       nAxisId           ��              nSubIdx           ��           	   fPosition                        ��                 dcTime            
   T_DCTIME32   ��           32 bit distributed clock time    iErr           ��	                       r�>X  �    ����           DCTIME_TO_DCTIMESTRUCT     
      D         ` ��              M         ` ��              Y         ` ��           
   uiPastDays                T_ULARGE_INTEGER ` ��	              uiPastYears                T_ULARGE_INTEGER ` ��
              uiNsRest                T_ULARGE_INTEGER ` ��              uiMsOfLastDay                T_ULARGE_INTEGER ` ��           
   dwPastDays         ` ��              dwPastYears         ` ��           
   dwYearDays         ` ��                 in               T_DCTIME   ��                 DCTIME_TO_DCTIMESTRUCT        
                DCTIMESTRUCT                             r�>X  �    ����           DCTIME_TO_FILETIME           dc                T_ULARGE_INTEGER ` ��           	   remainder                T_ULARGE_INTEGER ` ��	                 in               T_DCTIME   ��       -    Number of nanoseconds since January 1, 2000       DCTIME_TO_FILETIME             
   T_FILETIME                             r�>X  �    ����           DCTIME_TO_STRING           result                T_ULARGE_INTEGER ` ��           	   remainder                T_ULARGE_INTEGER ` ��              ft             
   T_FILETIME ` ��              ts                   
   TIMESTRUCT ` ��                 in               T_DCTIME   ��           Distributed clock time       DCTIME_TO_STRING                                         r�>X  �    ����           DCTIME_TO_SYSTEMTIME           dct        
                DCTIMESTRUCT ` ��                 in               T_DCTIME   ��           Distributed clock time       DCTIME_TO_SYSTEMTIME                   
   TIMESTRUCT                             r�>X  �    ����           DCTIMESTRUCT_TO_DCTIME           tmp1                T_ULARGE_INTEGER ` ��	              tmp2                T_ULARGE_INTEGER ` ��
              pastDays         ` ��              n         ` ��                 in        
                DCTIMESTRUCT   ��                 DCTIMESTRUCT_TO_DCTIME               T_DCTIME                             r�>X  �    ����           F_CHECKVENDORID        	   nVendorId         ` ��              nMask_lower_3_byte    ���  ` ��
                 stSlaveIdentity                  ST_EcSlaveIdentity   ��                 F_CheckVendorId                                      r�>X  �    ����            F_CONVBK1120COUPLERSTATETOSTRING           sLocalString    Q       Q  ` ��                 nState           ��                  F_ConvBK1120CouplerStateToString    Q       Q                              r�>X  �    ����           F_CONVEXTTIMETODCTIME           DcTime               T_DCTIME ` ��                 ExtTime               T_DCTIME   ��              DcToExtTimeOffset                T_LARGE_INTEGER   ��                 F_ConvExtTimeToDcTime               T_DCTIME                             r�>X  �    ����           F_CONVMASTERDEVSTATETOSTRING           sLocalString    Q       Q  ` ��                 nState           ��                 F_ConvMasterDevStateToString    Q       Q                              r�>X  �    ����           F_CONVPRODUCTCODETOSTRING           sLocalString    Q       Q  ` ��              eTy           PCTYPE_XXDDDD       ProductCode ` ��           
   stLocXXDDD                    ST_TPCTYPE_CODE_XXDDD ` ��	              stLocXXDDXD                     ST_TPCTYPE_CODE_XXDDXD ` ��
              stLocXXDXDD                     ST_TPCTYPE_CODE_XXDXDD ` ��              stLocXXDXDXD                      ST_TPCTYPE_CODE_XXDXDXD ` ��              stLocXXXDQDQD        
                ST_TPCTYPE_CODE_XXXDQDQD ` ��              nPC_CHAR_START         ` ��              nMask_ty        ` ��              nMask_1_to_6    ?    ` ��              nMask_7_to_16    ��   ` ��              nMask_5_to_10    �   ` ��              nMask_5_to_32    ���� ` ��              nMask_11_to_16     �   ` ��              nMask_1_to_16    ��   ` ��              nMask_17_to_32      �� ` ��              nMask_17_to_22      ?  ` ��              nMask_22_to_32      �� ` ��                 stSlaveIdentity                  ST_EcSlaveIdentity   ��                 F_ConvProductCodeToString    Q       Q                              r�>X  �    ����           F_CONVSLAVESTATETOBITS           stEcSlaveStateBits                              ST_EcSlaveStateBits    ��                 stEcSlaveState                ST_EcSlaveState   ��                 F_ConvSlaveStateToBits                              ST_EcSlaveStateBits                             r�>X  �    ����           F_CONVSLAVESTATETOSTRING               state                ST_EcSlaveState   ��                 F_ConvSlaveStateToString    Q       Q                              r�>X  �    ����           F_CONVSTATETOSTRING           sLocalString    Q       Q  ` ��                 nState           ��                 F_ConvStateToString    Q       Q                              r�>X  �    ����           F_CONVTCTIMETODCTIME           DcTime               T_DCTIME ` ��                 TcTime               T_DCTIME   ��              DcToTcTimeOffset                T_LARGE_INTEGER   ��                 F_ConvTcTimeToDcTime               T_DCTIME                             r�>X  �    ����           F_CONVTCTIMETOEXTTIME           ExtTime               T_DCTIME ` ��	                 TcTime               T_DCTIME   ��              DcToTcTimeOffset                T_LARGE_INTEGER   ��              DcToExtTimeOffset                T_LARGE_INTEGER   ��                 F_ConvTcTimeToExtTime               T_DCTIME                             r�>X  �    ����           F_GETACTUALDCTIME        
   cbReturned         ` ��                     F_GetActualDcTime               T_DCTIME                             r�>X  �    ����           F_GETCURDCTASKTIME        
   cbReturned         ` ��                     F_GetCurDcTaskTime               T_DCTIME                             r�>X  �    ����           F_GETCURDCTICKTIME           fbGetSystemTime                GETSYSTEMTIME ` ��              ft                T_ULARGE_INTEGER ` ��              bOV          ` ��	           
   cbReturned         ` ��
                     F_GetCurDcTickTime               T_DCTIME                             r�>X  �    ����           F_GETCUREXTTIME           TcTime               T_DCTIME ` ��              ExtTime               T_DCTIME ` ��	                 DcToExtTimeOffset                T_LARGE_INTEGER   ��              DcToTcTimeOffset                T_LARGE_INTEGER   ��                 F_GetCurExtTime               T_DCTIME                             r�>X  �    ����           F_GETVERSIONTCETHERCAT               nVersionElement           ��                 F_GetVersionTcEtherCAT                                     r�>X  �    ����           FB_ECCOESDOREAD           nOffset         ` ��              fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.	   nSubIndex           ��           CANopen Sdo subindex.   nIndex           ��           CANopen Sdo index.   pDstBuf           ��       ;    Contains the address of the buffer for the received data.    cbBufLen           ��	       3    Contains the max. number of bytes to be received.    bExecute            ��
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       r�>X  �   ����           FB_ECCOESDOREADEX           nOffset         ` ��              fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��           	      sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.	   nSubIndex           ��           CANopen Sdo subindex.   nIndex           ��           CANopen Sdo index.   pDstBuf           ��       ;    Contains the address of the buffer for the received data.    cbBufLen           ��	       3    Contains the max. number of bytes to be received.    bExecute            ��
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.    bCompleteAccess            ��           access complete object      bBusy            ��              bError            ��              nErrId           ��                       r�>X  �   ����           FB_ECCOESDOWRITE           nOffset         ` ��           
   fbAdsWrite                ADSWRITE ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.	   nSubIndex           ��           CANopen Sdo subindex.   nIndex           ��           CANopen Sdo index.   pSrcBuf           ��       D    Contains the address of the buffer containing the data to be send.    cbBufLen           ��	       3    Contains the max. number of bytes to be received.    bExecute            ��
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       r�>X  �   ����           FB_ECCOESDOWRITEEX           nOffset         ` ��           
   fbAdsWrite                ADSWRITE ` ��           
   RisingEdge                R_TRIG ` ��           	      sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.	   nSubIndex           ��           CANopen Sdo subindex.   nIndex           ��           CANopen Sdo index.   pSrcBuf           ��       D    Contains the address of the buffer containing the data to be send.    cbBufLen           ��	       3    Contains the max. number of bytes to be received.    bExecute            ��
       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.    bCompleteAccess            ��           access complete object      bBusy            ��              bError            ��              nErrId           ��                       r�>X  �   ����           FB_ECDCTICKTIMEBASECALC        
   uiPastDays                T_ULARGE_INTEGER ` ��              uiPastYears                T_ULARGE_INTEGER ` ��           
   dwPastDays         ` ��              dwPastYears         ` ��           
   dwYearDays         ` ��              in_old               T_DCTIME ` ��                 in               T_DCTIME ` ��              bDate          ` ��       J    TRUE => perform date calculation, FALSE => perform only time calculation       uiNsRest                T_ULARGE_INTEGER ` ��	              uiMsOfLastDay                T_ULARGE_INTEGER ` ��
              D         ` ��           Day, Month, Year, Day of week    M         ` ��           Day, Month, Year, Day of week    Y         ` ��           Day, Month, Year, Day of week    DOW         ` ��           Day, Month, Year, Day of week             r�>X  �    ����           FB_ECDCTIMECTRL           fbCalc                            FB_EcDcTickTimeBaseCalc ` ��                 put           ��           Input parameter       bError            ��
       !    TRUE => Error, FALSE => No error   get           ��           Output parameter       in                T_DCTIME  ��       .    Distributed Clock System Time input variable         r�>X  �    ����           FB_ECEXTSYNCCALCTIMEDIFF           DcTime               T_DCTIME ` ��              TmpTime               T_DCTIME ` ��              ExtTimePrev               T_DCTIME ` ��              TestCalcExtTime               T_DCTIME ` ��                  	   nTimeDiff           ��       :    with difference greater than 32bit timeDiff = 0xffffffff    nOffsetFromSyncMaster           ��       W    less than 32 bit int Offset = 0x80000000,  greater than 32 bit int Offset = 0x7FFFFFFF      DcToTcTimeOffset                 T_LARGE_INTEGER  ��              DcToExtTimeOffset                 T_LARGE_INTEGER  ��              ExtTime                T_DCTIME  ��              IntTime                T_DCTIME  ��                   r�>X  �    ����           FB_ECEXTSYNCCHECK           fbCalcTimeDiff        
                FB_EcExtSyncCalcTimeDiff ` ��              nCntSyncCyc         ` ��              nSyncThreshold        ` ��                 nSyncWindow           ��              bNotConnected            ��                 bSynchronized            ��           	   nTimeDiff           ��              nOffsetFromSyncMaster           ��                 DcToTcTimeOffset                 T_LARGE_INTEGER  ��              DcToExtTimeOffset                 T_LARGE_INTEGER  ��              ExtTime                T_DCTIME  ��	              IntTime                T_DCTIME  ��
                   r�>X  �    ����           FB_ECFOEACCESS           fbAdsRW             
   ADSRDWRTEX ` ��           
   RisingEdge                R_TRIG ` ��              sErrText           ''        T_MaxString ` ��                 hFoe                  T_HFoe   ��           File over EtherCAT handle    pBuffer           ��           Buffer address for read/write    cbBuffer           ��           Count of bytes for read/write    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��              nErrId           ��              cbDone           ��              bEOF            ��           TRUE == End of file             r�>X  �   ����           FB_ECFOECLOSE           fbAdsRW             
   ADSRDWRTEX ` ��           
   RisingEdge                R_TRIG ` ��              sErrText           ''        T_MaxString ` ��                 hFoe                  T_HFoe   ��           File over EtherCAT handle    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	              nErrId           ��
                       r�>X  �   ����           FB_ECFOELOAD        
   RisingEdge                R_TRIG ` ��              fbFwOpen                FB_FileOpen ` ��           	   fbFwClose                FB_FileClose ` ��              fbFwRead                FB_FileRead ` ��           	   fbFwWrite                FB_FileWrite ` ��              fbFwSeek                FB_FileSeek ` ��              fbFwTell                FB_FileTell ` ��           	   fbFoeOpen                FB_EcFoeOpen ` ��           
   fbFoeClose        	               FB_EcFoeClose ` ��              fbFoeAccess                           FB_EcFoeAccess ` ��           
   fbGetState                FB_EcGetSlaveState ` ��!           
   fbSetState                FB_EcSetSlaveState ` ��"              fbGetProtErr                FB_EcGetLastProtErrInfo ` ��$              buffer   	  �?                    ` ��&           0x4000 bytes    nStep         ` ��'              bFw          ` ��(           TRUE => firmware file opened    bFoe          ` ��)       #    TRUE => file over EtherCAT opened    bMode          ` ��*            TRUE => bootstrap mode enabled    oldState         ` ��+              cbFSize         ` ��,           
   sFSrvNetID           ''     
   T_AmsNetID ` ��-              bGetProtErr          ` ��.                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��       &    Address of the EtherCAT slave device.	   sPathName                T_MaxString   ��       2    Firmware file path e.g.: 'c:\Firmware\ELXXS.efw'    dwPass           ��       
    Password    eMode           eFoeMode_Write       E_EcFoeMode   ��           Read/write access mode    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    @    ��	       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              cbLoad           ��           	   nProgress           ��              sInfo           ''        T_MaxString   ��       )    Extended FoE protocol error information             r�>X  �    ����           FB_ECFOEOPEN           fbAdsRW             
   ADSRDWRTEX ` ��           
   RisingEdge                R_TRIG ` ��              sErrText           ''        T_MaxString ` ��              sDrive             ` ��              sDir                T_MaxString ` ��           	   sFileName                T_MaxString ` ��              sExt                T_MaxString ` ��              nStep         ` ��                 sNetId             
   T_AmsNetId   ��       !    AmsNetId of the EtherCAT device.   nPort             	   T_AmsPort   ��            Address of the EtherCAT device.	   sPathName                T_MaxString   ��           Firmware file path name    dwPass           ��       
    Password    eMode           eFoeMode_Write       E_EcFoeMode   ��            File over EtherCAT access mode    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��	       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              hFoe                  T_HFoe   ��           File over EtherCAT handle             r�>X  �   ����        $   FB_ECGETALLSLAVEABNORMALSTATECHANGES           nStep         ` ��              fbAdsReadEx             	   ADSREADEX ` ��              fbGetSlaveCount                FB_EcGetSlaveCount ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   pAddrBuf    	  ��                           ��       l    Contains the address of the buffer the counters for the state changes f.i. Op to SafeOp-Err are copied to.    cbBufLen           ��       W    Size of the buffer pAddrBuf. The size of the buffer must be at least nSlave * 4 Bytes.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              nSlaves           ��                       r�>X  �   ����           FB_ECGETALLSLAVEADDR           nStep         ` ��              fbAdsReadEx             	   ADSREADEX ` ��              fbGetSlaveCount                FB_EcGetSlaveCount ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   pAddrBuf    	  ��                           ��       A    Contains the address of the buffer the addresses are copied to.    cbBufLen           ��       W    Size of the buffer pAddrBuf. The size of the buffer must be at least nSlave * 2 Bytes.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              nSlaves           ��                       r�>X  �   ����           FB_ECGETALLSLAVECRCERRORS           nStep         ` ��              fbAdsReadEx             	   ADSREADEX ` ��              fbGetSlaveCount                FB_EcGetSlaveCount ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   pCrcErrorBuf    	  ��                           ��       B    Contains the address of the buffer the crc errors are copied to.    cbBufLen           ��       [    Size of the buffer pCrcErrorBuf. The size of the buffer must be at least nSlave * 4 Bytes.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              nSlaves           ��                       r�>X  �   ����        #   FB_ECGETALLSLAVEPRESENTSTATECHANGES           nStep         ` ��              fbAdsReadEx             	   ADSREADEX ` ��              fbGetSlaveCount                FB_EcGetSlaveCount ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   pAddrBuf    	  ��                           ��       s    Contains the address of the buffer the counters for the state changes from INIT_NO_COMM to Present are copied to.    cbBufLen           ��       W    Size of the buffer pAddrBuf. The size of the buffer must be at least nSlave * 4 Bytes.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              nSlaves           ��                       r�>X  �   ����           FB_ECGETALLSLAVESTATES           nStep         ` ��              fbAdsReadEx             	   ADSREADEX ` ��              fbGetSlaveCount                FB_EcGetSlaveCount ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.	   pStateBuf    	  ��                   ST_EcSlaveState                ��       >    Contains the address of the buffer the states are copied to.    cbBufLen           ��       X    Size of the buffer pStateBuf. The size of the buffer must be at least nSlave * 2 Bytes.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              nSlaves           ��                       r�>X  �   ����           FB_ECGETCONFSLAVES           nTotalSlaves            ��              nState    d    ` ��           	   fbTrigger                R_TRIG ` ��           	   fbAdsRead                ADSREAD ` ��              nIdxOffs         ` ��              nIndex         ` ��              nBlockIndex         ` ��              nSlavesRead         ` ��              stLocalInfo        	               ST_EcSlaveConfigData ` ��           !   nSDO_IDX_SBP_SLAVECONFIGDATASTART     �   ` ��              nSDO_IDX_SBP_CONFIGUREDSLAVES     �   ` ��            !   nADSIOFFS_ECAT_COE_COMPLETEACCESS        ` ��!                 sNetId             
   T_AmsNetId   ��       '   AmsNetId of the EtherCAT master device.   pArrEcConfSlaveInfo    	  ��           	               ST_EcSlaveConfigData                ��              cbBufLen           ��       v    Size of the buffer arrEcConfSlaveInfo. The size of the buffer must be at least nSlave * SIZEOF(ST_EcSlaveConfigData).   bExecute            ��              tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrorId           ��              nSlaves           ��                       r�>X  �   ����           FB_ECGETLASTPROTERRINFO        	   fbAdsRead                ADSREAD ` ��              fbLocalNetID                         FB_GetLocalAmsNetId ` ��              fbTaskIndex                GETCURTASKINDEX ` ��              nStep         ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��       &    Address of the EtherCAT slave device.	   eProtocol           eEcMbxProt_FoE       E_EcMbxProtType   ��           Mailbox protocol type    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              info                  ST_EcLastProtErrInfo   ��                       r�>X  �   ����           FB_ECGETMASTERDEVSTATE           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��	              bError            ��
              nErrId           ��           	   nDevState           ��       /   Current Device State of EtherCAT master device.            r�>X  �   ����           FB_ECGETMASTERSTATE           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��	              bError            ��
              nErrId           ��              state           ��       (   Current State of EtherCAT master device.            r�>X  �   ����           FB_ECGETSCANNEDSLAVES           nTotalSlaves            ��              nState    d    ` ��           	   fbTrigger                R_TRIG ` ��           	   fbAdsRead                ADSREAD ` ��           
   fbAdsWrite                ADSWRITE ` ��              stScanStatus                 ST_EcScannedSlaveStatus ` ��              nIdxOffs         ` ��              nIndex         ` ��              nBlockIndex         ` ��              nSlavesRead         ` ��              stLocalInfo                  ST_EcSlaveScannedData ` ��              nScanCommand    ��   ` ��              nSDO_IDX_SBP_SLAVEINFODATASTART     �   ` ��!              nSDO_IDX_SBP_SCANCOMMANDSTART    �   ` ��"              nSDO_IDX_SBP_SCANNEDSLAVES    @�   ` ��#           !   nADSIOFFS_ECAT_COE_COMPLETEACCESS        ` ��$                 bExecute            ��              sNetId             
   T_AmsNetId   ��       '   AmsNetId of the EtherCAT master device.   pArrEcScannedSlaveInfo    	  ��                     ST_EcSlaveScannedData                ��              cbBufLen           ��       w    Size of the buffer arrEcConfSlaveInfo. The size of the buffer must be at least nSlave * SIZEOF(ST_EcSlaveScannedData).   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��              nErrorId           ��              nSlaves           ��                       r�>X  �   ����           FB_ECGETSLAVECOUNT           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��	              bError            ��
              nErrId           ��              nSlaves           ��           Count of EtherCAT slave devices.            r�>X  �   ����           FB_ECGETSLAVECRCERROR           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��              nErrId           ��              crcError                 ST_EcCrcError   ��       &   Crc error of the EtherCAT slave devie.            r�>X  �   ����           FB_ECGETSLAVECRCERROREX           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��              nErrId           ��              crcError                  ST_EcCrcErrorEx   ��       &   Crc error of the EtherCAT slave devie.            r�>X  �   ����           FB_ECGETSLAVEIDENTITY           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��          Address of the slave device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��              nErrId           ��              identity                  ST_EcSlaveIdentity   ��       +   Slave identity of the EtherCAT slave devie.            r�>X  �   ����           FB_ECGETSLAVESTATE           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��              nErrId           ��              state                ST_EcSlaveState   ��       +   Current State of the EtherCAT slave device.            r�>X  �   ����           FB_ECGETSLAVETOPOLOGYINFO           nStep         ` ��              fbAdsReadEx             	   ADSREADEX ` ��              fbGetSlaveCount        	               FB_EcGetSlaveCount ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   pAddrBuf    	  ��           	               ST_TopologyDataEx                ��       E    Contains the address of the buffer the topology data are copied to.    cbBufLen           ��       X    Size of the buffer pAddrBuf. The size of the buffer must be at least nSlave * 64 Bytes.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��              nErrId           ��              nSlaves           ��                       r�>X  �   ����           FB_ECLOGICALREADCMD           fbAdsRW             
   ADSRDWRTEX ` ��              cmd                ST_EcMaxCmd ` ��           
   RisingEdge                R_TRIG ` ��              nStep         ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   logAddr           ��           logical address to read from.   len           ��           length of data to read.    pDstBuf           ��       ;    Contains the address of the buffer for the received data.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              wkc           ��          received working counter            r�>X  �   ����           FB_ECLOGICALWRITECMD           fbAdsRW             
   ADSRDWRTEX ` ��              cmd                ST_EcMaxCmd ` ��           
   RisingEdge                R_TRIG ` ��              nStep         ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   logAddr           ��           logical address to read from.   len           ��           length of data to read.    pSrcBuf           ��       ;    Contains the address of the buffer for the received data.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              wkc           ��          received working counter            r�>X  �   ����           FB_ECMASTERFRAMECOUNT           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	              nErrId           ��
              nFrames           ��          Count of EtherCAT frames.            r�>X  �   ����           FB_ECMASTERFRAMESTATISTIC           fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��           internal used struct    nStep    d    ` ��              nOldTimeStamp         ` ��              nOldSendFrames         ` ��              nOldSendQueuedFrames         ` ��           
   fDeltaTime                      ` ��              nDeltaFrames         ` ��              nDeltaQueuedFrames         ` ��              stFrameStatistic                   ST_EcMasterStatistic ` ��              ECADS_IGRP_MASTER_STATISTIC        ` ��                  sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout           ��       3    States the time before the function is cancelled.       bBusy            ��	              bError            ��
              nErrId           ��              nLostFrames           ��              fFramesPerSecond                        ��              nLostQueuedFrames           ��              fQueuedFramesPerSecond                        ��                       r�>X  �    ����        !   FB_ECMASTERFRAMESTATISTICCLEARCRC        
   fbAdsWrite                ADSWRITE ` ��           
   RisingEdge                R_TRIG ` ��           internal used struct    nStep    d    ` ��              ECADS_IGRP_MASTER_CRC        ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout           ��       3    States the time before the function is cancelled.       bBusy            ��	              bError            ��
              nErrId           ��                       r�>X  �    ����        $   FB_ECMASTERFRAMESTATISTICCLEARFRAMES        
   fbAdsWrite                ADSWRITE ` ��           
   RisingEdge                R_TRIG ` ��           internal used struct    nStep    d    ` ��              ECADS_IGRP_MASTER_STATISTIC        ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout           ��       3    States the time before the function is cancelled.       bBusy            ��	              bError            ��
              nErrId           ��                       r�>X  �    ����        %   FB_ECMASTERFRAMESTATISTICCLEARTXRXERR        
   fbAdsWrite                ADSWRITE ` ��           
   RisingEdge                R_TRIG ` ��           internal used struct    nStep    d    ` ��              ECADS_IGRP_MASTER_CRC        ` ��                 sNetId             
   T_AmsNetId   ��           AmsNetId of the CPU.   nEcMasterDevID           ��           Device ID of EtherCAT Master    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout           ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��              nErrId           ��                       r�>X  �    ����           FB_ECPHYSICALREADCMD           fbAdsRW             
   ADSRDWRTEX ` ��              cmd                ST_EcMaxCmd ` ��           
   RisingEdge                R_TRIG ` ��              nStep         ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   adp           ��       a    Configured address (fixed addressing) or position(autoincrement addressing) of the slave device.   ado           ��       8    Offset of register/dpram  in EtherCAT Slave Controller.   len           ��           length of data to read.    eType           eAdressingType_Fixed       E_EcAdressingType   ��           adressing type   pDstBuf           ��       ;    Contains the address of the buffer for the received data.    bExecute            ��	       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��
       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              wkc           ��          received working counter            r�>X  �   ����           FB_ECPHYSICALWRITECMD           fbAdsRW             
   ADSRDWRTEX ` ��              cmd                ST_EcMaxCmd ` ��           
   RisingEdge                R_TRIG ` ��              nStep         ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   adp           ��       a    Configured address (fixed addressing) or position(autoincrement addressing) of the slave device.   ado           ��       8    Offset of register/dpram  in EtherCAT Slave Controller.   len           ��           length of data to read.    eType           eAdressingType_Fixed       E_EcAdressingType   ��           adressing type   pSrcBuf           ��       ;    Contains the address of the buffer for the received data.    bExecute            ��	       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��
       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��              wkc           ��          received working counter            r�>X  �   ����           FB_ECREQMASTERSTATE        
   fbAdsWrite                ADSWRITE ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.    state           ��       3    State requested from  the EtherCAT master  device.      bBusy            ��
              bError            ��              nErrId           ��                       r�>X  �   ����           FB_ECREQSLAVESTATE        
   fbAdsWrite                ADSWRITE ` ��           
   RisingEdge                R_TRIG ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.    state           ��       1    State requested from  the EtherCAT slave device.      bBusy            ��              bError            ��              nErrId           ��                       r�>X  �   ����           FB_ECSETMASTERSTATE     	      fbReq        	               FB_EcReqMasterState ` ��              fbGet        	               FB_EcGetMasterState ` ��           	   waitTimer                TON ` ��           	   pollTimer                TON ` ��           
   RisingEdge                R_TRIG ` ��           	   globState         ` ��              subState         ` ��              newState         ` ��              bBreak          ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    '     ��       3    States the time before the function is cancelled.    reqState           ��       2    State requested from the EtherCAT master  device.      bBusy            ��	              bError            ��
              nErrId           ��           	   currState           ��       4    Current state received from EtherCAT master device             r�>X  �    ����           FB_ECSETSLAVESTATE     	      fbReq        
                FB_EcReqSlaveState ` ��              fbGet        
                FB_EcGetSlaveState ` ��           	   waitTimer                TON ` ��           	   pollTimer                TON ` ��           
   RisingEdge                R_TRIG ` ��           	   globState         ` ��              subState         ` ��              newState         ` ��              bBreak          ` ��                 sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    '     ��       3    States the time before the function is cancelled.    reqState           ��       0    State requested from the EtherCAT slave device.      bBusy            ��
              bError            ��              nErrId           ��           	   currState                ST_EcSlaveState   ��       3    Current state received from EtherCAT slave device             r�>X  �    ����           FB_ECSOEREAD           nOffset         ` ��              fbAdsReadEx             	   ADSREADEX ` ��           
   RisingEdge                R_TRIG ` ��           
      sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.   nIdn           ��       	    SoE idn.   nElement           ��           SoE element.   nDriveNo           ��           Drive number   bCommand            ��	       D    bCommand must be set, if internal command excecution should be used   pDstBuf           ��
       ;    Contains the address of the buffer for the received data.    cbBufLen           ��       3    Contains the max. number of bytes to be received.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       r�>X  �   ����           FB_ECSOEWRITE           nOffset         ` ��           
   fbAdsWrite                ADSWRITE ` ��           
   RisingEdge                R_TRIG ` ��           
      sNetId             
   T_AmsNetId   ��       (    AmsNetId of the EtherCAT master device.
   nSlaveAddr           ��           Address of the slave device.   nIdn           ��       	    SoE idn.   nElement           ��           SoE element.   nDriveNo           ��           Drive number   bCommand            ��	       D    bCommand must be set, if internal command excecution should be used   pSrcBuf           ��
       D    Contains the address of the buffer containing the data to be send.    cbBufLen           ��       3    Contains the max. number of bytes to be received.    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��              nErrId           ��                       r�>X  �   ����           FB_SOEREAD_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead    ��              iState            ��           
   bExecute_I             ��              iErrId            ��              dwData   	                          ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    nIdn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   nElement           ��           SoE element.   pDstBuf           ��       ;    Contains the address of the buffer for the received data.    cbBufLen           ��       3    Contains the max. number of bytes to be received.    bExecute            ��	       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��
       3    States the time before the function is cancelled.       bBusy            ��              bError            ��           	   iAdsErrId           ��              iSercosErrId           ��              dwAttribute           ��                       r�>X  �   ����           FB_SOEWRITE_BYDRIVEREF           fbEcSoEWrite                              FB_EcSoEWrite    ��              iErrId            ��              iState            ��           
   bExecute_I             ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    nIdn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   nElement           ��           SoE element.   pSrcBuf           ��       D    Contains the address of the buffer containing the data to be send.    cbBufLen           ��       3    Contains the max. number of bytes to be received.    bExecute            ��	       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��
       3    States the time before the function is cancelled.       bBusy            ��              bError            ��           	   iAdsErrId           ��              iSercosErrId           ��                       r�>X  �   ����           FILETIME_TO_DCTIME           ft                T_ULARGE_INTEGER ` ��	              bOV          ` ��
                 in             
   T_FILETIME   ��       :    Number of 100-nanosecond intervals since January 1, 1601       FILETIME_TO_DCTIME               T_DCTIME                             r�>X  �    ����           STRING_TO_DCTIME           b   	                 �   16#32, 16#30, 16#30, 16#30, 	(* year 2000 *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* month *)
								16#2D(*-*), 16#30, 16#31(*01*),	(* day *)
								16#2D(*-*), 16#30, 16#30(*00*),	(* hour *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* minute *)
								16#3A(*:*), 16#30, 16#30(*00*),	(* second *)
								16#2E(*.*), 16#30, 16#30, 16#30, 16#30, 16#30, 16#30, 16#30, 16#30, 16#30(*000000000*), (* nanoseconds *)
								16#00      2      0      0      0      -      0      1      -      0      1      -      0      0      :      0      0      :      0      0      .      0      0      0      0      0      0      0      0      0           ` ��           null delimiter    dct               T_DCTIME ` ��              ts                   
   TIMESTRUCT ` ��              ft             
   T_FILETIME ` ��              mcs         ` ��              n         ` ��              bFmt          ` ��           	   Index7001                            in               ��       7    Input string, format: '2007-03-07-12:23:33.123456789'       STRING_TO_DCTIME               T_DCTIME                             r�>X  �    ����           SYSTEMTIME_TO_DCTIME           dct        
                DCTIMESTRUCT ` ��
                 in                   
   TIMESTRUCT   ��           System time as struct    micro             �             ��           Microseconds: 0..999    nano             �             ��           Nanoseconds: 0..999       SYSTEMTIME_TO_DCTIME               T_DCTIME                             r�>X  �    ����    u   C:\TwinCAT\PLC\LIB\TcTestAndSet.lib @                                                                                       
   TESTANDSET                
   TestAndSet                                Flag            ��            Flag to check if TRUE or FALSE          +�I  �   ����    p   C:\TwinCAT\PLC\LIB\TcDrive.lib @                                                                                          F_CONVWORDTOSTAX5000C1D           stAX5000C1D                              ST_AX5000_C1D    ��                 wClass1Diag           ��                 F_ConvWordToSTAX5000C1D                              ST_AX5000_C1D                             ��X  �    ����           F_CONVWORDTOSTAX5000DRIVESTATUS           stDriveStatus                           ST_AX5000DriveStatus    ��              iOpModeSelect            ��                 wDriveStatus           ��                 F_ConvWordToSTAX5000DriveStatus                           ST_AX5000DriveStatus                             ��X  �    ����           F_CONVWORDTOSTINDRADRIVECSC1D           stIndraDriveCsC1D                              ST_IndraDriveCs_C1D    ��                 wClass1Diag           ��                 F_ConvWordToSTIndraDriveCsC1D                              ST_IndraDriveCs_C1D                             ��X  �    ����        %   F_CONVWORDTOSTINDRADRIVECSDRIVESTATUS           stDriveStatus                           ST_IndraDriveCsDriveStatus    ��              iOpModeSelect            ��                 wDriveStatus           ��              %   F_ConvWordToSTIndraDriveCsDriveStatus                           ST_IndraDriveCsDriveStatus                             ��X  �    ����           F_GETVERSIONTCDRIVE               nVersionElement           ��                 F_GetVersionTcDrive                                     ��X  �    ����        %   FB_SOEAX5000FIRMWAREUPDATE_BYDRIVEREF     I      iState         ` ��%           
   bExecute_I          ` ��&              iErrId         ` ��'              I         ` ��(              iNextUpdateIdx         ` ��)              iCurUpdateIdx         ` ��*              bUpdateViaOtherChn          ` ��+              sConfiguredType             ` ��-       (    type of slave, e.g. "AX5206-0000-0009"    sScannedType             ` ��.       (    type of slave, e.g. "AX5206-0000-0010"    sConfiguredFirmwareFile             ` ��0       j    configured firmware file, e.g. 	"AX5yxx_xxxx_0010_v1_05_b0003.efw" or "AX5021_xxxx_0009_v1_04_b0002.efw"    sScannedFirmwareFile             ` ��1       h    scanned firmware file, e.g. 		"AX5yxx_xxxx_0010_v1_05_b0003.efw" or "AX5021_xxxx_0009_v1_04_b0002.efw"    sCompatibleFirmwareFile             ` ��2       j    compatible firmware file, e.g. 	"AX5yxx_xxxx_0200_v2_03_b0026.efw" or "AX5021_xxxx_0200_v2_03_b0026.efw"    sConfiguredFirmwareFileDUC             ` ��4       �    configured firmware file, e.g. 	"AX5yxx_xxxx_0010_v1_05_b0003_dual_use_conform.efw" or "AX5021_xxxx_0009_v1_04_b0002_dual_use_conform.efw"    sScannedFirmwareFileDUC             ` ��5       �    scanned firmware file, e.g. 		"AX5yxx_xxxx_0010_v1_05_b0003_dual_use_conform.efw" or "AX5021_xxxx_0009_v1_04_b0002_dual_use_conform.efw"    sCompatibleFirmwareFileDUC             ` ��6       �    compatible firmware file, e.g. 	"AX5yxx_xxxx_0200_v2_03_b0026_dual_use_conform.efw" or "AX5021_xxxx_0200_v2_03_b0026_dual_use_conform.efw"    sSelectedFirmwareFileDUC             ` ��7       Q    found firmware file, e.g. 		"AX5yxx_xxxx_0010_v1_05_b0009_dual_use_conform.efw"    fbEcGetSlaveIdentity        
                FB_EcGetSlaveIdentity ` ��:           
   stIdentity                  ST_EcSlaveIdentity ` ��;       +   Slave identity of the EtherCAT slave devie.   fbEcGetSlaveCount        	               FB_EcGetSlaveCount ` ��>              nTotalSlaves         ` ��?           3. 	   fbAdsRead                ADSREAD ` ��B              nSlavesRead         ` ��C              nBlockIndex         ` ��D              nSlaves         ` ��E           4. 	   fbCoERead                             FB_EcCoESdoReadEx ` ��H           	   nSlaveArr   	  �                     ` ��I              iSlaveIndex         ` ��J              iSlaveBlockIndex         ` ��K              bPositionFound          ` ��L           6. 
   fbAdsWrite                ADSWRITE ` ��O              stScanStatus                 ST_EcScannedSlaveStatus ` ��P              nIdxOffs         ` ��Q              nScanCommand    ��   ` ��R              stLocalInfo                  ST_EcSlaveScannedData ` ��S           9.    fbEcGetSlaveState        
                FB_EcGetSlaveState ` ��V              iSlaveState         ` ��W           10. 
   fbGetSwSoE                               FB_SoERead_ByDriveRef ` ��Z           
   stSoEValue                 ST_SoE_String ` ��[              sScannedFirmwareVersion    Q       Q  ` ��\       `    scanned firmware version, e.g. "Firmware: v1.05 (Build 0009) / Bootloader: v1.02 (Build 0001)"    sScannedVBString             ` ��]       ;    extracted from scanned firmware version, e.g. v1_05_b0009    sTemp             ` ��^              iStrPosV         ` ��_           
   iStrPosDot         ` ��`              iStrPosBuild         ` ��a           11.    fbFindFiles                              FB_EnumFindFileEntry ` ��d           
   stFindFile                     ST_FindFileEntry ` ��e           Find file entry    eCmd           eEnumCmd_First       E_EnumCmdType ` ��f           Enumerator navigation command    bNoMoreFiles          ` ��g              sFoundFirmwareFile             ` ��h       >    found firmware file, e.g. "AX5yxx_xxxx_0010_v1_05_b0003.efw"    iFilesFound         ` ��i           	   bExecFind          ` ��j              fbFindFilesDUC                              FB_EnumFindFileEntry ` ��l              stFindFileDUC                     ST_FindFileEntry ` ��m           Find file entry    eCmdDUC           eEnumCmd_First       E_EnumCmdType ` ��n           Enumerator navigation command    bNoMoreFilesDUC          ` ��o              sFoundFirmwareFileDUC             ` ��p       >    found firmware file, e.g. "AX5yxx_xxxx_0010_v1_05_b0003.efw"    iFilesFoundDUC         ` ��q              bExecFindDUC          ` ��r              bUseLatestBuild          ` ��t              bCompatibleMode          ` ��u              bIncompatibleType          ` ��v           13. 
   DelayTimer           (PT := T#3s)        TON ` ��y           14.    fbEcFoeLoad        #                                         FB_EcFoeLoad ` ��|              sFoEInfo    Q       Q  ` ��}              iFindStrPos         ` ��~           	   iByteArr4   	                       ` ��           16.    fbEcReqSlaveState        
                FB_EcReqSlaveState ` ���              iNoReplyCnt         ` ���              nSDO_IDX_SBP_SLAVEINFODATASTART     �   ` ���              nSDO_IDX_SBP_SCANCOMMANDSTART    �   ` ���              nSDO_IDX_SBP_SCANNEDSLAVES    @�   ` ���           !   nADSIOFFS_ECAT_COE_COMPLETEACCESS        ` ���              nSDO_IDX_SBP_CONFIGUREDSLAVES     �   ` ���              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.    sFirmwareVersion               ��       �   version string vx_yy_bnnnn,
												"v1.05_b0009" 		for specific build: v1.05 Build 0009, 
												"v1.05_b00??" 		for specific version v1.05 latest release build, 
												"v1.??_b00??" 		for latest v1.xx version latest release build
												"v?.??_b00??", "" 	for latest version latest release build 

												"v1.05_b10??" - "v1_05_b89??"  	
																	for specific version v1.05 latest customer specific build, 
												"v1.05_b90??" 		for specific version v1.05 latest debug build, 

												same wildcards for versions 2.xx Build yyyy
												"v2.03_b0026" 		for specific build: v2.03 Build 0026, 
												"v2.03_b00??" 		for specific version v2.03 latest release build, 
												...
											   sFirmwarePath                T_MaxString   ��       ?    drive:\path, e.g. "C:\TwinCAT\Io\TcDriveManager\FirmwarePool" 	   sNetIdIPC             
   T_AmsNetId   ��              iReqEcState          ��                 bBusy            ��              bError            ��           	   iAdsErrId           ��              iSercosErrId           ��              iDiagNumber           ��              eFwUpdateState               E_FwUpdateState   ��              iLoadProgress           ��               sSelectedFirmwareFile               ��!       u    found firmware file, e.g. "AX5yxx_xxxx_0010_v1_05_b0009.efw" or "AX5yxx_xxxx_0010_v1_05_b0009_dual_use_conform.efw"             ��X  �   ����        )   FB_SOEAX5000READACTMAINVOLTAGE_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              iActualMainVoltage         ` ��              uiActualMainVoltage         ` ��              dwData   	                       ` ��              cbBufLen         ` ��       3    Contains the max. number of bytes to be received.    nFactor         ` ��           bits  0..15    eLength               E_SoE_AttribLen ` ��           bits 16..18    eType            
   E_SoE_Type ` ��           bits 20..22    nComma         ` ��           bits 24..27    
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	           	   iAdsErrId           ��
              iSercosErrId           ��              dwAttribute           ��              fActualMainVoltage            ��                       ��X  �   ����        '   FB_SOEAX5000SETMOTORCTRLWORD_BYDRIVEREF           fbEcSoEWrite                              FB_EcSoEWrite ` ��              iState         ` ��           
   bExecute_I          ` ��              iMotorCtrlWord         ` ��              iErrId         ` ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled. 
   bForceLock            ��              bForceUnlock            ��                 bBusy            ��
              bError            ��           	   iAdsErrId           ��              iSercosErrId           ��                       ��X  �   ����           FB_SOEEXECUTECOMMAND_BYDRIVEREF           fbEcSoEWrite                              FB_EcSoEWrite ` ��              iErrId         ` ��              iState         ` ��           
   bExecute_I          ` ��              eExecuteCmd           eSoE_CmdControl_SetAndEnable       E_SoE_CmdControl ` ��           
   eCancelCmd           eSoE_CmdControl_Cancel       E_SoE_CmdControl ` ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    nIdn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��           	   iAdsErrId           ��              iSercosErrId           ��                       ��X  �   ����        )   FB_SOEREADAMPLIFIERTEMPERATURE_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              iAmplifierTemperature         ` ��              uiAmplifierTemperature         ` ��              dwData   	                       ` ��              nFactor         ` ��           bits  0..15    eLength               E_SoE_AttribLen ` ��           bits 16..18    eType            
   E_SoE_Type ` ��           bits 20..22    nComma         ` ��           bits 24..27    
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	           	   iAdsErrId           ��
              iSercosErrId           ��              dwAttribute           ��              fAmplifierTemperature            ��                       ��X  �   ����           FB_SOEREADCLASSXDIAG_BYDRIVEREF     
      fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              dwData   	                       ` ��           
   iSParamNum         ` ��              nFactor         ` ��           bits  0..15    eLength               E_SoE_AttribLen ` ��           bits 16..18    eType            
   E_SoE_Type ` ��           bits 20..22    nComma         ` ��           bits 24..27    
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.
   iDiagClass          ��       D    1: C1D (S-0-0011) is default, 2: C2D (S-0-0012), 3: C3D (S-0-0013)    tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��	              bError            ��
           	   iAdsErrId           ��              iSercosErrId           ��              dwAttribute           ��              wClassXDiag           ��                       ��X  �   ����        !   FB_SOEREADCOMMANDSTATE_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              dwData   	                       ` ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    nIdn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��
              bError            ��           	   eCmdState               E_SoE_CmdState   ��           	   iAdsErrId           ��              iSercosErrId           ��                       ��X  �   ����        !   FB_SOEREADDCBUSCURRENT_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              iDcBusCurrent         ` ��              uiDcBusCurrent         ` ��              dwData   	                       ` ��              nFactor         ` ��           bits  0..15    eLength               E_SoE_AttribLen ` ��           bits 16..18    eType            
   E_SoE_Type ` ��           bits 20..22    nComma         ` ��           bits 24..27    
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	           	   iAdsErrId           ��
              iSercosErrId           ��              dwAttribute           ��              fDcBusCurrent            ��                       ��X  �   ����        !   FB_SOEREADDCBUSVOLTAGE_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              iDcBusVoltage         ` ��              uiDcBusVoltage         ` ��              dwData   	                       ` ��              nFactor         ` ��           bits  0..15    eLength               E_SoE_AttribLen ` ��           bits 16..18    eType            
   E_SoE_Type ` ��           bits 20..22    nComma         ` ��           bits 24..27    
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	           	   iAdsErrId           ��
              iSercosErrId           ��              dwAttribute           ��              fDcBusVoltage            ��                       ��X  �   ����            FB_SOEREADDIAGMESSAGE_BYDRIVEREF     
      fbEcSoERead                              FB_EcSoERead ` ��              sDiagMessageEx                  ST_SoE_StringEx ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              dwData   	                       ` ��              nFactor         ` ��           bits  0..15    eLength               E_SoE_AttribLen ` ��           bits 16..18    eType            
   E_SoE_Type ` ��           bits 20..22    nComma         ` ��           bits 24..27    
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	           	   iAdsErrId           ��
              iSercosErrId           ��              dwAttribute           ��              sDiagMessage                 ST_SoE_String   ��                       ��X  �   ����           FB_SOEREADDIAGNUMBER_BYDRIVEREF     	      fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              dwData   	                       ` ��              nFactor         ` ��           bits  0..15    eLength               E_SoE_AttribLen ` ��           bits 16..18    eType            
   E_SoE_Type ` ��           bits 20..22    nComma         ` ��           bits 24..27    
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	           	   iAdsErrId           ��
              iSercosErrId           ��              dwAttribute           ��              iDiagNumber           ��                       ��X  �   ����        #   FB_SOEREADDIAGNUMBERLIST_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              I         ` ��              iErrId         ` ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.    piDiagNumber                ST_SoE_DiagNumList        ��              iSize           ��                 bBusy            ��
              bError            ��           	   iAdsErrId           ��              iSercosErrId           ��              dwAttribute           ��                       ��X  �   ����        %   FB_SOEREADMOTORTEMPERATURE_BYDRIVEREF           fbEcSoERead                              FB_EcSoERead ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              dwData   	                       ` ��              iMotorTemperature         ` ��              uiMotorTemperature         ` ��              nFactor         ` ��           bits  0..15    eLength               E_SoE_AttribLen ` ��           bits 16..18    eType            
   E_SoE_Type ` ��           bits 20..22    nComma         ` ��           bits 24..27    
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��	           	   iAdsErrId           ��
              iSercosErrId           ��              dwAttribute           ��              fMotorTemperature            ��                       ��X  �   ����           FB_SOERESET_BYDRIVEREF           fbEcExecuteCmd                            FB_SoEExecuteCommand_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��              iReset        ` ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    '     ��       ?    States the time before the function is cancelled. (up to 10s)       bBusy            ��              bError            ��	           	   iAdsErrId           ��
              iSercosErrId           ��                       ��X  �    ����        $   FB_SOEWRITECOMMANDCONTROL_BYDRIVEREF           fbEcSoEWrite                              FB_EcSoEWrite ` ��              iErrId         ` ��              iState         ` ��           
   bExecute_I          ` ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    nIdn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   eCmdControl               E_SoE_CmdControl   ��       J    eSoE_CmdControl_Cancel, eSoE_CmdControl_Set, eSoE_CmdControl_SetAndEnable   bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��           	   iAdsErrId           ��              iSercosErrId           ��                       ��X  �   ����           FB_SOEWRITEPASSWORD_BYDRIVEREF           fbEcSoEWrite                              FB_EcSoEWrite ` ��              iState         ` ��           
   bExecute_I          ` ��              iErrId         ` ��              
   stDriveRef                  ST_DriveRef   ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   tTimeout    �     ��       3    States the time before the function is cancelled. 	   sPassword                 ST_SoE_String   ��                 bBusy            ��	              bError            ��
           	   iAdsErrId           ��              iSercosErrId           ��                       ��X  �   ����    s   C:\TwinCAT\PLC\LIB\TcMc2Drive.lib @                                                                                          F_GETVERSIONTCMC2DRIVE               nVersionElement           ��                 F_GetVersionTcMc2Drive                                     �$�Y  �    ����            FB_SOEAX5000DELETEPOSITIONOFFSET           iState         ` ��           
   iLastState         ` ��           	   FlExecute                R_TRIG ` ��              fbGetLocalAmsNetId                         FB_GetLocalAmsNetId ` ��           
   fbSoEWrite                FB_SoEWrite ` ��              fbSoEExecuteCommand                FB_SoEExecuteCommand ` ��              fbSoEWritePassword                FB_SoEWritePassword ` ��              Password                 ST_SoE_String ` ��              stP272                   ST_AX5000_P_0272 ` ��              stP275                ST_AX5000_P_0275 ` ��              NetId             
   T_AmsNetId ` ��!                 Execute            ��              Feedback           ePositionOffsetFeedback1       E_PositionOffsetFeedback   ��              Memory           ePositionOffsetMemory_Encoder       E_PositionOffsetMemory   ��                 Busy            ��
              Error            ��              ErrorID           ��                 Axis                 AXIS_REF  ��                   �$�Y  �    ����           FB_SOEAX5000FIRMWAREUPDATE     
      fbSoEFirmwareUpdate        X                                                                                           %   FB_SoEAX5000FirmwareUpdate_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��        h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��#           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��$                 sNetId           ''     
   T_AmsNetId   ��           netID of PC with NC    bExecute            ��       F    Function block execution is triggered by a rising edge at this input.   sFirmwareVersion               ��       D    version string vx_yy_bnnnn, e.g. "v1.05_b0009" for v1.05 Build 0009   sFirmwarePath                T_MaxString   ��       ?    drive:\path, e.g. "C:\TwinCAT\Io\TcDriveManager\FirmwarePool"    iReqEcState          ��              tTimeout    �     ��       3    States the time before the function is cancelled.       bBusy            ��              bError            ��           	   iAdsErrId           ��              iSercosErrId           ��              iDiagNumber           ��              eFwUpdateState               E_FwUpdateState   ��              iLoadProgress           ��              sSelectedFirmwareFile               ��       >    found firmware file, e.g. "AX5yxx_xxxx_0010_v1_05_b0009.efw"       Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEAX5000READACTMAINVOLTAGE     
      fbEcSoEReadActMainVolt                                )   FB_SoEAX5000ReadActMainVoltage_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��           	   Attribute           ��              ActualMainVoltage                        ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEAX5000SETMOTORCTRLWORD     
      fbEcSoESetMotorCtrlWord                         '   FB_SoEAX5000SetMotorCtrlWord_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled. 	   ForceLock            ��              ForceUnlock            ��                 Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��                 Axis                 AXIS_REF  ��
           Axis reference         �$�Y  �   ����           FB_SOEAX5000SETPOSITIONOFFSET     (      iState         ` ��           
   iLastState         ` ��           	   FlExecute                R_TRIG ` ��           	   fbAdsRead                ADSREAD ` ��              ReferenceSystem         ` ��              fbGetLocalAmsNetId                         FB_GetLocalAmsNetId ` ��           
   fbAdsWrite                ADSWRITE ` ��              InitEncPosition         ` ��           	   fbSoERead             
   FB_SoERead ` ��            
   fbSoEWrite                FB_SoEWrite ` ��!              fbSoEExecuteCommand                FB_SoEExecuteCommand ` ��"              fbSoEWritePassword                FB_SoEWritePassword ` ��#              Password                 ST_SoE_String ` ��$              stP272                   ST_AX5000_P_0272 ` ��&              stP273                   ST_AX5000_P_0273 ` ��'              stP275                ST_AX5000_P_0275 ` ��(              stP280                ST_AX5000_P_0275 ` ��)           	   P280Valid          ` ��+              ActPositionOffset                      ` ��-              PositionDelta                      ` ��.           	   NewOffset                      ` ��/              NewPosition                      ` ��1              ActNumberOfTurnsNC                      ` ��2              SetNumberOfTurnsNC                      ` ��3              DeltaOFTurns                      ` ��4              MaxAllowedPos                      ` ��6              MinAllowedPos                      ` ��7              NetId             
   T_AmsNetId ` ��9              fbReadParameterSet                MC_ReadParameterSet ` ��:              stAxisParameter                ST_AxisParameterSet ` ��;              S079         ` ��=           
   RESOLUTION          0A   1048576      0A ` ��>       8    2^20 = default, since FW 2.10 this value can be changed   Modulo          ` ��@              S076         ` ��A              S103         ` ��B              LastNcCycleCounter         ` ��D              NcCycleUpdateCounter         ` ��E              NoOfNcCycleUpdatesNeeded        ` ��F              TTimeOutHomed                TON ` ��H              RESOLUTION31Bit          �A
   2147483648      �A ` ��K           2^31      Execute            ��              Position                        ��              Relative            ��              Feedback           ePositionOffsetFeedback1       E_PositionOffsetFeedback   ��              Memory           ePositionOffsetMemory_Encoder       E_PositionOffsetMemory   ��	                 Busy            ��              Error            ��              ErrorID           ��                 Axis                 AXIS_REF  ��                   �$�Y  �    ����           FB_SOEEXECUTECOMMAND     
      fbEcSoECommand                            FB_SoEExecuteCommand_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Idn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��                 Axis                 AXIS_REF  ��	           Axis reference         �$�Y  �   ����        
   FB_SOEREAD     
      fbEcSoEReadEx                               FB_SoERead_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��!           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��"                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Idn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   Element           ��           SoE element.   pDstBuf           ��       ;    Contains the address of the buffer for the received data.    BufLen           ��       3    Contains the max. number of bytes to be received.    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��	       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��           	   Attribute           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEREADAMPLIFIERTEMPERATURE     
      fbEcSoEReadAmplifierTemp                               )   FB_SoEReadAmplifierTemperature_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��              AmplifierTemperature            ��           	   Attribute           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEREADCLASSXDIAG     
      fbSoEReadCXD                                  FB_SoEReadClassXDiag_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                  NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.	   DiagClass          ��       D    1: C1D (S-0-0011) is default, 2: C2D (S-0-0012), 3: C3D (S-0-0013)    Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��           
   ClassXDiag           ��           	   Attribute           ��                 Axis                 AXIS_REF  ��	           Axis reference         �$�Y  �   ����           FB_SOEREADCOMMANDSTATE     
      fbEcSoECmdState                         !   FB_SoEReadCommandState_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Idn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              CmdState               E_SoE_CmdState   ��              AdsErrId           ��              SercosErrId           ��                 Axis                 AXIS_REF  ��	           Axis reference         �$�Y  �   ����           FB_SOEREADDCBUSCURRENT     
      fbEcSoEReadDcBusCurr                               !   FB_SoEReadDcBusCurrent_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��              DcBusCurrent            ��           	   Attribute           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEREADDCBUSVOLTAGE     
      fbEcSoEReadDcBusVolt                               !   FB_SoEReadDcBusVoltage_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��              DcBusVoltage            ��           	   Attribute           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEREADDIAGMESSAGE     
      fbEcSoEReadDiag                                  FB_SoEReadDiagMessage_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��              DiagMessage                 ST_SoE_String   ��           	   Attribute           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEREADDIAGNUMBER     
      fbEcSoEReadDiag                                FB_SoEReadDiagNumber_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��           
   DiagNumber           ��           	   Attribute           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEREADDIAGNUMBERLIST     
      fbEcSoEReadDiag                          #   FB_SoEReadDiagNumberList_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                  NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.    pDiagNumber                ST_SoE_DiagNumList        ��              Size           ��                 Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��           	   Attribute           ��                 Axis                 AXIS_REF  ��
           Axis reference         �$�Y  �   ����           FB_SOEREADMOTORTEMPERATURE     
      fbEcSoEReadMotorTemp                               %   FB_SoEReadMotorTemperature_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��              MotorTemperature            ��           	   Attribute           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOERESET     
      fbEcSoEReset                         FB_SoEReset_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    '     ��       ?    States the time before the function is cancelled. (up to 10s)       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �    ����           FB_SOEWRITE     
      fbEcSoEWriteEx                             FB_SoEWrite_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��!           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��"                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Idn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023   Element           ��           SoE element.   pSrcBuf           ��       D    Contains the address of the buffer containing the data to be send.    BufLen           ��       3    Contains the max. number of bytes to be received.    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��	       3    States the time before the function is cancelled.    Password                 ST_SoE_String   ��
                 Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��                 Axis                 AXIS_REF  ��           Axis reference         �$�Y  �   ����           FB_SOEWRITECOMMANDCONTROL     
      fbEcSoECommand                        $   FB_SoEWriteCommandControl_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Idn           ��       H    SoE IDN: e.g. "S_0_IDN + 1" for S-0-0001 or "P_0_IDN + 23" for P-0-0023
   CmdControl               E_SoE_CmdControl   ��       J    eSoE_CmdControl_Cancel, eSoE_CmdControl_Set, eSoE_CmdControl_SetAndEnable   Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.       Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��                 Axis                 AXIS_REF  ��
           Axis reference         �$�Y  �   ����           FB_SOEWRITEPASSWORD     
      fbEcSoEWritePW                          FB_SoEWritePassword_ByDriveRef ` ��              iState         ` ��           
   bExecute_I          ` ��           	   nAxisId_I         ` ��           	   fbAdsRead                ADSREAD ` ��           
   readBuffer   	  	                     ` ��              nIds                T_AmsNetIdArr ` ��           Ams net id as array of bytes 
   stDriveRef                  ST_DriveRef ` ��       h    contains sNetID of EcMaster, nSlaveAddr of EcDrive, nDriveNo of EcDrive, either preset or read from NC    NCIDXG_AXPARMS     @   ` ��           Axis with ID: Parameter 			   NCIDXO_AXP_HWAMSADDR    1    ` ��                 NetId           ''     
   T_AmsNetId   ��           netID of PC with NC    Execute            ��       F    Function block execution is triggered by a rising edge at this input.   Timeout    �     ��       3    States the time before the function is cancelled.    Password                 ST_SoE_String   ��                 Busy            ��              Error            ��              AdsErrId           ��              SercosErrId           ��                 Axis                 AXIS_REF  ��	           Axis reference         �$�Y  �   ����    o   C:\TwinCAT\PLC\LIB\TcBase.lib @                                                                                          FW_ADSCLEAREVENTS           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��           
   READ_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              bClear            ��              nMode           ��              tTimeout           ��                 bBusy            ��	              bError            ��
              nErrId           ��                       ��J  �   ����           FW_ADSLOGDINT            	   nCtrlMask           ��              sMsgFmt               ��              nArg           ��                 FW_AdsLogDINT                                     ��J  �   ����           FW_ADSLOGEVENT        
   STAMPREQ_I            ��           
   STAMPRES_I            ��           
   STAMPSIG_I            ��           
   STAMPCON_I            ��              ACCESSCNT_I            ��           	   AMSADDR_I   	                         ��              EVENT_I                      
   FW_TcEvent    ��              pTCEVENTSTREAM_I            ��              CBEVENTSTREAM_I            ��              nSTATE_I            ��              nSTATEREQ_I            ��              nSTATERES_I            ��              nSTATESIG_I            ��               nSTATECON_I            ��!              ERR_I             ��"              ERRID_I            ��#              bEVENT_SAV_I             ��$              bEVENTQUIT_SAV_I             ��%              TICKSTART_I            ��&           	      sNetId               ��              nPort           ��              bEvent            ��           
   bEventQuit            ��              stEventConfigData                      
   FW_TcEvent   ��              pEventDataAddress           ��       	    pointer    cbEventDataLength           ��	           
   bFbCleanup            ��
              tTimeout           ��                 nEventState           ��              bError            ��              nErrId           ��              bQuit            ��                       ��J  �   ����           FW_ADSLOGLREAL            	   nCtrlMask           ��              sMsgFmt               ��              fArg                        ��                 FW_AdsLogLREAL                                     ��J  �   ����           FW_ADSLOGSTR            	   nCtrlMask           ��              sMsgFmt               ��              sArg               ��                 FW_AdsLogSTR                                     ��J  �   ����           FW_ADSRDWRT           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              WRTRD_SAV_I             ��              PDESTADDR_I            ��              TICKSTART_I            ��           
      sNetId               ��              nPort           ��              nIdxGrp           ��              nIdxOffs           ��           
   cbWriteLen           ��           	   cbReadLen           ��           
   pWriteBuff           ��	           	   pReadBuff           ��
              bExecute            ��              tTimeout           ��                 bBusy            ��              bError            ��              nErrId           ��              cbRead           ��           count of bytes actually read             ��J  �   ����           FW_ADSRDWRTIND           CLEAR_I             ��                 bClear            ��           	      bValid            ��              sNetId               ��              nPort           ��           	   nInvokeId           ��	              nIdxGrp           ��
              nIdxOffs           ��           	   cbReadLen           ��           
   cbWriteLen           ��           
   pWriteBuff           ��                       ��J  �   ����           FW_ADSRDWRTRES        	   RESPOND_I             ��                 sNetId               ��              nPort           ��           	   nInvokeId           ��              nErrId           ��           	   cbReadLen           ��           	   pReadBuff           ��              bRespond            ��	                           ��J  �   ����        
   FW_ADSREAD           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��           
   READ_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��              nIdxGrp           ��              nIdxOffs           ��           	   cbReadLen           ��           	   pReadBuff           ��              bExecute            ��	              tTimeout           ��
                 bBusy            ��              bError            ��              nErrId           ��              cbRead           ��           count of bytes actually read             ��J  �   ����           FW_ADSREADDEVICEINFO           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              RDINFO_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��              bExecute            ��              tTimeout           ��                 bBusy            ��	              bError            ��
              nErrId           ��              sDevName               ��              nDevVersion           ��                       ��J  �   ����           FW_ADSREADIND           CLEAR_I             ��                 bClear            ��                 bValid            ��              sNetId               ��              nPort           ��           	   nInvokeId           ��	              nIdxGrp           ��
              nIdxOffs           ��           	   cbReadLen           ��                       ��J  �   ����           FW_ADSREADRES        	   RESPOND_I             ��                 sNetId               ��              nPort           ��           	   nInvokeId           ��              nErrId           ��           	   cbReadLen           ��           	   pReadBuff           ��              bRespond            ��	                           ��J  �   ����           FW_ADSREADSTATE           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              RDSTATE_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��              bExecute            ��              tTimeout           ��                 bBusy            ��	              bError            ��
              nErrId           ��           	   nAdsState           ��           	   nDevState           ��                       ��J  �   ����           FW_ADSWRITE           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              WRITE_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��              nIdxGrp           ��              nIdxOffs           ��           
   cbWriteLen           ��           
   pWriteBuff           ��              bExecute            ��	              tTimeout           ��
                 bBusy            ��              bError            ��              nErrId           ��                       ��J  �   ����           FW_ADSWRITECONTROL           STAMP_I            ��              ACCESSCNT_I            ��              BUSY_I             ��              ERR_I             ��              ERRID_I            ��              WRITE_SAV_I             ��              TICKSTART_I            ��                 sNetId               ��              nPort           ��           	   nAdsState           ��           	   nDevState           ��           
   cbWriteLen           ��           
   pWriteBuff           ��              bExecute            ��	              tTimeout           ��
                 bBusy            ��              bError            ��              nErrId           ��                       ��J  �   ����           FW_ADSWRITEIND           CLEAR_I             ��                 bClear            ��                 bValid            ��              sNetId               ��              nPort           ��           	   nInvokeId           ��	              nIdxGrp           ��
              nIdxOffs           ��           
   cbWriteLen           ��           
   pWriteBuff           ��                       ��J  �   ����           FW_ADSWRITERES        	   RESPOND_I             ��                 sNetId               ��              nPort           ��           	   nInvokeId           ��              nErrId           ��              bRespond            ��                           ��J  �   ����           FW_DRAND           FirstCall_i             ��	           
   HoldRand_i            ��
              R250_Buffer_i   	  �                        ��           
   R250_Index            ��                 nSeed           ��                 fRndNum                        ��                       ��J  �   ����           FW_GETCPUACCOUNT                   dwCpuAccount           ��                       ��J  �   ����           FW_GETCPUCOUNTER                
   dwCpuCntLo           ��           
   dwCpuCntHi           ��                       ��J  �   ����           FW_GETCURTASKINDEX                   nIndex           ��                       ��J  �   ����           FW_GETSYSTEMTIME                   dwTimeLo           ��              dwTimeHi           ��                       ��J  �   ����           FW_GETVERSIONTCBASE               nVersionElement           ��                 FW_GetVersionTcBase                                     ��J  �   ����           FW_LPTSIGNAL            	   nPortAddr           ��              nPinNo           ��              bOnOff            ��	                 FW_LptSignal                                      ��J  �   ����        	   FW_MEMCMP               pBuf1           ��           First buffer    pBuf2           ��           Second buffer    cbLen           ��           Number of characters    	   FW_MemCmp                                     ��J  �   ����        	   FW_MEMCPY               pDest           ��           New buffer    pSrc           ��           Buffer to copy from    cbLen           ��           Number of characters to copy    	   FW_MemCpy                                     ��J  �   ����        
   FW_MEMMOVE               pDest           ��           New buffer    pSrc           ��           Buffer to copy from    cbLen           ��           Number of characters to copy    
   FW_MemMove                                     ��J  �   ����        	   FW_MEMSET               pDest           ��           Pointer to destination 	   nFillByte           ��           Character to set    cbLen           ��           Number of characters    	   FW_MemSet                                     ��J  �   ����           FW_PORTREAD            	   nPortAddr           ��           	   eNoOfByte               FW_NoOfByte   ��                 FW_PortRead                                     ��J  �   ����           FW_PORTWRITE            	   nPortAddr           ��           	   eNoOfByte               FW_NoOfByte   ��              nValue           ��                 FW_PortWrite                                      ��J  �   ����    q   C:\TwinCAT\PLC\LIB\TcSystem.lib @                                                                                T          ADSCLEAREVENTS           fbAdsClearEvents                            FW_AdsClearEvents ` ��                 NetID            
   T_AmsNetId   ��              bClear            ��              iMode           ��              tTimeout    �     ��                 bBusy            ��	              bErr            ��
              iErrId           ��                       9VW  �   ����        
   ADSLOGDINT               msgCtrlMask           ��           	   msgFmtStr               T_MaxString   ��              dintArg           ��              
   ADSLOGDINT                                     9VW  �    ����           ADSLOGEVENT           fbAdsLogEvent                                               FW_AdsLogEvent ` ��           	      NETID            
   T_AmsNetId   ��              PORT           ��              Event            ��           	   EventQuit            ��              EventConfigData               TcEvent   ��              EventDataAddress           ��       	    pointer    EventDataLength           ��	           	   FbCleanup            ��
              TMOUT    �     ��              
   EventState           ��              Err            ��              ErrId           ��              Quit            ��                       9VW  �   ����           ADSLOGLREAL               msgCtrlMask           ��           	   msgFmtStr               T_MaxString   ��              lrealArg                        ��                 ADSLOGLREAL                                     9VW  �    ����        	   ADSLOGSTR               msgCtrlMask           ��           	   msgFmtStr               T_MaxString   ��              strArg               T_MaxString   ��              	   ADSLOGSTR                                     9VW  �    ����           ADSRDDEVINFO           fbAdsReadDeviceInfo                              FW_AdsReadDeviceInfo    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              RDINFO            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              DEVNAME               ��              DEVVER           ��                       9VW  �   ����        
   ADSRDSTATE           fbAdsReadState                              FW_AdsReadState    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              RDSTATE            ��              TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��              ADSSTATE           ��              DEVSTATE           ��                       9VW  �   ����           ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    ��           
      NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              WRITELEN           ��              READLEN           ��              SRCADDR           ��	              DESTADDR           ��
              WRTRD            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��                       9VW  �   ����        
   ADSRDWRTEX        
   fbAdsRdWrt                                    FW_AdsRdWrt    ��           
      NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              WRITELEN           ��              READLEN           ��              SRCADDR           ��	              DESTADDR           ��
              WRTRD            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_R           ��           count of bytes actually read             9VW  �   ����           ADSRDWRTIND           fbAdsRdWrtInd                         FW_AdsRdWrtInd    ��                 CLEAR            ��           	      VALID            ��              NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��	              IDXGRP           ��
              IDXOFFS           ��              RDLENGTH           ��           	   WRTLENGTH           ��              DATAADDR           ��                       9VW  �    ����           ADSRDWRTRES           fbAdsRdWrtRes                      FW_AdsRdWrtRes    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��              RESULT           ��              LEN           ��              DATAADDR           ��              RESPOND            ��	                           9VW  �    ����           ADSREAD        	   fbAdsRead                              
   FW_AdsRead    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              LEN           ��              DESTADDR           ��              READ            ��	              TMOUT    �     ��
                 BUSY            ��              ERR            ��              ERRID           ��                       9VW  �   ����        	   ADSREADEX        	   fbAdsRead                              
   FW_AdsRead    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              LEN           ��              DESTADDR           ��              READ            ��	              TMOUT    �     ��
                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_R           ��           count of bytes actually read             9VW  �   ����        
   ADSREADIND           fbAdsReadInd        	               FW_AdsReadInd    ��                 CLEAR            ��                 VALID            ��              NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��	              IDXGRP           ��
              IDXOFFS           ��              LENGTH           ��                       9VW  �    ����        
   ADSREADRES           fbAdsReadRes                      FW_AdsReadRes    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��              RESULT           ��              LEN           ��              DATAADDR           ��              RESPOND            ��	                           9VW  �    ����           ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              LEN           ��              SRCADDR           ��              WRITE            ��	              TMOUT    �     ��
                 BUSY            ��              ERR            ��              ERRID           ��                       9VW  �   ����           ADSWRITEIND           fbAdsWriteInd        
                FW_AdsWriteInd    ��                 CLEAR            ��                 VALID            ��              NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��	              IDXGRP           ��
              IDXOFFS           ��              LENGTH           ��              DATAADDR           ��                       9VW  �    ����           ADSWRITERES           fbAdsWriteRes                    FW_AdsWriteRes    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              INVOKEID           ��              RESULT           ��              RESPOND            ��                           9VW  �    ����        	   ADSWRTCTL           fbAdsWriteControl                                FW_AdsWriteControl    ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              ADSSTATE           ��              DEVSTATE           ��              LEN           ��              SRCADDR           ��              WRITE            ��	              TMOUT    �     ��
                 BUSY            ��              ERR            ��              ERRID           ��                       9VW  �   ����           ANALYZEEXPRESSION               InputExp            ��           	   DoAnalyze            ��              	   ExpResult            ��           	   OutString               ��                       9VW  �    ����           ANALYZEEXPRESSIONCOMBINED           Index            ��                 InputExp            ��           	   DoAnalyze            ��              	   ExpResult            ��              OutTable   	                        ExpressionResult           ��           	   OutString               ��	                       9VW  �    ����           ANALYZEEXPRESSIONTABLE           Index            ��                 InputExp            ��           	   DoAnalyze            ��              	   ExpResult            ��              OutTable   	                        ExpressionResult           ��                       9VW  �    ����           APPENDERRORSTRING               strOld               ��              strNew               ��                 AppendErrorString                                         9VW  �    ����           BAVERSION_TO_DWORD               nVersion         ` ��           	   nRevision         ` ��	              nBuild         ` ��
                 BAVERSION_TO_DWORD                                     9VW  �    ����        
   CLEARBIT32           dwConst        ` ��                 inVal32           ��              bitNo           ��              
   CLEARBIT32                                     9VW  �    ����        	   CSETBIT32           dwConst        ` ��	                 inVal32           ��              bitNo           ��              bitVal            ��       &    value to which the bit should be set    	   CSETBIT32                                     9VW  �    ����           DRAND           fbDRand                    FW_DRand ` ��
                 Seed           ��                 Num                        ��                       9VW  �    ����           F_COMPAREFWVERSION           soll         ` ��              ist         ` ��                 major         ` ��           requiered major version    minor         ` ��	           requiered minor version    revision         ` ��
       )    requiered revision/service pack version    patch         ` ��       0    required patch version (reserved, default = 0 )      F_CompareFwVersion                                      9VW  �    ����           F_CREATEAMSNETID           idx         ` ��                 nIds               T_AmsNetIdArr   ��           Ams Net ID as array of bytes.       F_CreateAmsNetId            
   T_AmsNetId                             9VW  �    ����           F_CREATEIPV4ADDR           idx         ` ��                 nIds               T_IPv4AddrArr   ��       <    Internet Protocol dotted address (ipv4) as array of bytes.       F_CreateIPv4Addr            
   T_IPv4Addr                             9VW  �    ����           F_GETSTRUCTMEMBERALIGNMENT           tmp                ST_StructMemberAlignmentProbe ` ��                     F_GetStructMemberAlignment                                     9VW  �    ����           F_GETVERSIONTCSYSTEM               nVersionElement           ��                 F_GetVersionTcSystem                                     9VW  �    ����           F_IOPORTREAD               nAddr           ��           Port address    eSize               E_IOAccessSize   ��           Number of bytes to read       F_IOPortRead                                     9VW  �    ����           F_IOPORTWRITE               nAddr           ��           Port address    eSize               E_IOAccessSize   ��           Number of bytes to write    nValue           ��           Value to write       F_IOPortWrite                                      9VW  �    ����           F_SCANAMSNETIDS           pNetID               ` ��              b               T_AmsNetIdArr ` ��              w         ` ��	              id         ` ��
           	   Index7001                            sNetID            
   T_AmsNetID   ��       :    String containing the Ams Net ID. E.g. '127.16.17.3.1.1'       F_ScanAmsNetIds               T_AmsNetIdArr                             9VW  �    ����           F_SCANIPV4ADDRIDS           b               T_AmsNetIdArr ` ��           	   Index7001                            sIPv4            
   T_IPv4Addr   ��       M    String containing the Internet Protocol dotted address. E.g. '172.16.7.199'       F_ScanIPv4AddrIds               T_IPv4AddrArr                             9VW  �    ����           F_SPLITPATHNAME           pPath               ` ��              pSlash               ` ��              pDot               ` ��              p               ` ��              length         ` ��              	   sPathName               T_MaxString   ��                 F_SplitPathName                                sDrive               ��              sDir                T_MaxString  ��           	   sFileName                T_MaxString  ��              sExt                T_MaxString  ��	                   9VW  �    ����           F_TOASC           pChar               ` ��                 str    Q       Q    ��                 F_ToASC                                     9VW  �    ����           F_TOCHR           pChar    	                            ` ��                 c           ��                 F_ToCHR    Q       Q                              9VW  �    ����           FB_ADSREADWRITELIST           para                ST_AdsRdWrtListPara ` ��           	   fbTrigger                R_TRIG ` ��              nState         ` ��              fbCall       �    ( 	sNetID := '', nPort := 16#1234,
									nIdxGrp := GENERIC_FB_GRP_ADS,
									nIdxOffs := GENERIC_FB_ADS_RDWRTLIST,
									bExecute := FALSE,  ACCESSCNT_I := 16#0000BEC1,
									tTimeout := DEFAULT_ADS_TIMEOUT )     ��                 4                     �         FW_AdsRdWrt ` ��           
      sNetId           ''    
   T_AmsNetID ` ��              nPort           0    	   T_AmsPort ` ��              nIdxGrp         ` ��              nIdxOffs         ` ��              cbWriteList         ` ��	           Byte size of list array 
   pWriteList                   ST_AdsReadWriteListEntry      ` ��
       !    Pointer to the first list entry 	   cbReadLen         ` ��           	   pReadBuff           0       PVOID ` ��              bExecute          ` ��              tTimeout    �   ` ��                 bBusy          ` ��              bError          ` ��              nErrID         ` ��              cbRead         ` ��                       9VW  �   ����           FB_BADEVICEIOCONTROL           fbRW       O    ( PORT := AMSPORT_R3_SYSSERV, IDXGRP := SYSTEMSERVICE_BADEVAPI, IDXOFFS := 0 )              	   T_AmsPort         L                 
   ADSRDWRTEX ` ��              req                ST_AdsBaDevApiReq ` ��              state         ` ��              rtrig                R_TRIG ` ��                 sNetID           ''    
   T_AmsNetID ` ��           Ams net id    affinity           ( lower :=0, higher := 0 )                T_U64KAFFINITY ` ��       )    Affinity mask (default  = 0 = not used) 	   nModifier         ` ��       +    Optional command modifier (0 == not used)    nIdxGrp         ` ��           Api function group    nIdxOffs         ` ��           Api function offset 
   cbWriteLen         ` ��	           Input data byte size 	   cbReadLen         ` ��
           Output data byte size 
   pWriteBuff         ` ��           Pointer to input data buffer 	   pReadBuff         ` ��           Pointer to output data buffer    bExecute          ` ��       &    Rising edge starts command execution    tTimeout    �   ` ��                 bBusy          ` ��              bError          ` ��              nErrID         ` ��              cbRead         ` ��           Count of bytes actually read             9VW  �   ����           FB_BAGENGETVERSION           fbCtrl       �    ( nModifier := 0, affinity := ( lower := 0, higher := 0 ), nIdxGrp := BADEVAPIIGRP_GENERAL, nIdxOffs := BADEVAPIIOFFS_GENERAL_VERSION )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                                             FB_BaDeviceIoControl ` ��              rtrig                R_TRIG ` ��              state         ` ��              rsp         ` ��                 sNetID           ''    
   T_AmsNetID ` ��           ams net id    bExecute          ` ��       &    rising edge starts command execution    tTimeout    �   ` ��                 bBusy          ` ��	              bError          ` ��
              nErrID         ` ��              nVersion         ` ��           	   nRevision         ` ��              nBuild         ` ��                       9VW  �   ����           FB_CREATEDIR        
   fbAdsRdWrt       ]    ( nPort:= AMSPORT_R3_SYSSERV, nIdxGrp:= SYSTEMSERVICE_MKDIR, cbReadLen := 0, pReadBuff:= 0 )             '   �                         FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id 	   sPathName               T_MaxString   ��           max directory length = 255    ePath           PATH_GENERIC    
   E_OpenPath   ��       +    Default: Create directory at generic path    bExecute            ��       %    rising edge start command execution    tTimeout    �     ��                 bBusy            ��
              bError            ��              nErrId           ��                       9VW  �   ����           FB_EOF        
   fbAdsRdWrt       `    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FEOF, cbWriteLen := 0, pWriteBuff := 0 )             '   �                         FW_AdsRdWrt ` ��              iEOF         ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle    bExecute            ��           control input    tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��              bEOF            ��                       9VW  �   ����           FB_FILECLOSE        
   fbAdsRdWrt       �    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FCLOSE, cbWriteLen := 0,	cbReadLen := 0,	pWriteBuff := 0, pReadBuff := 0 )             '   y                                 FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��       %    file handle obtained through 'open'    bExecute            ��           close control input    tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��                       9VW  �   ����           FB_FILEDELETE        
   fbAdsRdWrt       a    (nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FDELETE, cbReadLen := 0, pReadBuff := 0 )             '   �                         FW_AdsRdWrt ` ��              tmpOpenMode         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id 	   sPathName               T_MaxString   ��           file path and name    ePath           PATH_GENERIC    
   E_OpenPath   ��           Default: Open generic file    bExecute            ��           open control input    tTimeout    �     ��                 bBusy            ��
              bError            ��              nErrId           ��                       9VW  �   ����           FB_FILEGETS        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FGETS, cbWriteLen := 0, pWriteBuff := 0 )             '   ~                         FW_AdsRdWrt ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle    bExecute            ��           control input    tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��              sLine               T_MaxString   ��              bEOF            ��                       9VW  �   ����           FB_FILEOPEN        
   fbAdsRdWrt       @    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FOPEN )             '   x                 FW_AdsRdWrt ` ��              tmpOpenMode         ` ��              tmpHndl         ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id 	   sPathName               T_MaxString   ��           max filename length = 255    nMode           ��           open mode flags    ePath           PATH_GENERIC    
   E_OpenPath   ��           Default: Open generic file    bExecute            ��           open control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��              hFile           ��           file handle             9VW  �   ����           FB_FILEPUTS        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FPUTS, cbReadLen := 0, pReadBuff := 0 )             '                            FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle    sLine               T_MaxString   ��           string to write    bExecute            ��           control input    tTimeout    �     ��                 bBusy            ��
              bError            ��              nErrId           ��                       9VW  �   ����           FB_FILEREAD        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FREAD, cbWriteLen := 0, pWriteBuff := 0 )             '   z                         FW_AdsRdWrt ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle 	   pReadBuff           ��           buffer address for read 	   cbReadLen           ��           count of bytes for read    bExecute            ��           read control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��              cbRead           ��           count of bytes actually read    bEOF            ��                       9VW  �   ����           FB_FILERENAME        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FRENAME, cbReadLen := 0, pReadBuff := 0 )             '   �                         FW_AdsRdWrt ` ��              tmpOpenMode         ` ��           
   sBothNames   	                    T_MaxString         ` ��           = SIZEOF( T_MaxString ) * 2    nOldLen         ` ��              nNewLen         ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    sOldName               T_MaxString   ��           max filename length = 255    sNewName               T_MaxString   ��           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   ��           Default: generic file path   bExecute            ��           open control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��                       9VW  �   ����           FB_FILESEEK        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FSEEK, cbReadLen := 0, pReadBuff := 0 )             '   |                         FW_AdsRdWrt ` ��           
   tmpSeekPos   	                       ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��	           file handle    nSeekPos           ��
           new seek pointer position    eOrigin       	    SEEK_SET       E_SeekOrigin   ��              bExecute            ��           seek control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��                       9VW  �   ����           FB_FILETELL        
   fbAdsRdWrt       b    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FTELL, cbWriteLen := 0, pWriteBuff := 0 )             '   }                         FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle    bExecute            ��           control input    tTimeout    �     ��                 bBusy            ��	              bError            ��
              nErrId           ��              nSeekPos           ��          	On error, nSEEKPOS returns -1             9VW  �   ����           FB_FILEWRITE        
   fbAdsRdWrt       A    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_FWRITE )             '   {                 FW_AdsRdWrt ` ��           	   fbTrigger                R_TRIG ` ��              state         ` ��                 sNetId            
   T_AmsNetId   ��           ams net id    hFile           ��           file handle 
   pWriteBuff           ��           buffer address for write 
   cbWriteLen           ��           count of bytes for write    bExecute            ��           write control input    tTimeout    �     ��                 bBusy            ��              bError            ��              nErrId           ��              cbWrite           ��       !    count of bytes actually written             9VW  �   ����           FB_PCWATCHDOG           bRetVal          ` ��              iTime         ` ��              iIdx         ` ��              iPortArr   	                 >    16#2E, 16#2E, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E, 16#2F, 16#2E	      .      .      .      /      .      /      .      /      .    ` ��              iArrEn   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#05, 16#30, 16#01, 16#AA	      �      �                  �            0            �    ` ��              iArrDis   	                 >    16#87, 16#87, 16#07, 16#08, 16#F6, 16#00, 16#30, 16#00, 16#AA	      �      �                  �             0             �    ` ��                 tTimeOut           ��       ;    Watchdog TimeOut Time 1s..255s, disabled if tTimeOut < 1s    bEnable            ��           Enable / Disable Watchdog       bEnabled            ��       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            ��           FB still busy    bError            ��	           FB has error     nErrId           ��
           FB error ID               9VW  �    ����           FB_PCWATCHDOG_BAPI           nState         ` ��              bInit         ` ��              eConfig           eWATCHDOG_TIME_DISABLED       E_WATCHDOG_TIME_CONFIG ` ��           
   nWatchTime         ` ��           watchdog watch time 	   nTimeBase         ` ��       *    watchdog time base: seconds/milliseconds    nPwrCtrlIoWd        ` ��       >    1 use power controller IO watchdog; 0 use compatibility mode    fbGetVersion                           FB_BaGenGetVersion ` ��              nVersion         ` ��           
   stGpioInfo                 ST_WD_GPIO_Info ` ��              bUseInfo          ` ��              stGpioInfoEx                      ST_WD_GPIO_InfoEx ` ��           
   bUseInfoEx          ` ��              nWDByte         ` ��              fbCtrl       �    ( affinity := ( lower := 0, higher := 0 ), nModifier := 0, nIdxGrp := BIOSIGRP_WATCHDOG, nIdxOffs := BIOSIOFFS_WATCHDOG_CONFIG )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                        `                   FB_BaDeviceIoControl ` ��              rtrig                R_TRIG ` ��              bRetVal          ` ��           	   pAddress1               ` ��               dxValue1         ` ��!           
   dxBitMask1         ` ��"           	   pAddress2               ` ��#              dxValue2         ` ��$           
   dxBitMask2         ` ��%           	   pAddress4               ` ��&              dxValue4         ` ��'           
   dxBitMask4         ` ��(                 sNetID           ''    
   T_AmsNetID   ��       ;    ams net id, only empty string or local netid is supported    nWatchdogTimeS             �;             ��       -    Watchdog time [s], 0 = disable, >0 = enable    bExecute            ��       &    rising edge starts command execution    tTimeout    �     ��           ADS communication timeout       bEnabled            ��	       2    TRUE: Watchdog Enabled; FALSE: Watchdog Disabled    bBusy            ��
           TRUE: function block is busy    bError            ��            TRUE: function block has error    nErrID           ��           FB error ID               9VW  �   ����           FB_REMOVEDIR        
   fbAdsRdWrt       `    ( nPort := AMSPORT_R3_SYSSERV, nIdxGrp := SYSTEMSERVICE_RMDIR, cbReadLen := 0, pReadBuff := 0 )             '   �                         FW_AdsRdWrt ` ��                 sNetId            
   T_AmsNetId   ��           ams net id 	   sPathName               T_MaxString   ��           max filename length = 255    ePath           PATH_GENERIC    
   E_OpenPath   ��       +    Default: Delete directory at generic path    bExecute            ��       &    rising edge starts command execution    tTimeout    �     ��                 bBusy            ��
              bError            ��              nErrId           ��                       9VW  �   ����           FB_SETLEDCOLOR_BAPI           nState         ` ��              fbCtrl       y    ( affinity := ( lower := 0, higher := 0 ), nModifier := 0, nIdxGrp := BIOSIGRP_LED, nIdxOffs := BIOSIOFFS_LED_SET_USER )                ( lower :=0, higher := 0 )                T_U64KAFFINITY                        �                   FB_BaDeviceIoControl ` ��              rtrig                R_TRIG ` ��              nLED         ` ��                 sNetID           ''    
   T_AmsNetID   ��       ;    ams net id, only empty string or local netid is supported 	   eNewColor               E_UsrLED_Color   ��           new LED Color    bExecute            ��           change LED Color    tTimeout    �     ��           ADS communication timeout       bBusy            ��	           TRUE: function block is busy    bError            ��
            TRUE: function block has error    nErrID           ��           FB error ID               9VW  �   ����           FB_SIMPLEADSLOGEVENT           fbEvent       9    ( NETID := '', PORT := AMSPORT_EVENTLOG, TMOUT:= t#15s )             
   T_AmsNetId         n          �:         ADSLOGEVENT ` ��              cfgEvent               TcEvent ` ��              bInit         ` ��                 SourceID           ��              EventID           ��           	   bSetEvent           ��              bQuit            ��                 ErrId           ��	              Error            ��
                       9VW  �   ����        	   FILECLOSE        
   fbAdsWrite                                FW_AdsWrite    ��                 NETID            
   T_AmsNetId   ��           ams net id    HFILE           ��       )    file handle obtained through 'FILEOPEN'    CLOSE            ��           close control input    TMOUT    �     ��                 BUSY            ��	              ERR            ��
              ERRID           ��                       9VW  �   ����           FILEOPEN        
   fbAdsWrite                                FW_AdsWrite    ��           
   RisingEdge                R_TRIG    ��              FallingEdge                F_TRIG    ��                 NETID            
   T_AmsNetId   ��           ams net id 	   FPATHNAME               T_MaxString   ��       #    default max filename length = 255    OPENMODE           ��           open mode flags    OPEN            ��           open control input    TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��              HFILE           ��           file handle             9VW  �   ����           FILEREAD        	   fbAdsRead                              
   FW_AdsRead    ��                 NETID            
   T_AmsNetId   ��           ams net id    HFILE           ��           file handle    BUFADDR           ��           buffer address for read    COUNT           ��           count of bytes for read    READ            ��           read control input    TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_R           ��           count of bytes actually read             9VW  �   ����           FILESEEK        
   fbAdsWrite                                FW_AdsWrite    ��                 NETID            
   T_AmsNetId   ��           ams net id    HFILE           ��           file handle    SEEKPOS           ��           new seek pointer position    SEEK            ��           seek control input    TMOUT    �     ��                 BUSY            ��
              ERR            ��              ERRID           ��                       9VW  �   ����        	   FILEWRITE        
   fbAdsWrite                                FW_AdsWrite    ��           
   RisingEdge                R_TRIG    ��              FallingEdge                F_TRIG    ��              tmpCount            ��                 NETID            
   T_AmsNetId   ��           ams net id    HFILE           ��           file handle    BUFADDR           ��           buffer address for write    COUNT           ��           count of bytes for write    WRITE            ��           write control input    TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_W           ��       !    count of bytes actually written             9VW  �   ����           FW_CALLGENERICFB           fbCall       w    ( 	sNetID := '', nPort := 16#1234,
								bExecute := FALSE, tTimeout := T#0s,
								ACCESSCNT_I := 16#0000BEC1 )     ��                 4                          FW_AdsRdWrt ` ��                 funGrp         ` ��       #    Function block group (identifier)    funNum         ` ��       $    Function block number (identifier)    pWrite               PVOID ` ��       7    Pointer to generic function input parameter structure    cbWrite         ` ��       ;    Byte length of generic function input parameter structure    pRead               PVOID ` ��	           Pointer to output data buffer    cbRead         ` ��
       #    Byte length of output data buffer       nErrID         ` ��           0 => no error, <> 0 => error
   cbReturned         ` ��       ,    Number of successfully returned data bytes             9VW  �    ����           FW_CALLGENERICFBEX           fbCall        	               FW_CallGenericFb ` ��              in                  ST_AdsCallGenericFbExReq ` ��                 funGrp         ` ��       #    Function block group (identifier)    funNum         ` ��       $    Function block number (identifier)    nIdxGrp         ` ��           Index group parameter    nIdxOffs         ` ��           Index offset parameter    pWrite               PVOID ` ��	       7    Pointer to generic function input parameter structure    cbWrite         ` ��
       ;    Byte length of generic function input parameter structure    pRead               PVOID ` ��           Pointer to output data buffer    cbRead         ` ��       #    Byte length of output data buffer       nErrID         ` ��           0 => no error, <> 0 => error
   cbReturned         ` ��       ,    Number of successfully returned data bytes             9VW  �    ����           FW_CALLGENERICFUN           fbCall       y    ( 	sNetID := '', nPort := 16#1234,
									bExecute := FALSE, tTimeout := T#0s,
									ACCESSCNT_I := 16#0000BEC2 )     ¾                 4                          FW_AdsRdWrt ` ��           don't use it!        funGrp         ` ��           Function group (identifier)    funNum         ` ��       $    Function block number (identifier)    pWrite               PVOID ` ��       7    Pointer to generic function input parameter structure    cbWrite         ` ��       ;    Byte length of generic function input parameter structure    pRead               PVOID ` ��	           Pointer to output data buffer    cbRead         ` ��
       #    Byte length of output data buffer    pcbReturned               ` ��       ,    Number of successfully returned data bytes       FW_CallGenericFun                                     9VW  �    ����           GETBIT32           dwConst        ` ��                 inVal32           ��              bitNo           ��                 GETBIT32                                      9VW  �    ����           GETCPUACCOUNT           fbGetCpuAccount               FW_GetCpuAccount ` ��                     cpuAccountDW           ��                       9VW  �    ����           GETCPUCOUNTER           fbGetCpuCounter                FW_GetCpuCounter ` ��                  
   cpuCntLoDW           ��           
   cpuCntHiDW           ��                       9VW  �    ����           GETCURTASKINDEX           fbGetCurTaskIndex               FW_GetCurTaskIndex ` ��                     index           ��           Task index [1..4]             9VW  �    ����           GETSYSTEMTIME           fbGetSystemTime                FW_GetSystemTime ` ��                     timeLoDW           ��              timeHiDW           ��                       9VW  �    ����           GETTASKTIME           out   	                       ` ��	           
   cbReturned         ` ��
                     timeLoDW           ��              timeHiDW           ��                       9VW  �    ����        	   LPTSIGNAL               PortAddr           ��              PinNo           ��              OnOff            ��	              	   LPTSIGNAL                                      9VW  �    ����           MEMCMP               pBuf1           ��           First buffer    pBuf2           ��           Second buffer    n           ��           Number of characters       MEMCMP                                     9VW  �    ����           MEMCPY               destAddr           ��           New buffer    srcAddr           ��           Buffer to copy from    n           ��           Number of characters to copy       MEMCPY                                     9VW  �    ����           MEMMOVE               destAddr           ��           New buffer    srcAddr           ��           Buffer to copy from    n           ��           Number of characters to copy       MEMMOVE                                     9VW  �    ����           MEMSET               destAddr           ��           Pointer to destination    fillByte           ��           Character to set    n           ��           Number of characters       MEMSET                                     9VW  �    ����           ROL32               inVal32           ��              n           ��                 ROL32                                     9VW  �    ����           ROR32               inVal32           ��              n           ��                 ROR32                                     9VW  �    ����           SETBIT32           dwConst        ` ��                 inVal32           ��              bitNo           ��                 SETBIT32                                     9VW  �    ����           SFCACTIONCONTROL     
      S_FF                RS    ��              L_TMR                TON    ��              D_TMR                TON    ��              P_TRIG                R_TRIG    ��              SD_TMR                TON    ��              SD_FF                RS    ��              DS_FF                RS    ��              DS_TMR                TON    ��              SL_FF                RS    ��              SL_TMR                TON    ��           
      N            ��              R0            ��              S0            ��              L            ��              D            ��              P            ��              SD            ��	              DS            ��
              SL            ��              T           ��                 Q            ��                       9VW  �    ����           SHL32               inVal32           ��              n           ��                 SHL32                                     9VW  �    ����           SHR32               inVal32           ��              n           ��                 SHR32                                     9VW  �    ����    s   C:\TwinCAT\PLC\LIB\TcBaseMath.lib @                                                                                          FW_FLOOR               lr_in                        ��                 FW_Floor                                                  �A  �   ����           FW_LREALFRAC               lr_in                        ��                 FW_LrealFrac                                                  �A  �   ����           FW_LREALMODP               lr_val                        ��              lr_mod                        ��                 FW_LrealModP                                                  �A  �   ����           FW_LREALTRUNC               lr_in                        ��                 FW_LrealTrunc                                                  �A  �   ����    o   C:\TwinCAT\PLC\LIB\TcMath.lib @                                                                                          F_GETVERSIONTCMATH               nVersionElement           ��                 F_GetVersionTcMath                                     xRA  �    ����           FLOOR               lr_in                        ��                 FLOOR                                                  xRA  �    ����           FRAC               lr_in                        ��                 FRAC                                                  xRA  �    ����           LMOD               lr_Value                        ��              lr_Arg                        ��                 LMOD                                                  xRA  �    ����           LTRUNC               lr_in                        ��                 LTRUNC                                                  xRA  �    ����           MODABS               lr_Value                        ��              lr_Arg                        ��                 MODABS                                                  xRA  �    ����           MODTURNS           lr_Tmp                         ��                 lr_Value                        ��              lr_Arg                        ��                 MODTURNS                                     xRA  �    ����    n   C:\TwinCAT\PLC\LIB\TcMC2.lib @                                                                                b          _F_AXISSTATE                   _F_AxisState               MC_AxisStates                       NcToPlc                                        NCTOPLC_AXIS_REF` ��              PlcToNc                                   PLCTONC_AXIS_REF` ��                   ~��Y  �    ����           _F_GETINDEXGROUP        
   IndexGroup         ` ��	              IndexOffset         ` ��
              nType               _E_ParameterType ` ��              lrValue                      ` ��              
   ParaNumber         ` ��              ControlLoopIndex         ` ��            2016-11-18 KSt    Mode         ` ��           read/write       _F_GetIndexGroup                    _ST_ParaStruct                             ~��Y  �    ����           _F_NCCYCLECOUNTERUPDATED           pData                   _InternalAxisRefData         ��	              NcCycleCounter            ��
                 LastNcCycleCounter           ��                 _F_NcCycleCounterUpdated                                Axis                AXIS_REF  ��                   ~��Y  �    ����           _F_NCNOOFCYCLECOUNTERUPDATED           pData                   _InternalAxisRefData         ��	              NcCycleCounter            ��
                 LastNcCycleCounter           ��                 _F_NcNoOfCycleCounterUpdated                               Axis                AXIS_REF  ��                   ~��Y  �    ����           _F_READSTATUS           GetTaskIndex                GETCURTASKINDEX ` ��                 ForceTaskIndexUpdate          ` ��       `    force update of the taskindex with GETCURTASKINDEX - otherwise update only once - 20100416 KSt       _F_ReadStatus        1                                                       ST_AxisStatus                       NcToPlc                                        NCTOPLC_AXIS_REF` ��              PlcToNc                                   PLCTONC_AXIS_REF` ��           
   LastStatus         1                                                       ST_AxisStatus` ��	                   ~��Y  �    ����           _F_TCMC_DWORD_TO_HEXSTR           str1             ` ��              pstr               ` ��	              i         ` ��
              digit         ` ��                 in         ` ��                 _F_TcMC_DWORD_TO_HEXSTR                                         ~��Y  �    ����           _F_TCMC_ROUND           n                      ` ��                 value                      ` ��              digits         ` ��                 _F_TcMC_Round                                                  ~��Y  �    ����           _F_UPDATENCCYCLECOUNTER                   _F_UpdateNcCycleCounter                               Axis                AXIS_REF  ��                   ~��Y  �    ����           _FB_MOVEUNIVERSALGENERIC           iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��               sStartRequest                      !   _ST_TcNC_UnversalAxisStartRequest    ��!              sStartResponse             "   _ST_TcNC_UnversalAxisStartResponse    ��"              fbAdsReadWrite                          
   ADSRDWRTEX    ��#              ContinousMode             ��$           
   InVelocity             ��%              DiffCycleCounter            ��&       5    last recent PLC cycle counter difference while Busy    EmptyStartResponse             "   _ST_TcNC_UnversalAxisStartResponse ` ��*              COUNT_R         ` ��+              CounterCmdNoZero         ` ��,              CounterCmdNotStarted         ` ��-           	   DiffCmdNo         ` ��.              InitialNcToPlcCmdNo         ` ��/              NcCycleCounter         ` ��0              LastNcCycleCounter         ` ��1              NcMappingCounter         ` ��2              NcCycleCounterAvailable          ` ��3              NcCycleCounterNotAvailable          ` ��4              NcCyclicFeedbackExpected          ` ��5              PlcDebugCode         ` ��6       a    additional information for debugging purposes will be added to debug messages (ActErrorMessage)    AxisIsSlave          ` ��7              GetTaskIndex                GETCURTASKINDEX ` ��8              CycleCounter         ` ��9       *    last recent PLC cycle counter while Busy 	   fbTimeOut                TON ` ��:              fbStopMonitoringTimeOut                TON ` ��;              fbTimeOutMappingCounter                TON ` ��<              fbOnTrigger                R_TRIG ` ��=              sTempMsg             ` ��>              OpMode                  _ST_TcNc_OperationModes ` ��A                 Execute            ��          	StartType		: 	UDINT; 	   StartType               _E_TCNC_StartPosType   ��	       #    20110511 KSt type changed for Tc3    Position                        ��
              Velocity                        ��              Acceleration                        ��              Deceleration                        ��              Jerk                        ��       6   	Direction			:	MC_Direction := MC_Positive_Direction;	
   BufferMode               MC_BufferMode   ��              Options                  ST_MoveOptions   ��              Reset            ��           for internal use only    GotoRunState            ��           for internal use only       Done            ��       :    Same meaning as InVelocity for continous motion commands    Busy            ��              Active            ��              CommandAborted            ��              Error            ��              ErrorID           ��              CmdNo           ��              ADSbusy            ��                 Axis                AXIS_REF  ��              LastExecutionResult                   _ST_FunctionBlockResults  ��                   ~��Y  �    ����           _FB_PHASINGGENERIC           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��          	fbAdsReadWrite	: 	ADSRDWRTEX;
   fbAdsWrite                          ADSWRITE    ��!           
   sNcPhasing                           _ST_TcNC_PhasingRequest    ��"              PhasingStarted             ��#           	   fbTrigger                R_TRIG ` ��'           	   fbTimeOut                TON ` ��(           
      Execute            ��           B 	   StartType               _E_TcNC_StartPosType   ��	           command type start, stop etc, 
   PhaseShift                        ��
           B    PhasingType               E_PhasingType   ��       1    type of phase shift value, absolute or relative    Velocity                        ��           E    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options               ST_PhasingOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E    PhaseShiftFeedback                        ��           E       Master                AXIS_REF  ��              Slave                AXIS_REF  ��                   ~��Y  �    ����        !   _FB_POSITIONCORRECTIONTABLELOOKUP           nState            ��              dwSize            ��              eActiveDirection           WorkDirectionNone       E_WorkDirection    ��           	   bExecCalc             ��           
   stElement1             #   ST_PositionCompensationTableElement    ��           
   stElement2             #   ST_PositionCompensationTableElement    ��            
   nLeftIndex            ��!       #    Index starting from 0 up to (N-1)    fSetPos                         ��"       A    position setpoint (absolute linear position or modulo position) 	   pTmpTable              #   ST_PositionCompensationTableElement         ��$       0    helper variable: pointer to table of this type    fTmpStep                         ��%           helper variable    fTmpA                         ��&           helper variable    fTmpB                         ��'           helper variable 
   fTmpDelta1                         ��(           helper variable 
   fTmpDelta2                         ��)           helper variable    ERRORCODE_PARAMSIZE    CK     ��,              ERRORCODE_PARAMPOS    DK     ��-       +   	ERRORCODE_TCNCNOTIMPL	: UDINT := 16#4B45;       Enable            ��       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement        ��           pointer to table of this type 	   TableSize           ��       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter   ��       1    position compensation table parameter structure       Compensation                        ��              Error            ��              ErrorID           ��              Active            ��                 Axis                Axis_Ref  ��                   ~��Y  �    ����           _FB_READWRITEPARAMETER           iState           STATE_INITIALIZATION       _E_TcMC_STATES ` ��           	   fbAdsRead                          ADSREAD ` ��           
   fbAdsWrite                          ADSWRITE ` ��              dwValue         ` ��              lrValue   	  
                                 ` ��              NcBoolValue         ` ��              bStarted          ` ��!              stParaStruct                    _ST_ParaStruct ` ��"              n         ` ��#              i         ` ��$           	   ParaLREAL        ` ��(          	ParaBOOL		:	INT := 3;      Enable          ` ��              ParameterNumber               MC_AxisParameter ` ��              Mode         ` ��	           read/write    ParameterType         ` ��
           bool/ not  bool       Done          ` ��              Busy          ` ��              Error          ` ��              ErrorID         ` ��              ADSbusy          ` ��                 Axis                AXIS_REF` ��           
   ValueLreal                      ` ��           
   ValueDword         ` ��           	   ValueBool          ` ��                   ~��Y  �    ����           _FBAXIS_REF        	   _internal                  _InternalAxisRefData ` ��              Storage   	                       ` ��       $    universal storage for internal use       PlcToNc                                  PLCTONC_AXIS_REF   ��                 NcToPlc                                       NCTOPLC_AXIS_REF  ��              ADS                 ST_AdsAddress   ��              Status        1                                                       ST_AxisStatus   ��                       ~��Y  �   ����           _MC_HALTPHASING           PhasingGeneric                                         _FB_PhasingGeneric    ��                 Execute            ��           B    Deceleration                        ��           E    Jerk                        ��	           E 
   BufferMode               MC_BufferMode   ��
           E    Options               ST_PhasingOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E       Master                AXIS_REF  ��              Slave                AXIS_REF  ��                   ~��Y  �    ����           _MC_PHASINGABSOLUTE           PhasingGeneric                                         _FB_PhasingGeneric    ��$                 Execute            ��           B 
   PhaseShift                        ��           B    Velocity                        ��           E    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options               ST_PhasingOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��            E    AbsolutePhaseShift                        ��!           E       Master                AXIS_REF  ��              Slave                AXIS_REF  ��                   ~��Y  �    ����           _MC_PHASINGRELATIVE           PhasingGeneric                                         _FB_PhasingGeneric    ��&                 Execute            ��           B 
   PhaseShift                        ��           B    Velocity                        ��           E    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options               ST_PhasingOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��            E    Error            ��!           B    ErrorID           ��"           E    CoveredPhaseShift                        ��#           E       Master                AXIS_REF  ��              Slave                AXIS_REF  ��                   ~��Y  �    ����           _TCMC_ADSRDWRT        
   fbAdsRdWrt                                    FW_AdsRdWrt    ��              NcCycleCounter            ��              NcCycleCounterAdsEnd            ��              UpdateCounter            ��               NoUpdateCounter            ��!           used for timeout detection    state            ��"           
      NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              WRITELEN           ��              READLEN           ��              SRCADDR           ��              DESTADDR           ��              WRTRD            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_R           ��           count of bytes actually read       Axis                AXIS_REF  ��                   ~��Y  �   ����           _TCMC_ADSREAD        	   fbAdsRead                              
   FW_AdsRead    ��              NcCycleCounter            ��              NcCycleCounterAdsEnd            ��              UpdateCounter            ��              NoUpdateCounter            ��           used for timeout detection    state            ��                  NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              LEN           ��              DESTADDR           ��              READ            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��              COUNT_R           ��           count of bytes actually read       Axis                AXIS_REF  ��                   ~��Y  �   ����           _TCMC_ADSWRITE        
   fbAdsWrite                                FW_AdsWrite    ��              NcCycleCounter            ��              NcCycleCounterAdsEnd            ��              UpdateCounter            ��              NoUpdateCounter            ��           used for timeout detection    state            ��                 NETID            
   T_AmsNetId   ��              PORT            	   T_AmsPort   ��              IDXGRP           ��              IDXOFFS           ��              LEN           ��              SRCADDR           ��              WRITE            ��              TMOUT    �     ��                 BUSY            ��              ERR            ��              ERRID           ��                 Axis                AXIS_REF  ��                   ~��Y  �   ����           _TCMCGLOBAL     	      Axis                 _ST_NCADS_Axis   ��       A    IDXGRP and IDXOFFS constants of axis parameter/status/functions    Table                _ST_NCADS_Table   ��       B    IDXGRP and IDXOFFS constants of table parameter/status/functions     NCPORT_TCNCCAMMING_TABLEFUNCTION    �     ��       	    timeout    tTargetPosTimeOut    p     ��       T    20050128 KSt - changed from 5 sec to 6 sec to be later than a NC PEH error (5 sec)    tADSTimeOut    �     ��              tStopMonitoringTimeOut    d      ��       C    20111208 KSt - new for stop monitoring (axis in standstill window    NCTOPLC_FEEDBACK_MAXWAITCYCLES    
      ��       \    maximum number of PLC cycles to wait for a cyclic feedback in NcToPlc after an ADS command    fbADSRDDEVINFO        
                ADSRDDEVINFO    ��               DeviceVersion            ��!                 NCPORT_TCMC    �     ��       (    20110511 type changed from INT to UINT    NCPORT_TCMC_COUPLING    �     ��       6    used with all axis coupling commands - 12.7.2006 KSt    NCNETID_TCMC           ''    
   T_AmsNetId   ��              NCPORT_TCMC_CAM    �     ��       (    20110511 type changed from INT to UINT    NCNETID_TCMC_CAM           ''    
   T_AmsNetId   ��              NCPORT_TCMC_SUPERPOSITION    �     ��	           20140930 KSt added       NcDeviceInfoTcMainVersion           ��              NcDeviceInfoTcSubVersion           ��              NcDeviceInfoNcDriverVersion           ��              NcDeviceInfoNcVersion           ��              NcDeviceInfoNcName               ��                       ~��Y  �   ����           F_AXISCAMDATAQUEUED            
   StateDWord           ��
                 F_AxisCamDataQueued                                      ~��Y  �    ����           F_AXISCAMSCALINGPENDING            
   StateDWord           ��                 F_AxisCamScalingPending                                      ~��Y  �    ����           F_AXISCAMTABLEQUEUED            
   StateDWord           ��
                 F_AxisCamTableQueued                                      ~��Y  �    ����           F_AXISCONTROLLOOPCLOSED            
   StateDWord           ��                 F_AxisControlLoopClosed                                      ~��Y  �    ����           F_AXISEXTERNALLATCHVALID            
   StateDWord           ��                 F_AxisExternalLatchValid                                      ~��Y  �    ����           F_AXISGOTNEWTARGETPOSITION            
   StateDWord           ��
                 F_AxisGotNewTargetPosition                                      ~��Y  �    ����           F_AXISHASBEENSTOPPED            
   StateDWord           ��                 F_AxisHasBeenStopped                                      ~��Y  �    ����           F_AXISHASEXTSETPOINTGEN            
   StateDWord           ��                 F_AxisHasExtSetPointGen                                      ~��Y  �    ����           F_AXISHASJOB            
   StateDWord           ��                 F_AxisHasJob                                      ~��Y  �    ����           F_AXISINERRORSTATE            
   StateDWord           ��                 F_AxisInErrorState                                      ~��Y  �    ����           F_AXISINPOSITIONWINDOW            
   StateDWord           ��                 F_AxisInPositionWindow                                      ~��Y  �    ����           F_AXISINPROTECTEDMODE            
   StateDWord           ��                 F_AxisInProtectedMode                                      ~��Y  �    ����           F_AXISINPTPMODE            
   StateDWord           ��
                 F_AxisInPTPmode                                      ~��Y  �    ����           F_AXISIODATAISINVALID            
   StateDWord           ��                 F_AxisIoDataIsInvalid                                      ~��Y  �    ����           F_AXISISATTARGETPOSITION            
   StateDWord           ��                 F_AxisIsAtTargetPosition                                      ~��Y  �    ����           F_AXISISCALIBRATED            
   StateDWord           ��                 F_AxisIsCalibrated                                      ~��Y  �    ����           F_AXISISCALIBRATING            
   StateDWord           ��                 F_AxisIsCalibrating                                      ~��Y  �    ����           F_AXISISCOMPENSATING            
   StateDWord           ��                 F_AxisIsCompensating                                      ~��Y  �    ����           F_AXISISCOUPLED               nCoupleState           ��                 F_AxisIsCoupled                                      ~��Y  �    ����           F_AXISISMOVING            
   StateDWord           ��                 F_AxisIsMoving                                      ~��Y  �    ����           F_AXISISMOVINGBACKWARDS            
   StateDWord           ��                 F_AxisIsMovingBackwards                                      ~��Y  �    ����           F_AXISISMOVINGENDLESS            
   StateDWord           ��                 F_AxisIsMovingEndless                                      ~��Y  �    ����           F_AXISISMOVINGFORWARD            
   StateDWord           ��                 F_AxisIsMovingForward                                      ~��Y  �    ����           F_AXISISNOTMOVING            
   StateDWord           ��                 F_AxisIsNotMoving                                      ~��Y  �    ����           F_AXISISREADY            
   StateDWord           ��                 F_AxisIsReady                                      ~��Y  �    ����           F_AXISJOBPENDING            
   StateDWord           ��
                 F_AxisJobPending                                      ~��Y  �    ����           F_AXISMOTIONCOMMANDSLOCKED            
   StateDWord           ��                 F_AxisMotionCommandsLocked                                      ~��Y  �    ����           F_AXISPHASINGACTIVE            
   StateDWord           ��                 F_AxisPhasingActive                                      ~��Y  �    ����           F_AXISREACHEDCONSTANTVELOCITY            
   StateDWord           ��                 F_AxisReachedConstantVelocity                                      ~��Y  �    ����           F_GETVERSION_TCMC2               nVersionElement           ��                 F_GetVersion_TcMC2                                     ~��Y  �    ����           MC_ABORTSUPERPOSITION           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              fbOnTrigger                R_TRIG    ��           
   fbADSwrite                          ADSWRITE    ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��                 Execute            ��           Starts touch probe recording       Done            ��           move completed    Busy            ��       "    function block is currently Busy    Error            ��       6    Signals that error has occured within Function Block    ErrorID           ��	           Error identification       Axis                AXIS_REF  ��       f    Identifies the axis of which the position should be recorded at a defined event at the trigger input         ~��Y  �    ����           MC_ABORTTRIGGER           ADSbusy             ��           
   fbADSwrite                          ADSWRITE    ��              OLDADSINTERFACE         ` ��       A    temporary flag to test old and new NC ADS touch probe interface    LatchID         ` ��              fbOnTrigger                R_TRIG ` ��                 Execute            ��
           B       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B    TriggerInput                       TRIGGER_REF  ��           E         ~��Y  �    ����           MC_ABORTTRIGGER_V2_00           ADSbusy             ��           
   fbADSwrite                          ADSWRITE    ��              i            ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��              LatchID         ` ��              fbOnTrigger                R_TRIG ` ��              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation ` ��                 Execute            ��
           B       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B    TriggerInput                       TRIGGER_REF  ��           E         ~��Y  �    ����           MC_BACKLASHCOMPENSATION           InternalEnable             ��&            trick for internal FB handling    state            ��'              GetThisTaskIndex                GETCURTASKINDEX    ��(           	   CycleTime                         ��)           task cycle time [s]    fbCalcBacklashCorrection                                    !   _FB_PositionCorrectionTableLookup    ��*       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedBacklashCorrection                MC_PositionCorrectionLimiter    ��+       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcBacklashCorrOut                    ST_McOutputs    ��,              FeedBacklashCorrOut                    ST_McOutputs    ��-              ReadParameter                MC_ReadParameter    ��.           	   iBacklash                         ��/              InternalAcceleration                         ��0       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalBacklashValue                         ��1       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             ��2       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]    stPosCompParameter       w   
								( MinPosition := -1.0E+12, MaxPosition :=1.0E+12, NoOfTableElements :=2, Direction := WorkDirectionNegative )       ��m�   -1.0E+12    ��mB   1.0E+12            WorkDirectionBoth       E_WorkDirection         %   ST_PositionCompensationTableParameter    ��4              stPosCompTable   	                   #   ST_PositionCompensationTableElement   o   
								( Position := -1.0E+12,	Compensation := 0.0 ),
								( Position := +1.0E+12,	Compensation := 0.0 )                 ��m�   -1.0E+12            0.0              ��mB   1.0E+12            0.0    ��7                 Enable            ��       *    switch to activate backlash compensation    Backlash    3t�<{�   1.0E3073t�<{�   ��       ~    signed backlash value [mm] (when using default value the internal nc backlash value will be read by ADS and used in this FB)    CompensationInPositiveDirection            ��       @    compensation is just working in the selected working direction    Ramp                        ��       �    velocity limit for feeded backlash compensation (constant velocity and linear position sub profile for backlash compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode   ��       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_BacklashCompensationOptions   ��       $    optional parameters (NOT USED YET)       Enabled            ��              Busy            ��              Error            ��               ErrorID           ��!              CurrentBacklash                        ��"       $    current actual backlash value [mm]    Limiting            ��#       >    function block is currently limiting the Backlash Correction       Axis                Axis_Ref  ��                   ~��Y  �   ����           MC_EXTSETPOINTGENDISABLE           LastExecutionResult                  _ST_FunctionBlockResults    ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��              ADSbusy             ��           
   fbADSwrite                          ADSWRITE    ��              fbOnTrigger                R_TRIG ` ��              TimerStateFeedback                TON ` ��                 Execute            ��                 Done            ��	              Busy            ��
              Error            ��              ErrorID           ��              Enabled            ��                 Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_EXTSETPOINTGENENABLE           LastExecutionResult                  _ST_FunctionBlockResults    ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��              ADSbusy             ��              sExtSetPointGen                _ST_TcNC_SetPos    ��           
   fbADSwrite                          ADSWRITE    ��              fbOnTrigger                R_TRIG ` ��              TimerStateFeedback                TON ` ��                 Execute            ��              Position                        ��              PositionType               E_PositionType   ��                 Done            ��              Busy            ��              Error            ��              ErrorID           ��              Enabled            ��                 Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_EXTSETPOINTGENFEED           GetTaskIndex                GETCURTASKINDEX    ��                 Position                        ��              Velocity                        ��              Acceleration                        ��           	   Direction           ��	                 MC_ExtSetPointGenFeed                                Axis                AXIS_REF  ��                   ~��Y  �    ����        	   MC_GEARIN           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��           
   fbAdsWrite                          ADSWRITE    ��              sCouple                      _ST_TcNC_CoupleSlave    ��               fbOptGearInDyn                MC_GearInDyn    ��!              fbOnTrigger                R_TRIG ` ��%              TimerStateFeedback                TON ` ��&                 Execute            ��           B    RatioNumerator          �?   1      �?   ��
       %    changed from INT (PLCopen) to LREAL    RatioDenominator          ��           	MasterValueSource :	MC_SOURCE;    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options               ST_GearInOptions   ��           V       InGear            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E       Master                AXIS_REF  ��           B    Slave                AXIS_REF  ��           B         ~��Y  �    ����           MC_GEARINDYN           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��               iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��!           	   iSubState            ��"           
   fbAdsWrite                          ADSWRITE    ��#           	   fbAdsRead                          ADSREAD    ��$              sCouple                      _ST_TcNC_CoupleSlave    ��%              v_max                         ��&              pa_limit                         ��'           	   WasInGear             ��(              iAcceleration                      ` ��,              TimerStateFeedback                TON ` ��-                 Enable            ��           	   GearRatio          �?   1.0      �?   ��              Acceleration                        ��              Deceleration                        ��       
    not used    Jerk                        ��       
    not used 
   BufferMode               MC_BufferMode   ��           E    Options               ST_GearInDynOptions   ��           V       InGear            ��              Busy            ��              Active            ��              CommandAborted            ��              Error            ��              ErrorID           ��                 Master                AXIS_REF  ��
              Slave                AXIS_REF  ��                   ~��Y  �    ����           MC_GEARINMULTIMASTER           InGear2             ��%       +    new internal feedback flag 2015-10-19 FAp    ADSbusy             ��&              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��'           
   fbAdsWrite                          ADSWRITE    ��(              sCouple                           _ST_TcNC_CoupleSlaveMultiMaster    ��)           	   sCoupleV2                                  _ST_TcNC_CoupleSlaveMultiMaster2    ��*              LastExecutionResult                  _ST_FunctionBlockResults    ��+           	   IsCoupled             ��,              TimerStateFeedback                TON ` ��0              iAdvancedSlaveDynamics          ` ��1              iAcceleration                      ` ��2              iDeceleration                      ` ��3           just used in version 2 mode    iJerk                      ` ��4           just used in version 2 mode 	   WasInGear          ` ��5              ParameterChanged          ` ��6              i         ` ��7       %    runtime optimization 2015-10-19 FAp 
   InGear2Cnt         ` ��8       %    runtime optimization 2015-10-19 FAp    LastNcCycleCounter         ` ��9       %    runtime optimization 2015-10-19 FAp 
      Enable            ��           
   GearRatio1          �?   1.0      �?   ��           
   GearRatio2          �?   1.0      �?   ��           
   GearRatio3          �?   1.0      �?   ��           
   GearRatio4          �?   1.0      �?   ��              Acceleration                        ��              Deceleration                        ��       5    just used in version 2 mode (AdvancedSlaveDynamics)    Jerk                        ��       5    just used in version 2 mode (AdvancedSlaveDynamics) 
   BufferMode               MC_BufferMode   ��           E    Options                ST_GearInMultiMasterOptions   ��           V       InGear            ��              Busy            ��              Active            ��              CommandAborted            ��               Error            ��!              ErrorID           ��"                 Master1                AXIS_REF  ��
              Master2                AXIS_REF  ��              Master3                AXIS_REF  ��              Master4                AXIS_REF  ��              Slave                AXIS_REF  ��                   ~��Y  �    ����        
   MC_GEAROUT           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��           
   fbAdsWrite                          ADSWRITE    ��              fbOnTrigger                R_TRIG ` ��              TimerStateFeedback                TON ` ��                 Execute            ��           B    Options               ST_GearOutOptions   ��           V       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E       Slave                AXIS_REF  ��	           B         ~��Y  �    ����           MC_HALT           LastExecutionResult                  _ST_FunctionBlockResults    ��$              ADSbusy             ��%              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��&              CmdNo            ��'                 Execute            ��           B    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options                  ST_MoveOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��            B    ErrorID           ��!           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_HOME           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��            	   iSubState            ��!              fbAdsWriteCmd                          ADSWRITE    ��"              fbAdsWriteRefPos                          ADSWRITE    ��#              fbAdsReadRefPos                          ADSREAD    ��$              ReferenceFlagValue            ��%              fbSetPosition                MC_SetPosition    ��&              NcHomePosition                         ��'           	   fbTrigger                R_TRIG ` ��+           	   fbTimeOut                TON ` ��,                 Execute            ��           B    Position    3t�<{�   1.0E3073t�<{�   ��           
   HomingMode               MC_HomingMode   ��           V 
   BufferMode               MC_BufferMode   ��           E    Options               ST_HomingOptions   ��           V    bCalibrationCam            ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �   ����           MC_JOG           state            ��              LastExecutionResult                  _ST_FunctionBlockResults    ��           
   StateDWord             ��              ExecuteMoveVelocity          ` ��               MoveVelocity                MC_MoveVelocity ` ��!              MoveVelocityOut                    ST_McOutputs ` ��"           	   Direction               MC_Direction ` ��#              ExecuteHalt          ` ��%              Halt                              MC_Halt ` ��&              HaltOut                    ST_McOutputs ` ��'              ExecuteMoveAbsolute          ` ��)              MoveAbsolute                MC_MoveAbsolute ` ��*              MoveAbsoluteOut                    ST_McOutputs ` ��+              ExecuteMoveRelative          ` ��-              MoveRelative                MC_MoveRelative ` ��.              MoveRelativeOut                    ST_McOutputs ` ��/              JogMove        2                                                        _FB_MoveUniversalGeneric ` ��1              LastJogMoveResult                  _ST_FunctionBlockResults ` ��2              ExecuteJogMove          ` ��3           	   StartType               _E_TCNC_StartPosType ` ��4           
   JogMoveOut                    ST_McOutputs ` ��5              JogEnd          ` ��7              TargetPosition                      ` ��8              modulo                      ` ��9              
   JogForward            ��              JogBackwards            ��              Mode            	   E_JogMode   ��	              Position                        ��
              Velocity                        ��              Acceleration                        ��              Deceleration                        ��              Jerk                        ��          	BufferMode		:	MC_BufferMode;      Done            ��              Busy            ��              Active            ��              CommandAborted            ��              Error            ��              ErrorID           ��                 Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_MOVEABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��              CmdNo            ��                 Execute            ��           B    Position                        ��	           B    Velocity                        ��
           E    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options                  ST_MoveOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_MOVEADDITIVE           LastExecutionResult                  _ST_FunctionBlockResults    ��%              ADSbusy             ��&              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��'              CmdNo            ��(                 Execute            ��           B    Distance                        ��           B    Velocity                        ��           E    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options                  ST_MoveOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��            E    Error            ��!           B    ErrorID           ��"           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_MOVECONTINUOUSABSOLUTE           LastExecutionResult                  _ST_FunctionBlockResults    ��+              ADSbusy             ��,              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��-              CmdNo            ��.           	      Execute            ��           B    Position                        ��           B    Velocity                        ��           B    EndVelocity                        ��           B    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options                  ST_MoveOptions   ��                  InEndVelocity            ��#           B    Busy            ��$           E    Active            ��%           E    CommandAborted            ��&           E    Error            ��'           B    ErrorID           ��(           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_MOVECONTINUOUSRELATIVE           LastExecutionResult                  _ST_FunctionBlockResults    ��*              ADSbusy             ��+              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��,              CmdNo            ��-           	      Execute            ��           B    Distance                        ��           B    Velocity                        ��           B    EndVelocity                        ��           B    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options                  ST_MoveOptions   ��                 InEndVelocity            ��"           B    Busy            ��#           E    Active            ��$           E    CommandAborted            ��%           E    Error            ��&           B    ErrorID           ��'           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_MOVEMODULO           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��          	StartType: UDINT;	   StartType               _E_TcNC_StartPosType    ��       #    20110511 KSt type changed for TC3    CmdNo            ��              TriggerExecute                R_TRIG ` ��#           	      Execute            ��              Position                        ��              Velocity                        ��	              Acceleration                        ��
              Deceleration                        ��              Jerk                        ��           	   Direction               MC_Direction   ��           E 
   BufferMode               MC_BufferMode   ��           E    Options                  ST_MoveOptions   ��                 Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_MOVERELATIVE           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��              CmdNo            ��                 Execute            ��	           B    Distance                        ��           B    Velocity                        ��           E    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E 
   BufferMode               MC_BufferMode   ��           E    Options                  ST_MoveOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_MOVESUPERIMPOSED     
      LastExecutionResult                  _ST_FunctionBlockResults    ��1              ADSbusy             ��2              CompensationStarted             ��3              AxisHasJobAtStartOfCompensation             ��4       ,    HasJob flag when starting the compensation !   AxisIsMovingAtStartOfCompensation             ��5       ,    Moving flag when starting the compensation    iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��6              fbAdsReadWrite                          
   ADSRDWRTEX    ��7              sNcCompensation                      _ST_TcNC_Compensation2    ��8           	   fbTrigger                R_TRIG ` ��<           	   fbTimeOut                TON ` ��=           
      Execute            ��           B    Mode               E_SuperpositionMode   ��           V    Distance                        ��           B    VelocityDiff                        ��           E    Acceleration                        ��           E    Deceleration                        ��           E    Jerk                        ��           E    VelocityProcess                        ��           V    Length                        ��           V    Options               ST_SuperpositionOptions   ��           V       Done            ��!           B    Busy            ��"           E    Active            ��#           E    CommandAborted            ��$           E    Error            ��%           B    ErrorID           ��&           E    Warning            ��(           V 	   WarningId           ��)           V    ActualVelocityDiff                        ��*           V    ActualDistance                        ��+           V    ActualLength                        ��,           V    ActualAcceleration                        ��-           V    ActualDeceleration                        ��.           V       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_MOVEVELOCITY           LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��              MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��              CmdNo            ��                 Execute            ��           B    Velocity                        ��	           E    Acceleration                        ��
           E    Deceleration                        ��           E    Jerk                        ��           E 	   Direction           MC_Positive_Direction       MC_Direction   ��           E 
   BufferMode               MC_BufferMode   ��           E    Options                  ST_MoveOptions   ��           V    
   InVelocity            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_OVERRIDEFILTER           bFirstCycle            ��              bThresholdActive            ��              InternalOverrideValueRaw            ��              LastOverrideValueRaw    ��      ��              OverrideRange            ��              fbTimer                TON ` ��                 OverrideValueRaw           ��           parameter    LowerOverrideThreshold           ��           0...32767 digits    UpperOverrideThreshold    �     ��           0...32767 digits    OverrideSteps    �      ��           200 steps => 0.5 percent    OverrideRecoveryTime    �      ��	           150 ms       OverrideValueFiltered           ��           0...1000000 counts    OverridePercentFiltered                        ��           0...100 %    Error            ��              ErrorID           ��                       ~��Y  �    ����           MC_POSITIONCORRECTIONLIMITER           GetThisTaskIndex                GETCURTASKINDEX    ��(           	   CycleTime                         ��)              MaxDeltaVelocity                         ��*              MaxDeltaPosition                         ��+              DeltaCorrection                         ��,              InitialDeltaCorrection                         ��-              EndOfEnablePhase             ��.              iCorrectionMode               E_AxisPositionCorrectionMode    ��/              state            ��0              NumberOfCycles            ��1              DeltaCorrectionPerCycle                         ��2              LastPositionCorrectionValue                         ��3                 Enable            ��              PositionCorrectionValue                        ��              CorrectionMode               E_AxisPositionCorrectionMode   ��              Acceleration                        ��              CorrectionLength                        ��       8    optional length - comparable to 'superposition length'       Busy            ��"              Error            ��#              ErrorID           ��$              Limiting            ��%       >    function block is currently limiting the Position Correction       Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_POWER           EnableTimeout                TON ` ��              EnableOffOnDelay                TP ` ��          	iOverride: DINT;	   iOverride         ` ��        $    20110511 KSt type adaption for TC3       Enable            ��           B    Enable_Positive            ��           E    Enable_Negative            ��           E    Override          Y@   100.0      Y@   ��       )    in percent - Beckhoff proprietary input 
   BufferMode               MC_BufferMode   ��           V       Status            ��           B    Busy            ��           V    Active            ��           V    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��
           B         ~��Y  �    ����           MC_POWERSTEPPER     $      fbPower                            MC_Power    ��           	   ErrorCode            ��              fbWriteErrCode                          ADSWRITE    ��           	   nRefState            ��              fbWriteNonRef                          ADSWRITE    ��              fbReadParams                          ADSREAD    ��              fbWriteInstOvr                          ADSWRITE    ��              bAdsInitDone             ��           	   bOverTemp             ��           
   rtOverTemp                R_TRIG    ��               bUnderVoltage             ��!              rtUnderVoltage                R_TRIG    ��"           
   bOpenLoopA             ��#              rtOpenLoopA                R_TRIG    ��$           
   bOpenLoopB             ��%              rtOpenLoopB                R_TRIG    ��&              bOverCurrentA             ��'              rtOverCurrentA                R_TRIG    ��(              bOverCurrentB             ��)              rtOverCurrentB                R_TRIG    ��*              rtStallError                R_TRIG    ��+           	   bOldState             ��,              bLagFilterInit             ��.              tonLagFilter                TON    ��/              tonNoLagFilter                TON    ��0              wState2            ��2              nAngle            ��3           	   nOldAngle            ��4           	   AngleDiff            ��5              bInErrorState             ��6           	   nParamIdx            ��8              bParamEnabled             ��9           	   fLagLimit                         ��:           
   fLagFilter                         ��;              nTries            ��<              tTimeOut                TON    ��=                 Enable            ��              Enable_Positive            ��              Enable_Negative            ��              Override          Y@   100.0      Y@   ��	           in percent    DestallParams                    ST_PowerStepperStruct   ��
           	   KL_Status           ��           
   KL_Status2           ��                 Status            ��              Error            ��              ErrorID           ��              Stalled            ��           
   StallError            ��                 Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_READACTUALPOSITION               Enable            ��           B       Valid            ��
           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E    Position                        ��           B       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_READACTUALVELOCITY               Enable            ��           B       Valid            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E    ActualVelocity                        ��           B       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_READAPPLICATIONREQUEST           TriggerExecute                R_TRIG    ��              state           STATE_INITIALIZATION       _E_TcMC_STATES    ��           	   fbAdsRead                          ADSREAD    ��                 Execute            ��                 Done            ��              Busy            ��              Error            ��              ErrorID           ��              Request            ��           application request bit [0/1]    RequestType           ��           application request TYPE/ID       ApplicationRequest                    ST_NcApplicationRequest  ��              Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_READAXISCOMPONENTS           TriggerExecute                R_TRIG    ��              state           STATE_INITIALIZATION       _E_TcMC_STATES    ��           	   fbAdsRead                          ADSREAD    ��                 Execute            ��                 Done            ��
              Busy            ��              Error            ��              ErrorID           ��                 AxisComponents                  ST_AxisComponents  ��              Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_READAXISERROR               Enable            ��
           B       Valid            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           B    AxisErrorID           ��           B       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_READBOOLPARAMETER           ADSbusy             ��              fbReadWriteParameter                                      _FB_ReadWriteParameter    ��           	   nParatype               _E_ParameterType ` ��              dwValue         ` ��              lrValue                      ` ��              bStarted          ` ��           	   fbTrigger                R_TRIG ` ��                 Enable            ��           B    ParameterNumber           ��           B    ReadMode           ReadMode_Once    
   E_ReadMode   ��	           Beckhoff proprietary input       Valid            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E    Value            ��           B       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_READDRIVEADDRESS           state           STATE_INITIALIZATION       _E_TcMC_STATES    ��              TriggerExecute                R_TRIG    ��           	   fbAdsRead                          ADSREAD    ��           
   readBuffer   	  ?                        ��       H    2013-04-03 KSt - new data structure - size changed from 10 to 64 bytes    i         ` ��              pDword               ` ��                 Execute            ��                 Done            ��
              Busy            ��              Error            ��              ErrorID           ��              DriveAddress                          ST_DriveAddress   ��                 Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_READPARAMETER           ADSbusy             ��              fbReadWriteParameter                                      _FB_ReadWriteParameter    ��           	   nParatype               _E_ParameterType ` ��              dwValue         ` ��              bValue          ` ��              bStarted          ` ��           	   fbTrigger                R_TRIG ` ��                 Enable            ��           B    ParameterNumber           ��           B    ReadMode           ReadMode_Once    
   E_ReadMode   ��	           Beckhoff proprietary input       Valid            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E    Value                        ��           B       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_READPARAMETERSET           TriggerExecute                R_TRIG    ��              state           STATE_INITIALIZATION       _E_TcMC_STATES    ��           	   fbAdsRead                          ADSREAD    ��              SizeofPayloadData            ��                 Execute            ��                 Done            ��              Busy            ��              Error            ��              ErrorID           ��              	   Parameter         E                                                                           ST_AxisParameterSet  ��              Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_READSTATUS               Enable            ��           B       Valid            ��
           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E 	   ErrorStop            ��           B    Disabled            ��           B    Stopping            ��           B 
   StandStill            ��           B    DiscreteMotion            ��           B    ContinuousMotion            ��           B    SynchronizedMotion            ��           E    Homing            ��           E    ConstantVelocity            ��           V    Accelerating            ��           V    Decelerating            ��           V    Status        1                                                       ST_AxisStatus   ��           V       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_READSTOPINFO           TriggerExecute                R_TRIG    ��              state           STATE_INITIALIZATION       _E_TcMC_STATES    ��              stStopInfoRequest                _ST_TcNC_StopInfoRequest    ��              stStopInfoResponse                _ST_TcNC_StopInfoResponse    ��              fbAdsReadWrite                            ADSRDWRT    ��                 Execute            ��           B    Deceleration                        ��           E    Jerk                        ��           E       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E    StopDistance                        ��       $    distance required to stop the axis    StopTime                        ��            time required to stop the axis       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_RESET           ADSbusy             ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��              LastExecutionResult                  _ST_FunctionBlockResults    ��           
   fbAdsWrite                                _TcMC_ADSWRITE ` ��           2010-05-31 KSt    fbOnTrigger                R_TRIG ` ��                 Execute            ��           B       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           B       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_SETACCEPTBLOCKEDDRIVESIGNAL               Enable            ��                 MC_SetAcceptBlockedDriveSignal                                Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_SETENCODERSCALINGFACTOR           ADSbusy             ��              stSetEncoderSaclingFactor                  _ST_TcNC_SetEncoderSaclingFactor    ��               iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��!           
   fbAdsWrite                          ADSWRITE    ��"              fbOnTrigger                R_TRIG ` ��&                 Execute            ��	           B    ScalingFactor                        ��
           B    Mode               E_SetScalingFactorMode   ��           E    Options                ST_SetEncoderScalingOptions   ��           V       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_SETOVERRIDE               Enable            ��           B 	   VelFactor          �?   1.0      �?   ��           1.0 = 100% 	   AccFactor          �?   1.0      �?   ��           1.0 = 100% 
   JerkFactor          �?   1.0      �?   ��           1.0 = 100%       Enabled            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��                   ~��Y  �    ����           MC_SETPOSITION           ADSbusy             ��)              stSetPos                   _ST_TcNC_SetPosOnTheFly    ��*              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��+           
   fbAdsWrite                          ADSWRITE    ��,              fbOnTrigger                R_TRIG ` ��0                 Execute            ��           B    Position                        ��           B    Mode            ��           E    Options                 ST_SetPositionOptions   ��           V       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_STOP     
      LastExecutionResult                  _ST_FunctionBlockResults    ��              ADSbusy             ��               MoveGeneric        2                                                        _FB_MoveUniversalGeneric    ��!              ReleaseLock                          ADSWRITE    ��"              CmdNo            ��#              AxisMotionCommandsLocked             ��$              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��%           
   NoJobTimer                TON    ��&              fbOnTrigger                R_TRIG ` ��*              CounterMotionCommandsLocked         ` ��+                 Execute            ��           B    Deceleration                        ��           E    Jerk                        ��           E    Options                  ST_MoveOptions   ��           V       Done            ��           B    Busy            ��           E    Active            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����        !   MC_TABLEBASEDPOSITIONCOMPENSATION           InternalEnable             ��#            trick for internal FB handling    state            ��$              GetThisTaskIndex                GETCURTASKINDEX    ��%           	   CycleTime                         ��&           task cycle time [s]    fbCalcPositionCorrection                                    !   _FB_PositionCorrectionTableLookup    ��'       4    based on old 'FB_PositionCompensation' in TcNc.lib    fbFeedPositionCorrection                                    MC_PositionCorrectionLimiter    ��(       N    s.TcMC2.lib (original based on old 'FB_WritePositionCorrection' in TcNc.lib)    CalcPosCorrOut                    ST_McOutputs    ��)              FeedPosCorrOut                    ST_McOutputs    ��*              InternalAcceleration                         ��+       E    input of FB 'MC_PositionCorrectionLimiter': 'Acceleration' [mm/s^2]    InternalCorrectionValue                         ��,       M    output of FB 'MC_PositionCorrectionLimiter': 'PositionCorrectionValue' [mm]    InternalLimitingActive             ��-       ?    output of FB 'MC_PositionCorrectionLimiter': 'Limiting' [0/1]       Enable            ��       )    rising edge triggers initialize routine    pTable              #   ST_PositionCompensationTableElement        ��       R    pointer to equidistant table with strictly monotonous increasing position values 	   TableSize           ��       +    size of data in bytes related to 'pTable'    TableParameter                %   ST_PositionCompensationTableParameter   ��       1    position compensation table parameter structure    Ramp                        ��       �    velocity limit for feeded position compensation (constant velocity and linear position sub profile for position compensation) [mm/s] (default:=0.0)    DisableMode               E_DisableMode   ��       S    disable mode defines whow to react in case of disabling: (0)=HOLD, (1)=RESET, ...    Options               ST_PositionCompensationOptions   ��       $    optional parameters (NOT USED YET)       Enabled            ��              Busy            ��              Error            ��              ErrorID           ��              CurrentCorrection                        ��       /    current actual position correction value [mm]    Limiting            ��        >    function block is currently limiting the Position Correction       Axis                Axis_Ref  ��                   ~��Y  �    ����           MC_TOUCHPROBE           ADSbusy             ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��              TouchProbeValid   	                         ��            valid state of probes 1..4    TouchProbeActive   	                         ��!       !    activation state of probes 1..4    TouchProbeValue   	                                      ��"       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      ��#       +    last recorded modulo value of probes 1..4    TouchProbeInactiveCounter   	                         ��$       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    OLDADSINTERFACE         ` ��(       A    temporary flag to test old and new NC ADS touch probe interface 
   fbADSwrite                          ADSWRITE ` ��+              fbAdsReadValid                          ADSREAD ` ��,              fbAdsReadValue                          ADSREAD ` ��-              fbAdsReadState                          ADSREAD ` ��.              fbAdsReadModulo                          ADSREAD ` ��/              TimerAdsReadState                TON ` ��0              RtrigPlcEvent                R_TRIG ` ��1              FtrigPlcEvent                F_TRIG ` ��2              fbOnTrigger                R_TRIG ` ��3              LatchID         ` ��4              Restart          ` ��5       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` ��6       *    probe value is inside the defined window    ModuloFactor                      ` ��7       &    axis' modulo factor read from the NC    InitDone          ` ��8       %    initialization on start-up finished    IndexOffset         ` ��9              i         ` ��:                 Execute            ��           B 
   WindowOnly            ��           E    FirstPosition                        ��           E    LastPosition                        ��           E       Done            ��           B    Busy            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E    RecordedPosition                        ��           B       Axis                AXIS_REF  ��           B    TriggerInput                       TRIGGER_REF  ��           B         ~��Y  �    ����           MC_TOUCHPROBE_V2_00            ADSbusy             ��              iState           STATE_INITIALIZATION       _E_TcMC_STATES    ��              ExternalLatchValid             ��              TouchProbeValid   	                         ��           valid state of probes 1..4    TouchProbeActive   	                         ��       !    activation state of probes 1..4    TouchProbeValue   	                                      ��       $    last recorded value of probes 1..4    TouchProbeModuloValue   	                                      ��       +    last recorded modulo value of probes 1..4    TouchProbeCounter   	                         ��       ,    last recorded value counter of probes 1..4    TouchProbeInactiveCounter   	                         ��       O    number of cycles where the probes 1..4 where inactive (activation monitoring)    stTouchProbeActivation                   _ST_TcNc_TouchProbeActivation    ��               stTouchProbeStatusRequest                 _ST_TcNc_TouchProbeStatusRequest    ��!              stTouchProbeStatusResponse                      !   _ST_TcNc_TouchProbeStatusResponse    ��"              stTouchProbeDeactivation                 _ST_TcNc_TouchProbeDeactivation    ��#              LastTouchProbeValue   	                                   ` ��'       $    last recorded value of probes 1..4    LastTouchProbeCounter   	                      ` ��(       ,    last recorded value counter of probes 1..4 
   fbADSwrite                          ADSWRITE ` ��)              fbAdsReadValid                          ADSREAD ` ��*              fbAdsReadValue                          ADSREAD ` ��+              fbAdsReadState                          ADSREAD ` ��,              fbAdsReadModulo                          ADSREAD ` ��-              fbAdsReadLatchStatus                          
   ADSRDWRTEX ` ��.              TimerAdsReadState                TON ` ��/              RtrigPlcEvent                R_TRIG ` ��0              FtrigPlcEvent                F_TRIG ` ��1              fbOnTrigger                R_TRIG ` ��2              Restart          ` ��3       H    restart probe sequence when the trigger was outside the defined window    InWindow          ` ��4       *    probe value is inside the defined window    ModuloFactor                      ` ��5       &    axis' modulo factor read from the NC    InitDone          ` ��6       %    initialization on start-up finished    IndexOffset         ` ��7              iTriggerInput                      TRIGGER_REF ` ��8           B    i         ` ��9                 Execute            ��           B 
   WindowOnly            ��	           E    FirstPosition                        ��
           E    LastPosition                        ��           E       Done            ��           B    Busy            ��           E    CommandAborted            ��           E    Error            ��           B    ErrorID           ��           E    RecordedPosition                        ��           B    RecordedData                  MC_TouchProbeRecordedData   ��           V       Axis                AXIS_REF  ��           B    TriggerInput                       TRIGGER_REF  ��           B         ~��Y  �    ����           MC_WRITEBOOLPARAMETER           ADSbusy             ��              fbReadWriteParameter                                      _FB_ReadWriteParameter    ��           	   nParatype               _E_ParameterType ` ��              dwValue         ` ��              lrValue                      ` ��           	   fbTrigger                R_TRIG ` ��                 Execute            ��           B    ParameterNumber           ��           B    Value            ��	           B       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����           MC_WRITEPARAMETER           ADSbusy             ��              fbReadWriteParameter                                      _FB_ReadWriteParameter    ��           	   nParatype               _E_ParameterType ` ��              dwValue         ` ��              bValue          ` ��           	   fbTrigger                R_TRIG ` ��                 Execute            ��           B    ParameterNumber           ��           B    Value                        ��	           B       Done            ��           B    Busy            ��           E    Error            ��           B    ErrorID           ��           E       Axis                AXIS_REF  ��           B         ~��Y  �    ����    q   C:\TwinCAT\PLC\LIB\STANDARD.LIB @                                                                                          CONCAT               STR1               ��              STR2               ��                 CONCAT                                         t�66  �   ����           CTD           M             ��           Variable for CD Edge Detection      CD            ��           Count Down on rising edge    LOAD            ��           Load Start Value    PV           ��           Start Value       Q            ��           Counter reached 0    CV           ��           Current Counter Value             t�66  �   ����           CTU           M             ��            Variable for CU Edge Detection       CU            ��       
    Count Up    RESET            ��           Reset Counter to 0    PV           ��           Counter Limit       Q            ��           Counter reached the Limit    CV           ��           Current Counter Value             t�66  �   ����           CTUD           MU             ��            Variable for CU Edge Detection    MD             ��            Variable for CD Edge Detection       CU            ��	       
    Count Up    CD            ��
           Count Down    RESET            ��           Reset Counter to Null    LOAD            ��           Load Start Value    PV           ��           Start Value / Counter Limit       QU            ��           Counter reached Limit    QD            ��           Counter reached Null    CV           ��           Current Counter Value             t�66  �   ����           DELETE               STR               ��              LEN           ��              POS           ��                 DELETE                                         t�66  �   ����           F_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             t�66  �   ����           FIND               STR1               ��              STR2               ��                 FIND                                     t�66  �   ����           INSERT               STR1               ��              STR2               ��              POS           ��                 INSERT                                         t�66  �   ����           LEFT               STR               ��              SIZE           ��                 LEFT                                         t�66  �   ����           LEN               STR               ��                 LEN                                     t�66  �   ����           MID               STR               ��              LEN           ��              POS           ��                 MID                                         t�66  �   ����           R_TRIG           M             ��
                 CLK            ��           Signal to detect       Q            ��           Edge detected             t�66  �   ����           REPLACE               STR1               ��              STR2               ��              L           ��              P           ��                 REPLACE                                         t�66  �   ����           RIGHT               STR               ��              SIZE           ��                 RIGHT                                         t�66  �   ����           RS               SET            ��              RESET1            ��                 Q1            ��
                       t�66  �   ����           SEMA           X             ��                 CLAIM            ��	              RELEASE            ��
                 BUSY            ��                       t�66  �   ����           SR               SET1            ��              RESET            ��                 Q1            ��	                       t�66  �   ����           TOF           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with falling edge, resets timer with rising edge    PT           ��           time to pass, before Q is set       Q            ��	       2    is FALSE, PT seconds after IN had a falling edge    ET           ��
           elapsed time             t�66  �   ����           TON           M             ��           internal variable 	   StartTime            ��           internal variable       IN            ��       ?    starts timer with rising edge, resets timer with falling edge    PT           ��           time to pass, before Q is set       Q            ��	       0    is TRUE, PT seconds after IN had a rising edge    ET           ��
           elapsed time             t�66  �   ����           TP        	   StartTime            ��           internal variable       IN            ��       !    Trigger for Start of the Signal    PT           ��       '    The length of the High-Signal in 10ms       Q            ��	           The pulse    ET           ��
       &    The current phase of the High-Signal             t�66  �   ����    R    @                                                                                          AIFILTER           Filter   	  d                        �
              Sum             �              i            �              counter            �              	   vi_Filter            �              n    
      �              	   vo_Filter            �                       
C\g  @    ����           FB_CUTPAPER           iStep            �              rwork                 R_TRIG    �                 work_x           �          x��Ĺ�λ����   work_y           �          y��Ĺ�λ����   work_cylinder           �          ���׵�plc���   work_cmd            �                 work_has_done            �	                       z�gg  @    ����           FB_CYLINDER     
      tonAlarm                    TON    *               tonContinue                    TON    *               iStep            *            	   fTrigWork                 R_TRIG    *           1125��Ϊ��������	   fTrigBase                 R_TRIG    *           1125��Ϊ��������   fTrigSwitch                 R_TRIG    *           1125��Ϊ��������
   AlarmDelay                    TON    *               tonAct                    TON    *               tonBack                    TON    *               tLastCmd    d       *                	   bContinue            *           trueΪ��������   tContinueTime      �?   1   *        (   ��λ�룬�Ӷ�����ʼ��ʱ���ﵽ���ʱ�����   tAlarmDelay      �?   1   *        "   ��λ�룬��ʱ��û�дﵽԤ����������   DiWorkSensor            *           ����ʱ�����Ĵ�����   DiBaseSensor            * 	          ��ʼλ�ô����Ĵ�����      AtAlarm            *        6   �����������������������Զ�������������Ҫ���ڵ���������	   AtBasePos            *           �ڳ�ʼλ	   AtWorkPos            *           �ڹ���λ	   DoWorkPos            *           ��������ף�trueʹ֮����	   DoBasePos            *           ��������ף���������      Act            *           ����������ʹ��   Back            *           ��λ������ʹ��   Switch            *           �л�״̬������ʹ��        ;\g  @    ����           MAIN     $   	   MainState               EM_State                �����򲽣�����������Զ�   bFirstCycle                     
   ��ʼ���õ�   FB_WritePersistentData1        	               FB_WritePersistentData                    tCycleTimer                    TON                    bWrite                         ϵͳ����   tNtDelayReset                    TON                    bReboot                         ����ϵͳ�ı���
   NT_Reboot1                   	   NT_Reboot                ϵͳ�ػ�   NT_Shutdown1                      NT_Shutdown                    tNtDelayShutdown                    TON                 	   bShutdown                         Զ������ӹ�   OpenRemoteDesktop                              NT_StartProcess                    timerHMI                    TON                ����ϵͳʱ��   TimeToBeSet                   
   TIMESTRUCT                    bSetTime                             NT_SetLocalTime_1                      NT_SetLocalTime                ϵͳʱ���ȡ   NT_GetTime1                   
   NT_GetTime                    GetTimeStartDelay                    TON                    TIMESTR1                   
   TIMESTRUCT                    i              !          
(*����ӹ�ʱ����ر���
   rtrigStart                 R_TRIG      1           
   rtrigReset                 R_TRIG      1           	   rtrigStop                 R_TRIG      1              fTrigAutoManulMode                 F_TRIG      2              rTrigAutoManualMode                 R_TRIG      3              tDelayManualMode                    TON      4          ���ֶ�����ʱ
   eStepBuzze              6           
   rTrigBuzze                 R_TRIG      7              tDelayBuzze                    TON      8              LagDistance_ZM                           <              LagDistance_CM                           =              FirstCycle_Step              >              R_TRIGbDriveModeOK                 R_TRIG      ?              tDelay                    TON      @              i_auto_step              B              auto_finished_flag   	                      R_TRIG              C                               ��gg  @    ����        	   PRG_ALARM           i            n              iNc            n              iDr            n              tDelay   	  d                       TON            n              counter            n           
   bDelayFlag             n              tDelayReset                    TON    n	                               �^g  @   ����           PRG_AUTO     G      eRuningStep            u           	   eStopStep            u              trAutoRuning                 R_TRIG    u              tResetAutoSignal                    TON    u          trigers   rTrigGlobalError                 R_TRIG    u
       :   ��Ҫͣ���Ĵ��󣬴������˳��Զ�����λ����󣬿��Լ�������
   rTrigEstop                 R_TRIG    u          ��Ҫͣ����������ɺ���뼱ͣ	   rTrigstop                 R_TRIG    u       "   ��Ҫͣ����ͣ��󣬵��������Լ�����   rTrigSwitchManual                 R_TRIG    u          ��Ҫͣ����ͣ����е��ֶ�
   rTrigStart                 R_TRIG    u          ����
   tStopDelay                    TON    u           
   fbHaltMain                              MC_Halt    u           
   fbMoveMain                                 MC_MoveRelative    u              fTempDistanceInCycle_L             u              fTempDistanceInCycle_R             u              fRecordMainPos             u              iTest400            u              iTest500            u              itest1            u              itest2            u              itest3            u              itest4            u       C   ***************************Modbus_TCP******************************   iXStep1            u               iXStep2            u!              iZStep1            u"              iZStep2            u#              iX2Step1            u%              iX2Step2            u&              iY2Step1            u'              iY2Step2            u(              iRStep1            u*              iRStep2            u+              iRStep3            u,              iRStep4            u-              iHorizontalStep1            u.              iHorizontalStep2            u/              iRotaryStep1            u0              iRotaryStep2            u1              iCollimationStep1            u2              iCollimationStep2            u3              fPos_X_Axis             u5              fPos_Z_Axis             u6              fPos_X2_Axis             u9              fPos_Y2_Axis             u:              fPos_R_Axis             u<              fPos_CollimationAxis             u=              fPos_HorizontalAxis             u@              fPos_RotaryAxis             uA              rPutPermit_Cmd                 R_TRIG    uC              rGetPermit_Cmd                 R_TRIG    uD              iPutStep            uE              iGetStep            uF              tDelayMC_AbsAlarm   	                         TON            uH           
   r_TRIG_Cmd   	                      R_TRIG            uI              bX_Axis_Abs             uK              bX_Axis_Stop             uL              bZ_Axis_Abs             uM              bZ_Axis_Stop             uN              bX2_Axis_Abs             uP              bX2_Axis_Stop             uQ              bY2_Axis_Abs             uR              bY2_Axis_Stop             uS              bR_Axis_Abs             uU              bR_Axis_Stop             uV              bHorizontal_Axis_Abs             uW              bHorizontal_Axis_Stop             uX              bRotary_Axis_Abs             uY              bRotary_Axis_Stop             uZ              bCollimationAxis_Abs             u[              bCollimationAxis_Stop             u\              bR_Axis_Velo             u^              bR_Axis_Stop1             u_                               4�^g  @    ����           PRG_AUTOPREPARATION           iAutoHomeStep            �              i            �              iClearHomeStep            �           
   bClearHome             �          �����ԭ�ź�   rTrig                 R_TRIG    �              bAxisNotMoving             �              tDelay                    TON    �	                               v�_g  @    ����           PRG_AUTOWORK           iGetPaperStep            �              riGetPaper_Cmd                 R_TRIG    �              iCollectStep            �              riCollect_Cmd                 R_TRIG    �              iPutStep            �	           	   riPut_Cmd                 R_TRIG    �
              iCutStep            �           	   riCut_Cmd                 R_TRIG    �              iSetBoxStep            �              riSetBox_Cmd                 R_TRIG    �              tDelay                    TON    �              i_work            �              CutWorkPos_X   	                          �          �ü�ģ��X�Ṥλ   CutWorkPos_Y   	                          �          �ü�ģ��y�Ṥλ   i_cut_list1           �              i_cut_list2           �              i_cut_list3           �              i_cut_list4           �              i_cut_list5           �              b_has_cut_list1             �              b_has_cut_list2             �               b_has_cut_list3             �!              b_has_cut_list4             �"              b_has_cut_list5             �#              x1            �%              x2            �%              x3            �%              x4            �%              x5            �%                               ��gg  @    ����           PRG_CYLINDER           i            2                                �A\g  @    ����        	   PRG_ESTOP           i            �                               �_g  @    ����           PRG_GOHOMETOGETHER           i            �              iPullAxisHomeStep            �              rTrig                 R_TRIG    �              iStep            �              bAxisNotMoving             �              tDelay                    TON    �                               ��cg  @    ����           PRG_INIT           i            �              bNomoreTest             �                               ��_g  @    ����           PRG_IO     	      Filter   	                         TON                       �ź��˲�   MINLeftAngleValue                            MaxLeftAngleValue                            bfirst                           fError                            fAiFilterKp    ��L?   0.8     
              I                           iVoltage                         
   fbAiFilter                     Aifilter                                    �Pg  @    ����           PRG_M_FUNCTION        
   bGearIn_ZM             �              bGearOut_ZM             �                               ��_g  @    ����        
   PRG_MANUAL           i            �              fbJogMaster        '                                             MC_Jog    �              tDancerSetPos                    TON    �              fLeftRollDiam_1             �              fRightRollDiam_1             �	              iStep            �
              iStep1            �           	   rtMoveAbs   	                      R_TRIG            �           	   ftMoveAbs   	                      F_TRIG            �              rtHome1                 R_TRIG    �              rtHome2                 R_TRIG    �              ftHome1                 F_TRIG    �              ftHome2                 F_TRIG    �              rtEnable   	                      R_TRIG            �              ftEnable   	                      F_TRIG            �              Rtrig_HMI_SetButton   	                      R_TRIG            �              Ftrig_HMI_SetButton   	                      F_TRIG            �           
   AxisSetTim   	                         TON            �           
   rtAxisHome   	                      R_TRIG            �           
   ftAxisHome   	                      F_TRIG            �                               �_g  @   ����           PRG_MODBUS_TCP           j            �              jj            �                               �hg  @    ����           PRG_MONITOR           iDrive            �              i            �                               ߓ_g  @    ����        	   PRG_POWER           i            �                               B�_g  @    ����           PRG_PTP           i                       
   tCycleRead                    TON                  SetRobotZ_Limit_Pos                          ADSWRITE                  SetRobotZ_Limit_Neg                          ADSWRITE                  GetRobotZ_Limit_PosActive                          ADSWRITE                  GetRobotZ_Limit_NegActive                          ADSWRITE    	              GetRobotZ_Limit_Pos                          ADSWRITE    
              GetRobotZ_Limit_Neg                          ADSWRITE                  tonWriteAds_Delay                    TON               
   LastTorque                          bActive_PosLimit_GetRobot_Z                           bActive_NegLimit_GetRobot_Z                           bActive_PosLimit_GetRobot_Z_Old                           bActive_NegLimit_GetRobot_Z_Old                           bInit                           iStep                          fbSoftLimit_Pos   	                               ADSREAD                          fbSoftLimit_Neg   	                               ADSREAD                          fbSoftLimit_Pos_w   	                               ADSWRITE                          fbSoftLimit_Neg_w   	                               ADSWRITE                          bNotBusy                           j                          jj                          jjj                                           X�cg  @    ����        
   PRG_SERVON           i            �              Encoder             �                               u�_g  @    ����        	   PULSECTRL     	      _20ms                PulseGeneratorCtrl    q              _100ms                PulseGeneratorCtrl    q              _250ms                PulseGeneratorCtrl    q              _400ms                PulseGeneratorCtrl    q           Blink Fast    _500ms                PulseGeneratorCtrl    q              _800ms                PulseGeneratorCtrl    q           Blink    _1s                PulseGeneratorCtrl    q              _1s600ms                PulseGeneratorCtrl    q           Blink Slow    _5s                PulseGeneratorCtrl    q          	_10s				: PulseGeneratorCtrl;        	   BlinkSlow            q              Blink            q           	   BlinkFast            q              BlinkVeryFast            q                       o�^g  @    ����           PULSEGENERATORCTRL        	   TON_PULSE                    TON    r                 PT_OFF           r              PT_ON           r                 Q            r              RT            r                       ��^g  @    ����           SYSTEMINFOCTRL     	      InstGETCURTASKINDEX                GETCURTASKINDEX    �              InstLocalSystemTime                               FB_LocalSystemTime    �          Info: SystemInfo.bootDataFlags
	Bit
	0 RETAIN Variablen: LOADED (fehlerfrei geladen)
	1 RETAIN Variablen: INVALID (es wurde die Sicherungskopie geladen, weil keine g�ltige Datei vorhanden war)
	2 RETAIN Variablen: REQUESTED (RETAIN Variablen sollten geladen werden, Einstellung im TwinCAT System Control))
	3 reserviert
	4 PERSISTENT Variablen: LOADED (fehlerfrei geladen)
	5 PERSISTENT Variablen: INVALID (es wurde die Sicherungskopie geladen, weil keine g�ltige Datei vorhanden war)
	6 reserviert
	7 reserviert    RetainVarLoaded             �*              RetainVarInvalid             �+              RetainVarRequested             �,              PersistentVarLoaded             �-              PersistentVarInvalid             �.       2    Info: SystemTaskInfoArr	(* Ist ein Array von 1-4    _sec            �9              _hour            �:                 Reset            �              RTCSyncCylce          �           in seconds    TimeStampTrig            �              	   RunTimeNo           �              ProjectName    !       !    �	              NumberOfTasks           �
              OnlineChangeCount           �              RetainVarErr            �              PersistenVarErr            �              TimeStampDT           �           	   TimeStamp               �       $    DD.MM.YY-Stunde:Minute:Sekunde:xxx    TimeStr               �           hh.mm.ss.xxms    DateStr               �       
    dd.mm.jj 
   TimeStamp2               �       :    YYYY-MM-DD_HHMMSS for example YYYY-MM-DD_HHMMSS_Name.txt 
   TimeStruct                   
   TIMESTRUCT   �           	   MonthDays           �              LeapYear            �           
   WeekOfYear           �           
   timezoneId               E_TimeZoneID   �                       ��_g  @    ����           TASKINFOCTRL           GETCURTASKINDEX                GETCURTASKINDEX    �               
      index           �              active            �       0    Diese Variable zeigt an, ob die Task aktiv ist.   taskName               �           Der Taskname.
   firstCycle            �       A    Diese Variable hat im ersten Zyklus der SPS-Task den Wert: TRUE.   cycleTimeExceeded            �	       U    In dieser Variablen wird ein �berschreiten der eingestellten Taskzykluszeit gemeldet	   cycleTime           �
       4    Eingestellte Taskzykluszeit in Vielfachen von 100ns   lastExecTime           �       E    Ben�tigte Zykluszeit f�r den letzten Zyklus in Vielfachen von 100 ns   MaxExecTime           �           Maximale Zykluszeit    priority           �       !    Eingestellte Prioritaet der Task
   cycleCount           �           Zykluszaehler            ��_g  @    ����            
 % 4 w  x  z  {  |  }  !      #     �  �  *   n  p  �  �  �  u  �  �  �  �      �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  $   -   �  �  �  �  .   �  �  �  �  �  ( ��     K   �    K   �    K   $�    K   9�                F�        +     ��localhost   ���u    � � �/T�/T�� ���wh           ���@ p��u�k|������ >�	   ��  ���@       �OT        �         ��         �         �<�����8��� >��w        �!  �R,�   �! ��@      �! ��@ � D��   �� D�� 82e������ �g�     ,   ,                                                        K         @   ͹Ng� /*BECKCONFI3*/
        !
� @   @   �   �     3               
   Standard            	vhg       Ѓ���           VAR_GLOBAL
END_VAR
                                                                                  "   , 4 4 Hr             Standard
         MAIN����               vhg                 $����  Ѓ`ϒ�               ��� A�A           Standard ͹Ng	͹Ng      8(8
�                         	vhg                        VAR_CONFIG
END_VAR
                                                                                  	 '           ,   , 4 4 ��           _01_Machine Pg	�_g,       H             A  
VAR_GLOBAL
(*Signal*)
	stMachine						:ST_Machine;
(*Alarm*)
	arrAlarm							:ARRAY[1..MaxAlarms] OF BOOL;				(*������,��ExcelΪ׼*)
	arrWarning						:ARRAY[1..MaxAlarms] OF BOOL;				(*��ʾ��,��ExcelΪ׼*)

	MSGList1 : ARRAY[1..100] OF BOOL;
	MSGList1_Alarm : BOOL;




(*Info*)
	TaskInfo						:TaskInfoCtrl;
	SysInfo							:SystemInfoCtrl;
	fPlcCycleTime_ms				:LREAL;
(* Global pulse *)
	Pulse							:PulseCtrl;		(*�������巢����*)
	nPlcTaskCycleTime_ms			:UDINT;			(*PLC���ڵĺ�����*)
END_VAR

VAR_GLOBAL CONSTANT
	MaxAlarms			:UINT:=100;
END_VAR
                                                                                               '           -   , h h �        
   _02_System �Pg	��gg-       H             �  VAR_GLOBAL
	sState						:STRING(20):='MANU';		(*��̨��ǰ״̬*)
	sStatus						:STRING(20):='INIT'	;			(*��ǰִ�в���*)

(*ϵͳ�������ָ���尴ť��������Դ֮һ*)
	bSysStart					:BOOL;		(*���start��ָ�����Զ�ģʽ������*)
	bSysStop					:BOOL;
	bSysReset					:BOOL;
	bSysEstop					:BOOL;
	bSwitchManualMode			:BOOL;		(*�����ֶ�ģʽ*)
	bSwitchAutoMode			:BOOL;		(*�����Զ�ģʽ*)
	bSysDryRunMode			:BOOL;		(*����ģʽ���ڴ�������ѡ�񣬲������ϣ��Զ����еĻ�е���*)

	bSystemInAutoMode			: BOOL;		(*ϵͳʵ�ʴ����Զ�ģʽ*)
	bSystemInManualMode		: BOOL;		(*ϵͳʵ�ʴ����ֶ�ģʽ*)
	bAutoModeRunning				:BOOL;		(*�Զ�������*)

(*ϵͳ״̬*)
	bGlobalErrorMark				:BOOL;		(*�б������������ʱ�ᴥ��ͣ���ģ�*)

	bSysStopFlag				:BOOL;		(*ֹͣ��ǣ���ǳ��֣�˵������ͣ������*)
	bStopFinished				:BOOL;		(*ֹͣ���*)

(*ָ��*)
	bResetOnce					:BOOL;		(*���θ�λ*)
	bhasResetOnce				: BOOL;		(*�Ѿ����θ�λ����*)
	bForceHomedFlag			:BOOL;		(*ǿ��д�ز��ź�*)
	bBuzzerSilence				:BOOL;		(*����*)



(*�Զ�״̬*)
	eAutoStatus					:EM_Status;		(*�Զ�ģʽ��״̬*)

(*��̨״̬*)
	bAllPowerOnOK				:BOOL;	(*�ϵ���OK*)
	bDeviceStateOK				:BOOL;	(*����״̬OK*)
	bDriveModeOK				:BOOL;	(*������ģʽOK*)

	bAutoReady					:BOOL;		(*�Զ����е�λ������OK*)
	bAllCylinderBase				:BOOL;		(*�������׻ص���ʼλ*)

	iSysStatus					:WORD;		(*�豸״̬*)
	bAirPressureOk:BOOL;(*����ѹ���Ƿ�λ*)



	iActPos_X_Axis					:WORD;						(*	X�ᵱǰλ�ñ���	*)
	iActPos_Z_Axis					:WORD;						(*	Z�ᵱǰλ�ñ���	*)
	iActPos_R_Axis					:WORD;						(*	R�ᵱǰλ�ñ���	*)
	iWarnMoveAbs							:WORD;					(*��λ������Ϣ*)
	iAlarmNetConnect						:WORD;					(*�����������ⱨ����Ϣ*)
	iGoHomeTogether_Finish	:	WORD	;	(*һ����ԭ�����*)
	iGoPrepareAuto_Finish	:	WORD	;	(*һ��ȥ׼��λ���*)
	iPos_X_Axis				:	WORD	;	(*ģ��1	X��Ŀ��λ��	*)
	iPos_Z_Axis				:	WORD	;	(*ģ��2	Z��Ŀ��λ��	*)
	iPos_X2_Axis				:	WORD	;	(*ģ��3	X��Ŀ��λ��	*)
	iPos_Y2_Axis				:	WORD	;	(*ģ��4	Y��Ŀ��λ��	*)
	iPos_R_Axis				:	WORD	;	(*	R��Ŀ��λ��	*)
	iX_Axis_Cmd			:	WORD	;	(*	ģ��1X��Ŀ��λ���˶�����	*)
	iZ_Axis_Cmd			:	WORD	;	(*	ģ��2Z��Ŀ��λ���˶�����	*)
	iX2_Axis_Cmd		:	WORD;		(*	ģ��3X��Ŀ��λ���˶�����	*)
	iY2_Axis_Cmd		:	WORD;		(*	ģ��4Y��Ŀ��λ���˶�����	*)
	iR_Axis_Cmd			:	WORD	;	(*	R��Ŀ��λ���˶�����	*)
	iHorizontalAxis_Cmd		:	WORD	;	(*	����Ͱ����г���Ŀ��λ���˶�����	*)
	iRotaryAxis_Cmd			:	WORD	;	(*	����Ͱ�����ת��Ŀ��λ���˶�����	*)
	iLifting_PutPermit_Cmd	:	WORD	;	(*	�����װ�豸������Ͳ	*)
	iLifting_GetPermit_Cmd	:	WORD	;	(*	�����װ�豸��ȡ��Ͳ	*)
	iPos_CollimationAxis		:	WORD	;	(*	׼ֱ���λ��	*)
	iCollimationAxis_Cmd	:	WORD	;	(*	׼ֱ���Ŀ��λ���˶�ָ��	*)
	iRotaryAxisRun_Cmd		:	WORD	;	(*��ת���һֱת*)
	iGoHomeTogether_Cmd	:	WORD	;	(*һ����ԭ��*)
	iGoPrepareAuto_Cmd	:	WORD	;	(*һ��ȥ׼��λ*)
	iGoResetTogether_Cmd	:WORD;		(*һ����λ*)
	iGoAutoTogether_Cmd		:WORD;		(*һ������*)
	iGoStopTogether_Cmd					:WORD;		(*һ��ֹͣ*)
	iAuto_Cmd				:	WORD	;	(*�Զ��л�*)
	bGoHomeTogether_Cmd	:	BOOL	;	(*һ����ԭ��*)
	bGoPrepareAuto_Cmd	:	BOOL	;	(*һ��ȥ׼��λ*)
	bAuto_Cmd				:	BOOL	;	(*�Զ��л�*)

	bGet_Paper_Cmd:			BOOL;(*ȡֽ*)
	bHasGot_Paper:BOOL;(*ȡֽ���*)

	bCollect_Cmd:BOOL;(*�ɼ�*)
	bHasCollected:BOOL;(*�ɼ����*)

	bPut_Paper_Cmd:			BOOL;(*��ֽ*)
	bHasPut_Paper:BOOL;(*��ֽ���*)

	bCut_Paper_Cmd:			BOOL;(*��ֽ*)
	bHasCut_Paper:BOOL;(*��ֽ���*)

	bSet_Box_Cmd:			BOOL;(*װ����*)
	bHasSet_Box:BOOL;(*װ�������*)

	CutWorkPos_X	:ARRAY[1..25] OF REAL;	(*�ü�ģ��X�Ṥλ*)
	CutWorkPos_Y	:ARRAY[1..25] OF REAL;	(*�ü�ģ��y�Ṥλ*)
	bwork_Cmd:ARRAY[1..25] OF BOOL; (*����ָ��*)
	bwork_Status:ARRAY[1..25] OF BOOL; (*����״̬*)


(*�����м����*)
	bAxisMovingAbsAlarm			:	ARRAY[1..30] OF BOOL;

(*���в���*)
	fSetMainVelo_Auto				: 	LREAL;			(*�����Զ��ٶ�*)
	fSetMainVelo_Manu				:	LREAL;			(*�����ֶ��ٶ�*)


(**************************  �������    ****************************************)

(*ָ��*)
	bEnaleAll						:BOOL;	(*һ��ʹ��*)
	bGoHomeTogether				:BOOL;		(*һ����ԭ��*)
	bGoPrepareAuto					:BOOL;		(*һ����ʼ��*)
	bGoResetTogether				:BOOL;		(*һ����λ*)
	bGoAutoTogether					:BOOL;		(*һ������*)
	bGoStopTogether					:BOOL;		(*һ��ֹͣ*)
	bHeatAll							:BOOL;		(*��������*)

(***********************************MODBUS TCP***********************************************)

	mb_Output_Registers : ARRAY[0..255] OF WORD;
	mb_Input_Registers : ARRAY[1..255] OF WORD;

END_VAR
                                                                                               '           .   , � � �        	   _03_Param �Pg	��cg.       H             %  VAR_GLOBAL CONSTANT
	EIN                             : BOOL  := TRUE;
	AUS                             : BOOL  := FALSE;
	ANZ_SUBSSW                   : UINT   := 5;

	fCurveKp		:REAL:=6.8;		(*�Ƕ�����׵Ĺ�ϵ*)
END_VAR

VAR_GLOBAL PERSISTENT
	iAxisSoftLimitSwitch_Neg	:ARRAY[1..5] OF BOOL;	(*����λ���޿���*)
	iAxisSoftLimitSwitch_Pos	:ARRAY[1..5] OF BOOL;	(*����λ���޿���*)

	iAxisSoftLimitSwitch_Neg1	:ARRAY[1..5] OF WORD;	(*����λ���޿���*)
	iAxisSoftLimitSwitch_Pos1	:ARRAY[1..5] OF WORD;	(*����λ���޿���*)
	fSaveBias	:ARRAY[1..5] OF REAL;
END_VAR

VAR_GLOBAL

(*����ʱ����״̬*)
	iAxisSoftLimitSwitch_Neg_Old	:ARRAY[1..5] OF BOOL;	(*����λ���޿���*)
	iAxisSoftLimitSwitch_Pos_Old	:ARRAY[1..5] OF BOOL;	(*����λ���޿���*)
	iMacStateForHmi				:WORD;(*����״̬��HMI*)
END_VAR
                                                                                               '           �  , h h         
   _04_Motion 7 Pg	ضgg�    [1NufDve        �  VAR_GLOBAL
	AxisArr					:ARRAY[1..MaxAxes] OF  axis_ref;		(*PTP��*)
	Axis_Interface			: ARRAY [1..MAXAxes] OF ST_Axis;		(*���PTP���ƽӿ�*)
(*���ܿ鶨��*)
	aMC_Power				:ARRAY[1..MaxAxes] OF MC_Power;
	aMC_Jog				:ARRAY[1..MaxAxes] OF MC_Jog;
	aMC_Reset				:ARRAY[1..MaxAxes] OF MC_Reset;
	aMC_Halt				:ARRAY[1..MaxAxes] OF MC_Halt;
	aMC_Stop				:ARRAY[1..MaxAxes] OF MC_Stop;
	aMC_SetPos				:ARRAY[1..MaxAxes] OF MC_SetPosition;
	aMC_MoveAbsolute		:ARRAY[1..MaxAxes] OF MC_MoveAbsolute;
	aMC_MoveRelative		:ARRAY[1..MaxAxes] OF MC_MoveRelative;
	aMC_MoveVelocity		:ARRAY[1..MaxAxes] OF MC_MoveVelocity;
	aMC_SetHomeFlag		:ARRAY[1..MaxAxes] OF MC_Home;
	aMC_Home				:ARRAY[1..MaxAxes] OF MC_Home;
	aMC_GearInDyn			:ARRAY[1..MaxAxes] OF MC_GearInDyn;			(*���ӳ��������*)
	aMC_GearOut			: ARRAY[1..MaxAxes] OF MC_GearOut;		(*���ӳ����ֽ����*)
	aMC_SoeReset			:ARRAY[1..MaxAxes] OF FB_SoEReset;		(*������������λ*)

(*����״̬����*)
 	Axis_Has_error		:BOOL;		(*�κ�һ�������κδ���*)
	Axis_Homing			:BOOL;		(*�κ�һ�����ڻز�*)
	All_Enable_OK		:BOOL;		(*������ʹ�ܳɹ�*)
	All_Homed_OK		:BOOL;		(*���������ɹ�*)
	bAllAxisAtZero		:BOOL;		(*�����ᶼ��0λ*)
	AllAxesStandStill		:BOOL;		(*�����ᾲֹ*)
(*����CMD����*)
	bEnableAll	:	BOOL;	(*ʹ��������*)
(*����*)
	stCtrlCylinder	:ARRAY[1..NumOfCylinders]OF ST_Cylinder_Ctrl;
	fbCylinder		:ARRAY[1..NumOfCylinders]OF FB_Cylinder;
	fbCutPaper		:ARRAY[1..25]OF FB_CutPaper;
END_VAR

VAR_GLOBAL CONSTANT
	MaxAxes							:UINT:=5;		(*��������ͬ������������������������ĸ���*)
	NumOfDrives							:UINT:=5;		(*ʵ����������*)
	MinHomeAxis	:UINT:=1;		(*��С��ԭ����*)
	MaxHomeAxis	:UINT:=8;		(*����ԭ����*)
	NumOfCylinders						:UINT:=38;		(*������*)
END_VAR                                                                                               '           �  , N N ��           _05_IO vhg	vhg�    [1NufDve          
VAR_GLOBAL
	(*����������*)
	El1889s			AT %I*		:ARRAY[1..NumOfDiModule,1..NumOfChannel]OF BOOL;
	(*���������*)
	El2889s 			AT%Q*		:ARRAY[1..NumOfDoModule,1..NumOfChannel]OF BOOL;
	(*ģ��������*)
	El3064			AT %I*		:ARRAY[1..4]OF INT;
	(*ʵ����������ΪEtherCAT�ŷ��ĸ���  ETHERCAT״̬*)
	DrivesOP 		AT %I*		:ARRAY[1..NumOfDrives]OF UINT;
	(*��������ģʽ�����8Ϊλ��ģʽ*)
	iSetDriveMode 	AT %Q*		:ARRAY [1..NumOfDrives] OF SINT := NumOfDrives(CSP);
	(*���������صĿ���ģʽ*)
	iActDriveMode	AT%I*		:ARRAY[1..NumOfDrives]OF SINT;
	(*�������ϵ�IO��أ�EL2521������*)
	iDriveDI			AT%I*  :ARRAY [1..NumOfDrives] OF INT;
	(*�������ϵĵ�����أ�EL2521������*)
	iMotorTorque		 AT%I*  :ARRAY [1..NumOfDrives] OF INT;

END_VAR


VAR_GLOBAL CONSTANT
	NumOfDiModule		:UINT:=7;		(*DI����ģ������*)
	NumOfDoModule		:UINT:=3;		(*DO���ģ������*)
	NumOfAiModule		:UINT:=0;		(*DI����ģ������*)
	NumOfChannel		:UINT:=16;		(*IOģ���ͨ����*)

	iEcatOp				:UINT:=8;
	CSP					:USINT:=8;
	CSV					:USINT:=9;
	CST					:USINT:=10;
END_VAR

                                                                                               '           w  ,     �           _06_Hmi ��^g	�cgw                    �  VAR_GLOBAL
(***********************HMI����****************************)
(********  ָ�� ***********)
	stHmiCmd			:	ST_HmiCmd;
	stHmiAxisCmd			:	ARRAY[1..MaxAxes] OF ST_AxisCmd;
(********  ��ʾ ***********)
	stHmiDisplay				:	ST_HmiDisplay;
	stAxisDisplay			:	ARRAY[1..MaxAxes] OF ST_AxisDisplay;
END_VAR


VAR_GLOBAL PERSISTENT
(********  ���� ***********)
	stAxisParam			:	ARRAY[1..MaxAxes] OF ST_AxisParam;
END_VAR

                                                                                               '              , 4 4 ��           Global_Variables ͹Ng	͹Ng     X>H                VAR_GLOBAL
END_VAR
                                                                                               '           s      ���             TwinCAT_Configuration `\g	vhgs    Xp��           �  (* Generated automatically by TwinCAT - (read only) *)
VAR_CONFIG
	.AxisArr[1].PlcToNc AT %QB53 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 1^Inputs^Axis 1_FromPlc} *)
	.AxisArr[1].NcToPlc AT %IB155 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 1^Outputs^Axis 1_ToPlc} *)
	.AxisArr[2].PlcToNc AT %QB181 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 2^Inputs^Axis 2_FromPlc} *)
	.AxisArr[2].NcToPlc AT %IB283 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 2^Outputs^Axis 2_ToPlc} *)
	.AxisArr[3].PlcToNc AT %QB309 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 3^Inputs^Axis 3_FromPlc} *)
	.AxisArr[3].NcToPlc AT %IB411 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 3^Outputs^Axis 3_ToPlc} *)
	.AxisArr[4].PlcToNc AT %QB437 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 4^Inputs^Axis 4_FromPlc} *)
	.AxisArr[4].NcToPlc AT %IB539 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 4^Outputs^Axis 4_ToPlc} *)
	.AxisArr[5].PlcToNc AT %QB565 : PLCTONC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 5^Inputs^Axis 5_FromPlc} *)
	.AxisArr[5].NcToPlc AT %IB667 : NCTOPLC_AXIS_REF;	(*  ~ {LinkedWith:TINC^NC-Task 1 SAF^Axes^Axis 5^Outputs^Axis 5_ToPlc} *)
	.El1889s AT %IB0 : ARRAY [1..7, 1..16] OF BOOL;
	.El2889s AT %QB0 : ARRAY [1..3, 1..16] OF BOOL;
	.El3064 AT %IB112 : ARRAY [1..4] OF INT;
	.DrivesOP AT %IB120 : ARRAY [1..5] OF UINT;
	.iSetDriveMode AT %QB48 : ARRAY [1..5] OF SINT;
	.iActDriveMode AT %IB130 : ARRAY [1..5] OF SINT;
	.iDriveDI AT %IB135 : ARRAY [1..5] OF INT;
	.iMotorTorque AT %IB145 : ARRAY [1..5] OF INT;
END_VAR                                                                                               '           	   , N N ��           Variable_Configuration ͹Ng	͹Ng	     8=H                VAR_CONFIG
END_VAR
                                                                                                 �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                               4     �   ���  �3 ���   � ���     
    @��  ���     @      DEFAULT             System      �   |0|0 @|    @Z   MS Sans Serif @       HH':'mm':'ss @      dd'-'MM'-'yyyy   dd'-'MM'-'yyyy HH':'mm':'ss�����                      )   HH':'mm':'ss @                             dd'-'MM'-'yyyy @       '  
 (   , � � 46           EM_State Y�dg	Y�dg      |!              x   TYPE EM_State :	(*��̨���߲����ļ���״̬*)
(
	PowerOn,
	ConnectionTest,
	Init,
	Manu,
	Auto,
	Error
);
END_TYPE             )   , � � NP        	   EM_Status Y�dg	Y�dg      Ѓ���          �   TYPE EM_Status :	(*�Զ�ģʽ�µļ�������*)
(
	AUTO_STOP       :=   0,
	AUTO_W_RUN      :=   2,
	AUTO_RUN        :=   3,
	AUTO_W_HALT     :=   4,
	AUTO_HALT       :=   5,
	AUTO_W_STOP     :=   6
);
END_TYPE                , � � �T           ST_Axis $�[g	$�[g      ********        ?  TYPE ST_Axis :	(*Johnson made this on 2017-01-17*)
STRUCT
(*status*)
	AxisName		:STRING(31);		(*������*)
	AxisID			:UDINT;		(*����NC�еı��*)

	Axis_Limit_Neg	:BOOL;		(*����λ�����ź�*)
	Axis_Limit_Pos	:BOOL;		(*����λ�����ź�*)
	Axis_HomeSwitch	:BOOL;		(*ԭ�㴥���ź�*)
	Axis_Ready		:BOOL;
	Axis_Err			:BOOL;
	Axis_ErrID		:UDINT;

	Axis_Homed		:BOOL;
	Axis_Homing		:BOOL;
	Axis_Coupled		:BOOL;
	Axis_NotMoving	:BOOL;

	fActPos			:LREAL;
	fActPosModbus			:WORD;
	fActVelo			:LREAL;
	fScaleFactor		:LREAL;
(*Command*)
	bEnable			:BOOL;		(*ʹ��*)
	bEnableFw		:BOOL:=TRUE;		(*����ʹ��*)
	bEnableBw		:BOOL:=TRUE;		(*����ʹ��*)
	bJog_Fw			:BOOL;		(*����㶯*)
	bJog_Bw		:BOOL;		(*����㶯*)

	bHalt			:BOOL;	(*��ͣ*)
	bStop			:BOOL;	(*ֹͣ*)
	bReset			:BOOL;	(*��λ*)

	bMoveAbs		:BOOL;	(*���о���λ��*)
	bMoveRel		:BOOL;	(*���е���λ��*)
	bMoveVelo		:BOOL;	(*��һ������������У�������ǰ�������㶯���߷���㶯����*)

	bHome			:BOOL;		(*�����ز�*)
	bSetPos			:BOOL;		(*�����ᵱǰ��λ��Ϊһ������λ��*)

	bCamIn			:BOOL;
	bCamOut		:BOOL;

	bGearIn			:BOOL:=FALSE;
	bGearOut		:BOOL:=FALSE;

	fGearInDynAcc	:LREAL:=50000;
	fGearInDynDec	:LREAL:=50000;
	fGearRatio		:LREAL;		(*���ӳ�����ϳ��ֱ�*)

	nCmdMode		:SINT;(*8=CSPλ��, 9=CSV,10=CST����*)
(*Parameter*)
	fOverride			 :LREAL:=100;		(*MC_power��ʵ�ʱ��ʵ��趨��Ĭ��ֵΪ100*)
	fPositon_of_Abs	 :LREAL;		(*����λ��λ��*)
	fPosition_of_Rel	 :LREAL;		(*���λ��λ��*)
	fVelocity_of_Abs	 :LREAL:=5;		(*λ���ƶ��ٶȣ��������λ�ƺ;���λ��ָ����ٶ�*)
	fVelocity_of_Rel	 :LREAL;		(*λ���ƶ��ٶȣ��������λ�ƺ;���λ��ָ����ٶ�*)
	fVelocity_of_Velo	 :LREAL;		(*�ٶ�ָ���µ��˶��ٶȣ�����mc_movevelocity����*)
	fVelocity_of_Jog	 :LREAL:=5;		(*�ֶ��㶯�ٶȣ������ڳ����������ò�ֵͬ*)

	fAcc				:LREAL:=0;(*0����ʹ��SystemManager����Ĳ���*)
	fDec			:LREAL:=0;
	fJerk			:LREAL:=0;
	fPosition_ToBeSet	:LREAL;		(*setpos���ܿ齫�ᵱǰ��λ������Ϊ�������*)
	fRefPos				:LREAL:=0;		(*ʹ��TwinCAT PLC��MC_Home����ʱ�����ⲿ�ź�������ֵ*)

	bInVelo			:BOOL;		(*�ٶ�ģʽ���ﵽ���ٶ�*)
END_STRUCT
END_TYPE             |  , � � �`        
   ST_AxisCmd ��^g	��^g      ,	','0,	        �  TYPE ST_AxisCmd :
STRUCT
(*Command*)
	bEnable				:BOOL(*:=TRUE*);
	bJog_Fw			:BOOL;		(*����㶯*)
	bJog_Bw			:BOOL;		(*����㶯*)
	bJog_InchingFw			:BOOL;		(*����綯*)
	bJog_InchingBw			:BOOL;		(*����綯*)
	bMoveToZero				:BOOL;		(*��ԭ��*)		(*������ֱ�ߵ����ԭ�㣬��ƫ���е���ԭ�㣬��·���Ե����ԭ�㣬��̨...*)
	bMoveAbs				:BOOL;
	bMoveRel				:BOOL;
	bReset					:BOOL;
	bHome					:BOOL;
	bSetPos					:BOOL;
	bSetBiasBnt			:BOOL;		(*����ԭ�㰴ť*)
END_STRUCT
END_TYPE             }  , � � �z           ST_AxisDisplay �^g	�^g      ,	','0,	        �  TYPE ST_AxisDisplay :
STRUCT
(*DisPlay*)
	bError			:BOOL;		(*����*)
	bEnabled		:BOOL;		(*ʹ��*)
	bHoming			:BOOL;		(*�ز���*)
	bHomed			:BOOL;		(*�ز����*)
	bMoiving		:BOOL;		(*�ƶ���*)
	bPosLimit		:BOOL;
	bNegLimit		:BOOL;
	udiErrorId		:UDINT;		(*��������*)

	fActPos	 		:REAL:=15;			(*�ᵱǰλ��*)
(*	fActModPos		:REAL:=0;	*)
	fActVelo		:REAL:=5;			(*�ᵱǰ�ٶ�*)
	fOverride		:REAL:=100;			(*�ᵱǰ�ٱ�ֵ*)

END_STRUCT
END_TYPE             x  ,   .�           ST_AxisParam 1�gg	1�gg      ,	','0,	        �  TYPE ST_AxisParam :
STRUCT
(*Parameter��ͷ�������������ô�����������*)
	fVelocity_of_Jog	 		:LREAL:=4;			(*�ֶ��㶯�ٶȣ������ڳ����������ò�ֵͬ*)
	fInchingDistance			:LREAL:=1;			(*�綯���룬�����ڳ����������ò�ֵͬ*)
	fVelo_of_Posi			:REAL:=15;		(*�ֶ���λ�ٶ�*)

	fVelo_of_Auto		:LREAL:=6;		(*�Զ��ٶ�*)
	fVelocity_of_Abs		:LREAL:=6;
	fTargetPos				:LREAL;

	fOverride				:LREAL:=100;			(*ʵ�ʱ��ʵ��趨��Ĭ��ֵΪ100*)
	SavedPosition			:LREAL:=0;
	iTargetNr				:UINT;
	ZeroPos				:REAL;		(*��λ��ԭ�㿪�ؾ���*)
	StandbyPos			:REAL;		(*����λ*)
	WorkPos1			:REAL;		(*��λ1*)
	WorkPos2			:REAL;		(*��λ2*)
	WorkPos3			:REAL;		(*��λ3*)
	WorkPos4			:REAL;		(*��λ4*)

	fTargetPosi			:REAL;		(*Ŀ�궨λ*)
END_STRUCT
END_TYPE             !   ,      �           ST_Cylinder_Ctrl ��[g	��[g      �T�T�T�T        �  TYPE ST_Cylinder_Ctrl :	(*Johnson made this on 2017-01-17*)
STRUCT
(*From DI*)
	DiBaseLimit				:BOOL;		(*����λ�����ź�*)
	DiWorkLimit				:BOOL;		(*����λ�����ź�*)

(*To Do*)
	DoAct			:BOOL;		(*����*)
	DoBack			:BOOL;		(*�ص�baseλ*)

(*To PLC status*)
	CylinderName		:STRING(31);		(*��������*)
	CylinderID			:UDINT;				(*���ױ��*)

	Cylinder_Limit_Base	:BOOL;		(*����λ�����ź�*)
	Cylinder_Limit_Work	:BOOL;		(*����λ�����ź�*)
	CylinderAlarm_TimeOut	:BOOL;			(*���׶�����ʱ*)

(*PLC commmand*)
	bAct			:BOOL;		(*����*)
	bBack			:BOOL;		(*�ص�baseλ*)
	bSwitch			:BOOL;		(*�л�*)


(*Parameter*)
	bContinue				:BOOL;	(*�Ƿ������˶�����*)
	fTimeOfContinue			:REAL:=1;
	fTimeOfOvertime			:REAL:=1;		(*��λ��*)

END_STRUCT
END_TYPE             z  , N N b,        	   ST_HmiCmd ��^g	��^g      ��0�X��        �  TYPE ST_HmiCmd :
STRUCT

(***************************************************   ϵͳ    ********************************************)

	bStart		:BOOL;
	bStop		:BOOL;
	bReset		: BOOL;		(*HMI�ϵĸ�λ*)
	bEstop		: BOOL;		(*HMI�ϵļ�ͣ*)
	bNtReboot		: BOOL;		(*ϵͳ����*)
	bNtShutdown	: BOOL;		(*ϵͳ�ػ�*)
	bSaveData		: BOOL;		(*����ϵͳ���ò���*)
	bSilence			: BOOL;		(*������ť*)
END_STRUCT
END_TYPE             {  , h h |F           ST_HmiDisplay ��^g	��^g      ,	','0,	        �  TYPE ST_HmiDisplay :
STRUCT

(***************************************************  �豸״̬     ********************************************)

	bAll_Enable_OK				:BOOL;	(*������ʹ�ܳɹ�*)
	bAll_Homed_OK				:BOOL;	(*���������ɹ�*)
	bAutoReady					:BOOL;	(*����׼���źţ������˴��Զ���׼������*)
	bAutoSwitch				:BOOL;	(*�ڽ�������ʾ��ǰ��ת���ش����ֶ������Զ�,TrueΪ�Զ���falseΪ�ֶ�*)
	bAutoMode					:BOOL;	(*�豸�������Զ�ģʽ*)
	bAutoRunning  				:BOOL;	(*�Զ�������*)
	bHeartBeat					:BOOL;
	iMachineState			:		UINT;		(*��̨״̬*)
(***************************************************  ϵͳ     ********************************************)
	sProgram_Vision				:STRING;	(*����汾��*)


END_STRUCT
END_TYPE             +   ,     ��        
   ST_Machine �_g	�_g                      �  TYPE ST_Machine :
STRUCT

(***************************************************   DI    ********************************************)
	btnStart			:BOOL;	(*	������ť	*)
	btnStop			:BOOL;	(*	ֹͣ��ť	*)
	btnReset		:BOOL;	(*	��λ��ť	*)
	bswAutoSwitch	:BOOL;	(*	���Զ��л���ť	*)
	btnEstop		:BOOL;	(*	��ͣ��ť	*)
	bSingle			:BOOL;



(***************************************************   DO    ********************************************)

	boLamp_Red		:BOOL;	(*	����-��	*)
	boLamp_Green	:BOOL;	(*	����-��	*)
	boLamp_Yellow	:BOOL;	(*	����-��	*)
	boBuzzer		:BOOL;	(*	������	*)
	boBtnStartLed	:BOOL;	(*������ťָʾ�ƣ���ɫ*)
	boBtnStopLed	:BOOL;	(*ֹͣ��ťָʾ�ƣ���ɫ*)
	boBtnResetLed	:BOOL;	(*��λ��ťָʾ�ƣ���ɫ*)
END_STRUCT
END_TYPE              �  ,   .X           Aifilter C\g	
C\g      P�@��`�        �   FUNCTION_BLOCK Aifilter
VAR_INPUT
	vi_Filter:REAL;
	n:UINT:=10;
END_VAR
VAR_OUTPUT
	vo_Filter:REAL;
END_VAR
VAR
	Filter	:ARRAY[1..100] OF REAL;
	Sum:REAL;
	i:UINT;
	counter:INT;
END_VAR�   counter:=counter+1;
n:=LIMIT(5,n,100);
IF counter>=10 THEN
	MEMCPY(ADR(Filter[1]),ADR(Filter[2]),SIZEOF(Filter[1])*(n-1));
	Filter[n]:=vi_Filter;
	sum:=0;
	FOR  i:=1 TO n DO
		sum:=sum+Filter[i];
	END_FOR
	vo_Filter:=sum/n;
	counter:=0;
END_IF               �  , h h �           FB_CutPaper R�gg	z�gg       ���            FUNCTION_BLOCK FB_CutPaper
VAR_INPUT
	work_x:UINT;	(*x��Ĺ�λ����*)
	work_y:UINT;	(*y��Ĺ�λ����*)
	work_cylinder:UINT;(*���׵�plc���*)
	work_cmd:BOOL;
END_VAR
VAR_OUTPUT
	work_has_done:BOOL;
END_VAR

VAR
	iStep:UINT;
	rwork:R_TRIG;

END_VAR
  
rwork(CLK:=work_cmd , Q=> );

CASE iStep OF



	0:
		IF rwork.Q THEN
			iStep:=5;
			work_has_done:=FALSE;
		END_IF


	5:
		IF ABS(Axis_Interface[3].fPositon_of_Abs - CutWorkPos_X[work_x])<0.1 THEN	(*�ü�ģ��X�ᵽ��λx*)
			iStep:=10;
		ELSE
			Axis_Interface[3].fPositon_of_Abs := CutWorkPos_X[work_x];
		END_IF

	10:
		IF ABS(Axis_Interface[4].fPositon_of_Abs -  CutWorkPos_Y[work_y])<0.1 THEN	(*�ü�ģ��Y�ᵽ��λy*)
			iStep:=20;
		ELSE
			Axis_Interface[4].fPositon_of_Abs :=  CutWorkPos_Y[work_y];
		END_IF

	20:
		stCtrlCylinder[12].bAct:=TRUE;						(*�ü���ѹ����*)
		IF stCtrlCylinder[12].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ����ѹ���*)
			iStep:=30;
		END_IF

	30:
		stCtrlCylinder[work_cylinder].bAct:=TRUE;						(*�ü�����ֽ����1*)
		IF stCtrlCylinder[work_cylinder].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ����ѹ���*)
			iStep:=40;
		END_IF

	40:
		stCtrlCylinder[12].bBack:=TRUE;						(*�ü���ѹ����*)
		IF stCtrlCylinder[12].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ����ѹ���*)
			iStep:=50;
		END_IF

	50:
		stCtrlCylinder[work_cylinder].bBack:=TRUE;						(*�ü�����ֽ����1��λ*)
		IF stCtrlCylinder[work_cylinder].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ����ѹ���*)
			work_has_done:=TRUE;
			iStep:=0;
		END_IF
END_CASE               *   , � � ��           FB_Cylinder ;\g	;\g                        FUNCTION_BLOCK FB_Cylinder
VAR_INPUT
(*PLC parameter*)
	bContinue			:BOOL:=FALSE;		(*trueΪ��������*)
	tContinueTime		:REAL:=1;	(*��λ�룬�Ӷ�����ʼ��ʱ���ﵽ���ʱ�����*)
	tAlarmDelay			:REAL:=1;	(*��λ�룬��ʱ��û�дﵽԤ����������*)
(*From DI*)
	DiWorkSensor		:BOOL;	(*����ʱ�����Ĵ�����*)
	DiBaseSensor		:BOOL;	(*��ʼλ�ô����Ĵ�����*)
END_VAR
VAR_OUTPUT
(*To PLC*)
	AtAlarm			:BOOL;	(*�����������������������Զ�������������Ҫ���ڵ���������*)(*�����ź����һ�����ڵ������ź�*)
	AtBasePos		:BOOL;		(*�ڳ�ʼλ*)
	AtWorkPos		:BOOL;		(*�ڹ���λ*)
(*To DO*)
	DoWorkPos		:BOOL;	(*��������ף�trueʹ֮����*)
	DoBasePos		:BOOL;	(*��������ף���������*)
END_VAR
VAR_IN_OUT
(*PLC command*)
	Act					:BOOL;	(*����������ʹ��*)
	Back				:BOOL;	(*��λ������ʹ��*)
	Switch				:BOOL;	(*�л�״̬������ʹ��*)
END_VAR
VAR
	tonAlarm,tonContinue		:TON;
	iStep						: UINT;
	fTrigWork,fTrigBase,fTrigSwitch	:R_TRIG;	(*1125��Ϊ��������*)
	AlarmDelay					:TON;
	tonAct,tonBack				:TON;
	tLastCmd					:TIME:=t#100ms;
END_VARu  fTrigWork(CLK:= Act, Q=> );
fTrigBase(CLK:=Back, Q=> );
fTrigSwitch(CLK:=Switch , Q=> );

tonAct(IN:=Act , PT:=tLastCmd , Q=> , ET=> );
tonBack(IN:=Back , PT:=tLastCmd , Q=> , ET=> );

IF tonAct.Q THEN Act:=FALSE;END_IF
IF tonBack.Q THEN Back:=FALSE;END_IF

(*******�л�״̬ ********)
IF fTrigSwitch.Q AND iStep=0  THEN
	Switch:=FALSE;
	IF DiWorkSensor OR DoWorkPos THEN iStep:=200;
	ELSIF DiBaseSensor OR DoBasePos  THEN iStep:=100;
	END_IF
ELSIF iStep<>0 THEN
	Switch:=FALSE;
END_IF

(*�������ȡ��*)
DoBasePos:=NOT DoWorkPos;

CASE iStep OF
0:
	AtAlarm:=FALSE;
	tonAlarm(IN:=FALSE);
	tonContinue(IN:=FALSE);
	IF fTrigWork.Q AND NOT bContinue  THEN
		iStep:=100;
	ELSIF fTrigWork.Q AND bContinue THEN
		iStep:=150;
	ELSIF fTrigBase.Q THEN
		iStep:=200;
	END_IF
	tonAlarm(IN:=FALSE);
100:
	DoWorkPos:=TRUE;
	tonAlarm(IN:=TRUE , PT:=REAL_TO_TIME(tAlarmDelay*1000) , Q=> , ET=> );
	AlarmDelay(in:=FALSE);
	IF DiWorkSensor AND NOT DiBaseSensor  THEN
		iStep:=0;
	ELSIF tonAlarm.Q THEN
		AtAlarm:=TRUE;
		iStep:=990;
	END_IF
150:
	DoWorkPos:=TRUE;
	tonContinue(IN:=TRUE , PT:=REAL_TO_TIME(tContinueTime*1000) , Q=> , ET=> );
	IF tonContinue.Q THEN
		tonContinue(IN:=FALSE);
		iStep:=200;
	END_IF
200:
	DoWorkPos:=FALSE;
	tonAlarm(IN:=TRUE , PT:=REAL_TO_TIME(tAlarmDelay*1000) , Q=> , ET=> );
	IF NOT DiWorkSensor AND  DiBaseSensor  THEN
		iStep:=0;
	ELSIF tonAlarm.Q THEN
		AtAlarm:=TRUE;
		iStep:=990;
	END_IF
990:
	AlarmDelay(in:=TRUE,pt:=t#0.1s);
	IF  AlarmDelay.Q THEN
		iStep:=0;
	END_IF
END_CASE


(***************************  ״̬�ж�  *****************************)
IF   DiBaseSensor AND NOT DiWorkSensor  THEN
	AtWorkPos:=FALSE;
	AtBasePos:=TRUE;
ELSIF NOT DiBaseSensor AND DiWorkSensor THEN
	AtWorkPos:=TRUE;
	AtBasePos:=FALSE;
ELSIF NOT DiBaseSensor AND NOT DiWorkSensor THEN
	AtWorkPos:=FALSE;
	AtBasePos:=FALSE;
END_IF                   ,     �Y           MAIN vhg	��gg        ̃               PROGRAM MAIN
VAR
	MainState					:EM_State;	(*�����򲽣�����������Զ�*)
	bFirstCycle: BOOL:=TRUE;	(*��ʼ���õ�*)
(*������籣�ֲ���*)
	FB_WritePersistentData1: FB_WritePersistentData;
	tCycleTimer:TON;
	bWrite: BOOL;

(*ϵͳ����*)
	tNtDelayReset:TON;
	bReboot: BOOL;	(*����ϵͳ�ı���*)
	NT_Reboot1: NT_Reboot;

(*ϵͳ�ػ�*)
	NT_Shutdown1: NT_Shutdown;
	tNtDelayShutdown: TON;
	bShutdown: BOOL;

(*Զ������ӹ�*)
	OpenRemoteDesktop: NT_StartProcess;
	timerHMI	:TON;

(*����ϵͳʱ��*)
	TimeToBeSet: TIMESTRUCT;
	bSetTime: BOOL;
	NT_SetLocalTime_1: NT_SetLocalTime;
(*ϵͳʱ���ȡ*)
	NT_GetTime1: NT_GetTime;
	GetTimeStartDelay:TON;
	TIMESTR1				:TIMESTRUCT;

	i: UINT;

(*
(*����ӹ�ʱ����ر���*)
	j:UINT;(*�����FOR���*)
	n:UINT:=1;
	rtrigAutoRunning:R_TRIG;	(*�Զ�����������*)
	ftrigAutoRunning:F_TRIG;	(*�Զ�����������*)
	nStopLock: BOOL;
	itets: UINT;
(*����*)
	R_TRIG_Enabled: R_TRIG;
	BalanceLumpDeclineDelay:TON;(*���ؿ��½������޴�����λ�ú���ʱһ��ʱ���ֹͣ*)
	nParameterUpdateTop:BOOL;(*���������ģ������û�������������*)
	ActTableModeNumber: BOOL;	(*�����������һ��������*)
*)
	rtrigStart,rtrigReset,rtrigStop: R_TRIG;
	fTrigAutoManulMode: F_TRIG;
	rTrigAutoManualMode: R_TRIG;
	tDelayManualMode:TON;(*���ֶ�����ʱ*)
(*Lamp and Buzzer*)
	eStepBuzze: UINT;
	rTrigBuzze: R_TRIG;
	tDelayBuzze: TON;



	LagDistance_ZM: LREAL;
	LagDistance_CM: LREAL;
	FirstCycle_Step: UINT;
	R_TRIGbDriveModeOK:R_TRIG;
	tDelay:TON;

	i_auto_step:UINT;
	auto_finished_flag:ARRAY[1..5] OF R_TRIG;


END_VAR,
  PRG_IO.Input();
PRG_Alarm();
PRG_Monitor();
PRG_Modbus_TCP.Modbus_TCP_Read;
MAIN._NT;
MAIN.Command;
MAIN.Status;

auto_finished_flag[1](CLK:=bHasGot_Paper , Q=> );
auto_finished_flag[2](CLK:=bHasCollected , Q=> );
auto_finished_flag[3](CLK:=bHasPut_Paper , Q=> );
auto_finished_flag[4](CLK:=bHasCut_Paper , Q=> );
auto_finished_flag[5](CLK:=bHasSet_Box , Q=> );


CASE MainState OF
PowerOn:
	PRG_Power();
	MainState:=ConnectionTest;

ConnectionTest:
	IF bDeviceStateOK AND bDriveModeOK  THEN
		bResetOnce:=TRUE;
		MainState:=INIT;
		PRG_ServOn();
	END_IF

INIT:	(*����ĳ�ʼ�����������ǻ����Ĺ��ճ�ʼ��*)
	PRG_Init();
	IF All_Enable_OK OR bHasResetOnce   THEN
		MainState:=MANU;
	ELSIF Axis_Has_error THEN
		MainState:=ConnectionTest;		(*���д����ٸ�λһ��,���ʱ����е�������PLC֮ǰ�����ã�PLC����ʱ�ᱨͨѶ������Ҫ��λһ��*)
		bHasResetOnce:=TRUE;
	END_IF

MANU:
(*�ֶ�ģʽ*)
	PRG_Manual;
	IF bSysEstop  THEN			(*��ͣҲ�Ǵ��ֶ��н����*)
		MainState:=ERROR;
	ELSIF
		bSwitchAutoMode
		AND NOT bGlobalErrorMark
		AND NOT bSysEstop
		AND bAutoReady
	THEN
		MainState:=AUTO;
	END_IF
	PRG_Modbus_TCP.Modbus_TCP_Write_ManulMode;
	PRG_AutoWork.Act_GetPaper;
	PRG_AutoWork.Act_Collect;
	PRG_AutoWork.Act_PutPaper;
	PRG_AutoWork.Act_Cut;
	PRG_AutoWork.Act_SetBox;

AUTO:

	PRG_Auto();
	PRG_AutoWork;
	CASE i_auto_step OF
	0:
		bGet_Paper_Cmd:=TRUE;
		PRG_AutoWork.Act_GetPaper;
		IF auto_finished_flag[1].Q THEN
			i_auto_step:=10;
		END_IF
	10:
		bCollect_Cmd:=TRUE;
		PRG_AutoWork.Act_Collect;
		IF auto_finished_flag[2].Q THEN
			i_auto_step:=20;
		END_IF
	20:
		bPut_Paper_Cmd:=TRUE;
		PRG_AutoWork.Act_PutPaper;
		IF auto_finished_flag[3].Q THEN
			i_auto_step:=30;
		END_IF
	30:
		bCut_Paper_Cmd:=TRUE;
		PRG_AutoWork.Act_Cut;
		IF auto_finished_flag[4].Q THEN
			i_auto_step:=40;
		END_IF
	40:
		bSet_Box_Cmd:=TRUE;
		PRG_AutoWork.Act_SetBox;
		IF auto_finished_flag[5].Q THEN
			i_auto_step:=50;
		END_IF
	50:
		MainState:=MANU;
	END_CASE
	IF  bSysEstop (*AND bStopFinished*) THEN	(*��ͣ����������ͣ����*)
		MainState:=ERROR;
	ELSIF bSwitchManualMode AND NOT bStopFinished THEN
		MainState:=MANU;
	END_IF
ERROR:
	PRG_Estop();
	IF NOT bSysEstop THEN
		MainState:=PowerOn;
		bResetOnce:=TRUE;
	END_IF
	PRG_Modbus_TCP.Modbus_TCP_Write_ManulMode;
END_CASE


IF( bSysEstop AND MainState<>AUTO) (*OR bGlobalErrorMark *)THEN		(*���Զ�ģʽ�µļ�ͣ����*)
	MainState:=ERROR;
END_IF

PRG_Modbus_TCP.Modbus_TCP_Write_AutoMode;
PRG_M_Function();
PRG_PTP();
PRG_Auto.Act_Run();
PRG_IO.Output();
 �  ,     T           _NT @�_gt  (*ϵͳ������CEԶ�����棬ϵͳʱ�䣬��ʱ����������ݣ���ϵͳ���涯��*)

tNtDelayReset(IN:=bReboot , PT:=t#3s , Q=> , ET=> );
NT_Reboot1(
	NETID:='' ,
	DELAY:= ,
	START:=(*tNtDelayReset.Q  ,*),
	TMOUT:=DEFAULT_ADS_TIMEOUT ,
	BUSY=> ,
	ERR=> ,
	ERRID=> );

tNtDelayShutdown(IN:=bShutdown , PT:=t#0.5s , Q=> , ET=> );
NT_Shutdown1(
	NETID:= ,
	DELAY:= ,
	START:=tNtDelayShutdown.Q,			(*���win7ϵͳ�õģ�CEϵͳֱ�Ӷϵ�*)
	TMOUT:=DEFAULT_ADS_TIMEOUT ,
	BUSY=> ,
	ERR=> ,
	ERRID=> );

(******************* ����CEϵͳԶ������  ******************************************)
timerHMI(IN:=bFirstCycle, PT:=T#2S);
(*IF timerHMI.Q THEN
	bFirstCycle:=FALSE;
END_IF*)
OpenRemoteDesktop(
	NETID:='' ,
	PATHSTR:='\windows\CerDisp.exe' ,
	DIRNAME:='\windows' ,
	COMNDLINE:= ,
	START:=(*timerHMI.Q*) ,		(*�����һ��ͨ�������ֶ�����Զ������֮�����޸�ע�����launch90��ֵ���Լ�����EnableԶ�̵�ע����ļ���regfile����ʵ��*)
	TMOUT:= ,
	BUSY=> ,
	ERR=> ,
	ERRID=> );
(********************** ��ȡϵͳʱ��   ***************************************)


GetTimeStartDelay(IN:=NOT GetTimeStartDelay.Q  , PT:=T#2s , Q=> , ET=> );
NT_GetTime1(
	NETID:= ,
	START:=GetTimeStartDelay.Q ,
	TMOUT:= , 
	BUSY=> ,
	ERR=> ,
	ERRID=> ,
	TIMESTR=>TIMESTR1 );

TIMESTR1.wYear;		(*��*)
TIMESTR1.wMonth;		(*��*)
TIMESTR1.wDay;		(*��*)
TIMESTR1.wHour;		(*ʱ*)
TIMESTR1.wMinute;		(*��*)
TIMESTR1.wSecond;		(*��*)
TIMESTR1.wMilliseconds;	(*����*)
TIMESTR1.wDayOfWeek;	(*����*)

(********************** ����ϵͳʱ��   ***************************************)
NT_SetLocalTime_1(
	NETID:= , 
	TIMESTR:=TimeToBeSet ,
	START:=bSetTime ,
	TMOUT:=t#500ms ,
	BUSY=> , 
	ERR=> ,
	ERRID=> );
TimeToBeSet.wYear;			(*��*)
TimeToBeSet.wMonth;		(*��*)
TimeToBeSet.wDay;			(*��*)
TimeToBeSet.wHour;			(*ʱ*)
TimeToBeSet.wMinute;		(*��*)
TimeToBeSet.wSecond;		(*��*)
TimeToBeSet.wMilliseconds;	(*����*)
TimeToBeSet.wDayOfWeek;	(*����*)

(***********************  ������籣������   **************************************)
tCycleTimer(IN:=NOT tCycleTimer.Q , PT:=t#60s , Q=>bWrite , ET=> );
FB_WritePersistentData1(
	NETID:='' ,
	PORT:=801 ,
	START:=bWrite OR stHmiCmd.bSaveData OR SystemtaskInfoArr[1].firstCycle  ,
	TMOUT:=t#500ms ,
	MODE:=SPDM_2PASS ,
	BUSY=> ,
	ERR=> ,
	ERRID=> );
(**********************  ϵͳ����ʱ���ȡ   ***************************************)
nPlcTaskCycleTime_ms:=SystemtaskInfoArr[1].cycleTime/10000;


(******************* �ŷ�λ������********************)
R_TRIGbDriveModeOK(CLK:=(bDriveModeOK), Q=> );
IF (R_TRIGbDriveModeOK.Q AND timerHMI.Q) OR (FirstCycle_Step=0 AND MainState=MANU)  THEN
		FirstCycle_Step:=100;
END_IF



tDelay(IN:= , PT:=t#20ms , Q=> , ET=> );

CASE FirstCycle_Step OF
0:
;
100:
	tDelay.IN:=TRUE;
	IF tDelay.Q THEN
		FirstCycle_Step:=110;
	END_IF
110:
	tDelay.IN:=FALSE;
	FOR i:=1 TO 5 DO
		Axis_Interface[i].fPosition_ToBeSet := -fSaveBias[i]+AxisArr[i].NcToPlc.ActPos;
	END_FOR
	FirstCycle_Step:=200;
200:
	FOR i:=1 TO 5 DO
		Axis_Interface[i].bSetPos:=TRUE;(*�����ź�*);
	END_FOR
	FirstCycle_Step:=300;
300:
	bFirstCycle:=FALSE;
	FirstCycle_Step:=400;
400:
	;
END_CASE�  , 4 4 �M           Command �_g�  (*ϵͳ״̬�л���ť����Ӧ���źŻ��ܣ��Լ�ָʾ�Ƶ����*)

rtrigStart(CLK:=stMachine.	btnStart OR stHmiCmd.bStart , Q=> );		(*���������HMI�������ź�Ҳд���˴�*)
rtrigStop(CLK:=stMachine.	btnStop OR stHmiCmd.bStop, Q=> );
rtrigReset(CLK:=stMachine.	btnReset OR stHmiCmd.bReset OR bResetOnce, Q=> );

tDelayManualMode(IN:=NOT (stMachine.bswAutoSwitch OR bAuto_Cmd),PT:=t#1s,Q=>,ET=>);(*�½����ӳ�*)
rTrigAutoManualMode(CLK:=stMachine.bswAutoSwitch OR bAuto_Cmd, Q=> );		(*���Զ���������*)
fTrigAutoManulMode(CLK:=tDelayManualMode.Q, Q=> );		(*�½����ź�*)


IF bResetOnce THEN
	bResetOnce:=FALSE;		(*�������źŸ�λ��*)
END_IF

(*ģʽѡ��*)
IF  rTrigAutoManualMode.Q THEN
	bSwitchAutoMode:=TRUE;
	bSwitchManualMode:=FALSE;
ELSIF tDelayManualMode.Q AND NOT stMachine.bswAutoSwitch  THEN
	bSwitchAutoMode:=FALSE;
	bSwitchManualMode:=TRUE;
END_IF

(*�Զ������ж�*)
bAutoModeRunning;
bSystemInManualMode:=(MainState=MANU);
bSystemInAutoMode:=(MainState=AUTO);


(*���δ������ź�*)
bSysStart:=rtrigStart.Q ;
bSysStop:=rtrigStop.Q;
bSysReset:=rtrigReset.Q ;
bSysEstop:=stMachine.btnEstop;




bBuzzerSilence:=stHmiCmd.bSilence;	(*������ѡ������,���ײ�����*)




(********************************** Systemfunctions **********************************************************)
	SysInfo(
		Reset				:= ,
		TimeStampTrig		:= Pulse._100ms.RT,
		RunTimeNo			=> ,
		ProjectName			=> ,
		NumberOfTasks		=> ,
		OnlineChangeCount	=> ,
		RetainVarErr		=> ,
		PersistenVarErr		=> ,
		TimeStampDT			=> ,
		TimeStamp			=> ,
		TimeStr				=> ,
		DateStr				=> ,
		TimeStamp2			=> ,
		TimeStruct			=> ,
		MonthDays			=> ,
		LeapYear			=> ,
		WeekOfYear			=> ,
		timezoneId			=>);

	TaskInfo(
		index				=> ,
		active				=> ,
		taskName			=> ,
		firstCycle			=> ,
		cycleTimeExceeded	=> ,
		cycleTime			=> ,
		lastExecTime		=> ,
		priority			=> ,
		cycleCount			=> );

	Pulse(
		BlinkSlow			=> ,
		Blink				=> ,
		BlinkFast			=> );


�  ,   n3           Status �_g�  (*ϵͳ��*)

CASE eStepBuzze OF
	0:
	(*ϵͳ���ϻ��߼�ͣʱ*)
		rTrigBuzze(CLK:=bGlobalErrorMark OR bSysEstop  , Q=> );
		IF rTrigBuzze.Q
		THEN
			eStepBuzze:=10;
			tDelayBuzze(IN:= TRUE, PT:=t#3s , Q=> , ET=> );
		END_IF
	10:
		stMachine.boBuzzer:=bGlobalErrorMark AND Pulse._1s.Q;
		tDelayBuzze(IN:= TRUE, PT:=t#3s , Q=> , ET=> );
		IF tDelayBuzze.Q
		THEN
			eStepBuzze:=0;
			tDelayBuzze(IN:= FALSE, PT:=t#3s , Q=> , ET=> );
			stMachine.boBuzzer:=FALSE;
		END_IF
END_CASE


IF bGlobalErrorMark
THEN										(*���������*)
	stMachine.boLamp_Green:=FALSE;
	stMachine.boLamp_Red:=TRUE;
	stMachine.boLamp_Yellow:=FALSE;

	stMachine.boBtnStopLed:=TRUE;
	stMachine.boBtnStartLed:=FALSE;
	stMachine.boBtnResetLed:=FALSE;
ELSIF MainState=AUTO (*AND bAutoModeRunning*)					(*�Զ�ģʽ�������˶�������*)
THEN
	stMachine.boLamp_Green:=bAutoModeRunning;
	stMachine.boLamp_Red:=FALSE;
	stMachine.boLamp_Yellow:=FALSE;

	stMachine.boBtnStopLed:=FALSE;
	stMachine.boBtnStartLed:=TRUE;
	stMachine.boBtnResetLed:=FALSE;
ELSE										(*�ֶ����Ƶ�*)
	stMachine.boLamp_Green:=FALSE;
	stMachine.boLamp_Red:=FALSE;
	stMachine.boLamp_Yellow:=TRUE;

	stMachine.boBtnStopLed:=FALSE;
	stMachine.boBtnStartLed:=FALSE;
	stMachine.boBtnResetLed:=TRUE;
END_IF


CASE MainState OF
PowerOn:			stHmiDisplay.iMachineState:=0;
ConnectionTest:		stHmiDisplay.iMachineState:=1;
MANU:			stHmiDisplay.iMachineState:=2;iSysStatus:=1;
AUTO:
	IF NOT bAutoModeRunning THEN stHmiDisplay.iMachineState:=3;
	ELSE	stHmiDisplay.iMachineState:=4;iSysStatus:=2;
	END_IF

ERROR:	stHmiDisplay.iMachineState:=5;iSysStatus:=3;
END_CASE

stHmiDisplay.bHeartBeat:=Pulse._1s.Q;
             n  , � � ��        	   PRG_Alarm Ӕ_g	�^g      :=;Fain        �   PROGRAM PRG_Alarm
VAR
	i: UINT;
	iNc:UINT;
	iDr:UINT;
	tDelay	:ARRAY[1..MaxAlarms]OF TON;
	counter: UINT;
	bDelayFlag: BOOL;
	tDelayReset:TON;
END_VARm  ActAlarm;
ActWarning;
Act_Alarm_Modbus;
Act_Warm_Modbus;

bGlobalErrorMark:=FALSE;
FOR i:=1 TO MaxAlarms DO
(*�κ�һ����������ʱ�����ᴥ������  ������ס*)
	IF I<>26 THEN
	bGlobalErrorMark:=bGlobalErrorMark OR arrAlarm[i];
	END_IF
END_FOR

tDelayReset(IN:=NOT tDelayReset.Q  , PT:=t#10s , Q=> , ET=> );

IF bSysReset OR tDelayReset.Q  THEN
	PRG_Alarm.Act_ResetAlarm();
END_IF

tDelayReset(IN:=NOT tDelayReset.Q  , PT:=t#10s , Q=> , ET=> );

MSGList1_Alarm:=FALSE;
FOR i:=1 TO MaxAlarms DO
(*�κ�һ����������ʱ�����ᴥ������  ������ס*)
	MSGList1_Alarm:=MSGList1_Alarm OR MSGList1[i];
END_FOR


 p  , 4 4 T�           Act_Alarm_Modbus r�_g  iAlarmNetConnect.0:=arrAlarm[21];
iAlarmNetConnect.1:=arrAlarm[22];
iAlarmNetConnect.2:=arrAlarm[23];
iAlarmNetConnect.3:=arrAlarm[24];
iAlarmNetConnect.4:=arrAlarm[25];
iAlarmNetConnect.5:=arrAlarm[26];
iAlarmNetConnect.6:=arrAlarm[27];
iAlarmNetConnect.7:=arrAlarm[28];
�  , h h ��           Act_ResetAlarm A�_g#  MEMSET(ADR(arrAlarm),0,SIZEOF(arrAlarm));
MEMSET(ADR(arrWarning),0,SIZEOF(arrWarning));


bAxisMovingAbsAlarm[1]:=FALSE;
bAxisMovingAbsAlarm[2]:=FALSE;
bAxisMovingAbsAlarm[3]:=FALSE;
bAxisMovingAbsAlarm[4]:=FALSE;
bAxisMovingAbsAlarm[5]:=FALSE;

bAxisMovingAbsAlarm[6]:=FALSE;
bAxisMovingAbsAlarm[7]:=FALSE;
bAxisMovingAbsAlarm[8]:=FALSE;
bAxisMovingAbsAlarm[9]:=FALSE;
bAxisMovingAbsAlarm[10]:=FALSE;
bAxisMovingAbsAlarm[11]:=FALSE;
bAxisMovingAbsAlarm[12]:=FALSE;
bAxisMovingAbsAlarm[13]:=FALSE;
bAxisMovingAbsAlarm[14]:=FALSE;�  , h h �           Act_Warm_Modbus ��_g  iWarnMoveAbs.0:=arrWarning[1];
iWarnMoveAbs.1:=arrWarning[2];
iWarnMoveAbs.2:=arrWarning[3];
iWarnMoveAbs.3:=arrWarning[4];
iWarnMoveAbs.4:=arrWarning[5];
iWarnMoveAbs.5:=arrWarning[6];
iWarnMoveAbs.6:=arrWarning[7];
iWarnMoveAbs.7:=arrWarning[8];
iWarnMoveAbs.8:=arrWarning[9];
iWarnMoveAbs.9:=arrWarning[10];
iWarnMoveAbs.10:=arrWarning[11];
iWarnMoveAbs.11:=arrWarning[12];
iWarnMoveAbs.12:=arrWarning[13];
iWarnMoveAbs.13:=arrWarning[14];
iWarnMoveAbs.14:=arrWarning[15];
iWarnMoveAbs.15:=arrWarning[16];
o  , � � ��           ActAlarm ��^g�  IF bDelayFlag THEN
(*��ͣ����*)
	IF NOT arrAlarm[1]
	THEN
		arrAlarm[1]:=bSysEstop;
	END_IF


(*������ر���*)

	FOR i:=1 TO 5 BY 1 DO
		IF axisarr[i].Status.Error THEN
			arrAlarm[i+11]:=TRUE;		(*�ᱨ������������*)
		END_IF
		IF i<>5 THEN
			IF Axis_Interface[i].Axis_Limit_pos THEN
				arrAlarm[i+30]:=TRUE;	(*�����λ����*)
			END_IF
			IF Axis_Interface[i].Axis_Limit_neg THEN
				arrAlarm[i+1]:=TRUE;
			END_IF
		END_IF
	END_FOR

	FOR i:=1 TO NumOfDrives DO
		IF ( DrivesOP[i]<>iEcatOp) THEN
			arrAlarm[i+20]:=TRUE;
		END_IF
	END_FOR
END_IF
(*PLC������2MS���ۼ�3500�����ڣ������ӳ�7��󣬸���������*)
IF counter>3500 THEN
	bDelayFlag:=TRUE;
	(*counter:=0;*)
END_IF

IF NOT bDelayFlag THEN
	counter:=counter+1;
END_IF
t  , 88L        
   ActWarning r�_g  ;
(*��judgement�����и����˾���ĸ�ֵ*)


(*ģ��1X���߶�λ����2S����������*)
IF bAxisMovingAbsAlarm[1] THEN
	arrWarning[1]:=TRUE;
END_IF


(*ģ��2Z���߶�λ����2S����������*)
IF bAxisMovingAbsAlarm[2] THEN
	arrWarning[2]:=TRUE;
END_IF


(*ģ��3X���߶�λ����2S����������*)
IF bAxisMovingAbsAlarm[3] THEN
	arrWarning[3]:=TRUE;
END_IF


(*ģ��4Y���߶�λ����2S����������*)
IF bAxisMovingAbsAlarm[4] THEN
	arrWarning[4]:=TRUE;
END_IF


(*ģ��5��ת���߶�λ����2S����������*)
IF bAxisMovingAbsAlarm[5] THEN
	arrWarning[5]:=TRUE;
END_IF

(*�л����Զ�ģʽ֮ǰ������ִ��ȥ׼��λ*)
IF NOT bAutoReady AND bSwitchAutoMode THEN
	arrWarning[15]:=TRUE;
END_IF

(*ȥ׼��λ֮ǰ������ִ�л�ԭ*)
IF NOT All_Homed_OK AND bGoPrepareAuto THEN
	arrWarning[16]:=TRUE;
END_IF

             u  , RRf0           PRG_Auto ;�cg	4�^g      �� $���        �  PROGRAM PRG_Auto
VAR
	eRuningStep				:	UINT;
	eStopStep				:	UINT;

	trAutoRuning:R_TRIG;
	tResetAutoSignal:TON;

(*trigers*)
	rTrigGlobalError			:	R_TRIG;	(*��Ҫͣ���Ĵ��󣬴������˳��Զ�����λ����󣬿��Լ�������*)
	rTrigEstop				:	R_TRIG;	(*��Ҫͣ����������ɺ���뼱ͣ*)
	rTrigstop				:	R_TRIG;(*��Ҫͣ����ͣ��󣬵��������Լ�����*)
	rTrigSwitchManual		:	R_TRIG;	(*��Ҫͣ����ͣ����е��ֶ�*)
	rTrigStart				:	R_TRIG;	(*����*)

(*delay*)
	tStopDelay	:TON;

	fbHaltMain: MC_Halt;
	fbMoveMain: MC_MoveRelative;
	fTempDistanceInCycle_L: REAL;
	fTempDistanceInCycle_R: REAL;
	fRecordMainPos: REAL;
	iTest400: UINT;
	iTest500: UINT;
	itest1: UINT:=0;
	itest2:	UINT:=0;
	itest3:	UINT:=0;
	itest4:	UINT:=0;

(****************************Modbus_TCP*******************************)
	iXStep1: UINT;
	iXStep2: UINT;
	iZStep1: UINT;
	iZStep2: UINT;

	iX2Step1: UINT;
	iX2Step2: UINT;
	iY2Step1: UINT;
	iY2Step2: UINT;

	iRStep1: UINT;
	iRStep2: UINT;
	iRStep3: UINT;
	iRStep4: UINT;
	iHorizontalStep1: UINT;
	iHorizontalStep2: UINT;
	iRotaryStep1: UINT;
	iRotaryStep2: UINT;
	iCollimationStep1:UINT;
	iCollimationStep2:UINT;

	fPos_X_Axis:REAL;
	fPos_Z_Axis:REAL;


	fPos_X2_Axis:REAL;
	fPos_Y2_Axis:REAL;

	fPos_R_Axis:REAL;
	fPos_CollimationAxis:REAL;


	fPos_HorizontalAxis:REAL;
	fPos_RotaryAxis:REAL;

	rPutPermit_Cmd:R_TRIG;
	rGetPermit_Cmd:R_TRIG;
	iPutStep:UINT;
	iGetStep:UINT;

	tDelayMC_AbsAlarm:ARRAY[1..20] OF TON;
	r_TRIG_Cmd:ARRAY[1..20] OF R_TRIG;

	bX_Axis_Abs: BOOL;
	bX_Axis_Stop: BOOL;
	bZ_Axis_Abs: BOOL;
	bZ_Axis_Stop: BOOL;

	bX2_Axis_Abs: BOOL;
	bX2_Axis_Stop: BOOL;
	bY2_Axis_Abs: BOOL;
	bY2_Axis_Stop: BOOL;

	bR_Axis_Abs: BOOL;
	bR_Axis_Stop: BOOL;
	bHorizontal_Axis_Abs: BOOL;
	bHorizontal_Axis_Stop: BOOL;
	bRotary_Axis_Abs: BOOL;
	bRotary_Axis_Stop: BOOL;
	bCollimationAxis_Abs: BOOL;
	bCollimationAxis_Stop: BOOL;

	bR_Axis_Velo: BOOL;
	bR_Axis_Stop1: BOOL;
END_VAR
�   
IF bSysReset THEN
	bStopFinished:=FALSE;
END_IF

bAutoModeRunning:=(eRuningStep>0);	(*�г��Զ�ʱ�����Ȱ�eRuningStep��Ϊ0*) �  , ll�J           Act_Modbus_TCP  �_g+!  fPos_X_Axis:=iPos_X_Axis*0.1;	(*ģ��1X����*)
fPos_Z_Axis:=iPos_Z_Axis*0.1;	(*ģ��2Z����*)

fPos_X2_Axis:=iPos_X2_Axis*0.1;	(*ģ��3X����*)
fPos_Y2_Axis:=iPos_Y2_Axis*0.1;	(*ģ��4Y����*)


fPos_R_Axis:=iPos_R_Axis*0.1;	(*��ת���*)

(*ģ��1X����*)
CASE iX_Axis_Cmd OF
0:
	bX_Axis_Abs:=FALSE;
	bX_Axis_Stop:=FALSE;
1:
	bX_Axis_Abs:=TRUE;
2:
	bX_Axis_Stop:=TRUE;
END_CASE

r_TRIG_Cmd[1](CLK:=bX_Axis_Abs , Q=> );

	CASE iXStep1 OF
	0:
		IF r_TRIG_Cmd[1].Q THEN
			iXStep1:=5;
			Axis_Interface[1].bMoveAbs:=FALSE;
		END_IF
	5:
		IF ABS(fPos_X_Axis-Axis_Interface[1].fActPos)>0.1  THEN
			iXStep1:=10;
			iXStep2:=0;
			Axis_Interface[1].bStop:=FALSE;
			tDelayMC_AbsAlarm[1](in:=FALSE);
		ELSE
			iXStep1:=0;
		END_IF
	10:			(*��������*)
		Axis_Interface[1].fPositon_of_Abs:=fPos_X_Axis;
		Axis_Interface[1].fVelocity_of_Abs:=stAxisParam[1].fVelo_of_Auto;
		Axis_Interface[1].bMoveAbs:=TRUE;
		IF ABS(Axis_Interface[1].fActPos-fPos_X_Axis)<0.1 AND ABS(Axis_Interface[1].fActVelo)<0.1 THEN
			iXStep1:=50;
		END_IF
		Axis_Interface[1].bMoveAbs:=(iXStep1=10);
		tDelayMC_AbsAlarm[1](IN:=Axis_Interface[1].Axis_NotMoving , PT:=t#2s , Q=> , ET=> );
		IF tDelayMC_AbsAlarm[1].Q THEN
			bAxisMovingAbsAlarm[1]:=TRUE;
			iXStep1:=50;
		END_IF
	50:
		iXStep1:=0;
		tDelayMC_AbsAlarm[1](in:=FALSE);
	END_CASE


r_TRIG_Cmd[2](CLK:=bX_Axis_Stop , Q=> );
	CASE iXStep2 OF
	0:
		IF r_TRIG_Cmd[2].Q THEN
			iXStep2:=5;
		END_IF

	5:
		IF NOT Axis_Interface[1].Axis_NotMoving THEN
			iXStep2:=10;
			iXStep1:=0;
			Axis_Interface[1].bMoveAbs:=FALSE;
		ELSE
			iXStep2:=0;
		END_IF
	10:
		Axis_Interface[1].bStop:=TRUE;
		iXStep2:=50;
	50:
		IF Axis_Interface[1].Axis_NotMoving THEN
			iXStep2:=0;
			Axis_Interface[1].bStop:=FALSE;
		END_IF
	END_CASE


(*ģ��1Z����*)

CASE iZ_Axis_Cmd OF
0:
	bZ_Axis_Abs:=FALSE;
	bZ_Axis_Stop:=FALSE;
1:
	bZ_Axis_Abs:=TRUE;
2:
	bZ_Axis_Stop:=TRUE;
END_CASE

r_TRIG_Cmd[3](CLK:=bZ_Axis_Abs , Q=> );
	CASE iZStep1 OF
	0:
		IF r_TRIG_Cmd[3].Q THEN
			iZStep1:=5;
		END_IF

	5:
		IF ABS(fPos_Z_Axis-Axis_Interface[2].fActPos)>0.1  THEN
			iZStep1:=10;
			iZStep2:=0;
			Axis_Interface[2].bStop:=FALSE;
			tDelayMC_AbsAlarm[2](in:=FALSE);
		ELSE
			iZStep1:=0;
		END_IF
	10:
		Axis_Interface[2].fPositon_of_Abs:=fPos_Z_Axis;
		Axis_Interface[2].fVelocity_of_Abs:=stAxisParam[2].fVelo_of_Auto;
		Axis_Interface[2].bMoveAbs:=TRUE;
		IF ABS(Axis_Interface[2].fActPos-fPos_Z_Axis)<0.1 AND ABS(Axis_Interface[2].fActVelo)<0.1 THEN
			iZStep1:=50;
		END_IF
		Axis_Interface[2].bMoveAbs:=(iZStep1=10);
		tDelayMC_AbsAlarm[2](IN:=Axis_Interface[2].Axis_NotMoving , PT:=t#2s , Q=> , ET=> );
		IF tDelayMC_AbsAlarm[2].Q THEN
			bAxisMovingAbsAlarm[2]:=TRUE;
			iZStep1:=50;
		END_IF
	50:
		iZStep1:=0;
		tDelayMC_AbsAlarm[2](in:=FALSE);
	END_CASE

r_TRIG_Cmd[4](CLK:=bZ_Axis_Stop , Q=> );
	CASE iZStep2 OF
	0:
		IF r_TRIG_Cmd[4].Q THEN
			iZStep2:=5;
		END_IF
	5:
		IF NOT Axis_Interface[2].Axis_NotMoving THEN
			iZStep2:=10;
			iZStep1:=0;
			Axis_Interface[2].bMoveAbs:=FALSE;
		ELSE
			iZStep2:=0;
		END_IF
	10:
		Axis_Interface[2].bStop:=TRUE;
		iZStep2:=50;
	50:
		IF Axis_Interface[2].Axis_NotMoving THEN
			iZStep2:=0;
			Axis_Interface[2].bStop:=FALSE;
		END_IF
	END_CASE



(*ģ��3X����*)
CASE iX2_Axis_Cmd OF
0:
	bX2_Axis_Abs:=FALSE;
	bX2_Axis_Stop:=FALSE;
1:
	bX2_Axis_Abs:=TRUE;
2:
	bX2_Axis_Stop:=TRUE;
END_CASE

r_TRIG_Cmd[5](CLK:=bX2_Axis_Abs , Q=> );

	CASE iX2Step1 OF
	0:
		IF r_TRIG_Cmd[5].Q THEN
			iX2Step1:=5;
			Axis_Interface[3].bMoveAbs:=FALSE;
		END_IF
	5:
		IF ABS(fPos_X2_Axis-Axis_Interface[3].fActPos)>0.1  THEN
			iX2Step1:=10;
			iX2Step2:=0;
			Axis_Interface[3].bStop:=FALSE;
			tDelayMC_AbsAlarm[3](in:=FALSE);
		ELSE
			iX2Step1:=0;
		END_IF
	10:			(*��������*)
		Axis_Interface[3].fPositon_of_Abs:=fPos_X2_Axis;
		Axis_Interface[3].fVelocity_of_Abs:=stAxisParam[3].fVelo_of_Auto;
		Axis_Interface[3].bMoveAbs:=TRUE;
		IF ABS(Axis_Interface[3].fActPos-fPos_X2_Axis)<0.1 AND ABS(Axis_Interface[3].fActVelo)<0.1 THEN
			iX2Step1:=50;
		END_IF
		Axis_Interface[3].bMoveAbs:=(iX2Step1=10);
		tDelayMC_AbsAlarm[3](IN:=Axis_Interface[3].Axis_NotMoving , PT:=t#2s , Q=> , ET=> );
		IF tDelayMC_AbsAlarm[3].Q THEN
			bAxisMovingAbsAlarm[3]:=TRUE;
			iX2Step1:=50;
		END_IF
	50:
		iX2Step1:=0;
		tDelayMC_AbsAlarm[3](in:=FALSE);
	END_CASE

r_TRIG_Cmd[6](CLK:=bX2_Axis_Stop , Q=> );
	CASE iX2Step2 OF
	0:
		IF r_TRIG_Cmd[6].Q THEN
			iX2Step2:=5;
		END_IF

	5:
		IF NOT Axis_Interface[3].Axis_NotMoving THEN
			iX2Step2:=10;
			iX2Step1:=0;
			Axis_Interface[3].bMoveAbs:=FALSE;
		ELSE
			iX2Step2:=0;
		END_IF
	10:
		Axis_Interface[3].bStop:=TRUE;
		iX2Step2:=50;
	50:
		IF Axis_Interface[3].Axis_NotMoving THEN
			iX2Step2:=0;
			Axis_Interface[3].bStop:=FALSE;
		END_IF
	END_CASE


(*ģ��4Y����*)

CASE iY2_Axis_Cmd OF
0:
	bY2_Axis_Abs:=FALSE;
	bY2_Axis_Stop:=FALSE;
1:
	bY2_Axis_Abs:=TRUE;
2:
	bY2_Axis_Stop:=TRUE;
END_CASE

r_TRIG_Cmd[7](CLK:=bY2_Axis_Abs , Q=> );
	CASE iY2Step1 OF
	0:
		IF r_TRIG_Cmd[7].Q THEN
			iY2Step1:=5;
		END_IF

	5:
		IF ABS(fPos_Y2_Axis-Axis_Interface[4].fActPos)>0.1  THEN
			iY2Step1:=10;
			iY2Step2:=0;
			Axis_Interface[4].bStop:=FALSE;
			tDelayMC_AbsAlarm[4](in:=FALSE);
		ELSE
			iY2Step1:=0;
		END_IF
	10:
		Axis_Interface[4].fPositon_of_Abs:=fPos_Y2_Axis;
		Axis_Interface[4].fVelocity_of_Abs:=stAxisParam[4].fVelo_of_Auto;
		Axis_Interface[4].bMoveAbs:=TRUE;
		IF ABS(Axis_Interface[4].fActPos-fPos_Y2_Axis)<0.1 AND ABS(Axis_Interface[4].fActVelo)<0.1 THEN
			iY2Step1:=50;
		END_IF
		Axis_Interface[4].bMoveAbs:=(iY2Step1=10);
		tDelayMC_AbsAlarm[4](IN:=Axis_Interface[4].Axis_NotMoving , PT:=t#2s , Q=> , ET=> );
		IF tDelayMC_AbsAlarm[4].Q THEN
			bAxisMovingAbsAlarm[4]:=TRUE;
			iY2Step1:=50;
		END_IF
	50:
		iY2Step1:=0;
		tDelayMC_AbsAlarm[4](in:=FALSE);
	END_CASE

r_TRIG_Cmd[8](CLK:=bY2_Axis_Stop , Q=> );
	CASE iY2Step2 OF
	0:
		IF r_TRIG_Cmd[8].Q THEN
			iY2Step2:=5;
		END_IF
	5:
		IF NOT Axis_Interface[4].Axis_NotMoving THEN
			iY2Step2:=10;
			iY2Step1:=0;
			Axis_Interface[4].bMoveAbs:=FALSE;
		ELSE
			iY2Step2:=0;
		END_IF
	10:
		Axis_Interface[4].bStop:=TRUE;
		iY2Step2:=50;
	50:
		IF Axis_Interface[4].Axis_NotMoving THEN
			iY2Step2:=0;
			Axis_Interface[4].bStop:=FALSE;
		END_IF
	END_CASE


(*��ת���*)
CASE iR_Axis_Cmd OF
0:
	bR_Axis_Abs:=FALSE;
	bR_Axis_Stop:=FALSE;
1:
	bR_Axis_Abs:=TRUE;
2:
	bR_Axis_Stop:=TRUE;
END_CASE

r_TRIG_Cmd[9](CLK:=bR_Axis_Abs , Q=> );
	CASE iRStep1 OF
	0:
		IF r_TRIG_Cmd[9].Q THEN
			iRStep1:=5;
			Axis_Interface[5].bMoveAbs:=FALSE;
		END_IF

	5:
		IF ABS(fPos_R_Axis-Axis_Interface[5].fActPos)>0.1  THEN
			iRStep1:=10;
			iRStep2:=0;
			Axis_Interface[5].bStop:=FALSE;
			tDelayMC_AbsAlarm[5](in:=FALSE);
		ELSE
			iRStep1:=0;
		END_IF
	10:
		Axis_Interface[5].fPositon_of_Abs:=fPos_R_Axis;
		Axis_Interface[5].fVelocity_of_Abs:=stAxisParam[5].fVelo_of_Auto;
		Axis_Interface[5].bMoveAbs:=TRUE;
		IF ABS(Axis_Interface[5].fActPos-fPos_R_Axis)<0.1 AND ABS(Axis_Interface[5].fActVelo)<0.1 THEN
			iRStep1:=50;
		END_IF
		Axis_Interface[5].bMoveAbs:=(iRStep1=10);
		tDelayMC_AbsAlarm[5](IN:=Axis_Interface[5].Axis_NotMoving , PT:=t#2s , Q=> , ET=> );
		IF tDelayMC_AbsAlarm[5].Q THEN
			bAxisMovingAbsAlarm[5]:=TRUE;
			iRStep1:=50;
		END_IF
	50:
		iRStep1:=0;
		tDelayMC_AbsAlarm[5](in:=FALSE);
	END_CASE

r_TRIG_Cmd[10](CLK:=bR_Axis_Stop , Q=> );
	CASE iRStep2 OF
	0:
		IF r_TRIG_Cmd[10].Q THEN
			iRStep2:=5;
		END_IF

	5:
		IF NOT Axis_Interface[5].Axis_NotMoving THEN
			iRStep2:=10;
			iRStep1:=0;
			Axis_Interface[5].bMoveAbs:=FALSE;
		ELSE
			iRStep2:=0;
		END_IF
	10:
		Axis_Interface[5].bStop:=TRUE;
		iRStep2:=50;
	50:
		IF Axis_Interface[5].Axis_NotMoving THEN
			iRStep2:=0;
			Axis_Interface[5].bStop:=FALSE;
		END_IF
	END_CASE




(*һ����ԭ*)
CASE iGoHomeTogether_Cmd OF
0:
	bGoHomeTogether_Cmd:=FALSE;
1:
	bGoHomeTogether_Cmd:=TRUE;
2:
	bGoHomeTogether_Cmd:=FALSE;
END_CASE

(*һ��ȥ׼��λ*)
CASE iGoPrepareAuto_Cmd OF
0:
	bGoPrepareAuto_Cmd:=FALSE;
1:
	bGoPrepareAuto_Cmd:=TRUE;
2:
	bGoPrepareAuto_Cmd:=FALSE;
END_CASE


(*�Զ��л�*)

CASE iAuto_Cmd OF
0:
	bAuto_Cmd:=FALSE;
1:
	bAuto_Cmd:=FALSE;
2:
	bAuto_Cmd:=TRUE;
END_CASE�  ,   Tu           Act_Run ��cg�  CASE eRuningStep OF
0:
	IF bSysStart AND bAutoReady THEN		(*bAutoReady�����ֶ�ģʽ�����ж�*)
		eRuningStep:=100;
		bStopFinished:=TRUE;
	END_IF
100:
	IF bSysStop  THEN
		eRuningStep:=200;
	END_IF
200:(*Ҫ��TCP�ĳ���ִ���꣬�����Ƴ��Զ�����*)
	IF iXStep1=0 AND iXStep2=0 AND iZStep1=0 AND iZStep2=0 AND iX2Step1=0 AND iX2Step2=0 AND iY2Step1=0 AND iY2Step2=0 AND iRstep1 = 0 AND iRstep2=0
THEN
		eRuningStep:=0;
		bStopFinished:=FALSE;
	END_IF

END_CASE             �  , � � ��           PRG_AutoPreparation ��cg	v�_g      = R(Toc.        �   PROGRAM PRG_AutoPreparation
VAR
	iAutoHomeStep: INT;
	i: INT;
	iClearHomeStep: INT;
	bClearHome	:BOOL;(*�����ԭ�ź�*)
	rTrig:R_TRIG;
	bAxisNotMoving: BOOL;
	tDelay:TON;
END_VARS  rTrig(CLK:=bGoPrepareAuto OR bGoPrepareAuto_Cmd , Q=> );

CASE iAutoHomeStep OF
0:
	IF rTrig.Q AND All_Homed_OK THEN
		iAutoHomeStep:=50;
		bAutoReady:=FALSE;
	END_IF
50:
	FOR i:=1 TO NumOfCylinders DO
		stCtrlCylinder[i].bBack:=TRUE;	(*���׻�ԭ*)
	END_FOR
	IF bAllCylinderBase THEN
		iAutoHomeStep:=100;
	END_IF
100:
	FOR i:=MinHomeAxis TO MaxHomeAxis DO
		stAxisParam[i].iTargetNr:=0;
		stHmiAxisCmd[i].bMoveAbs:=FALSE;
		Axis_Interface[i].fVelocity_of_Abs:=stAxisParam[i].fVelo_of_Posi;
	END_FOR
	iAutoHomeStep:=200;
200:
	FOR i:=MinHomeAxis TO MaxHomeAxis DO
		stHmiAxisCmd[i].bMoveAbs:=TRUE;
	END_FOR
	iAutoHomeStep:=300;
	tDelay(IN:=FALSE , PT:=t#20ms , Q=> , ET=> );
300:
	tDelay(IN:=TRUE , PT:=t#20ms , Q=> , ET=> );
	bAxisNotMoving:=TRUE;
	FOR i:=MinHomeAxis TO MaxHomeAxis DO
		Axis_Interface[i].bMoveAbs:=FALSE ;
		bAxisNotMoving:=bAxisNotMoving AND AxisArr[i].Status.NotMoving;
	END_FOR
	IF bAxisNotMoving AND tDelay.Q  THEN
		iAutoHomeStep:=400;
	END_IF
400:
	tDelay(IN:=FALSE , PT:=t#20ms , Q=> , ET=> );
	bAutoReady:=TRUE;
	iAutoHomeStep:=0;
END_CASE               �  , � � �`           PRG_AutoWork ��gg	��gg       ��          �  PROGRAM PRG_AutoWork
VAR
	iGetPaperStep:UINT;
	riGetPaper_Cmd:R_TRIG;

	iCollectStep:UINT;
	riCollect_Cmd:R_TRIG;

	iPutStep:UINT;
	riPut_Cmd:R_TRIG;

	iCutStep:UINT;
	riCut_Cmd:R_TRIG;


	iSetBoxStep:UINT;
	riSetBox_Cmd:R_TRIG;



	tDelay:TON;

	i_work:UINT;
	CutWorkPos_X	:ARRAY[1..25] OF REAL;	(*�ü�ģ��X�Ṥλ*)
	CutWorkPos_Y	:ARRAY[1..25] OF REAL;	(*�ü�ģ��y�Ṥλ*)
	i_cut_list1:UINT:=1;
	i_cut_list2:UINT:=1;
	i_cut_list3:UINT:=1;
	i_cut_list4:UINT:=1;
	i_cut_list5:UINT:=1;
	b_has_cut_list1:BOOL;
	b_has_cut_list2:BOOL;
	b_has_cut_list3:BOOL;
	b_has_cut_list4:BOOL;
	b_has_cut_list5:BOOL;

	x1,x2,x3,x4,x5:UINT;





END_VAR�   FOR i_work:=1 TO 5 DO
	CutWorkPos_X[i_work]:= stAxisParam[3].WorkPos1 + (i_work-1)*10;
	CutWorkPos_Y[i_work]:= stAxisParam[4].WorkPos1 + (i_work-1)*10;
END_FOR
 �  , 4 4 T�           Act_Collect �ggs  riCollect_Cmd(CLK:=bCollect_Cmd , Q=> );
CASE iCollectStep OF
	0:
		IF riCollect_Cmd.Q AND bHasGot_Paper THEN
			iCollectStep:=10;
			bHasCollected:=FALSE;
		END_IF
	10:
		stCtrlCylinder[1].bAct:=TRUE;		(*�ɼ���?�ɼ�����ѹ����1����λ*)
		stCtrlCylinder[2].bAct:=TRUE;		(*�ɼ���?�ɼ�����ѹ����2����λ*)
		IF stCtrlCylinder[1].Cylinder_Limit_Work AND stCtrlCylinder[2].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ*)
			iCollectStep:=20;
		END_IF

	20:
		tDelay(IN:=TRUE , PT:=t#10000ms , Q=> , ET=> );
		IF tDelay.Q THEN
			iCollectStep:=30;
		END_IF
	30:
		stCtrlCylinder[1].bBack:=TRUE;		(*�ɼ���?�ɼ�����ѹ����1�ػ�λ*)
		stCtrlCylinder[2].bBack:=TRUE;		(*�ɼ���?�ɼ�����ѹ����2�ػ�λ*)
		IF stCtrlCylinder[1].Cylinder_Limit_Base AND stCtrlCylinder[2].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ*)
			iCollectStep:=0;
			bHasCollected:=TRUE;
		END_IF
END_CASE�  ,   ��           Act_Cut ͹gg,  riCut_Cmd(CLK:=bCut_Paper_Cmd , Q=> );
CASE iCutStep OF
	0:
		IF riCut_Cmd.Q AND bHasPut_Paper THEN
			iPutStep:=10;
			bHasCut_Paper:=FALSE;
		END_IF

	10:
		stCtrlCylinder[11].bAct:=TRUE;		(*�ü���?ѹ���������׹���λ*)
		IF stCtrlCylinder[11].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ���������*)
			iPutStep:=20;
		END_IF
	20:
		stCtrlCylinder[13].bAct:=TRUE;		(*�ü���?��©���׹���λ*)
		IF stCtrlCylinder[13].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ�����*)
			iPutStep:=30;
		END_IF

	30:
		WHILE i_cut_list1 < 6 DO
			fbCutPaper[i_cut_list1](
				work_x:=1 ,
				work_y:=i_cut_list1 ,
				work_cylinder:=14+i_cut_list1-1 ,
				work_cmd:=bwork_Cmd[i_cut_list1] ,
				work_has_done=>bwork_Status[i_cut_list1] );
			FOR x2:=1 TO 4 DO
				b_has_cut_list1:=bwork_Status[1]  AND bwork_Status[1+x1] ;
				END_FOR
			IF(bwork_Status[i_cut_list1]) THEN
				i_cut_list1:=i_cut_list1+1;
			END_IF
		END_WHILE

		IF b_has_cut_list1 THEN
			iPutStep:=40;
		END_IF

	40:
		WHILE i_cut_list2 < 6 DO

			fbCutPaper[i_cut_list2+5](
				work_x:=2 ,
				work_y:=i_cut_list2 ,
				work_cylinder:=24+i_cut_list2-1 ,
				work_cmd:=bwork_Cmd[i_cut_list2+5] ,
				work_has_done=>bwork_Status[i_cut_list2+5] );
			FOR x2:=1 TO 4 DO
				b_has_cut_list1:=bwork_Status[6]  AND bwork_Status[6+x2] ;
			END_FOR
			IF(bwork_Status[i_cut_list2+5]) THEN
				i_cut_list2:=i_cut_list2+1;
			END_IF
		END_WHILE

		IF b_has_cut_list2 THEN
			iPutStep:=50;
		END_IF


	50:
		WHILE i_cut_list3 < 6 DO

			fbCutPaper[i_cut_list3+10](
				work_x:=2 ,
				work_y:=i_cut_list3 ,
				work_cylinder:=29+i_cut_list3-1 ,
				work_cmd:=bwork_Cmd[i_cut_list3+10] ,
				work_has_done=>bwork_Status[i_cut_list3+10] );
			FOR x3:=1 TO 4 DO
				b_has_cut_list1:=bwork_Status[11]  AND bwork_Status[11+x3] ;
			END_FOR
			IF(bwork_Status[i_cut_list3+10]) THEN
				i_cut_list3:=i_cut_list3+1;
			END_IF
		END_WHILE

		IF b_has_cut_list3 THEN
			iPutStep:=60;
		END_IF

	70:
		WHILE i_cut_list4 < 6 DO

			fbCutPaper[i_cut_list4+15](
				work_x:=2 ,
				work_y:=i_cut_list4 ,
				work_cylinder:=34+i_cut_list4-1 ,
				work_cmd:=bwork_Cmd[i_cut_list4+15] ,
				work_has_done=>bwork_Status[i_cut_list4+15] );
			FOR x4:=1 TO 4 DO
				b_has_cut_list1:=bwork_Status[16]  AND bwork_Status[16+x4] ;
			END_FOR
			IF(bwork_Status[i_cut_list4+15]) THEN
				i_cut_list4:=i_cut_list4+1;
			END_IF
		END_WHILE

		IF b_has_cut_list4 THEN
			iPutStep:=80;
		END_IF

	80:
		WHILE i_cut_list5 < 6 DO
			fbCutPaper[i_cut_list5+20](
				work_x:=2 ,
				work_y:=i_cut_list5 ,
				work_cylinder:=34+i_cut_list5-1 ,
				work_cmd:=bwork_Cmd[i_cut_list5+20] ,
				work_has_done=>bwork_Status[i_cut_list5+20] );
			FOR x5:=1 TO 4 DO
				b_has_cut_list1:=bwork_Status[21]  AND bwork_Status[21+x5] ;
			END_FOR
			IF(bwork_Status[i_cut_list5+20]) THEN
				i_cut_list5:=i_cut_list5+1;
			END_IF
		END_WHILE

		IF b_has_cut_list5 THEN
			iPutStep:=90;
		END_IF

	90:
		IF ABS(Axis_Interface[3].fPositon_of_Abs - stAxisParam[3].StandbyPos)<0.1 THEN	(*�ü�ģ��X�ᵽ������λ*)
			iPutStep:=100;
		ELSE
			Axis_Interface[3].fPositon_of_Abs := stAxisParam[3].StandbyPos;
		END_IF

	100:
		IF ABS(Axis_Interface[4].fPositon_of_Abs - stAxisParam[4].StandbyPos)<0.1 THEN	(*�ü�ģ��Y�ᵽ������λy*)
			iPutStep:=0;
			bHasCut_Paper:=TRUE;	(*�ü������XY�ص���ʼλ��*)
		ELSE
			Axis_Interface[4].fPositon_of_Abs :=stAxisParam[4].StandbyPos;
		END_IF

(*

	30:
		IF ABS(Axis_Interface[3].fPositon_of_Abs - stAxisParam[3].WorkPos1)<0.1 THEN	(*�ü�ģ��X�ᵽ��λ1*)
			iPutStep:=40;
		ELSE
			Axis_Interface[3].fPositon_of_Abs := stAxisParam[3].WorkPos1;
		END_IF

	40:
		IF ABS(Axis_Interface[4].fPositon_of_Abs - stAxisParam[4].WorkPos1)<0.1 THEN	(*�ü�ģ��Y�ᵽ��λ1*)
			iPutStep:=50;
		ELSE
			Axis_Interface[4].fPositon_of_Abs := stAxisParam[4].WorkPos1;
		END_IF

	50:
		stCtrlCylinder[12].bAct:=TRUE;						(*�ü���ѹ����*)
		IF stCtrlCylinder[12].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ����ѹ���*)
			iPutStep:=60;
		END_IF

	60:
		stCtrlCylinder[14].bAct:=TRUE;						(*�ü�����ֽ����1*)
		IF stCtrlCylinder[14].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ����ѹ���*)
			iPutStep:=60;
		END_IF

	70:
		stCtrlCylinder[12].bBack:=TRUE;						(*�ü���ѹ����*)
		IF stCtrlCylinder[12].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ����ѹ���*)
			iPutStep:=80;
		END_IF

	80:
		stCtrlCylinder[14].bBack:=TRUE;						(*�ü�����ֽ����1��λ*)
		IF stCtrlCylinder[14].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ����ѹ���*)
			iPutStep:=60;
		END_IF
*)

END_CASE
�  ,      �           Act_GetPaper #eg�  riGetPaper_Cmd(CLK:=bGet_Paper_Cmd , Q=> );
CASE iGetPaperStep OF
	0:
		IF riGetPaper_Cmd.Q THEN
			iGetPaperStep:=5;
			bHasGot_Paper:=FALSE;
		END_IF

	5:
		IF ABS(Axis_Interface[1].fPositon_of_Abs)<0.1 THEN	(*ת��ģ��X����ʼλ����*)
			iGetPaperStep:=10;
		ELSE
			Axis_Interface[1].fPositon_of_Abs:= 0;
		END_IF

	10:
		IF ABS(Axis_Interface[2].fPositon_of_Abs - stAxisParam[2].WorkPos1)<0.1 THEN	(*ת��ģ��Z�ᵽ��λ1׼��ȡ��ֽ*)
			iGetPaperStep:=20;
		ELSE
			Axis_Interface[2].fPositon_of_Abs := stAxisParam[2].WorkPos1;
		END_IF

	20:
		stCtrlCylinder[3].bAct:=TRUE;		(*��ֽת�����������׹���λ*)
		IF stCtrlCylinder[3].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ*)
			iGetPaperStep:=30;
		END_IF
	30:
		IF ABS(Axis_Interface[2].fPositon_of_Abs - stAxisParam[2].WorkPos2)<0.1 THEN	(*ת��ģ��Z�ᵽ��λ2ת��λ*)
			iGetPaperStep:=40;
		ELSE
			Axis_Interface[2].fPositon_of_Abs := stAxisParam[2].WorkPos2;
		END_IF

	40:
		IF ABS(Axis_Interface[1].fPositon_of_Abs - stAxisParam[1].WorkPos1)<0.1 THEN	(*ת��ģ��X�ᵽ��λ1*)
			iGetPaperStep:=50;
		ELSE
			Axis_Interface[1].fPositon_of_Abs := stAxisParam[1].WorkPos1;
		END_IF

	50:
		IF ABS(Axis_Interface[2].fPositon_of_Abs - stAxisParam[2].WorkPos3)<0.1 THEN	(*ת��ģ��Z�ᵽ��λ3�ɼ�����ֽ�·�λ*)
			iGetPaperStep:=60;
		ELSE
			Axis_Interface[2].fPositon_of_Abs := stAxisParam[2].WorkPos3;
		END_IF

	60:
		stCtrlCylinder[3].bBack:=FALSE;		(*��ֽת�����������׻ػ�λ*)
		IF stCtrlCylinder[3].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ*)
			iGetPaperStep:=70;
		END_IF

	70:
		IF ABS(Axis_Interface[2].fPositon_of_Abs - stAxisParam[2].WorkPos2)<0.1 THEN	(*ת��ģ��Z�ᵽ��λ2�·ź�ص�ת��λ*)
			iGetPaperStep:=80;
		ELSE
			Axis_Interface[2].fPositon_of_Abs := stAxisParam[2].WorkPos2;
		END_IF

	80:
		IF ABS(Axis_Interface[1].fPositon_of_Abs)<0.1 THEN	(*ת��ģ��X�����ʼλ����*)
			bHasGot_Paper:=TRUE;
			iGetPaperStep:=0;
		ELSE
			Axis_Interface[1].fPositon_of_Abs:= 0;
		END_IF

	END_CASE
�  , 4 4  @           Act_PutPaper 1�gg�  riPut_Cmd(CLK:=bPut_Paper_Cmd , Q=> );
CASE iPutStep OF

	0:
		IF riPut_Cmd.Q AND bHasCollected THEN
			iPutStep:=10;
			bHasPut_Paper:=FALSE;
		END_IF


	10:
		IF ABS(Axis_Interface[1].fPositon_of_Abs - stAxisParam[1].WorkPos1)<0.1 THEN	(*ת��ģ��X�ᵽ��λ1*)
			iPutStep:=20;
		ELSE
			Axis_Interface[1].fPositon_of_Abs := stAxisParam[1].WorkPos1;
		END_IF

	20:
		IF ABS(Axis_Interface[2].fPositon_of_Abs - stAxisParam[2].WorkPos3)<0.1 THEN	(*ת��ģ��Z�ᵽ��λ3�ɼ�����ֽ�·�λ*)
			iPutStep:=30;
		ELSE
			Axis_Interface[2].fPositon_of_Abs := stAxisParam[2].WorkPos3;
		END_IF


	30:
		stCtrlCylinder[3].bAct:=TRUE;		(*��ֽת�����������׹���λ*)
		IF stCtrlCylinder[3].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ,ȡ����ֽ*)
			iPutStep:=40;
		END_IF

	40:
		IF ABS(Axis_Interface[2].fPositon_of_Abs - stAxisParam[2].WorkPos2)<0.1 THEN	(*ת��ģ��Z�ᵽ��λ2ת��λ��*)
			iPutStep:=50;
		ELSE
			Axis_Interface[2].fPositon_of_Abs := stAxisParam[2].WorkPos2;
		END_IF

	50:
		IF ABS(Axis_Interface[1].fPositon_of_Abs - stAxisParam[1].WorkPos2)<0.1 THEN	(*ת��ģ��X�ᵽ��λ2*)
			iPutStep:=60;
		ELSE
			Axis_Interface[1].fPositon_of_Abs := stAxisParam[1].WorkPos2;
		END_IF
	60:
		IF ABS(Axis_Interface[2].fPositon_of_Abs - stAxisParam[2].WorkPos4)<0.1 THEN	(*ת��ģ��Z�ᵽ��λ4����ֽλ��*)
			iPutStep:=70;
		ELSE
			Axis_Interface[2].fPositon_of_Abs := stAxisParam[2].WorkPos4;
		END_IF
	70:
		stCtrlCylinder[3].bBack:=TRUE;		(*��ֽת�����������׻�λ*)
		IF stCtrlCylinder[3].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ,��������ֽ*)
			iPutStep:=80;
		END_IF

	80:
		IF ABS(Axis_Interface[2].fPositon_of_Abs - stAxisParam[2].WorkPos2)<0.1 THEN	(*ת��ģ��Z�ᵽ��λ2ת��λ��*)
			iPutStep:=90;
		ELSE
			Axis_Interface[2].fPositon_of_Abs := stAxisParam[2].WorkPos2;
		END_IF

	90:
		IF ABS(Axis_Interface[1].fPositon_of_Abs)<0.1 THEN	(*ת��ģ��X����ʼλ����*)
			iPutStep:=0;
			bHasPut_Paper:=TRUE;
		ELSE
			Axis_Interface[1].fPositon_of_Abs:= 0;
		END_IF



END_CASE�  , � � :        
   Act_SetBox ��gg�	  

riSetBox_Cmd(CLK:=bSet_Box_Cmd , Q=> );
CASE iSetBoxStep OF

	0:
		IF riSetBox_Cmd.Q AND bHasCut_Paper THEN
			iPutStep:=10;
			bHasSet_Box:=FALSE;
		END_IF
	10:
		stCtrlCylinder[8].bAct:=TRUE;		(*װ������?��λ�н�1���׹���λ*)
		stCtrlCylinder[9].bAct:=TRUE;		(*װ������?��λ�н�2���׹���λ*)
		IF stCtrlCylinder[8].Cylinder_Limit_Work AND stCtrlCylinder[9].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=20;
		END_IF

	20:
		stCtrlCylinder[7].bAct:=TRUE;		(*װ������?�Ϻ��л��������׹���λ*)
		IF stCtrlCylinder[7].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=30;
		END_IF

	30:
		stCtrlCylinder[13].bBack:=TRUE;		(*�ü���?��©�������׻�ʼλ*)
		IF stCtrlCylinder[13].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=40;
		END_IF

	40:
		stCtrlCylinder[10].bAct:=TRUE;		(*װ������?ͳһ��ֽ��������*)
		IF stCtrlCylinder[10].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=50;
		END_IF

	50:
		stCtrlCylinder[10].bBack:=TRUE;		(*װ������?ͳһ��ֽ��������*)
		IF stCtrlCylinder[10].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=50;
		END_IF
	60:
		stCtrlCylinder[7].bBack:=TRUE;		(*װ������?�Ϻ��л��������׹���λ*)
		IF stCtrlCylinder[7].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=70;
		END_IF

	70:
		stCtrlCylinder[5].bAct:=TRUE;		(*����šƿ����?��������?˫�����Ȧ1*)
		IF stCtrlCylinder[5].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=80;
		END_IF

	80:
		stCtrlCylinder[4].bAct:=TRUE;		(*����šƿ����?ƿ�Ǽ�צ����*)
		IF stCtrlCylinder[4].Cylinder_Limit_Work THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=90;
		END_IF

	90:
		IF ABS(Axis_Interface[5].fPositon_of_Abs - stAxisParam[5].WorkPos1)<0.1 THEN	(*��ת�����ת720*)
			iGetPaperStep:=100;
		ELSE
			Axis_Interface[5].fPositon_of_Abs := stAxisParam[5].WorkPos1;
		END_IF
	110:
		stCtrlCylinder[4].bBack:=TRUE;		(*����šƿ����?ƿ�Ǽ�צ����*)
		IF stCtrlCylinder[4].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=120;
		END_IF
	120:
		stCtrlCylinder[5].bBack:=TRUE;		(*����šƿ����?��������?˫�����Ȧ1*)
		IF stCtrlCylinder[5].Cylinder_Limit_Base THEN		(*��⵽�Ѿ���λ*)
			iPutStep:=130;
		END_IF
	130:
		IF ABS(Axis_Interface[5].fPositon_of_Abs - stAxisParam[5].StandbyPos)<0.1 THEN	(*��ת�����ת�ش���λ��*)
			bHasSet_Box:=TRUE;
			iGetPaperStep:=0;
		ELSE
			Axis_Interface[5].fPositon_of_Abs := stAxisParam[5].StandbyPos;
		END_IF

END_CASE             2   , B           PRG_Cylinder �A\g	�A\g                      ,   PROGRAM PRG_Cylinder
VAR
	i:UINT;
END_VAR  FOR i:=1 TO NumOfCylinders DO


	stCtrlCylinder[i].fTimeOfContinue:=0.3;
	stCtrlCylinder[i].fTimeOfOvertime:=2;
	stCtrlCylinder[i].bContinue:=FALSE;


	fbCylinder[i](
		bContinue:=stCtrlCylinder[i].bContinue ,
		tContinueTime:= stCtrlCylinder[i].fTimeOfContinue ,
		tAlarmDelay:= stCtrlCylinder[i].fTimeOfOvertime ,
		DiWorkSensor:= stCtrlCylinder[i].DiWorkLimit ,
		DiBaseSensor:= stCtrlCylinder[i].DiBaseLimit ,
		Act:= stCtrlCylinder[i].bAct ,
		Back:= stCtrlCylinder[i].bBack ,
		Switch:= stCtrlCylinder[i].bSwitch ,
		AtAlarm=> stCtrlCylinder[i].CylinderAlarm_TimeOut,
		AtBasePos=>stCtrlCylinder[i].Cylinder_Limit_Base ,
		AtWorkPos=>stCtrlCylinder[i].Cylinder_Limit_Work,
		DoWorkPos=> stCtrlCylinder[i].DoAct,
		DoBasePos=> stCtrlCylinder[i].DoBack);
END_FOR

(***************************** �������׶���ԭλ���ж�   ********************************************)
bAllCylinderBase:=TRUE;
FOR i:=1 TO NumOfCylinders DO
		bAllCylinderBase:=bAllCylinderBase AND stCtrlCylinder[i].Cylinder_Limit_Base;
END_FOR               �  , � � ��        	   PRG_Estop #�_g	�_g                      *   PROGRAM PRG_Estop
VAR
	i: UINT;
END_VAR   FOR i:=MinHomeAxis TO MaxHomeAxis DO
(*ʹ��*)
	(*IF i<>LEFTROLLER AND i<>RIGHTROLLER AND i<>Drive THEN		*)
		Axis_Interface[i].bEnable:=FALSE;		(*�Ͽ�ʹ���ź�*)
		Axis_Interface[i].bEnableFw:=FALSE;
		Axis_Interface[i].bEnableBw:=FALSE;
		Axis_Interface[i].bHome:=FALSE;			(*���ڼ�ͣʱ��������Ҫ������£�������3����Ӧ������Ͽ�*)
		Axis_Interface[i].bJog_Bw:=FALSE;
		Axis_Interface[i].bHalt:=FALSE;
		Axis_Interface[i].bJog_Fw:=FALSE;
		Axis_Interface[i].bMoveAbs:=FALSE;		(*�����������ʹ�ܣ���ʹ���ٴο���ʱ���̵�����ʹ������*)
		Axis_Interface[i].bMoveVelo:=FALSE;
		Axis_Interface[i].bMoveRel:=FALSE;
		Axis_Interface[i].bReset:=FALSE;
		Axis_Interface[i].bStop:=FALSE;
		Axis_Interface[i].bSetPos:=FALSE;
	(*END_IF*)
(*��������ָ��*)

END_FOR               �  , � � ��           PRG_GoHomeTogether �cg	��cg                      �   PROGRAM PRG_GoHomeTogether
VAR
	i: UINT;
	iPullAxisHomeStep: INT;
	rTrig:R_TRIG;
	iStep:UINT;
	bAxisNotMoving:BOOL;
	tDelay:TON;
END_VAR


C  (***************************** �����ز�   ********************************************)
rTrig(CLK:=bGoHomeTogether OR bGoHomeTogether_Cmd, Q=> );

(*************************�ز�����źŵ��ж�***************************)
CASE iStep OF
0:
	IF rTrig.Q THEN
		iStep:=100;
		All_Homed_OK:=FALSE;
		bAutoReady:=FALSE;
	END_IF
100:
	FOR i:=1 TO NumOfCylinders DO
		stCtrlCylinder[i].bBack:=TRUE;	(*���׻�ԭ*)
	END_FOR
	IF bAllCylinderBase THEN
		iStep:=110;
	END_IF
110:
	FOR i:=MinHomeAxis TO MaxHomeAxis DO
		Axis_Interface[i].bMoveAbs:=TRUE ;
		Axis_Interface[i].fPositon_of_Abs:=0  ;
		Axis_Interface[i].fVelocity_of_Abs:=stAxisParam[i].fVelo_of_Posi;
	END_FOR
	iStep:=200;
	tDelay(IN:=FALSE , PT:=t#100ms , Q=> , ET=> );
200:
	bAxisNotMoving:=TRUE;
	FOR i:=MinHomeAxis TO MaxHomeAxis DO
		Axis_Interface[i].bMoveAbs:=FALSE ;
		bAxisNotMoving:=bAxisNotMoving AND AxisArr[i].Status.NotMoving;
	END_FOR
	tDelay(IN:=TRUE , PT:=t#100ms , Q=> , ET=> );
	IF bAxisNotMoving AND tDelay.Q  THEN
		iStep:=300;
	END_IF
300:
	All_Homed_OK:=TRUE;
	iStep:=0;
END_CASE
               �  , h h ��           PRG_Init $�_g	��_g      				DEAD        [   PROGRAM PRG_Init
(**��������ʹ������ĳ���**)
VAR
	i:UINT;
	bNomoreTest: BOOL;
END_VAR  (*�ڽ����ֶ�ǰִ��һ��*)

FOR i:=1 TO MaxAxes BY 1 DO
	stHmiAxisCmd[i].bEnable:=TRUE;				(*�����ֶ���ʹ�ܻ���stAxisCmd���ƣ���ֹʹ���Զ��������Ը�һ��true*)
	stHmiAxisCmd[i].bHome:=FALSE;
	stHmiAxisCmd[i].bJog_Bw:=FALSE;
	stHmiAxisCmd[i].bJog_Fw:=FALSE;
END_FOR


                  , h h            PRG_IO s]\g	�Pg      etti*)EN        �   PROGRAM PRG_IO
VAR
	Filter:ARRAY[1..20]OF TON;		(*�ź��˲�*)

	MINLeftAngleValue: REAL;
	MaxLeftAngleValue: REAL;
	bfirst: BOOL := TRUE;
	fError: REAL;

	fAiFilterKp:REAL:=0.8;
	I: INT;

	iVoltage:REAL;
	fbAiFilter:Aifilter;
END_VAR   ; #   ,     ��           Input [U\gQ  
(***************************** DI1   ********************************************)
stMachine.	btnStart	:=	El1889s[1,1]	;	(*������ť*)
stMachine.	btnStop	:= 	El1889s[1,2]	;	(*ֹͣ��ť*)
stMachine.	btnReset	:=	El1889s[1,3]	;	(*��λ��ť*)
stMachine.	btnEstop	:=	Filter[1].Q;	(*��ͣ��ť*)
Filter[1](IN:=NOT El1889s[1,4] , PT:=t#500ms , Q=> , ET=> );(*��ֹ��������*)
bAirPressureOk:= El1889s[1,5]; (*����ѹ����λ*)


(***************************** DI2   ********************************************)
stCtrlCylinder[1].DiBaseLimit	:=El1889s[2,1];	(*�ɼ�����ѹ����1��ʼλ*)
stCtrlCylinder[1].DiWorkLimit	:=El1889s[2,2];	(*�ɼ�����ѹ����1����λ*)
stCtrlCylinder[2].DiBaseLimit	:=El1889s[2,3];	(*�ɼ�����ѹ����2��ʼλ*)
stCtrlCylinder[2].DiWorkLimit	:=El1889s[2,4];	(*�ɼ�����ѹ����2����λ*)
stCtrlCylinder[3].DiBaseLimit	:=El1889s[2,5];	(*��ֽת�����������׻�ʼλ*)
stCtrlCylinder[3].DiWorkLimit	:=El1889s[2,6];	(*��ֽת�����������׹���λ*)
stCtrlCylinder[4].DiBaseLimit	:=El1889s[2,7];	(*����šƿ����ƿ�Ǽ�צ���׻�ʼλ*)
stCtrlCylinder[4].DiWorkLimit	:=El1889s[2,8];	(*����šƿ����ƿ�Ǽ�צ���׹���λ*)
stCtrlCylinder[5].DiBaseLimit	:=El1889s[2,9];	(*����šƿ����?�����������׻�ʼλ*)
stCtrlCylinder[5].DiWorkLimit	:=El1889s[2,10];	(*����šƿ����?�����������׹���λ*)
stCtrlCylinder[6].DiBaseLimit	:=El1889s[2,11];	(*����šƿ���� ?ˮƽ����?���׻�ʼλ*)
stCtrlCylinder[6].DiWorkLimit	:=El1889s[2,12];	(*����šƿ���� ?ˮƽ����?���׹���λ*)
stCtrlCylinder[7].DiBaseLimit	:=El1889s[2,13];	(*װ������?�Ϻ��л��������׻�ʼλ*)
stCtrlCylinder[7].DiWorkLimit	:=El1889s[2,14];	(*װ������?�Ϻ��л��������׹���λ*)
stCtrlCylinder[8].DiBaseLimit	:=El1889s[2,15];	(*װ������?��λ�н�����1��ʼλ*)
stCtrlCylinder[8].DiWorkLimit	:=El1889s[2,16];	(*װ������?��λ�н�����1����λ*)

(***************************** DI3   ********************************************)

stCtrlCylinder[9].DiBaseLimit	:=el1889s[3,1];	(*װ������?��λ�н�����2��ʼλ*)
stCtrlCylinder[9].DiWorkLimit	:=el1889s[3,2];	(*װ������?��λ�н�����2����λ*)
stCtrlCylinder[10].DiBaseLimit	:=el1889s[3,3];	(*װ������?��ֽ�������׻�ʼλ*)
stCtrlCylinder[10].DiWorkLimit	:=el1889s[3,4];	(*װ������?��ֽ�������׹���λ*)
stCtrlCylinder[11].DiBaseLimit	:=el1889s[3,5];	(*�ü���?ѹ���������׻�ʼλ*)
stCtrlCylinder[11].DiWorkLimit	:=el1889s[3,6];	(*�ü���?ѹ���������׹���λ*)
stCtrlCylinder[12].DiBaseLimit	:=el1889s[3,7];	(*�ü���?�ü���ѹ���׻�ʼλ*)
stCtrlCylinder[12].DiWorkLimit	:=el1889s[3,8];	(*�ü���?�ü���ѹ���׹���λ*)
stCtrlCylinder[13].DiBaseLimit	:=el1889s[3,9];	(*�ü���?��©���׻�ʼλ*)
stCtrlCylinder[13].DiWorkLimit	:=el1889s[3,10];	(*�ü���?��©���׹���λ*)
stCtrlCylinder[14].DiBaseLimit	:=el1889s[3,11];	(*�ü���?����ֽ����1��ʼλ*)
stCtrlCylinder[14].DiWorkLimit	:=el1889s[3,12];	(*�ü���?����ֽ����1����λ*)
stCtrlCylinder[15].DiBaseLimit	:=el1889s[3,13];	(*�ü���?����ֽ����2��ʼλ*)
stCtrlCylinder[15].DiWorkLimit	:=el1889s[3,14];	(*�ü���?����ֽ����2����λ*)
stCtrlCylinder[16].DiBaseLimit	:=el1889s[3,15];	(*�ü���?����ֽ����3��ʼλ*)
stCtrlCylinder[16].DiWorkLimit	:=el1889s[3,16];	(*�ü���?����ֽ����3����λ*)

(***************************** DI4   ********************************************)

stCtrlCylinder[17].DiBaseLimit	:=el1889s[4,1];	(*�ü���?����ֽ����4��ʼλ*)
stCtrlCylinder[17].DiWorkLimit	:=el1889s[4,2];	(*�ü���?����ֽ����4����λ*)
stCtrlCylinder[18].DiBaseLimit	:=el1889s[4,3];	(*�ü���?����ֽ����5��ʼλ*)
stCtrlCylinder[18].DiWorkLimit	:=el1889s[4,4];	(*�ü���?����ֽ����5����λ*)
stCtrlCylinder[19].DiBaseLimit	:=el1889s[4,5];	(*�ü���?����ֽ����6��ʼλ*)
stCtrlCylinder[19].DiWorkLimit	:=el1889s[4,6];	(*�ü���?����ֽ����6����λ*)
stCtrlCylinder[20].DiBaseLimit	:=el1889s[4,7];	(*�ü���?����ֽ����7��ʼλ*)
stCtrlCylinder[20].DiWorkLimit	:=el1889s[4,8];	(*�ü���?����ֽ����7����λ*)
stCtrlCylinder[21].DiBaseLimit	:=el1889s[4,9];	(*�ü���?����ֽ����8��ʼλ*)
stCtrlCylinder[21].DiWorkLimit	:=el1889s[4,10];	(*�ü���?����ֽ����8����λ*)
stCtrlCylinder[22].DiBaseLimit	:=el1889s[4,11];	(*�ü���?����ֽ����9��ʼλ*)
stCtrlCylinder[22].DiWorkLimit	:=el1889s[4,12];	(*�ü���?����ֽ����9����λ*)
stCtrlCylinder[23].DiBaseLimit	:=el1889s[4,13];	(*�ü���?����ֽ����10��ʼλ*)
stCtrlCylinder[23].DiWorkLimit	:=el1889s[4,14];	(*�ü���?����ֽ����10����λ*)
stCtrlCylinder[24].DiBaseLimit	:=el1889s[4,15];	(*�ü���?����ֽ����11��ʼλ*)
stCtrlCylinder[24].DiWorkLimit	:=el1889s[4,16];	(*�ü���?����ֽ����11����λ*)


(***************************** DI5   ********************************************)
stCtrlCylinder[25].DiBaseLimit	:=el1889s[5,1];	(*�ü���?����ֽ����12��ʼλ*)
stCtrlCylinder[25].DiWorkLimit	:=el1889s[5,2];	(*�ü���?����ֽ����12����λ*)
stCtrlCylinder[26].DiBaseLimit	:=el1889s[5,3];	(*�ü���?����ֽ����13��ʼλ*)
stCtrlCylinder[26].DiWorkLimit	:=el1889s[5,4];	(*�ü���?����ֽ����13����λ*)
stCtrlCylinder[27].DiBaseLimit	:=el1889s[5,5];	(*�ü���?����ֽ����14��ʼλ*)
stCtrlCylinder[27].DiWorkLimit	:=el1889s[5,6];	(*�ü���?����ֽ����14����λ*)
stCtrlCylinder[28].DiBaseLimit	:=el1889s[5,7];	(*�ü���?����ֽ����15��ʼλ*)
stCtrlCylinder[28].DiWorkLimit	:=el1889s[5,8];	(*�ü���?����ֽ����15����λ*)
stCtrlCylinder[29].DiBaseLimit	:=el1889s[5,9];	(*�ü���?����ֽ����16��ʼλ*)
stCtrlCylinder[29].DiWorkLimit	:=el1889s[5,10];	(*�ü���?����ֽ����16����λ*)
stCtrlCylinder[30].DiBaseLimit	:=el1889s[5,11];	(*�ü���?����ֽ����17��ʼλ*)
stCtrlCylinder[30].DiWorkLimit	:=el1889s[5,12];	(*�ü���?����ֽ����17����λ*)
stCtrlCylinder[31].DiBaseLimit	:=el1889s[5,13];	(*�ü���?����ֽ����18��ʼλ*)
stCtrlCylinder[31].DiWorkLimit	:=el1889s[5,14];	(*�ü���?����ֽ����18����λ*)
stCtrlCylinder[32].DiBaseLimit	:=el1889s[5,15];	(*�ü���?����ֽ����19��ʼλ*)
stCtrlCylinder[32].DiWorkLimit	:=el1889s[5,16];	(*�ü���?����ֽ����19����λ*)

(***************************** DI6   ********************************************)
stCtrlCylinder[33].DiBaseLimit	:=el1889s[6,1];	(*�ü���?����ֽ����20��ʼλ*)
stCtrlCylinder[33].DiWorkLimit	:=el1889s[6,2];	(*�ü���?����ֽ����20����λ*)
stCtrlCylinder[34].DiBaseLimit	:=el1889s[6,3];	(*�ü���?����ֽ����21��ʼλ*)
stCtrlCylinder[34].DiWorkLimit	:=el1889s[6,4];	(*�ü���?����ֽ����21����λ*)
stCtrlCylinder[35].DiBaseLimit	:=el1889s[6,5];	(*�ü���?����ֽ����22��ʼλ*)
stCtrlCylinder[35].DiWorkLimit	:=el1889s[6,6];	(*�ü���?����ֽ����22����λ*)
stCtrlCylinder[36].DiBaseLimit	:=el1889s[6,7];	(*�ü���?����ֽ����23��ʼλ*)
stCtrlCylinder[36].DiWorkLimit	:=el1889s[6,8];	(*�ü���?����ֽ����23����λ*)
stCtrlCylinder[37].DiBaseLimit	:=el1889s[6,9];	(*�ü���?����ֽ����24��ʼλ*)
stCtrlCylinder[37].DiWorkLimit	:=el1889s[6,10];	(*�ü���?����ֽ����24����λ*)
stCtrlCylinder[38].DiBaseLimit	:=el1889s[6,11];	(*�ü���?����ֽ����25��ʼλ*)
stCtrlCylinder[38].DiWorkLimit	:=el1889s[6,12];	(*�ü���?����ֽ����25����λ*)


(***************************** DI7   ********************************************)



Axis_Interface[1].Axis_Limit_Pos:=NOT El1889s[7,1]; 	(*ģ��1����λ*)
Axis_Interface[1].Axis_Limit_Neg:=NOT El1889s[7,2];	(*ģ��1����λ*)
Axis_Interface[2].Axis_Limit_Pos:=NOT El1889s[7,3];	(*ģ��2����λ*)
Axis_Interface[2].Axis_Limit_Neg:=NOT El1889s[7,4];	(*ģ��2����λ*)
Axis_Interface[4].Axis_Limit_Pos:=NOT El1889s[7,5];	(*ģ��3����λ*)
Axis_Interface[4].Axis_Limit_Neg:=NOT El1889s[7,6];	(*ģ��3����λ*)
Axis_Interface[3].Axis_Limit_Pos:=NOT El1889s[7,7];	(*ģ��4����λ*)
Axis_Interface[3].Axis_Limit_Neg:=NOT El1889s[7,8];	(*ģ��4����λ*)



















$   ,   ��           Output \]\g�  (***************************** DO1  ********************************************)

El2889s[1,1]	:=	stCtrlCylinder[1].DoAct	;	(*�ɼ���?�ɼ�����ѹ����1?˫�����Ȧ1ȥ����λ*)
El2889s[1,2]	:=	stCtrlCylinder[2].DoAct;		(*�ɼ���?�ɼ�����ѹ����2?˫�����Ȧ1ȥ����λ*)
El2889s[1,3]	:=	stCtrlCylinder[11].DoAct;	(*�ü���?ѹ����������?˫�����Ȧ1ȥ����λ*)
El2889s[1,4]	:=	stCtrlCylinder[5].DoAct;		(*����šƿ����?��������?˫�����Ȧ1ȥ����λ*)
El2889s[1,5]	:=	stCtrlCylinder[13].DoAct;	(*�ü���?��©����ȥ����λ*)
El2889s[1,6]	:=	stCtrlCylinder[12].DoAct;	(*�ü���?�ü���ѹ����*)
El2889s[1,7]	:=	stCtrlCylinder[10].DoAct;	(*װ������?��ֽ�������׹���λ*)
El2889s[1,8]	:=	stCtrlCylinder[8].DoAct;		(*װ������?��λ�н�����1����λ*)
El2889s[1,9]	:=	stCtrlCylinder[9].DoAct;		(*װ������?��λ�н�����2����λ*)
El2889s[1,10]	:=	stCtrlCylinder[7].DoAct;		(*װ������?�Ϻ��л��������׹���λ*)
El2889s[1,11]	:=	stCtrlCylinder[3].DoAct;		(*��ֽת�����������׹���λ*)
El2889s[1,12]	:=	stCtrlCylinder[4].DoAct;		(*����šƿ����ƿ�Ǽ�צ���׹���λ*)
El2889s[1,13]	:=	stCtrlCylinder[6].DoAct;		(*����šƿ���� ?ˮƽ����?���׹���λ*)
El2889s[1,14]	:=	stCtrlCylinder[14].DoAct;	(*�ü���?����ֽ����1����λ*)
El2889s[1,15]	:=	stCtrlCylinder[15].DoAct;	(*�ü���?����ֽ����2����λ*)
El2889s[1,16]	:=	stCtrlCylinder[16].DoAct;	(*�ü���?����ֽ����3����λ*)

(***************************** DO2  ********************************************)


El2889s[2,1]	:=	stCtrlCylinder[17].DoAct;		(*�ü���?����ֽ����4����λ*)
El2889s[2,2]	:=	stCtrlCylinder[18].DoAct;		(*�ü���?����ֽ����5����λ*)
El2889s[2,3]	:=	stCtrlCylinder[19].DoAct;		(*�ü���?����ֽ����6����λ*)
El2889s[2,4]	:=	stCtrlCylinder[20].DoAct;		(*�ü���?����ֽ����7����λ*)
El2889s[2,5]	:=	stCtrlCylinder[21].DoAct;		(*�ü���?����ֽ����8����λ*)
El2889s[2,6]	:=	stCtrlCylinder[22].DoAct;		(*�ü���?����ֽ����9����λ*)
El2889s[2,7]	:=	stCtrlCylinder[23].DoAct;		(*�ü���?����ֽ����10����λ*)
El2889s[2,8]	:=	stCtrlCylinder[24].DoAct;		(*�ü���?����ֽ����11����λ*)
El2889s[2,9]	:=	stCtrlCylinder[25].DoAct;		(*�ü���?����ֽ����12����λ*)
El2889s[2,10]	:=	stCtrlCylinder[26].DoAct;		(*�ü���?����ֽ����13����λ*)
El2889s[2,11]	:=	stCtrlCylinder[27].DoAct;		(*�ü���?����ֽ����14����λ*)
El2889s[2,12]	:=	stCtrlCylinder[28].DoAct;		(*�ü���?����ֽ����15����λ*)
El2889s[2,13]	:=	stCtrlCylinder[29].DoAct;		(*�ü���?����ֽ����16����λ*)
El2889s[2,14]	:=	stCtrlCylinder[30].DoAct;		(*�ü���?����ֽ����17����λ*)
El2889s[2,15]	:=	stCtrlCylinder[31].DoAct;		(*�ü���?����ֽ����18����λ*)
El2889s[2,16]	:=	stCtrlCylinder[32].DoAct;		(*�ü���?����ֽ����19����λ*)

(***************************** DO3  ********************************************)


El2889s[3,1]	:=	stCtrlCylinder[33].DoAct;		(*�ü���?����ֽ����20����λ*)
El2889s[3,2]	:=	stCtrlCylinder[34].DoAct;		(*�ü���?����ֽ����21����λ*)
El2889s[3,3]	:=	stCtrlCylinder[35].DoAct;		(*�ü���?����ֽ����22����λ*)
El2889s[3,4]	:=	stCtrlCylinder[36].DoAct;		(*�ü���?����ֽ����23����λ*)
El2889s[3,5]	:=	stCtrlCylinder[37].DoAct;		(*�ü���?����ֽ����24����λ*)
El2889s[3,6]	:=	stCtrlCylinder[38].DoAct;		(*�ü���?����ֽ����25����λ*)


El2889s[3,9]	:=	stMachine.boBtnStartLed;(*������ť��*)
El2889s[3,10]	:=	stMachine.	boLamp_Red		(*����-��*);
El2889s[3,11]	:=	stMachine.	boLamp_Yellow		(*����-��*);
El2889s[3,12]	:=	stMachine.boBtnStopLed;		(*��ͣ��ť��*)

El2889s[3,13]	:=	NOT stCtrlCylinder[1].DoAct;		(*�ɼ���?�ɼ�����ѹ����1?˫�����Ȧ2��ʼλ*)
El2889s[3,14]	:=	NOT stCtrlCylinder[2].DoAct;		(*�ɼ���?�ɼ�����ѹ����2?˫�����Ȧ2��ʼλ*)
El2889s[3,15]	:=	NOT stCtrlCylinder[11].DoAct;	(*�ü���?ѹ���������׻�ʼλ*)
El2889s[3,16]	:=	NOT stCtrlCylinder[5].DoAct;		(*����šƿ����?�����������׻�ʼλ*)







             �  ,     :[           PRG_M_Function ��_g	��_g      ri pamer        S   PROGRAM PRG_M_Function
VAR
	bGearIn_ZM	:	BOOL;
	bGearOut_ZM	:	BOOL;


END_VAR   
(*����*)
PRG_Cylinder();               �  , � � �b        
   PRG_Manual d�cg	�_g       ���           �  PROGRAM PRG_Manual
VAR
	i: UINT;
	fbJogMaster: MC_Jog;

	tDancerSetPos	:TON;

	fLeftRollDiam_1: REAL;
	fRightRollDiam_1: REAL;
	iStep: INT;
	iStep1: INT;
	rtMoveAbs			: ARRAY[1..MaxAxes] OF  R_TRIG;
	ftMoveAbs			: ARRAY[1..MaxAxes] OF  F_TRIG;
	rtHome1			: R_TRIG;
	rtHome2			:R_TRIG;
	ftHome1			: F_TRIG;
	ftHome2			:F_TRIG;
	rtEnable			: ARRAY[1..MaxAxes] OF  R_TRIG;
	ftEnable			: ARRAY[1..MaxAxes] OF  F_TRIG;
	Rtrig_HMI_SetButton:ARRAY[1..5] OF R_TRIG;
	Ftrig_HMI_SetButton:ARRAY[1..5] OF F_TRIG;
	AxisSetTim:ARRAY[1..5] OF TON;

	rtAxisHome			: ARRAY[1..MaxAxes] OF  R_TRIG;
	ftAxisHome			: ARRAY[1..MaxAxes] OF  F_TRIG;

END_VAR�  (*һ���ز�*)
PRG_GoHomeTogether();

(*һ��׼������*)

PRG_AutoPreparation();

(*��ԭ��*)
FOR i:=1 TO NumOfDrives DO
		rtAxisHome[I](CLK:=stHmiAxisCmd[i].bHome);
		IF rtAxisHome[I].Q AND ABS(Axis_Interface[i].fActPos)>0.1 THEN
			Axis_Interface[i].bMoveAbs:=TRUE ;
			Axis_Interface[i].fPositon_of_Abs:=0  ;
			Axis_Interface[i].fVelocity_of_Abs:=stAxisParam[i].fVelo_of_Posi;
		END_IF
		ftAxisHome[I](CLK:=stHmiAxisCmd[i].bHome);
		IF ftAxisHome[I].Q THEN
			Axis_Interface[i].bMoveAbs:=FALSE ;
		END_IF
END_FOR


(*�ֶ���λ*)

FOR i:=1 TO NumOfDrives DO
	rtMoveAbs[i](CLK:=stHmiAxisCmd[i].bMoveAbs , Q=> );
	IF rtMoveAbs[i].Q THEN
		Axis_Interface[i].bMoveAbs:=TRUE ;
		Axis_Interface[i].fPositon_of_Abs:=stAxisParam[i].fTargetPosi  ;		(*�ֶ������Ķ�λ����Ȼ����false*)
	END_IF
	ftMoveAbs[i](CLK:=stHmiAxisCmd[i].bMoveAbs , Q=> );
	IF ftMoveAbs[i].Q THEN
		Axis_Interface[i].bMoveAbs:=FALSE ;
	END_IF
	Axis_Interface[i].fVelocity_of_Abs:=stAxisParam[i].fVelo_of_Posi;

	CASE stAxisParam[i].iTargetNr OF
		0:stAxisParam[i].fTargetPosi:= stAxisParam[i].StandbyPos;(*����λ*)
		1:stAxisParam[i].fTargetPosi:= stAxisParam[i].WorkPos1;
		2:stAxisParam[i].fTargetPosi:= stAxisParam[i].WorkPos2;
		3:stAxisParam[i].fTargetPosi:= stAxisParam[i].WorkPos3;
	END_CASE

END_FOR

(*����ԭ��*)
FOR i:=1 TO 5 DO
	Rtrig_HMI_SetButton[i](CLK:=stHmiAxisCmd[I].bSetBiasBnt, Q=> );
	Ftrig_HMI_SetButton[i](CLK:=stHmiAxisCmd[I].bSetBiasBnt, Q=> );
	IF Rtrig_HMI_SetButton[I].Q THEN
		fSaveBias[I]:=fSaveBias[I]+AxisArr[I].NcToPlc.ActPos;
	END_IF
	IF Ftrig_HMI_SetButton[i].Q THEN
		Axis_Interface[i].fPosition_ToBeSet :=-0;
		Axis_Interface[i].bSetPos:=TRUE;(*�����ź�*)
	END_IF
	AxisSetTim[i](IN:= Axis_Interface[i].bSetPos, PT:=t#0.1s , Q=> , ET=> );
	IF AxisSetTim[i].Q THEN
		Axis_Interface[i].bSetPos:=FALSE ;
		AxisSetTim[i] (IN:=FALSE , PT:=t#0.1s, Q=> , ET=> );
	END_IF
END_FOR               �  ,     �w           PRG_Modbus_TCP <hg	�hg                      ;   PROGRAM PRG_Modbus_TCP
VAR
	j: UINT;
	jj: UINT;
END_VAR�(  (**************************************************	ת����X��   read  	****************************************************************************)
mb_Output_Registers[1]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Ready)	;	(*	X��׼������	*)
mb_Output_Registers[2]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Err)	;	(*	X�ᱨ��	*)
mb_Output_Registers[3]	:=	BOOL_TO_WORD(NOT Axis_Interface[1].Axis_NotMoving)	;	(*	X��������	*)
mb_Output_Registers[4]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Limit_Pos)	;	(*	X������λ	*)
mb_Output_Registers[5]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[6]	:=	Axis_Interface[1].fActPosModbus	;	(*	X�ᵱǰλ��	*)
mb_Output_Registers[7]	:=	UDINT_TO_WORD(Axis_Interface[1].Axis_ErrID)	;	(*	X�ᱨ������	*)
mb_Output_Registers[8]	:=	BOOL_TO_WORD(Axis_Interface[1].bEnable)	;	(*	X��ʹ��	*)

(**************************************************	ת����Z��   read  	****************************************************************************)
mb_Output_Registers[9]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Ready)	;	(*	z��׼������	*)
mb_Output_Registers[10]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Err)	;	(*	Z�ᱨ��	*)
mb_Output_Registers[11]	:=	BOOL_TO_WORD(NOT Axis_Interface[2].Axis_NotMoving)	;	(*	Z��������	*)
mb_Output_Registers[12]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Limit_Pos)	;	(*	Z������λ	*)
mb_Output_Registers[13]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[14]	:=	Axis_Interface[2].fActPosModbus	;	(*	Z�ᵱǰλ��	*)
mb_Output_Registers[15]	:=	UDINT_TO_WORD(Axis_Interface[2].Axis_ErrID)	;	(*	Z�ᱨ������	*)
mb_Output_Registers[16]	:=	BOOL_TO_WORD(Axis_Interface[2].bEnable)	;	(*	Z��ʹ��	*)

(**************************************************	�ü�ģ��X��   read  	****************************************************************************)
mb_Output_Registers[17]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Ready)	;	(*	X��׼������	*)
mb_Output_Registers[18]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Err)	;	(*	X�ᱨ��	*)
mb_Output_Registers[19]	:=	BOOL_TO_WORD(NOT Axis_Interface[3].Axis_NotMoving)	;	(*	X��������	*)
mb_Output_Registers[20]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Limit_Pos)	;	(*	X������λ	*)
mb_Output_Registers[21]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[22]	:=	Axis_Interface[3].fActPosModbus	;	(*	X�ᵱǰλ��	*)
mb_Output_Registers[23]	:=	UDINT_TO_WORD(Axis_Interface[3].Axis_ErrID)	;	(*	X�ᱨ������	*)
mb_Output_Registers[24]	:=	BOOL_TO_WORD(Axis_Interface[3].bEnable)	;	(*	X��ʹ��	*)

(**************************************************	�ü�ģ��Y��   read  	****************************************************************************)
mb_Output_Registers[25]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Ready)	;	(*	Y��׼������	*)
mb_Output_Registers[26]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Err)	;	(*	Y�ᱨ��	*)
mb_Output_Registers[27]	:=	BOOL_TO_WORD(NOT Axis_Interface[4].Axis_NotMoving)	;	(*	Y��������	*)
mb_Output_Registers[28]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Limit_Pos)	;	(*	Y������λ	*)
mb_Output_Registers[29]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Limit_Neg)	;	(*	Y�Ḻ��λ	*)
mb_Output_Registers[30]	:=	Axis_Interface[4].fActPosModbus	;	(*	Y�ᵱǰλ��	*)
mb_Output_Registers[31]	:=	UDINT_TO_WORD(Axis_Interface[4].Axis_ErrID)	;	(*	Y�ᱨ������	*)
mb_Output_Registers[32]	:=	BOOL_TO_WORD(Axis_Interface[4].bEnable)	;	(*	Y��ʹ��	*)

(**************************************************	šƿ����   read  	****************************************************************************)
mb_Output_Registers[33]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Ready)	;	(*	R��׼������	*)
mb_Output_Registers[34]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Err)	;	(*	R�ᱨ��	*)
mb_Output_Registers[35]	:=	BOOL_TO_WORD(NOT Axis_Interface[5].Axis_NotMoving)	;	(*	R��������	*)
mb_Output_Registers[36]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Limit_Pos)	;	(*	R������λ	*)
mb_Output_Registers[37]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Limit_Neg)	;	(*	R�Ḻ��λ	*)
mb_Output_Registers[38]	:=	Axis_Interface[5].fActPosModbus	;	(*	R�ᵱǰλ��	*)
mb_Output_Registers[39]	:=	UDINT_TO_WORD(Axis_Interface[5].Axis_ErrID)	;	(*	R�ᱨ������	*)
mb_Output_Registers[40]	:=	BOOL_TO_WORD(Axis_Interface[5].bEnable)	;	(*	R��ʹ��	*)

(**************************************************	����   read  	****************************************************************************)
FOR j:=1 TO NumOfCylinders DO
	mb_Output_Registers[41+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DoAct)	;	(*	���׵Ĺ������	*)
	mb_Output_Registers[42+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DiWorkLimit)	;	(*	���׵�����λ����	*)
	mb_Output_Registers[43+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DiBaseLimit)	;	(*	���׵ĸ���λ����	*)
END_FOR



(**************************************************	ת����X��   write  	****************************************************************************)
stAxisParam[1].fTargetPosi		:= mb_Output_Registers[155]	;	(*ת���� X���Ŀ��λ��*)
stAxisParam[1].WorkPos1		:= mb_Output_Registers[156]	;	(*ת���� X��Ĺ���λ��1*)
stAxisParam[1].WorkPos2		:= mb_Output_Registers[157]	;	(*ת���� X��Ĺ���λ��2*)
stAxisParam[1].WorkPos3		:= mb_Output_Registers[158]	;	(*ת���� X��Ĺ���λ��3*)
iPos_X_Axis 					:= mb_Output_Registers[159	]	;	(*ת����X���Ŀ��λ���˶�����*)
stHmiAxisCmd[1].bHome		:= WORD_TO_BOOL(mb_Output_Registers[160])	;	(*ת����X���ԭ����������*)
stHmiAxisCmd[1].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[161])	;	(*ת����X��ʹ����������*)
stHmiAxisCmd[1].bSetBiasBnt 	:=WORD_TO_BOOL( mb_Output_Registers[162])	;	(*ת����X��ԭ����������*)
Axis_Interface[1].bStop			:= WORD_TO_BOOL(mb_Output_Registers[163])	;	(*ת����X��ֹͣ��������*)
stHmiAxisCmd[1].bReset		:= WORD_TO_BOOL(mb_Output_Registers[164])	;	(*ת����X�Ḵλ��������*)

(**************************************************	ת����Y��   write  	****************************************************************************)
stAxisParam[2].fTargetPosi		:= mb_Output_Registers[165]	;	(*���Ŀ��λ��*)
stAxisParam[2].WorkPos1		:= mb_Output_Registers[166]	;	(*��Ĺ���λ��1*)
stAxisParam[2].WorkPos2		:= mb_Output_Registers[167]	;	(*��Ĺ���λ��2*)
stAxisParam[2].WorkPos3		:= mb_Output_Registers[168]	;	(*��Ĺ���λ��3*)
iPos_Z_Axis 					:= mb_Output_Registers[169	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[2].bHome		:= WORD_TO_BOOL(mb_Output_Registers[170])	;	(*���ԭ����������*)
stHmiAxisCmd[2].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[171])	;	(*��ʹ����������*)
stHmiAxisCmd[2].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[172])	;	(*��ԭ����������*)
Axis_Interface[2].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[173])	;	(*��ֹͣ��������*)
stHmiAxisCmd[2].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[174])	;	(*�Ḵλ��������*)

(**************************************************	�ü�ģ��X��   write  	****************************************************************************)
stAxisParam[3].fTargetPosi		:= mb_Output_Registers[175]	;	(*���Ŀ��λ��*)
stAxisParam[3].WorkPos1		:= mb_Output_Registers[176]	;	(*��Ĺ���λ��1*)
stAxisParam[3].WorkPos2		:= mb_Output_Registers[177]	;	(*��Ĺ���λ��2*)
stAxisParam[3].WorkPos3		:= mb_Output_Registers[178]	;	(*��Ĺ���λ��3*)
iPos_X2_Axis 				:= mb_Output_Registers[179	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[3].bHome		:=  WORD_TO_BOOL(mb_Output_Registers[180])	;	(*���ԭ����������*)
stHmiAxisCmd[3].bEnable		:=  WORD_TO_BOOL(mb_Output_Registers[181])	;	(*��ʹ����������*)
stHmiAxisCmd[3].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[182])	;	(*��ԭ����������*)
Axis_Interface[3].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[183])	;	(*��ֹͣ��������*)
stHmiAxisCmd[3].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[184])	;	(*�Ḵλ��������*)
(**************************************************	�ü�ģ��Y��   write  	****************************************************************************)
stAxisParam[4].fTargetPosi		:= mb_Output_Registers[185]	;	(*���Ŀ��λ��*)
stAxisParam[4].WorkPos1		:= mb_Output_Registers[186]	;	(*��Ĺ���λ��1*)
stAxisParam[4].WorkPos2		:= mb_Output_Registers[187]	;	(*��Ĺ���λ��2*)
stAxisParam[4].WorkPos3		:= mb_Output_Registers[188]	;	(*��Ĺ���λ��3*)
iPos_Y2_Axis 				:= mb_Output_Registers[189	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[4].bHome		:=  WORD_TO_BOOL(mb_Output_Registers[190])	;	(*���ԭ����������*)
stHmiAxisCmd[4].bEnable		:=  WORD_TO_BOOL(mb_Output_Registers[191])	;	(*��ʹ����������*)
stHmiAxisCmd[4].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[192])	;	(*��ԭ����������*)
Axis_Interface[4].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[193])	;	(*��ֹͣ��������*)
stHmiAxisCmd[4].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[194])	;	(*�Ḵλ��������*)

(**************************************************	��ת��   write  	****************************************************************************)
stAxisParam[5].fTargetPosi		:= mb_Output_Registers[195]	;	(*���Ŀ��λ��*)
stAxisParam[5].WorkPos1		:= mb_Output_Registers[196]	;	(*��Ĺ���λ��1*)
stAxisParam[5].WorkPos2		:= mb_Output_Registers[197]	;	(*��Ĺ���λ��2*)
stAxisParam[5].WorkPos3		:= mb_Output_Registers[198]	;	(*��Ĺ���λ��3*)
iPos_R_Axis 					:= mb_Output_Registers[199	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[5].bHome		:= WORD_TO_BOOL(mb_Output_Registers[200])	;	(*���ԭ����������*)
stHmiAxisCmd[5].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[201])	;	(*��ʹ����������*)
stHmiAxisCmd[5].bSetBiasBnt 	:= WORD_TO_BOOL(mb_Output_Registers[202])	;	(*��ԭ����������*)
Axis_Interface[5].bStop			:= WORD_TO_BOOL(mb_Output_Registers[203])	;	(*��ֹͣ��������*)
stHmiAxisCmd[5].bReset		:= WORD_TO_BOOL(mb_Output_Registers[204])	;	(*�Ḵλ��������*)

(**************************************************	����   wirte 	****************************************************************************)
FOR jj:=1 TO NumOfCylinders DO
	stCtrlCylinder[j].DoAct := WORD_TO_BOOL(mb_Output_Registers[205+jj-1]);
END_FOR
iGoAutoTogether_Cmd		:=	mb_Output_Registers[243]		;	(*һ������*)
iGoHomeTogether_Cmd	:=	mb_Output_Registers[244]		;	(*һ����ԭ��*)
iGoResetTogether_Cmd	:=	mb_Output_Registers[245]		;	(*һ����λ*)
iGoStopTogether_Cmd		:= 	mb_Output_Registers[246]		;	(*һ��ֹͣ*)
iGoPrepareAuto_Cmd	:=	mb_Output_Registers[247]		;	(*һ��ȥ׼��λ*)
iAuto_Cmd	:=	mb_Output_Registers[248]		;	(*�Զ��л�*)
 �  , 88��           Modbus_TCP_Read *hg�  (**************************************************	ת����X��   read  	****************************************************************************)
mb_Output_Registers[1]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Ready)	;	(*	X��׼������	*)
mb_Output_Registers[2]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Err)	;	(*	X�ᱨ��	*)
mb_Output_Registers[3]	:=	BOOL_TO_WORD(NOT Axis_Interface[1].Axis_NotMoving)	;	(*	X��������	*)
mb_Output_Registers[4]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Limit_Pos)	;	(*	X������λ	*)
mb_Output_Registers[5]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[6]	:=	Axis_Interface[1].fActPosModbus	;	(*	X�ᵱǰλ��	*)
mb_Output_Registers[7]	:=	UDINT_TO_WORD(Axis_Interface[1].Axis_ErrID)	;	(*	X�ᱨ������	*)
mb_Output_Registers[8]	:=	BOOL_TO_WORD(Axis_Interface[1].bEnable)	;	(*	X��ʹ��	*)

(**************************************************	ת����Z��   read  	****************************************************************************)
mb_Output_Registers[9]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Ready)	;	(*	z��׼������	*)
mb_Output_Registers[10]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Err)	;	(*	Z�ᱨ��	*)
mb_Output_Registers[11]	:=	BOOL_TO_WORD(NOT Axis_Interface[2].Axis_NotMoving)	;	(*	Z��������	*)
mb_Output_Registers[12]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Limit_Pos)	;	(*	Z������λ	*)
mb_Output_Registers[13]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[14]	:=	Axis_Interface[2].fActPosModbus	;	(*	Z�ᵱǰλ��	*)
mb_Output_Registers[15]	:=	UDINT_TO_WORD(Axis_Interface[2].Axis_ErrID)	;	(*	Z�ᱨ������	*)
mb_Output_Registers[16]	:=	BOOL_TO_WORD(Axis_Interface[2].bEnable)	;	(*	Z��ʹ��	*)

(**************************************************	�ü�ģ��X��   read  	****************************************************************************)
mb_Output_Registers[17]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Ready)	;	(*	X��׼������	*)
mb_Output_Registers[18]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Err)	;	(*	X�ᱨ��	*)
mb_Output_Registers[19]	:=	BOOL_TO_WORD(NOT Axis_Interface[3].Axis_NotMoving)	;	(*	X��������	*)
mb_Output_Registers[20]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Limit_Pos)	;	(*	X������λ	*)
mb_Output_Registers[21]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[22]	:=	Axis_Interface[3].fActPosModbus	;	(*	X�ᵱǰλ��	*)
mb_Output_Registers[23]	:=	UDINT_TO_WORD(Axis_Interface[3].Axis_ErrID)	;	(*	X�ᱨ������	*)
mb_Output_Registers[24]	:=	BOOL_TO_WORD(Axis_Interface[3].bEnable)	;	(*	X��ʹ��	*)

(**************************************************	�ü�ģ��Y��   read  	****************************************************************************)
mb_Output_Registers[25]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Ready)	;	(*	Y��׼������	*)
mb_Output_Registers[26]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Err)	;	(*	Y�ᱨ��	*)
mb_Output_Registers[27]	:=	BOOL_TO_WORD(NOT Axis_Interface[4].Axis_NotMoving)	;	(*	Y��������	*)
mb_Output_Registers[28]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Limit_Pos)	;	(*	Y������λ	*)
mb_Output_Registers[29]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Limit_Neg)	;	(*	Y�Ḻ��λ	*)
mb_Output_Registers[30]	:=	Axis_Interface[4].fActPosModbus	;	(*	Y�ᵱǰλ��	*)
mb_Output_Registers[31]	:=	UDINT_TO_WORD(Axis_Interface[4].Axis_ErrID)	;	(*	Y�ᱨ������	*)
mb_Output_Registers[32]	:=	BOOL_TO_WORD(Axis_Interface[4].bEnable)	;	(*	Y��ʹ��	*)

(**************************************************	šƿ����   read  	****************************************************************************)
mb_Output_Registers[33]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Ready)	;	(*	R��׼������	*)
mb_Output_Registers[34]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Err)	;	(*	R�ᱨ��	*)
mb_Output_Registers[35]	:=	BOOL_TO_WORD(NOT Axis_Interface[5].Axis_NotMoving)	;	(*	R��������	*)
mb_Output_Registers[36]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Limit_Pos)	;	(*	R������λ	*)
mb_Output_Registers[37]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Limit_Neg)	;	(*	R�Ḻ��λ	*)
mb_Output_Registers[38]	:=	Axis_Interface[5].fActPosModbus	;	(*	R�ᵱǰλ��	*)
mb_Output_Registers[39]	:=	UDINT_TO_WORD(Axis_Interface[5].Axis_ErrID)	;	(*	R�ᱨ������	*)
mb_Output_Registers[40]	:=	BOOL_TO_WORD(Axis_Interface[5].bEnable)	;	(*	R��ʹ��	*)

(**************************************************	����   read  	****************************************************************************)
FOR j:=1 TO NumOfCylinders DO
	mb_Output_Registers[41+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DoAct)	;	(*	���׵Ĺ������	*)
	mb_Output_Registers[42+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DiWorkLimit)	;	(*	���׵�����λ����	*)
	mb_Output_Registers[43+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DiBaseLimit)	;	(*	���׵ĸ���λ����	*)
END_FOR
�  ,   ��           Modbus_TCP_Write_AutoMode �hg�  
(*�Զ�ģʽ��ֻ�������ֹ���ʹ��*)


iGoAutoTogether_Cmd		:=	mb_Output_Registers[241]		;	(*һ������*)
iGoHomeTogether_Cmd	:=	mb_Output_Registers[242]		;	(*һ����ԭ��*)
iGoResetTogether_Cmd	:=	mb_Output_Registers[243]		;	(*һ����λ*)
iGoStopTogether_Cmd		:= 	mb_Output_Registers[244]		;	(*һ��ֹͣ*)
iGoPrepareAuto_Cmd	:=	mb_Output_Registers[245]		;	(*һ��ȥ׼��λ*)
iAuto_Cmd	:=	mb_Output_Registers[252]		;	(*�Զ��л�*)


�  , 4 4 ��           Modbus_TCP_Write_ManulMode �hgA  
(**************************************************	ת����X��   write  	****************************************************************************)
stAxisParam[1].fTargetPosi		:= mb_Output_Registers[155]	;	(*ת���� X���Ŀ��λ��*)
stAxisParam[1].StandbyPos		:= mb_Output_Registers[156]	;	(*ת���� X��Ĵ�����λ��*)
stAxisParam[1].WorkPos1		:= mb_Output_Registers[157]	;	(*ת���� X��Ĺ���λ��1*)
stAxisParam[1].WorkPos2		:= mb_Output_Registers[158]	;	(*ת���� X��Ĺ���λ��2*)
iPos_X_Axis 					:= mb_Output_Registers[159	]	;	(*ת����X���Ŀ��λ���˶�����*)
stHmiAxisCmd[1].bHome		:= WORD_TO_BOOL(mb_Output_Registers[160])	;	(*ת����X���ԭ����������*)
stHmiAxisCmd[1].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[161])	;	(*ת����X��ʹ����������*)
stHmiAxisCmd[1].bSetBiasBnt 	:=WORD_TO_BOOL( mb_Output_Registers[162])	;	(*ת����X��ԭ����������*)
Axis_Interface[1].bStop			:= WORD_TO_BOOL(mb_Output_Registers[163])	;	(*ת����X��ֹͣ��������*)
stHmiAxisCmd[1].bReset		:= WORD_TO_BOOL(mb_Output_Registers[164])	;	(*ת����X�Ḵλ��������*)

(**************************************************	ת����Y��   write  	****************************************************************************)
stAxisParam[2].fTargetPosi		:= mb_Output_Registers[165]	;	(*���Ŀ��λ��*)
stAxisParam[2].StandbyPos		:= mb_Output_Registers[166]	;	(*ת���� X��Ĵ�����λ��*)
stAxisParam[2].WorkPos1		:= mb_Output_Registers[167]	;	(*��Ĺ���λ��1*)
stAxisParam[2].WorkPos2		:= mb_Output_Registers[168]	;	(*��Ĺ���λ��2*)
stAxisParam[2].WorkPos3		:= mb_Output_Registers[169]	;	(*��Ĺ���λ��3*)
iPos_Z_Axis 					:= mb_Output_Registers[170	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[2].bHome		:= WORD_TO_BOOL(mb_Output_Registers[171])	;	(*���ԭ����������*)
stHmiAxisCmd[2].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[172])	;	(*��ʹ����������*)
stHmiAxisCmd[2].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[173])	;	(*��ԭ����������*)
Axis_Interface[2].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[174])	;	(*��ֹͣ��������*)
stHmiAxisCmd[2].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[175])	;	(*�Ḵλ��������*)

(**************************************************	�ü�ģ��X��   write  	****************************************************************************)
stAxisParam[3].fTargetPosi		:= mb_Output_Registers[176]	;	(*���Ŀ��λ��*)
stAxisParam[3].StandbyPos		:= mb_Output_Registers[177]	;	(*��Ĵ�������λ��*)
stAxisParam[3].WorkPos1		:= mb_Output_Registers[178]	;	(*��Ĺ���λ��1*)
iPos_X2_Axis 				:= mb_Output_Registers[179	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[3].bHome		:=  WORD_TO_BOOL(mb_Output_Registers[180])	;	(*���ԭ����������*)
stHmiAxisCmd[3].bEnable		:=  WORD_TO_BOOL(mb_Output_Registers[181])	;	(*��ʹ����������*)
stHmiAxisCmd[3].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[182])	;	(*��ԭ����������*)
Axis_Interface[3].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[183])	;	(*��ֹͣ��������*)
stHmiAxisCmd[3].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[184])	;	(*�Ḵλ��������*)
(**************************************************	�ü�ģ��Y��   write  	****************************************************************************)
stAxisParam[4].fTargetPosi		:= mb_Output_Registers[185]	;	(*���Ŀ��λ��*)
stAxisParam[4].StandbyPos		:= mb_Output_Registers[186]	;	(*��Ĵ�������λ��*)
stAxisParam[4].WorkPos1		:= mb_Output_Registers[187]	;	(*��Ĺ���λ��1*)
iPos_Y2_Axis 				:= mb_Output_Registers[188	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[4].bHome		:=  WORD_TO_BOOL(mb_Output_Registers[189])	;	(*���ԭ����������*)
stHmiAxisCmd[4].bEnable		:=  WORD_TO_BOOL(mb_Output_Registers[190])	;	(*��ʹ����������*)
stHmiAxisCmd[4].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[191])	;	(*��ԭ����������*)
Axis_Interface[4].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[192])	;	(*��ֹͣ��������*)
stHmiAxisCmd[4].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[193])	;	(*�Ḵλ��������*)

(**************************************************	��ת��   write  	****************************************************************************)
stAxisParam[5].fTargetPosi		:= mb_Output_Registers[194]	;	(*���Ŀ��λ��*)
stAxisParam[5].StandbyPos		:= mb_Output_Registers[195]	;	(*��Ĵ�������λ��*)
stAxisParam[5].WorkPos1		:= mb_Output_Registers[196]	;	(*��Ĺ���λ��1*)
iPos_R_Axis 					:= mb_Output_Registers[197	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[5].bHome		:= WORD_TO_BOOL(mb_Output_Registers[198])	;	(*���ԭ����������*)
stHmiAxisCmd[5].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[199])	;	(*��ʹ����������*)
stHmiAxisCmd[5].bSetBiasBnt 	:= WORD_TO_BOOL(mb_Output_Registers[200])	;	(*��ԭ����������*)
Axis_Interface[5].bStop			:= WORD_TO_BOOL(mb_Output_Registers[201])	;	(*��ֹͣ��������*)
stHmiAxisCmd[5].bReset		:= WORD_TO_BOOL(mb_Output_Registers[202])	;	(*�Ḵλ��������*)

(**************************************************	����   wirte 	****************************************************************************)
FOR jj:=1 TO NumOfCylinders DO
	stCtrlCylinder[j].DoAct := WORD_TO_BOOL(mb_Output_Registers[203+jj-1]);
END_FOR


bGet_Paper_Cmd		:=	WORD_TO_BOOL(mb_Output_Registers[246]);(*ȡֽ*)
bCollect_Cmd		:=	WORD_TO_BOOL(mb_Output_Registers[247]);(*�ɼ�*)
bPut_Paper_Cmd		:=	WORD_TO_BOOL(mb_Output_Registers[248]);(*��ֽ*)
bCut_Paper_Cmd		:=	WORD_TO_BOOL(mb_Output_Registers[249]);(*��ֽ*)
bSet_Box_Cmd		:=	WORD_TO_BOOL(mb_Output_Registers[250]);(*װ����*)
             �  , � � �,           PRG_Monitor ��dg	ߓ_g      abSi TN        <   PROGRAM PRG_Monitor
VAR
	iDrive	:UINT;
	i: UINT;
END_VAR+  

(*ϵͳ��Ҫ����ĳһ��֮ǰ��Ҫ��һЩ�ؼ�״̬�����ж�*)

bDeviceStateOK:=TRUE;
bDriveModeOK:=TRUE;
(*
FOR iDrive:=1 TO NumOfDrives DO
	bDeviceStateOK:=bDeviceStateOK AND DrivesOP[iDrive]=iEcatOp;
	bDriveModeOK:=bDriveModeOK AND (iActDriveMode[iDrive]=iSetDriveMode[iDrive]);
END_FOR

*)
               �  , N N ��        	   PRG_Power ș_g	B�_g      baNCRTCM        �   PROGRAM PRG_Power
(*������ֻ�����ϵ��ʼ��ʱ�趨һ�Σ���Ҫʵʱ�ı��ֵ����Ҫ�����������и�ֵ*)
(*��ͣ��λҲ������ִ��һ�Σ����ڻ��ʹ�ܣ�������ͨ������Ҫ����*)

VAR
	i: UINT;
END_VAR'  
(*****************************���UPS�Լ��Ӵ����Ȼ�·�ź�*************************)

;
(***********************************����������ģʽ�趨*************************)
(*������������������ģʽ*)
(*
FOR i:=1 TO NumOfDrives-2 DO
	iSetDriveMode[i]:=CSP;
END_FOR

iSetDriveMode[9]:=
iSetDriveMode[10]:=CST;		(*9,10��������ģʽ*)
*)

(***********************************��������趨*************************)
(*
(*�趨�����������ķ�ֵ����ΪmA*)
iSetPeakCurrent:=6000;
*)

(***********************************�ֶ���ť���Զ�ָ��ڲ�ָ�������*************************)

FOR i:=1 TO MaxAxes DO
(*ʹ��*)
	Axis_Interface[i].bEnable:=FALSE;
	Axis_Interface[i].bEnableFw:=FALSE;
	Axis_Interface[i].bEnableBw:=FALSE;
(*���Ը��ݹ���Ҫ��ȡ��һ������Ķ�ʹ�� 20210529 sheniang*)

(*��������ָ��*)
	Axis_Interface[i].bHome:=FALSE;
	Axis_Interface[i].bJog_Bw:=FALSE;
	Axis_Interface[i].bHalt:=FALSE;
	Axis_Interface[i].bJog_Fw:=FALSE;
	Axis_Interface[i].bMoveAbs:=FALSE;
	Axis_Interface[i].bMoveVelo:=FALSE;
	Axis_Interface[i].bMoveRel:=FALSE;
	Axis_Interface[i].bReset:=FALSE;
	Axis_Interface[i].bStop:=FALSE;
	Axis_Interface[i].bGearOut:=FALSE;
	Axis_Interface[i].bGearIn:=FALSE;
	Axis_Interface[i].bSetPos:=FALSE;
	Axis_Interface[i].fOverride:=100;

END_FOR

bHasResetOnce:=FALSE;
                 , � � ��           PRG_PTP +hg	X�cg       cma.  t        �  PROGRAM PRG_PTP
VAR
	i: UINT;
	tCycleRead	:TON;

	SetRobotZ_Limit_Pos			 : ADSWRITE;
	SetRobotZ_Limit_Neg		 	: ADSWRITE;
	GetRobotZ_Limit_PosActive	: ADSWRITE;
	GetRobotZ_Limit_NegActive	: ADSWRITE;
	GetRobotZ_Limit_Pos			 : ADSWRITE;
	GetRobotZ_Limit_Neg		 	: ADSWRITE;


	tonWriteAds_Delay: TON;
	LastTorque: INT;

	bActive_PosLimit_GetRobot_Z: BOOL;
	bActive_NegLimit_GetRobot_Z: BOOL;
	bActive_PosLimit_GetRobot_Z_Old: BOOL;
	bActive_NegLimit_GetRobot_Z_Old: BOOL;
	bInit: BOOL;
	iStep: UINT;
	fbSoftLimit_Pos: ARRAY[1..5] OF ADSREAD;
	fbSoftLimit_Neg: ARRAY[1..5] OF ADSREAD;

	fbSoftLimit_Pos_w: ARRAY[1..5] OF ADSWRITE;
	fbSoftLimit_Neg_w: ARRAY[1..5] OF ADSWRITE;

	bNotBusy: BOOL;
	j,jj,jjj:UINT;

END_VAR�  tCycleRead(IN:=NOT tCycleRead.Q , PT:=t#1s , Q=> , ET=> );

Act_AxisLimit();

FOR i:=1 TO MaxAxes DO
(*���ڸ����������*)
	axisarr[i].ReadStatus;

(*���ܿ����*)
	aMC_Power[i](
		Enable:=Axis_Interface[i].bEnable ,
		Enable_Positive:=Axis_Interface[i].bEnableFw (*AND  NOT bSysEstop*) ,	(*�ž�����ܻ���Ϊ������ʹ�ܱ������޷����������޷���ɼ�ͣ����ɿ�����*)
		Enable_Negative:=Axis_Interface[i].bEnableBw (*AND  NOT bSysEstop*),
		Override:=Axis_Interface[i].fOverride ,
		Axis:=axisarr[i],
		Status=>Axis_Interface[i].Axis_Ready );

	aMC_SetPos[i](
		Execute:=Axis_Interface[i].bSetPos AND NOT axisarr[i].Status.Coupled ,
		Position:=Axis_Interface[i].fPosition_ToBeSet ,
		Axis:=AxisArr[i]);

	aMC_Stop[i](
		Execute:=Axis_Interface[i].bStop AND NOT axisarr[i].Status.Coupled,
		Axis:=AxisArr[i]  );

	aMC_Reset[i](
		Execute:=(Axis_Interface[i].bReset OR bSysReset) AND AxisArr[i].Status.Error AND NOT axisarr[i].Status.Coupled,
		Axis:= AxisArr[i] );

	aMC_SoeReset[i](
		Execute:=(Axis_Interface[i].bReset OR bSysReset) AND AxisArr[i].Status.Error (*AND NOT axisarr[i].Status.Coupled*),
		Axis:=AxisArr[i] );

	aMC_Halt[i](
		Execute:=Axis_Interface[i].bHalt AND NOT axisarr[i].Status.Coupled ,
		Axis:= AxisArr[i] );

	aMC_Jog[i](
			JogForward:=Axis_Interface[i].bJog_Fw,
			JogBackwards:=Axis_Interface[i].bJog_Bw  ,
			Mode:=MC_JOGMODE_CONTINOUS ,
			Velocity:=Axis_Interface[i].fVelocity_of_Jog ,
			Axis:=axisarr[i]);

	aMC_MoveRelative[i]	(
		Execute:=Axis_Interface[i].bMoveRel ,
		Distance:=Axis_Interface[i].fPosition_of_Rel ,
		Velocity:=Axis_Interface[i].fVelocity_of_Rel ,
		Axis:=axisarr[i]);

	aMC_MoveAbsolute[i](
		Execute:=Axis_Interface[i].bMoveAbs ,
		Position:=Axis_Interface[i].fPositon_of_Abs ,
		Velocity:=Axis_Interface[i].fVelocity_of_Abs ,
		Axis:=axisarr[i]);

	aMC_MoveVelocity[i](
		Execute:=Axis_Interface[i].bMoveVelo ,
		Velocity:=Axis_Interface[i].fVelocity_of_Velo ,
		Direction:=MC_Negative_Direction ,
		Axis:=axisarr[i],
		InVelocity=>Axis_Interface[i].bInVelo);
END_FOR

(*״̬��ˢ���Լ��ۺ�״̬�Ļ�ȡ*)

All_Enable_OK:=TRUE;
AllAxesStandStill:=TRUE;
Axis_Has_error:=FALSE;
Axis_Homing:=FALSE;

FOR i:=1 TO MaxAxes DO
	All_Enable_OK:=All_Enable_OK AND AxisArr[i].Status.ControlLoopClosed;
	AllAxesStandStill:=AllAxesStandStill AND AxisArr[i].Status.NotMoving;
	Axis_Has_error:=Axis_Has_error OR AxisArr[i].Status.Error;
	Axis_Homing:=Axis_Homing OR AxisArr[i].Status.HomingBusy(*aMC_Home[i].Busy*);
	Axis_Interface[i].Axis_Homed:=AxisArr[i].Status.Homed;
	Axis_Interface[i].Axis_Err:=AxisArr[i].Status.Error;
	Axis_Interface[i].Axis_Coupled:= AxisArr[i].Status.Coupled;
	Axis_Interface[i].Axis_NotMoving:=AxisArr[i].Status.NotMoving;
	Axis_Interface[i].fActPos:=AxisArr[i].NcToPlc.ActPos;
	IF Axis_Interface[i].fActPos>0 THEN
		Axis_Interface[i].fActPosModbus:=REAL_TO_WORD(Axis_Interface[i].fActPos*10);
	ELSE
		Axis_Interface[i].fActPosModbus:=0;
	END_IF
	Axis_Interface[i].Axis_ErrID:=AxisArr[i].Status.ErrorID;
	stAxisDisplay[i].fActPos:=AxisArr[i].NcToPlc.ActPos;
	Axis_Interface[i].fActVelo:=AxisArr[i].NcToPlc.ActVelo;
	IF NOT (*aMC_Home[i].Busy*)AxisArr[i].Status.HomingBusy  THEN		(*ʹ���᱾����״̬���������þ���Ĺ��ܿ����*)	(*ʹ���᱾����״̬���ȼ�̫�ͣ����ȱ�ʹ���ź�ͣ���ˣ������޷���ɻ���*)
		Axis_Interface[i].bEnableFw:=NOT Axis_Interface[i].Axis_Limit_Pos;
		Axis_Interface[i].bEnableBw:=NOT Axis_Interface[i].Axis_Limit_Neg;
	END_IF
END_FOR

Modbus_TCP;
Act_SoftLimitInit;
 �  , � � ��           Act_AxisLimit z�^g[  (*	1	����̽ͷ��
	2	����̽ͷ��	
	3	����̽ͷ��	
	4	�������	
	5	׼ֱ���	
	6	��ת���	
	7	������	
	8	����̽ͷ��	*)



FOR i:=1 TO 5 DO
IF iAxisSoftLimitSwitch_Pos[i]<>iAxisSoftLimitSwitch_Pos_Old[i] AND bInit THEN
	iAxisSoftLimitSwitch_Pos_Old[i]:=iAxisSoftLimitSwitch_Pos[i];
	fbSoftLimit_Pos_w[i].WRITE:=TRUE;
ELSE
	fbSoftLimit_Pos_w[i].WRITE:=FALSE;
END_IF

IF iAxisSoftLimitSwitch_Neg[i]<>iAxisSoftLimitSwitch_Neg_Old[i] AND bInit AND NOT fbSoftLimit_Pos_w[i].BUSY THEN
	iAxisSoftLimitSwitch_Neg_Old[i]:=iAxisSoftLimitSwitch_Neg[i];
	fbSoftLimit_Neg_w[i].WRITE:=TRUE;
ELSE
	fbSoftLimit_Neg_w[i].WRITE:=FALSE;
END_IF

IF  iAxisSoftLimitSwitch_Pos[i] THEN
	iAxisSoftLimitSwitch_Pos1[i]:=1;
ELSE
	iAxisSoftLimitSwitch_Pos1[i]:=0;
END_IF

IF  iAxisSoftLimitSwitch_Neg[i] THEN
	iAxisSoftLimitSwitch_Neg1[i]:=1;
ELSE
	iAxisSoftLimitSwitch_Neg1[i]:=0;
END_IF


END_FOR


FOR i:=1 TO 5 DO
fbSoftLimit_Pos_w[i](
	NETID:= '',
	PORT:=501 ,
	IDXGRP:=16#5000+i ,
	IDXOFFS:=16#C ,
	LEN:=2 ,
	SRCADDR:=ADR(iAxisSoftLimitSwitch_Pos1[i]) ,
	WRITE:= ,
	TMOUT:=t#200ms ,
	BUSY=> ,
	ERR=> , 
	ERRID=> );

fbSoftLimit_Neg_w[i](
	NETID:= '',
	PORT:=501 ,
	IDXGRP:=16#5000+i ,
	IDXOFFS:=16#B ,
	LEN:=2 ,
	SRCADDR:=ADR(iAxisSoftLimitSwitch_Neg1[i]) ,
	WRITE:= ,
	TMOUT:=t#200ms ,
	BUSY=> ,
	ERR=> , 
	ERRID=> );

END_FOR
�  , �           Act_SoftLimitinit ��^g�  (*	1	����̽ͷ��
	2	����̽ͷ��	
	3	����̽ͷ��	
	4	�������	
	5	׼ֱ���	
	6	��ת���	
	7	������	
	8	����̽ͷ��	*)

IF bInit THEN
	RETURN;
END_IF


CASE iStep OF
0:
	FOR i:=1 TO 5 DO
		fbSoftLimit_Pos[I].READ:=TRUE;
		fbSoftLimit_Neg[i].READ:=TRUE;
	END_FOR
	iStep:=100;
100:
	iStep:=200;

200:
	bNotBusy:=FALSE;
	FOR i:=1 TO 5 DO
		bNotBusy:=bNotBusy OR  fbSoftLimit_Pos[i].BUSY OR fbSoftLimit_Neg[i].BUSY;
	END_FOR
	IF NOT bNotBusy THEN
		iStep:=300;
	END_IF
300:
	FOR i:=1 TO 5 DO
		fbSoftLimit_Pos[I].READ:=FALSE;
		fbSoftLimit_Neg[i].READ:=FALSE;
	END_FOR
	iStep:=400;
400:
	bInit:=TRUE;
END_CASE



FOR i:=1 TO 5 DO
MEMSET(destAddr:=ADR(iAxisSoftLimitSwitch_Pos_Old[i]),fillByte:=0,n:=2);
MEMSET(destAddr:=ADR(iAxisSoftLimitSwitch_Neg_Old[i]),fillByte:=0,n:=2);
fbSoftLimit_Pos[i](
	NETID:='' ,
	PORT:= 501,
	IDXGRP:=16#5000+i ,
	IDXOFFS:=16#C ,
	LEN:=2 ,
	DESTADDR:=ADR(iAxisSoftLimitSwitch_Pos_Old[i]) ,
	READ:= , 
	TMOUT:=t#200ms ,
	BUSY=> , 
	ERR=> , 
	ERRID=> );

fbSoftLimit_Neg[i](
	NETID:='' ,
	PORT:= 501,
	IDXGRP:=16#5000+i ,
	IDXOFFS:=16#B ,
	LEN:=2 ,
	DESTADDR:=ADR(iAxisSoftLimitSwitch_Neg_Old[i]) ,
	READ:= , 
	TMOUT:=t#200ms ,
	BUSY=> , 
	ERR=> , 
	ERRID=> );


END_FOR
�  , 88L        
   Modbus_TCP *hg�(  (**************************************************	ת����X��   read  	****************************************************************************)
mb_Output_Registers[1]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Ready)	;	(*	X��׼������	*)
mb_Output_Registers[2]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Err)	;	(*	X�ᱨ��	*)
mb_Output_Registers[3]	:=	BOOL_TO_WORD(NOT Axis_Interface[1].Axis_NotMoving)	;	(*	X��������	*)
mb_Output_Registers[4]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Limit_Pos)	;	(*	X������λ	*)
mb_Output_Registers[5]	:=	BOOL_TO_WORD(Axis_Interface[1].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[6]	:=	Axis_Interface[1].fActPosModbus	;	(*	X�ᵱǰλ��	*)
mb_Output_Registers[7]	:=	UDINT_TO_WORD(Axis_Interface[1].Axis_ErrID)	;	(*	X�ᱨ������	*)
mb_Output_Registers[8]	:=	BOOL_TO_WORD(Axis_Interface[1].bEnable)	;	(*	X��ʹ��	*)

(**************************************************	ת����Z��   read  	****************************************************************************)
mb_Output_Registers[9]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Ready)	;	(*	z��׼������	*)
mb_Output_Registers[10]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Err)	;	(*	Z�ᱨ��	*)
mb_Output_Registers[11]	:=	BOOL_TO_WORD(NOT Axis_Interface[2].Axis_NotMoving)	;	(*	Z��������	*)
mb_Output_Registers[12]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Limit_Pos)	;	(*	Z������λ	*)
mb_Output_Registers[13]	:=	BOOL_TO_WORD(Axis_Interface[2].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[14]	:=	Axis_Interface[2].fActPosModbus	;	(*	Z�ᵱǰλ��	*)
mb_Output_Registers[15]	:=	UDINT_TO_WORD(Axis_Interface[2].Axis_ErrID)	;	(*	Z�ᱨ������	*)
mb_Output_Registers[16]	:=	BOOL_TO_WORD(Axis_Interface[2].bEnable)	;	(*	Z��ʹ��	*)

(**************************************************	�ü�ģ��X��   read  	****************************************************************************)
mb_Output_Registers[17]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Ready)	;	(*	X��׼������	*)
mb_Output_Registers[18]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Err)	;	(*	X�ᱨ��	*)
mb_Output_Registers[19]	:=	BOOL_TO_WORD(NOT Axis_Interface[3].Axis_NotMoving)	;	(*	X��������	*)
mb_Output_Registers[20]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Limit_Pos)	;	(*	X������λ	*)
mb_Output_Registers[21]	:=	BOOL_TO_WORD(Axis_Interface[3].Axis_Limit_Neg)	;	(*	X�Ḻ��λ	*)
mb_Output_Registers[22]	:=	Axis_Interface[3].fActPosModbus	;	(*	X�ᵱǰλ��	*)
mb_Output_Registers[23]	:=	UDINT_TO_WORD(Axis_Interface[3].Axis_ErrID)	;	(*	X�ᱨ������	*)
mb_Output_Registers[24]	:=	BOOL_TO_WORD(Axis_Interface[3].bEnable)	;	(*	X��ʹ��	*)

(**************************************************	�ü�ģ��Y��   read  	****************************************************************************)
mb_Output_Registers[25]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Ready)	;	(*	Y��׼������	*)
mb_Output_Registers[26]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Err)	;	(*	Y�ᱨ��	*)
mb_Output_Registers[27]	:=	BOOL_TO_WORD(NOT Axis_Interface[4].Axis_NotMoving)	;	(*	Y��������	*)
mb_Output_Registers[28]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Limit_Pos)	;	(*	Y������λ	*)
mb_Output_Registers[29]	:=	BOOL_TO_WORD(Axis_Interface[4].Axis_Limit_Neg)	;	(*	Y�Ḻ��λ	*)
mb_Output_Registers[30]	:=	Axis_Interface[4].fActPosModbus	;	(*	Y�ᵱǰλ��	*)
mb_Output_Registers[31]	:=	UDINT_TO_WORD(Axis_Interface[4].Axis_ErrID)	;	(*	Y�ᱨ������	*)
mb_Output_Registers[32]	:=	BOOL_TO_WORD(Axis_Interface[4].bEnable)	;	(*	Y��ʹ��	*)

(**************************************************	šƿ����   read  	****************************************************************************)
mb_Output_Registers[33]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Ready)	;	(*	R��׼������	*)
mb_Output_Registers[34]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Err)	;	(*	R�ᱨ��	*)
mb_Output_Registers[35]	:=	BOOL_TO_WORD(NOT Axis_Interface[5].Axis_NotMoving)	;	(*	R��������	*)
mb_Output_Registers[36]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Limit_Pos)	;	(*	R������λ	*)
mb_Output_Registers[37]	:=	BOOL_TO_WORD(Axis_Interface[5].Axis_Limit_Neg)	;	(*	R�Ḻ��λ	*)
mb_Output_Registers[38]	:=	Axis_Interface[5].fActPosModbus	;	(*	R�ᵱǰλ��	*)
mb_Output_Registers[39]	:=	UDINT_TO_WORD(Axis_Interface[5].Axis_ErrID)	;	(*	R�ᱨ������	*)
mb_Output_Registers[40]	:=	BOOL_TO_WORD(Axis_Interface[5].bEnable)	;	(*	R��ʹ��	*)

(**************************************************	����   read  	****************************************************************************)
FOR j:=1 TO NumOfCylinders DO
	mb_Output_Registers[41+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DoAct)	;	(*	���׵Ĺ������	*)
	mb_Output_Registers[42+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DiWorkLimit)	;	(*	���׵�����λ����	*)
	mb_Output_Registers[43+(j-1)*3]	:=	BOOL_TO_WORD(stCtrlCylinder[j].DiBaseLimit)	;	(*	���׵ĸ���λ����	*)
END_FOR



(**************************************************	ת����X��   write  	****************************************************************************)
stAxisParam[1].fTargetPosi		:= mb_Output_Registers[155]	;	(*ת���� X���Ŀ��λ��*)
stAxisParam[1].WorkPos1		:= mb_Output_Registers[156]	;	(*ת���� X��Ĺ���λ��1*)
stAxisParam[1].WorkPos2		:= mb_Output_Registers[157]	;	(*ת���� X��Ĺ���λ��2*)
stAxisParam[1].WorkPos3		:= mb_Output_Registers[158]	;	(*ת���� X��Ĺ���λ��3*)
iPos_X_Axis 					:= mb_Output_Registers[159	]	;	(*ת����X���Ŀ��λ���˶�����*)
stHmiAxisCmd[1].bHome		:= WORD_TO_BOOL(mb_Output_Registers[160])	;	(*ת����X���ԭ����������*)
stHmiAxisCmd[1].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[161])	;	(*ת����X��ʹ����������*)
stHmiAxisCmd[1].bSetBiasBnt 	:=WORD_TO_BOOL( mb_Output_Registers[162])	;	(*ת����X��ԭ����������*)
Axis_Interface[1].bStop			:= WORD_TO_BOOL(mb_Output_Registers[163])	;	(*ת����X��ֹͣ��������*)
stHmiAxisCmd[1].bReset		:= WORD_TO_BOOL(mb_Output_Registers[164])	;	(*ת����X�Ḵλ��������*)

(**************************************************	ת����Y��   write  	****************************************************************************)
stAxisParam[2].fTargetPosi		:= mb_Output_Registers[165]	;	(*���Ŀ��λ��*)
stAxisParam[2].WorkPos1		:= mb_Output_Registers[166]	;	(*��Ĺ���λ��1*)
stAxisParam[2].WorkPos2		:= mb_Output_Registers[167]	;	(*��Ĺ���λ��2*)
stAxisParam[2].WorkPos3		:= mb_Output_Registers[168]	;	(*��Ĺ���λ��3*)
iPos_Z_Axis 					:= mb_Output_Registers[169	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[2].bHome		:= WORD_TO_BOOL(mb_Output_Registers[170])	;	(*���ԭ����������*)
stHmiAxisCmd[2].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[171])	;	(*��ʹ����������*)
stHmiAxisCmd[2].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[172])	;	(*��ԭ����������*)
Axis_Interface[2].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[173])	;	(*��ֹͣ��������*)
stHmiAxisCmd[2].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[174])	;	(*�Ḵλ��������*)

(**************************************************	�ü�ģ��X��   write  	****************************************************************************)
stAxisParam[3].fTargetPosi		:= mb_Output_Registers[175]	;	(*���Ŀ��λ��*)
stAxisParam[3].WorkPos1		:= mb_Output_Registers[176]	;	(*��Ĺ���λ��1*)
stAxisParam[3].WorkPos2		:= mb_Output_Registers[177]	;	(*��Ĺ���λ��2*)
stAxisParam[3].WorkPos3		:= mb_Output_Registers[178]	;	(*��Ĺ���λ��3*)
iPos_X2_Axis 				:= mb_Output_Registers[179	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[3].bHome		:=  WORD_TO_BOOL(mb_Output_Registers[180])	;	(*���ԭ����������*)
stHmiAxisCmd[3].bEnable		:=  WORD_TO_BOOL(mb_Output_Registers[181])	;	(*��ʹ����������*)
stHmiAxisCmd[3].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[182])	;	(*��ԭ����������*)
Axis_Interface[3].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[183])	;	(*��ֹͣ��������*)
stHmiAxisCmd[3].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[184])	;	(*�Ḵλ��������*)
(**************************************************	�ü�ģ��Y��   write  	****************************************************************************)
stAxisParam[4].fTargetPosi		:= mb_Output_Registers[185]	;	(*���Ŀ��λ��*)
stAxisParam[4].WorkPos1		:= mb_Output_Registers[186]	;	(*��Ĺ���λ��1*)
stAxisParam[4].WorkPos2		:= mb_Output_Registers[187]	;	(*��Ĺ���λ��2*)
stAxisParam[4].WorkPos3		:= mb_Output_Registers[188]	;	(*��Ĺ���λ��3*)
iPos_Y2_Axis 				:= mb_Output_Registers[189	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[4].bHome		:=  WORD_TO_BOOL(mb_Output_Registers[190])	;	(*���ԭ����������*)
stHmiAxisCmd[4].bEnable		:=  WORD_TO_BOOL(mb_Output_Registers[191])	;	(*��ʹ����������*)
stHmiAxisCmd[4].bSetBiasBnt 	:=  WORD_TO_BOOL(mb_Output_Registers[192])	;	(*��ԭ����������*)
Axis_Interface[4].bStop			:=  WORD_TO_BOOL(mb_Output_Registers[193])	;	(*��ֹͣ��������*)
stHmiAxisCmd[4].bReset		:=  WORD_TO_BOOL(mb_Output_Registers[194])	;	(*�Ḵλ��������*)

(**************************************************	��ת��   write  	****************************************************************************)
stAxisParam[5].fTargetPosi		:= mb_Output_Registers[195]	;	(*���Ŀ��λ��*)
stAxisParam[5].WorkPos1		:= mb_Output_Registers[196]	;	(*��Ĺ���λ��1*)
stAxisParam[5].WorkPos2		:= mb_Output_Registers[197]	;	(*��Ĺ���λ��2*)
stAxisParam[5].WorkPos3		:= mb_Output_Registers[198]	;	(*��Ĺ���λ��3*)
iPos_R_Axis 					:= mb_Output_Registers[199	]	;	(*���Ŀ��λ���˶�����*)
stHmiAxisCmd[5].bHome		:= WORD_TO_BOOL(mb_Output_Registers[200])	;	(*���ԭ����������*)
stHmiAxisCmd[5].bEnable		:= WORD_TO_BOOL(mb_Output_Registers[201])	;	(*��ʹ����������*)
stHmiAxisCmd[5].bSetBiasBnt 	:= WORD_TO_BOOL(mb_Output_Registers[202])	;	(*��ԭ����������*)
Axis_Interface[5].bStop			:= WORD_TO_BOOL(mb_Output_Registers[203])	;	(*��ֹͣ��������*)
stHmiAxisCmd[5].bReset		:= WORD_TO_BOOL(mb_Output_Registers[204])	;	(*�Ḵλ��������*)

(**************************************************	����   wirte 	****************************************************************************)
FOR jj:=1 TO NumOfCylinders DO
	stCtrlCylinder[j].DoAct := WORD_TO_BOOL(mb_Output_Registers[205+jj-1]);
END_FOR
iGoAutoTogether_Cmd		:=	mb_Output_Registers[243]		;	(*һ������*)
iGoHomeTogether_Cmd	:=	mb_Output_Registers[244]		;	(*һ����ԭ��*)
iGoResetTogether_Cmd	:=	mb_Output_Registers[245]		;	(*һ����λ*)
iGoStopTogether_Cmd		:= 	mb_Output_Registers[246]		;	(*һ��ֹͣ*)
iGoPrepareAuto_Cmd	:=	mb_Output_Registers[247]		;	(*һ��ȥ׼��λ*)
iAuto_Cmd	:=	mb_Output_Registers[248]		;	(*�Զ��л�*)
             �  , � � ��        
   PRG_ServOn ��_g	u�_g      fs=100_0        �   PROGRAM PRG_ServOn
(**ר�Ŵ���ʹ�ܵĳ�����Ϊ��һ��ֻ�ڳ�ʼ��ʱʹ�ã����Դӳ�ʼ�����������뿪��**)
VAR
	i: UINT;
	Encoder: BOOL;
END_VAR�   (*ʹ��*)
FOR i:=1 TO MaxAxes DO
	Axis_Interface[i].bEnable:=TRUE;
	Axis_Interface[i].bEnableFw:=TRUE;
	Axis_Interface[i].bEnableBw:=TRUE;
END_FOR
               q  , �        	   PulseCtrl x�^g	o�^g      ��X�ȏx�        �  FUNCTION_BLOCK PulseCtrl
VAR_INPUT
END_VAR
VAR_OUTPUT
	BlinkSlow		: BOOL;
	Blink				: BOOL;
	BlinkFast		: BOOL;
	BlinkVeryFast	:	BOOL;
END_VAR
VAR
	_20ms			: PulseGeneratorCtrl;
	_100ms			: PulseGeneratorCtrl;
	_250ms			: PulseGeneratorCtrl;
	_400ms			: PulseGeneratorCtrl; (* Blink Fast *)
	_500ms			: PulseGeneratorCtrl;
	_800ms			: PulseGeneratorCtrl; (* Blink *)
	_1s				: PulseGeneratorCtrl;
	_1s600ms			: PulseGeneratorCtrl; (* Blink Slow *)
(*	_2s				: PulseGeneratorCtrl; *)
	_5s				: PulseGeneratorCtrl;
(*	_10s				: PulseGeneratorCtrl; *)
(*	_2m				: PulseGeneratorCtrl; *)
(*	_5m				: PulseGeneratorCtrl; *)
(*	_30m				: PulseGeneratorCtrl; *)
END_VAR
[  (* Taktgeber *******************************************************************************)
	(* Generiere 100ms Takt *)
	_20ms(
		PT_OFF			:= t#20ms,
		PT_ON				:= t#20ms,
		Q					=> ,
		RT					=> );

	(* Generiere 100ms Q *)
	_100ms(
		PT_OFF			:= t#100ms,
		PT_ON				:= t#100ms,
		Q					=> ,
		RT					=> );

	(* Generiere 250ms Q Flimmerlicht*)
	_250ms(
		PT_OFF			:= t#250ms,
		PT_ON				:= t#250ms,
		Q					=> BlinkVeryFast,
		RT					=> );

	(* Generiere 400ms Q Schnelles Blinklicht *)
	_400ms(
		PT_OFF			:= t#400ms,
		PT_ON				:= t#400ms,
		Q					=> BlinkFast,
		RT					=> ); 

	(* Generiere 500ms Q *)
	_500ms(
		PT_OFF			:= t#500ms,
		PT_ON				:= t#500ms,
		Q					=> ,
		RT					=> );

	(* Generiere 800ms Q Blinklicht *)
	_800ms(
		PT_OFF			:= t#800ms,
		PT_ON				:= t#800ms,
		Q					=> Blink, 
		RT					=> );

	(* Generiere 1s Q *)
	_1s(
		PT_OFF			:= t#1s,
		PT_ON				:= t#1s,
		Q					=> ,
		RT					=> );

	(* Generiere 1s600ms Q Langsames Blinklicht *)
	_1s600ms(
		PT_OFF			:= t#1s600ms,
		PT_ON				:= t#1s600ms,
		Q					=> BlinkSlow,
		RT					=> );

	(* Generiere 2s Q *)
(*	_2s(
		PT_OFF			:= t#2s,
		PT_ON				:= t#2s,
		Q					=> ,
		RT					=> ); *)

	(* Generiere 2s Q *)
	_5s(
		PT_OFF			:= t#5s,
		PT_ON				:= t#5s,
		Q					=> ,
		RT					=> );

	(* Generiere 10s Q *)
(*	_10s(
		PT_OFF			:= t#10s,
		PT_ON				:= t#10s,
		Q					=> ,
		RT					=> ); *)

	(* Generiere 2Min Q *)
(*	_2m(
		PT_OFF			:= t#2m,
		PT_ON				:= t#2m,
		Q					=> ,
		RT					=> ); *)

	(* Generiere 5Min Q *)
(*	_5m(
		PT_OFF			:= t#5m,
		PT_ON				:= t#5m,
		Q					=> ,
		RT					=> ); *)

	(* Generiere 30Min Q *)
(*	_30m(
		PT_OFF			:= t#30m,
		PT_ON				:= t#30m,
		Q					=> ,
		RT					=> ); *)

(************************************************************************************************)               r  , 2�           PulseGeneratorCtrl ��^g	��^g      ��p���H�        �   FUNCTION_BLOCK PulseGeneratorCtrl
VAR_INPUT
	PT_OFF		: TIME;
	PT_ON			: TIME;
END_VAR
VAR_OUTPUT
	Q				: BOOL;
	RT				: BOOL;
END_VAR
VAR
	TON_PULSE		: TON;
END_VAR
h  (* Reset Flanke *)
RT := FALSE;
(* Taktgenerator *)
IF TON_PULSE.Q AND Q THEN
	TON_PULSE(IN:=FALSE  , PT:= PT_OFF);
	RT := Q;
	Q := FALSE;
ELSIF	TON_PULSE.Q AND NOT Q THEN
	RT := NOT Q;
	TON_PULSE(IN:= FALSE , PT:= PT_ON) ;
	Q := TRUE;
END_IF
(* Work Timer *)
TON_PULSE(IN:=TRUE);

(*************************************************************)               �  , 4 4 n�           SystemInfoCtrl w�_g	��_g      �hH��        �  FUNCTION_BLOCK SystemInfoCtrl
VAR_INPUT
	Reset					: BOOL;
	RTCSyncCylce		:	DWORD := 5; (* in seconds *)
	TimeStampTrig		:	BOOL;
END_VAR
VAR_OUTPUT
	RunTimeNo			: BYTE;
	ProjectName			: STRING(32);
	NumberOfTasks		: BYTE;
	OnlineChangeCount	: UINT;
	RetainVarErr		: BOOL;
	PersistenVarErr	: BOOL;
	TimeStampDT			:	DATE_AND_TIME;
	TimeStamp			:	STRING(25); (* DD.MM.YY-Stunde:Minute:Sekunde:xxx *)
	TimeStr				:	STRING(15);	(* hh.mm.ss.xxms *)
	DateStr				:	STRING(15);	(* dd.mm.jj *)
	TimeStamp2			:	STRING(25); (* YYYY-MM-DD_HHMMSS for example YYYY-MM-DD_HHMMSS_Name.txt *)
	TimeStruct			:	TIMESTRUCT;
	MonthDays			:	WORD;
	LeapYear				:	BOOL;
	WeekOfYear			:	WORD;
	timezoneId			: 	E_TimeZoneID;
END_VAR

VAR
	(* Inst. Get Taskindex *)
	InstGETCURTASKINDEX	: 	GETCURTASKINDEX;
	InstLocalSystemTime	:	FB_LocalSystemTime;

	(* Info: SystemInfo.bootDataFlags
	Bit
	0 RETAIN Variablen: LOADED (fehlerfrei geladen)
	1 RETAIN Variablen: INVALID (es wurde die Sicherungskopie geladen, weil keine g�ltige Datei vorhanden war)
	2 RETAIN Variablen: REQUESTED (RETAIN Variablen sollten geladen werden, Einstellung im TwinCAT System Control))
	3 reserviert
	4 PERSISTENT Variablen: LOADED (fehlerfrei geladen)
	5 PERSISTENT Variablen: INVALID (es wurde die Sicherungskopie geladen, weil keine g�ltige Datei vorhanden war)
	6 reserviert
	7 reserviert *)

	RetainVarLoaded			: BOOL;
	RetainVarInvalid		: BOOL;
	RetainVarRequested		: BOOL;
	PersistentVarLoaded		: BOOL;
	PersistentVarInvalid	: BOOL;

	(* Info: SystemTaskInfoArr	(* Ist ein Array von 1-4 *)
	active					:	BOOL; 		(* Diese Variable zeigt an, ob die Task aktiv ist.*)
	taskName					:	STRING(16);	(* Der Taskname.*)
	firstCycle				:	BOOL;			(* Diese Variable hat im ersten Zyklus der SPS-Task den Wert: TRUE.*)
	cycleTimeExceeded		:	BOOL;			(* In dieser Variablen wird ein �berschreiten der eingestellten Taskzykluszeit gemeldet*)
	cycleTime				:	UDINT;		(* Eingestellte Taskzykluszeit in Vielfachen von 100ns*)
	lastExecTime			:	UDINT;		(* Ben�tigte Zykluszeit f�r den letzten Zyklus in Vielfachen von 100 ns*)
	priority					:	BYTE;			(* Eingestellte Prioritaet der Task*)
	cycleCount				: 	UDINT;		(* Zykluszaehler*) *)
	_sec						:	WORD;
	_hour						:	WORD;
END_VAR
�  (* Get Current Task Index ************************************************************************)
	InstGETCURTASKINDEX();

(* Read System Info Current Task *****************************************************************)
	(* Task Info *)
	RunTimeNo				:= SystemInfo.runTimeNo;
	ProjectName				:= SystemInfo.projectName;
	NumberOfTasks 			:= SystemInfo.numberOfTasks;
	OnlineChangeCount		:= SystemInfo.onlineChangeCount;

	(* System Boot Flags *)
	RetainVarLoaded		:= SystemInfo.bootDataFlags.0;
	RetainVarInvalid		:= SystemInfo.bootDataFlags.1 ;
	RetainVarRequested 	:= SystemInfo.bootDataFlags.2 ;
	PersistentVarLoaded	:= SystemInfo.bootDataFlags.4;
	PersistentVarInvalid	:= SystemInfo.bootDataFlags.5;


	(* Retein/Persisten Data Err *)
	IF SystemTaskInfoArr[InstGETCURTASKINDEX.Index].firstCycle THEN
		RetainVarErr		:= NOT RetainVarLoaded AND RetainVarRequested OR RetainVarInvalid;
		PersistenVarErr	:= NOT PersistentVarLoaded OR PersistentVarInvalid;
	ELSIF Reset THEN
		M_Reset();
	ELSE
		;
	END_IF

(* Systemzeit auslesen ************************************************************************)
	InstLocalSystemTime(
		sNetID		:= '',
		bEnable		:= TRUE,
		dwCycle		:= RTCSyncCylce,
		dwOpt			:= (* Default *),
		tTimeout		:= (* Default *),
		bValid		=> ,
		systemTime	=> TimeStruct,
		tzID			=> timezoneId);

	IF TimeStampTrig
		AND InstLocalSystemTime.bValid
	THEN
		(* Date dd.mm.jj ********************)
		IF TimeStruct.wDay < 10 THEN
			DateStr := CONCAT('0',WORD_TO_STRING(TimeStruct.wDay));
		ELSE
			DateStr := WORD_TO_STRING(TimeStruct.wDay);
		END_IF
		DateStr := CONCAT(DateStr,'.');
		IF TimeStruct.wMonth < 10 THEN
			DateStr := CONCAT(DateStr,CONCAT('0',WORD_TO_STRING(TimeStruct.wMonth)));
		ELSE
			DateStr := CONCAT(DateStr,WORD_TO_STRING(TimeStruct.wMonth));
		END_IF
		DateStr := CONCAT(DateStr,'.');
		DateStr := CONCAT(DateStr,RIGHT(WORD_TO_STRING(TimeStruct.wYear),2));
	
		(* Time hh.mm.ss.xxms ***************)
		IF TimeStruct.wHour < 10 THEN
			TimeStr := CONCAT('0',WORD_TO_STRING(TimeStruct.wHour));
		ELSE
			TimeStr := WORD_TO_STRING(TimeStruct.wHour);
		END_IF
		TimeStr := CONCAT(TimeStr,':');
		IF TimeStruct.wMinute < 10 THEN
			TimeStr := CONCAT(TimeStr,CONCAT('0',WORD_TO_STRING(TimeStruct.wMinute)));
		ELSE
			TimeStr := CONCAT(TimeStr,WORD_TO_STRING(TimeStruct.wMinute));
		END_IF
		TimeStr := CONCAT(TimeStr,':');
		IF TimeStruct.wSecond < 10 THEN
			TimeStr := CONCAT(TimeStr,CONCAT('0',WORD_TO_STRING(TimeStruct.wSecond)));
		ELSE
			TimeStr := CONCAT(TimeStr,WORD_TO_STRING(TimeStruct.wSecond));
		END_IF
	
		(* TimeStamp Format DE: DD.MM.YY-Stunde:Minute:Sekunde:xxx,*)
		TimeStamp := CONCAT(DateStr,'-');
		TimeStamp := CONCAT(TimeStamp,TimeStr);
		TimeStamp := CONCAT(TimeStamp,':');
		IF TimeStruct.wMilliseconds > 100 THEN
			TimeStamp:=CONCAT(TimeStamp,WORD_TO_STRING(TimeStruct.wMilliseconds));
		ELSIF TimeStruct.wMilliseconds > 10 THEN
			TimeStamp:=CONCAT(CONCAT(TimeStamp,'0'),WORD_TO_STRING(TimeStruct.wMilliseconds));
		ELSE
			TimeStamp:=CONCAT(CONCAT(TimeStamp,'00'),WORD_TO_STRING(TimeStruct.wMilliseconds));
		END_IF
	
		(* Timestamp Format ENG: YYYY-MM-DD-hh:mm:ss.xxx *)
		(* TimeStamp := SYSTEMTIME_TO_STRING(TimeStruct); *)
	
		(* TimeStamp2 FileName YYYY-MM-DD_HHMMSS *)
		IF _sec <> TimeStruct.wSecond THEN
			TimeStamp2 := CONCAT(WORD_TO_STRING(TimeStruct.wYear),'-');
			IF TimeStruct.wMonth < 10 THEN
				TimeStamp2 := CONCAT(TimeStamp2,CONCAT('0',WORD_TO_STRING(TimeStruct.wMonth)));
			ELSE
				TimeStamp2 := CONCAT(TimeStamp2,WORD_TO_STRING(TimeStruct.wMonth));
			END_IF
			TimeStamp2 := CONCAT(TimeStamp2,'-');
			IF TimeStruct.wDay < 10 THEN
				TimeStamp2 := CONCAT(TimeStamp2,CONCAT('0',WORD_TO_STRING(TimeStruct.wDay)));
			ELSE
				TimeStamp2 := CONCAT(TimeStamp2,WORD_TO_STRING(TimeStruct.wDay));
			END_IF
			TimeStamp2 := CONCAT(TimeStamp2,'_');
			IF TimeStruct.wHour < 10 THEN
				TimeStamp2 := CONCAT(TimeStamp2,CONCAT('0',WORD_TO_STRING(TimeStruct.wHour)));
			ELSE
				TimeStamp2 := CONCAT(TimeStamp2,WORD_TO_STRING(TimeStruct.wHour));
			END_IF
			IF TimeStruct.wMinute < 10 THEN
				TimeStamp2 := CONCAT(TimeStamp2,CONCAT('0',WORD_TO_STRING(TimeStruct.wMinute)));
			ELSE
				TimeStamp2 := CONCAT(TimeStamp2,WORD_TO_STRING(TimeStruct.wMinute));
			END_IF
			IF TimeStruct.wSecond < 10 THEN
				TimeStamp2 := CONCAT(TimeStamp2,CONCAT('0',WORD_TO_STRING(TimeStruct.wSecond)));
			ELSE
				TimeStamp2 := CONCAT(TimeStamp2,WORD_TO_STRING(TimeStruct.wSecond));
			END_IF
			_sec := TimeStruct.wSecond;
	
			(* Jahresinformationen *)
			TimeStampDT := SYSTEMTIME_TO_DT(TimeStruct);
			MonthDays	:= F_GetMaxMonthDays(TimeStruct.wYear,TimeStruct.wMonth);
			LeapYear		:= F_YearIsLeapYear(TimeStruct.wYear) ;
			WeekOfYear	:= F_GetWeekOfTheYear(TimeStampDT);
	
		END_IF
	END_IF

(**************************************************************************************************) �  , N N ��           M_Reset ��_g)   RetainVarErr := PersistenVarErr := FALSE;             �  , h h ��           TaskInfoCtrl ��_g	��_g      �hH��        >  FUNCTION_BLOCK TaskInfoCtrl
VAR_INPUT
END_VAR
VAR_OUTPUT
	index						:	INT;
	active					:	BOOL; 		(* Diese Variable zeigt an, ob die Task aktiv ist.*)
	taskName					:	STRING(16);	(* Der Taskname.*)
	firstCycle				:	BOOL;			(* Diese Variable hat im ersten Zyklus der SPS-Task den Wert: TRUE.*)
	cycleTimeExceeded		:	BOOL;			(* In dieser Variablen wird ein �berschreiten der eingestellten Taskzykluszeit gemeldet*)
	cycleTime				:	UDINT;		(* Eingestellte Taskzykluszeit in Vielfachen von 100ns*)
	lastExecTime			:	UDINT;		(* Ben�tigte Zykluszeit f�r den letzten Zyklus in Vielfachen von 100 ns*)
	MaxExecTime				:	UDINT;		(* Maximale Zykluszeit *)
	priority					:	BYTE;			(* Eingestellte Prioritaet der Task*)
	cycleCount				: 	UDINT;		(* Zykluszaehler*)
END_VAR

VAR
	GETCURTASKINDEX		: GETCURTASKINDEX;
END_VAR
�  (*********************************************************************************)
	(*	(c) by Hyson Automation																		*)
	(*																											*)
	(*		H Y S O N A U T O M A T I O N   T E C H N O L O G Y        *)
	(*																											*)
	(*		Rd.Keyuan16	Shenzhen	China	phone:	+86-755-28376157	www.hyson-au.cn	*)
   (*																											*)
   (*		Content					: Hyson Program Framework													*)
	(*																											*)
	(*		Version					:	V2.10																	*)
	(*		Stand					:	04.2020																*)
 	(*		Autor					:	ShenQiang															*)
	(*																											*)
	(*********************************************************************************)

(* Get Current Task Index ************************************************************************)
	GETCURTASKINDEX(index => index);

	(* Retein/Persisten Data Err *)
	active := SystemTaskInfoArr[index].active;
	taskName := SystemTaskInfoArr[index].taskName;
	firstCycle := SystemTaskInfoArr[index].firstCycle;
	cycleTimeExceeded := SystemTaskInfoArr[index].cycleTimeExceeded;
	cycleTime := SystemTaskInfoArr[index].cycleTime;
	lastExecTime := SystemTaskInfoArr[index].lastExecTime;
	MaxExecTime	:= MAX(lastExecTime,MaxExecTime);
	priority := SystemTaskInfoArr[index].priority;
	firstCycle := SystemTaskInfoArr[index].firstCycle;
	cycleCount := SystemTaskInfoArr[index].cycleCount;

(**************************************************************************************************)                 ����, 2\         %   TcFloatPC.lib 19.10.09 10:19:54 @���J%   TcUtilities.lib 3.2.16 16:08:58 @���V&   TcEtherCAT.lib 30.11.16 19:52:18 @r�>X'   TcTestAndSet.lib 23.2.09 12:50:08 @ +�I"   TcDrive.lib 25.1.17 09:42:28 @��X%   TcMc2Drive.lib 9.10.17 15:27:28 @�$�Y!   TcBase.lib 14.5.09 12:14:08 @��J"   TcSystem.lib 7.6.16 11:01:22 @9VW%   TcBaseMath.lib 27.7.04 12:07:56 @�A!   TcMath.lib 23.9.04 15:15:30 @xRA    TcMC2.lib 13.9.17 10:18:38 @~��Y"   STANDARD.LIB 5.6.98 12:03:02 @�mw5   (   BOOL_TO_FLOAT @      FLOAT                  DINT_TO_FLOAT @           F_GetVersionTcFloatPC @           FLOAT_TO_BOOL @          FLOAT_TO_DINT @          FLOAT_TO_INT @          FLOAT_TO_SINT @          FLOAT_TO_STRING @          FLOAT_TO_TIME @           FLOAT_TO_UDINT @           FLOAT_TO_UINT @          FLOATIsFinite @          INT_TO_FLOAT @           SINT_TO_FLOAT @          TIME_TO_FLOAT @           UDINT_TO_FLOAT @           UINT_TO_FLOAT @             Global_Variables @       J    ARG_TO_CSVFIELD @@      ADSDATATYPEID       E_AmsLoggerMode    	   E_ArgType       E_DbgContext       E_DbgDirection       E_EnumCmdType       E_FileRBufferCmd       E_HashPrefixTypes       E_MIB_IF_Type       E_NumGroupTypes       E_PersistentMode       E_PrefixFlagParam       E_RegValueType       E_RouteTransportType    
   E_SBCSType       E_ScopeServerState       E_TimeZoneID       E_TypeFieldParam       E_UTILITIES_ERRORCODES       GUID       OTSTRUCT       PROFILERSTRUCT       REMOTEPC       REMOTEPCINFOSTRUCT       ST_AmsFindFileSystemEntry       ST_AmsGetTimeZoneInformation       ST_AmsLoggerReq       ST_AmsRouteEntry       ST_AmsRouteEntryHead       ST_AmsRouterInfoEntry       ST_AmsRouteSystemEntry       ST_AmsStartProcessReq       ST_AmsSymbolInfoEntry       ST_DeviceIdentification       ST_DeviceIdentificationEx       ST_FileAttributes       ST_FileRBufferHead       ST_FindFileEntry       ST_FormatParameters       ST_HKeySrvRead       ST_HKeySrvWrite       ST_IP_ADAPTER_INFO       ST_IP_ADDR_STRING       ST_IPAdapterHwAddr       ST_IPAdapterInfo       ST_SBCSTable    #   ST_ScopeServerRecordModeDescription       ST_TcRouterStatusInfo       ST_TimeZoneInformation       SYMINFO_BUFFER       SYMINFOSTRUCT       T_Arg    
   T_FILETIME       T_FIX16    
   T_FloatRec       T_HashTableEntry       T_HHASHTABLE       T_HLINKEDLIST       T_HUGE_INTEGER       T_LARGE_INTEGER       T_LinkedListEntry       T_UHUGE_INTEGER       T_ULARGE_INTEGER    
   TIMESTRUCT                  BCD_TO_DEC @           BE128_TO_HOST @          BE16_TO_HOST @          BE32_TO_HOST @          BE64_TO_HOST @          BYTE_TO_BINSTR @          BYTE_TO_DECSTR @          BYTE_TO_HEXSTR @          BYTE_TO_LREALEX @          BYTE_TO_OCTSTR @          BYTEARR_TO_MAXSTRING @          CSVFIELD_TO_ARG @          CSVFIELD_TO_STRING @          DATA_TO_HEXSTR @          DCF77_TIME @          DCF77_TIME_EX @          DEC_TO_BCD @           DEG_TO_RAD @           DINT_TO_DECSTR @          DT_TO_FILETIME @          DT_TO_SYSTEMTIME @           DWORD_TO_BINSTR @          DWORD_TO_DECSTR @          DWORD_TO_HEXSTR @          DWORD_TO_LREALEX @          DWORD_TO_OCTSTR @          F_ARGCMP @          F_ARGCPY @          F_ARGIsZero @          F_BIGTYPE @          F_BOOL @          F_BYTE @           F_BYTE_TO_CRC16_CCITT @          F_CheckSum16 @           F_CRC16_CCITT @           F_CreateHashTableHnd @          F_CreateLinkedListHnd @          F_DATA_TO_CRC16_CCITT @          F_DINT @           F_DWORD @           F_FormatArgToStr @          F_GetDayOfMonthEx @          F_GetDayOfWeek @          F_GetDOYOfYearMonthDay @          F_GetFloatRec @          F_GetMaxMonthDays @          F_GetMonthOfDOY @          F_GetVersionTcUtilities @           F_GetWeekOfTheYear @          F_HUGE @          F_INT @           F_LARGE @          F_LREAL @           F_LTrim @          F_PVOID @          F_REAL @           F_RTrim @          F_SINT @           F_STRING @           F_SwapReal @           F_SwapRealEx @          F_ToLCase @          F_ToUCase @          F_TranslateFileTimeBias @          F_UDINT @           F_UHUGE @          F_UINT @           F_ULARGE @          F_USINT @           F_WORD @           F_YearIsLeapYear @          FB_AddRouteEntry @          FB_AmsLogger @          FB_BasicPID @           FB_BufferedTextFileWriter @       '   FB_BufferedTextFileWriter.A_Reset @          FB_ConnectScopeServer @          FB_CSVMemBufferReader @          FB_CSVMemBufferWriter @          FB_DbgOutputCtrl @          FB_DbgOutputCtrl.A_Log @          FB_DbgOutputCtrl.A_LogHex @          FB_DbgOutputCtrl.A_Reset @          FB_DisconnectScopeServer @          FB_EnumFindFileEntry @          FB_EnumFindFileList @          FB_EnumRouteEntry @          FB_EnumStringNumbers @          FB_FileRingBuffer @       !   FB_FileRingBuffer.A_AddTail @          FB_FileRingBuffer.A_Close @           FB_FileRingBuffer.A_Create @       !   FB_FileRingBuffer.A_GetHead @          FB_FileRingBuffer.A_Open @       $   FB_FileRingBuffer.A_RemoveHead @          FB_FileRingBuffer.A_Reset @       &   FB_FileTimeToTzSpecificLocalTime @       .   FB_FileTimeToTzSpecificLocalTime.A_Reset @          FB_FormatString @           FB_GetAdaptersInfo @           FB_GetDeviceIdentification @       "   FB_GetDeviceIdentificationEx @          FB_GetHostAddrByName @          FB_GetHostName @          FB_GetLocalAmsNetId @          FB_GetRouterStatusInfo @          FB_GetTimeZoneInformation @          FB_HashTableCtrl @          FB_HashTableCtrl.A_Add @       !   FB_HashTableCtrl.A_GetFirst @       )   FB_HashTableCtrl.A_GetIndexAtPosPtr @           FB_HashTableCtrl.A_GetNext @          FB_HashTableCtrl.A_Lookup @          FB_HashTableCtrl.A_Remove @       "   FB_HashTableCtrl.A_RemoveAll @       $   FB_HashTableCtrl.A_RemoveFirst @          FB_HashTableCtrl.A_Reset @          FB_LinkedListCtrl @       &   FB_LinkedListCtrl.A_AddHeadValue @       &   FB_LinkedListCtrl.A_AddTailValue @       "   FB_LinkedListCtrl.A_FindNext @       "   FB_LinkedListCtrl.A_FindPrev @       !   FB_LinkedListCtrl.A_GetHead @       *   FB_LinkedListCtrl.A_GetIndexAtPosPtr @       !   FB_LinkedListCtrl.A_GetNext @       !   FB_LinkedListCtrl.A_GetPrev @       !   FB_LinkedListCtrl.A_GetTail @       )   FB_LinkedListCtrl.A_RemoveHeadValue @       )   FB_LinkedListCtrl.A_RemoveTailValue @       -   FB_LinkedListCtrl.A_RemoveValueAtPosPtr @          FB_LinkedListCtrl.A_Reset @       *   FB_LinkedListCtrl.A_SetValueAtPosPtr @          FB_LocalSystemTime @          FB_MemBufferMerge @          FB_MemBufferSplit @          FB_MemRingBuffer @           FB_MemRingBuffer.A_AddTail @           FB_MemRingBuffer.A_GetHead @       #   FB_MemRingBuffer.A_RemoveHead @          FB_MemRingBuffer.A_Reset @          FB_MemRingBufferEx @       "   FB_MemRingBufferEx.A_AddTail @       #   FB_MemRingBufferEx.A_FreeHead @       &   FB_MemRingBufferEx.A_GetFreeSize @       "   FB_MemRingBufferEx.A_GetHead @           FB_MemRingBufferEx.A_Reset @          FB_MemStackBuffer @          FB_MemStackBuffer.A_Pop @          FB_MemStackBuffer.A_Push @          FB_MemStackBuffer.A_Reset @          FB_MemStackBuffer.A_Top @          FB_RegQueryValue @           FB_RegSetValue @           FB_RemoveRouteEntry @           FB_ResetScopeServerControl @          FB_SaveScopeServerData @          FB_ScopeServerControl @          FB_SetTimeZoneInformation @          FB_StartScopeServer @          FB_StopScopeServer @          FB_StringRingBuffer @       #   FB_StringRingBuffer.A_AddTail @       #   FB_StringRingBuffer.A_GetHead @       &   FB_StringRingBuffer.A_RemoveHead @       !   FB_StringRingBuffer.A_Reset @       (   FB_SystemTimeToTzSpecificLocalTime @       0   FB_SystemTimeToTzSpecificLocalTime.A_Reset @          FB_TextFileRingBuffer @       %   FB_TextFileRingBuffer.A_AddTail @       #   FB_TextFileRingBuffer.A_Close @       "   FB_TextFileRingBuffer.A_Open @       #   FB_TextFileRingBuffer.A_Reset @       (   FB_TranslateLocalTimeToUtcByZoneID @       0   FB_TranslateLocalTimeToUtcByZoneID.A_Reset @       (   FB_TranslateUtcToLocalTimeByZoneID @       0   FB_TranslateUtcToLocalTimeByZoneID.A_Reset @       &   FB_TzSpecificLocalTimeToFileTime @       .   FB_TzSpecificLocalTimeToFileTime.A_Reset @       (   FB_TzSpecificLocalTimeToSystemTime @       0   FB_TzSpecificLocalTimeToSystemTime.A_Reset @          FB_WritePersistentData @          FILETIME_TO_DT @          FILETIME_TO_SYSTEMTIME @          FIX16_TO_LREAL @          FIX16_TO_WORD @          FIX16Add @          FIX16Align @          FIX16Div @          FIX16Mul @          FIX16Sub @          GetRemotePCInfo @           GUID_TO_REGSTRING @          GUID_TO_STRING @          GuidsEqualByVal @          HEXASCNIBBLE_TO_BYTE @          HEXCHRNIBBLE_TO_BYTE @          HEXSTR_TO_DATA @          HOST_TO_BE128 @          HOST_TO_BE16 @          HOST_TO_BE32 @          HOST_TO_BE64 @          INT64_TO_LREAL @          Int64Add64 @          Int64Add64Ex @          Int64Cmp64 @          Int64Div64Ex @          Int64IsZero @          Int64Negate @          Int64Not @          Int64Sub64 @          IsFinite @          LARGE_INTEGER @          LARGE_TO_ULARGE @          LREAL_TO_FIX16 @          LREAL_TO_FMTSTR @          LREAL_TO_INT64 @          LREAL_TO_UINT64 @          MAXSTRING_TO_BYTEARR @          NT_AbortShutdown @           NT_GetTime @           NT_Reboot @           NT_SetLocalTime @          NT_SetTimeToRTCTime @           NT_Shutdown @           NT_StartProcess @           OTSTRUCT_TO_TIME @           PBOOL_TO_BOOL @          PBYTE_TO_BYTE @          PDATE_TO_DATE @          PDINT_TO_DINT @          PDT_TO_DT @          PDWORD_TO_DWORD @          PHUGE_TO_HUGE @          PINT_TO_INT @          PLARGE_TO_LARGE @          PLC_ReadSymInfo @           PLC_ReadSymInfoByName @           PLC_ReadSymInfoByNameEx @           PLC_Reset @           PLC_Start @           PLC_Stop @           PLREAL_TO_LREAL @          PMAXSTRING_TO_MAXSTRING @          PREAL_TO_REAL @          Profiler @           PSINT_TO_SINT @          PSTRING_TO_STRING @          PTIME_TO_TIME @          PTOD_TO_TOD @          PUDINT_TO_UDINT @          PUHUGE_TO_UHUGE @          PUINT64_TO_UINT64 @          PUINT_TO_UINT @          PULARGE_TO_ULARGE @          PUSINT_TO_USINT @          PVOID_TO_BINSTR @          PVOID_TO_DECSTR @          PVOID_TO_HEXSTR @          PVOID_TO_OCTSTR @          PVOID_TO_STRING @          PWORD_TO_WORD @          RAD_TO_DEG @           REGSTRING_TO_GUID @          ROUTETRANSPORT_TO_STRING @       	   RTC @          RTC_EX @          RTC_EX2 @          ScopeASCIIExport @           ScopeExit @          ScopeGetRecordLen @           ScopeGetState @           ScopeLoadFile @           ScopeManualTrigger @           ScopeSaveAs @          ScopeSetOffline @           ScopeSetOnline @           ScopeSetRecordLen @           ScopeViewExport @           STRING_TO_CSVFIELD @          STRING_TO_GUID @          STRING_TO_PVOID @          STRING_TO_SYSTEMTIME @          STRING_TO_UINT64 @          SYSTEMTIME_TO_DT @           SYSTEMTIME_TO_FILETIME @          SYSTEMTIME_TO_STRING @          TC_Config @          TC_CpuUsage @           TC_Restart @           TC_Stop @           TC_SysLatency @           TIME_TO_OTSTRUCT @           UDINT_TO_LREALEX @          UInt32x32To64 @          UINT64_TO_LREAL @          UINT64_TO_STRING @          UInt64Add64 @          UInt64Add64Ex @          UInt64And @          UInt64Cmp64 @          UInt64Div16Ex @          UInt64Div64 @          UInt64Div64Ex @          UInt64isZero @          UInt64Limit @          UInt64Max @          UInt64Min @          UInt64Mod64 @          UInt64Mul64 @          UInt64Mul64Ex @          UInt64Not @          UInt64Or @          UInt64Rol @          UInt64Ror @          UInt64Shl @          UInt64Shr @          UInt64Sub64 @          UInt64Xor @          UINT_TO_LREALEX @          ULARGE_INTEGER @          ULARGE_TO_LARGE @          USINT_TO_LREALEX @          WORD_TO_BINSTR @          WORD_TO_DECSTR @          WORD_TO_FIX16 @          WORD_TO_HEXSTR @          WORD_TO_LREALEX @          WORD_TO_OCTSTR @          WritePersistentData @              Global_Variables @        R   u  ConvertDcTimeToPathPos @"      DCTIMESTRUCT       E_EcAdressingType       E_EcFoeMode       E_EcMbxProtType       E_EcScanSlavesCommandStatus       ProductCode       ST_CONVERTDCTIMETOPOSARR_INPUT       ST_CONVERTPOSTODCTIMEARR_INPUT       ST_DriveRef       ST_EcCrcError       ST_EcCrcErrorEx       ST_EcHeader       ST_EcLastProtErrInfo       ST_EcMasterStatistic       ST_EcMaxCmd       ST_EcScannedSlaveStatus       ST_EcSlaveConfigData       ST_EcSlaveIdentity       ST_EcSlaveScannedData       ST_EcSlaveState       ST_EcSlaveStateBits       ST_PlcDriveRef       ST_PortAddr       ST_SoE_DriveRef       ST_TopologyDataEx       ST_TPCTYPE_CODE_XXDDD       ST_TPCTYPE_CODE_XXDDXD       ST_TPCTYPE_CODE_XXDXDD       ST_TPCTYPE_CODE_XXDXDXD       ST_TPCTYPE_CODE_XXXDQDQD       T_DCTIME    
   T_DCTIME32       T_DCTIME32WRES       T_HFoe                  ConvertDcTimeToPos @          ConvertPathPosToDcTime @          ConvertPosToDcTime @          DCTIME_TO_DCTIMESTRUCT @          DCTIME_TO_FILETIME @          DCTIME_TO_STRING @          DCTIME_TO_SYSTEMTIME @          DCTIMESTRUCT_TO_DCTIME @          F_CheckVendorId @       &   F_ConvBK1120CouplerStateToString @          F_ConvExtTimeToDcTime @       "   F_ConvMasterDevStateToString @          F_ConvProductCodeToString @          F_ConvSlaveStateToBits @          F_ConvSlaveStateToString @          F_ConvStateToString @          F_ConvTcTimeToDcTime @          F_ConvTcTimeToExtTime @          F_GetActualDcTime @          F_GetCurDcTaskTime @          F_GetCurDcTickTime @          F_GetCurExtTime @          F_GetVersionTcEtherCAT @          FB_EcCoESdoRead @          FB_EcCoESdoReadEx @          FB_EcCoESdoWrite @          FB_EcCoESdoWriteEx @          FB_EcDcTickTimeBaseCalc @          FB_EcDcTimeCtrl @          FB_EcDcTimeCtrl.A_GetDay @       $   FB_EcDcTimeCtrl.A_GetDayOfWeek @          FB_EcDcTimeCtrl.A_GetHour @           FB_EcDcTimeCtrl.A_GetMicro @           FB_EcDcTimeCtrl.A_GetMilli @       !   FB_EcDcTimeCtrl.A_GetMinute @           FB_EcDcTimeCtrl.A_GetMonth @          FB_EcDcTimeCtrl.A_GetNano @       !   FB_EcDcTimeCtrl.A_GetSecond @          FB_EcDcTimeCtrl.A_GetYear @          FB_EcExtSyncCalcTimeDiff @          FB_EcExtSyncCheck @          FB_EcFoeAccess @          FB_EcFoeClose @          FB_EcFoeLoad @          FB_EcFoeOpen @       *   FB_EcGetAllSlaveAbnormalStateChanges @          FB_EcGetAllSlaveAddr @          FB_EcGetAllSlaveCrcErrors @       )   FB_EcGetAllSlavePresentStateChanges @          FB_EcGetAllSlaveStates @          FB_EcGetConfSlaves @          FB_EcGetLastProtErrInfo @          FB_EcGetMasterDevState @          FB_EcGetMasterState @          FB_EcGetScannedSlaves @          FB_EcGetSlaveCount @          FB_EcGetSlaveCrcError @          FB_EcGetSlaveCrcErrorEx @          FB_EcGetSlaveIdentity @          FB_EcGetSlaveState @          FB_EcGetSlaveTopologyInfo @          FB_EcLogicalReadCmd @          FB_EcLogicalWriteCmd @          FB_EcMasterFrameCount @          FB_EcMasterFrameStatistic @       '   FB_EcMasterFrameStatisticClearCRC @       *   FB_EcMasterFrameStatisticClearFrames @       +   FB_EcMasterFrameStatisticClearTxRxErr @          FB_EcPhysicalReadCmd @          FB_EcPhysicalWriteCmd @          FB_EcReqMasterState @          FB_EcReqSlaveState @          FB_EcSetMasterState @          FB_EcSetSlaveState @          FB_EcSoERead @          FB_EcSoEWrite @          FB_SoERead_ByDriveRef @          FB_SoEWrite_ByDriveRef @          FILETIME_TO_DCTIME @          STRING_TO_DCTIME @          SYSTEMTIME_TO_DCTIME @             Globale_Variablen @             TestAndSet @                     Global_Variables @          �  F_ConvWordToSTAX5000C1D @      E_AX5000_DriveOpMode       E_FwUpdateState       E_IndraDriveCs_DriveOpMode       E_SoE_AttribLen       E_SoE_CmdControl       E_SoE_CmdState    
   E_SoE_Type       ST_AX5000_C1D       ST_AX5000DriveStatus       ST_IndraDriveCs_C1D       ST_IndraDriveCsDriveStatus       ST_SoE_CPxInvParamList       ST_SoE_CPxInvParamList25       ST_SoE_DiagNumList       ST_SoE_DiagNumList30       ST_SoE_DiagNumList50       ST_SoE_String       ST_SoE_StringEx               %   F_ConvWordToSTAX5000DriveStatus @       #   F_ConvWordToSTIndraDriveCsC1D @       +   F_ConvWordToSTIndraDriveCsDriveStatus @          F_GetVersionTcDrive @       +   FB_SoEAX5000FirmwareUpdate_ByDriveRef @       /   FB_SoEAX5000ReadActMainVoltage_ByDriveRef @       -   FB_SoEAX5000SetMotorCtrlWord_ByDriveRef @       %   FB_SoEExecuteCommand_ByDriveRef @       /   FB_SoEReadAmplifierTemperature_ByDriveRef @       %   FB_SoEReadClassXDiag_ByDriveRef @       '   FB_SoEReadCommandState_ByDriveRef @       '   FB_SoEReadDcBusCurrent_ByDriveRef @       '   FB_SoEReadDcBusVoltage_ByDriveRef @       &   FB_SoEReadDiagMessage_ByDriveRef @       %   FB_SoEReadDiagNumber_ByDriveRef @       )   FB_SoEReadDiagNumberList_ByDriveRef @       +   FB_SoEReadMotorTemperature_ByDriveRef @          FB_SoEReset_ByDriveRef @       *   FB_SoEWriteCommandControl_ByDriveRef @       $   FB_SoEWritePassword_ByDriveRef @             Global_Variables @          ]  F_GetVersionTcMc2Drive @
   '   E_AX5000_P_0275_ActiveFeedbackAndMemory       E_DriveErrorCodes       E_PositionOffsetFeedback       E_PositionOffsetMemory       ST_AX5000_P_0272       ST_AX5000_P_0273       ST_AX5000_P_0273_DriveMemory       ST_AX5000_P_0273_EncoderMemory       ST_AX5000_P_0273_Feedback       ST_AX5000_P_0275               &   FB_SoEAX5000DeletePositionOffset @           FB_SoEAX5000FirmwareUpdate @       $   FB_SoEAX5000ReadActMainVoltage @       "   FB_SoEAX5000SetMotorCtrlWord @       #   FB_SoEAX5000SetPositionOffset @          FB_SoEExecuteCommand @          FB_SoERead @       $   FB_SoEReadAmplifierTemperature @          FB_SoEReadClassXDiag @          FB_SoEReadCommandState @          FB_SoEReadDcBusCurrent @          FB_SoEReadDcBusVoltage @          FB_SoEReadDiagMessage @          FB_SoEReadDiagNumber @          FB_SoEReadDiagNumberList @           FB_SoEReadMotorTemperature @          FB_SoEReset @          FB_SoEWrite @          FB_SoEWriteCommandControl @          FB_SoEWritePassword @             Global_Variables @          z   FW_AdsClearEvents @      FW_NoOfByte       FW_SystemInfoType       FW_SystemTaskInfoType    
   FW_TcEvent                   FW_AdsLogDINT @           FW_AdsLogEvent @           FW_AdsLogLREAL @           FW_AdsLogSTR @           FW_AdsRdWrt @           FW_AdsRdWrtInd @           FW_AdsRdWrtRes @           FW_AdsRead @           FW_AdsReadDeviceInfo @           FW_AdsReadInd @           FW_AdsReadRes @           FW_AdsReadState @           FW_AdsWrite @           FW_AdsWriteControl @           FW_AdsWriteInd @           FW_AdsWriteRes @           FW_DRand @           FW_GetCpuAccount @           FW_GetCpuCounter @           FW_GetCurTaskIndex @           FW_GetSystemTime @           FW_GetVersionTcBase @           FW_LptSignal @           FW_MemCmp @           FW_MemCpy @           FW_MemMove @           FW_MemSet @           FW_PortRead @          FW_PortWrite @           T   ^  ADSCLEAREVENTS @%      E_IOAccessSize    
   E_OpenPath       E_SeekOrigin       E_TcEventClass       E_TcEventClearModes       E_TcEventPriority       E_TcEventStreamType       E_UsrLED_Color       E_WATCHDOG_TIME_CONFIG       ExpressionResult       PVOID       SFCActionType       SFCStepType       ST_AdsBaDevApiHead       ST_AdsBaDevApiIoCtlModifier       ST_AdsBaDevApiReq       ST_AdsCallGenericFbExReq       ST_AdsRdWrtListHead       ST_AdsRdWrtListPara       ST_AdsReadWriteListEntry    
   ST_AmsAddr       ST_StructMemberAlignmentProbe       ST_WD_GPIO_Info       ST_WD_GPIO_InfoEx       SYSTEMINFOTYPE       SYSTEMTASKINFOTYPE    
   T_AmsNetId       T_AmsNetIdArr    	   T_AmsPort    
   T_IPv4Addr       T_IPv4AddrArr       T_MaxString       T_U64KAFFINITY       TcEvent       UXINT       XINT       XWORD                   ADSLOGDINT @           ADSLOGEVENT @           ADSLOGLREAL @           ADSLOGSTR @           ADSRDDEVINFO @           ADSRDSTATE @           ADSRDWRT @           ADSRDWRTEX @           ADSRDWRTIND @           ADSRDWRTRES @           ADSREAD @           ADSREADEX @           ADSREADIND @           ADSREADRES @           ADSWRITE @           ADSWRITEIND @           ADSWRITERES @           ADSWRTCTL @           AnalyzeExpression @          AnalyzeExpressionCombined @          AnalyzeExpressionTable @          AppendErrorString @          BAVERSION_TO_DWORD @          CLEARBIT32 @           CSETBIT32 @           DRAND @           F_CompareFwVersion @          F_CreateAmsNetId @           F_CreateIPv4Addr @           F_GetStructMemberAlignment @          F_GetVersionTcSystem @           F_IOPortRead @          F_IOPortWrite @          F_ScanAmsNetIds @          F_ScanIPv4AddrIds @          F_SplitPathName @          F_ToASC @          F_ToCHR @          FB_AdsReadWriteList @          FB_BaDeviceIoControl @          FB_BaGenGetVersion @          FB_CreateDir @          FB_EOF @           FB_FileClose @           FB_FileDelete @           FB_FileGets @           FB_FileOpen @           FB_FilePuts @           FB_FileRead @           FB_FileRename @           FB_FileSeek @           FB_FileTell @           FB_FileWrite @           FB_PcWatchdog @          FB_PcWatchdog_BAPI @          FB_RemoveDir @          FB_SetLedColor_BAPI @          FB_SimpleAdsLogEvent @          FILECLOSE @           FILEOPEN @           FILEREAD @           FILESEEK @           FILEWRITE @           FW_CallGenericFb @          FW_CallGenericFbEx @          FW_CallGenericFun @          GETBIT32 @           GETCPUACCOUNT @           GETCPUCOUNTER @           GETCURTASKINDEX @           GETSYSTEMTIME @           GETTASKTIME @          LPTSIGNAL @           MEMCMP @           MEMCPY @           MEMMOVE @           MEMSET @           ROL32 @           ROR32 @           SETBIT32 @           SFCActionControl @           SHL32 @           SHR32 @              Global_Variables @              FW_Floor @                  FW_LrealFrac @          FW_LrealModP @          FW_LrealTrunc @                  F_GetVersionTcMath @                   FLOOR @       
   FRAC @       
   LMOD @          LTRUNC @          MODABS @          MODTURNS @              �
  _F_AxisState @_      _E_ParameterType       _E_ReadWriteParameterMode       _E_TcMC_STATES       _E_TcNC_CmdState        _E_TcNC_CmdTypeNewTargPosAndVelo       _E_TcNC_PosSetType       _E_TcNC_ServoState       _E_TcNC_SlaveTypes       _E_TcNC_StartPosType       _E_TcNC_TargPosType       _E_TouchProbeState       _InternalAxisRefData       _ST_FunctionBlockResults       _ST_NCADS_Axis       _ST_NCADS_AxisFunctions       _ST_NCADS_AxisParameter       _ST_NCADS_AxisState       _ST_NCADS_IDXOFFS_AxisFunctions       _ST_NCADS_IDXOFFS_AxisParameter       _ST_NCADS_IDXOFFS_AxisState        _ST_NCADS_IDXOFFS_TableFunctions        _ST_NCADS_IDXOFFS_TableParameter       _ST_NCADS_Table       _ST_NCADS_TableFunctions       _ST_NCADS_TableParameter       _ST_ParaStruct       _ST_TcNC_Compensation2       _ST_TcNC_CoupleSlave       _ST_TcNC_CoupleSlaveMultiMaster        _ST_TcNC_CoupleSlaveMultiMaster2       _ST_TcNC_DecoupleSlave       _ST_TcNc_OperationModes       _ST_TcNC_PhasingRequest        _ST_TcNC_SetEncoderSaclingFactor       _ST_TcNC_SetPos       _ST_TcNC_SetPosOnTheFly       _ST_TcNC_StopInfoRequest       _ST_TcNC_StopInfoResponse       _ST_TcNc_TouchProbeActivation       _ST_TcNc_TouchProbeDeactivation        _ST_TcNc_TouchProbeStatusRequest    !   _ST_TcNc_TouchProbeStatusResponse    !   _ST_TcNC_UnversalAxisStartRequest    "   _ST_TcNC_UnversalAxisStartResponse       AXIS_REF       E_AxisErrorCodes       E_AxisPositionCorrectionMode       E_DestallDetectMode       E_DestallMode       E_DisableMode    	   E_JogMode       E_PhasingType       E_PositionType    
   E_ReadMode       E_SetScalingFactorMode       E_SignalEdge       E_SignalSource       E_SuperpositionAbortOption       E_SuperpositionMode       E_TouchProbe       E_TouchProbeMode       E_WorkDirection       MC_AxisParameter       MC_AxisStates       MC_BufferMode       MC_Direction       MC_HomingMode       MC_TouchProbeRecordedData       NCTOPLC_AXIS_REF       PLCTONC_AXIS_REF       ST_AdsAddress       ST_AxisComponents       ST_AxisOpModes       ST_AxisParameterSet       ST_AxisStatus       ST_BacklashCompensationOptions       ST_DriveAddress       ST_GearInDynOptions       ST_GearInMultiMasterOptions       ST_GearInOptions       ST_GearOutOptions       ST_HomingOptions       ST_McOutputs       ST_MoveOptions       ST_NcApplicationRequest       ST_PhasingOptions       ST_PositionCompensationOptions    #   ST_PositionCompensationTableElement    %   ST_PositionCompensationTableParameter       ST_PowerStepperStruct       ST_SetEncoderScalingOptions       ST_SetPositionOptions       ST_SuperpositionOptions       ST_TableCharacValues       TRIGGER_REF                  _F_GetIndexGroup @          _F_NcCycleCounterUpdated @       "   _F_NcNoOfCycleCounterUpdated @          _F_ReadStatus @          _F_TcMC_DWORD_TO_HEXSTR @          _F_TcMC_Round @          _F_UpdateNcCycleCounter @          _FB_MoveUniversalGeneric @       /   _FB_MoveUniversalGeneric.ActCalcDiffCmdNo @       .   _FB_MoveUniversalGeneric.ActErrorMessage @       8   _FB_MoveUniversalGeneric.ActMonitorContinousMotion @       7   _FB_MoveUniversalGeneric.ActMonitorDiscreteMotion @       -   _FB_MoveUniversalGeneric.ActMonitorStop @       0   _FB_MoveUniversalGeneric.ActNcCycleCounter @          _FB_PhasingGeneric @       '   _FB_PositionCorrectionTableLookup @       B   _FB_PositionCorrectionTableLookup.ActIsCompensationDirection @          _FB_ReadWriteParameter @          _FBAXIS_REF @          _FBAXIS_REF.ReadStatus @          _MC_HaltPhasing @          _MC_PhasingAbsolute @          _MC_PhasingRelative @          _TcMC_ADSRDWRT @          _TcMC_ADSREAD @          _TcMC_ADSWRITE @          _TCMCGLOBAL @           _TCMCGLOBAL.ReadDeviceInfo @          F_AxisCamDataQueued @          F_AxisCamScalingPending @          F_AxisCamTableQueued @          F_AxisControlLoopClosed @          F_AxisExternalLatchValid @           F_AxisGotNewTargetPosition @          F_AxisHasBeenStopped @          F_AxisHasExtSetPointGen @          F_AxisHasJob @          F_AxisInErrorState @          F_AxisInPositionWindow @          F_AxisInProtectedMode @          F_AxisInPTPmode @          F_AxisIoDataIsInvalid @          F_AxisIsAtTargetPosition @          F_AxisIsCalibrated @          F_AxisIsCalibrating @          F_AxisIsCompensating @          F_AxisIsCoupled @          F_AxisIsMoving @          F_AxisIsMovingBackwards @          F_AxisIsMovingEndless @          F_AxisIsMovingForward @          F_AxisIsNotMoving @          F_AxisIsReady @          F_AxisJobPending @           F_AxisMotionCommandsLocked @          F_AxisPhasingActive @       #   F_AxisReachedConstantVelocity @          F_GetVersion_TcMC2 @          MC_AbortSuperposition @          MC_AbortTrigger @          MC_AbortTrigger_V2_00 @          MC_BacklashCompensation @          MC_ExtSetPointGenDisable @          MC_ExtSetPointGenEnable @          MC_ExtSetPointGenFeed @          MC_GearIn @          MC_GearIn.ActGearInDyn @          MC_GearIn.WriteGearRatio @          MC_GearInDyn @          MC_GearInMultiMaster @       1   MC_GearInMultiMaster.ActGearInMultiMasterV1 @       1   MC_GearInMultiMaster.ActGearInMultiMasterV2 @          MC_GearOut @          MC_Halt @          MC_Home @          MC_Jog @          MC_Jog.ActCheckJogEnd @          MC_Jog.ActJogMove @          MC_MoveAbsolute @          MC_MoveAdditive @          MC_MoveContinuousAbsolute @          MC_MoveContinuousRelative @          MC_MoveModulo @       %   MC_MoveModulo.MC_MoveModuloCall @          MC_MoveRelative @          MC_MoveSuperImposed @          MC_MoveVelocity @          MC_OverrideFilter @       "   MC_PositionCorrectionLimiter @          MC_Power @          MC_PowerStepper @          MC_ReadActualPosition @          MC_ReadActualVelocity @          MC_ReadApplicationRequest @          MC_ReadAxisComponents @          MC_ReadAxisError @          MC_ReadBoolParameter @          MC_ReadDriveAddress @          MC_ReadParameter @          MC_ReadParameterSet @       2   MC_ReadParameterSet.ActGetSizeOfParameterSet @          MC_ReadStatus @          MC_ReadStopInfo @          MC_Reset @       $   MC_SetAcceptBlockedDriveSignal @           MC_SetEncoderScalingFactor @          MC_SetOverride @          MC_SetPosition @          MC_Stop @          MC_Stop.ActStop @       '   MC_TableBasedPositionCompensation @          MC_TouchProbe @       )   MC_TouchProbe.ActTouchProbeActivate @       0   MC_TouchProbe.ActTouchProbeMonitorActivity @       2   MC_TouchProbe.ActTouchProbeMonitorLatchValid @       0   MC_TouchProbe.ActTouchProbeMonitorPlcEvent @       ,   MC_TouchProbe.ActTouchProbeStartupInit @          MC_TouchProbe_V2_00 @       /   MC_TouchProbe_V2_00.ActTouchProbeActivate @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorActivity @       1   MC_TouchProbe_V2_00.ActTouchProbeMonitoring @       8   MC_TouchProbe_V2_00.ActTouchProbeMonitorLatchValid @       6   MC_TouchProbe_V2_00.ActTouchProbeMonitorPlcEvent @       2   MC_TouchProbe_V2_00.ActTouchProbeStartupInit @          MC_WriteBoolParameter @          MC_WriteParameter @             TcMC_GlobalConstants @             CONCAT @                	   CTD @        	   CTU @        
   CTUD @           DELETE @           F_TRIG @        
   FIND @           INSERT @        
   LEFT @        	   LEN @        	   MID @           R_TRIG @           REPLACE @           RIGHT @           RS @        
   SEMA @           SR @        	   TOF @        	   TON @           TP @              Global Variables 0 @                             .� !           2                ����������������  
             ����  �������        ����      `� �                      POUs               00_Basic               PulseGenerator              	   PulseCtrl  q                  PulseGeneratorCtrl  r  ����           
   SystemInfo                SystemInfoCtrl                M_Reset  �  �                  TaskInfoCtrl  �  ��������              01_IO                 Aifilter  �                 PRG_IO                Input  #                  Output  $      ����           	   02_Common             	   PRG_Alarm                Act_Alarm_Modbus  p                 Act_ResetAlarm  �                 Act_Warm_Modbus  �                 ActAlarm  o              
   ActWarning  t  n               	   PRG_Estop  �                 PRG_Modbus_TCP               Modbus_TCP_Read  �                 Modbus_TCP_Write_AutoMode  �                 Modbus_TCP_Write_ManulMode  �  �                 PRG_PTP                Act_AxisLimit  �                 Act_SoftLimitinit  �              
   Modbus_TCP  �    ����              03_��̨               00_ͨ��                 PRG_Init  �                  PRG_Monitor  �               	   PRG_Power  �               
   PRG_ServOn  �  ����              01_һ����ԭ                 PRG_GoHomeTogether  �  ����              04_��·                 FB_CutPaper  �                 FB_Cylinder  *                   PRG_Cylinder  2   ����              05_HMI                 PRG_AutoPreparation  �  ����                PRG_M_Function  �  ����              05_�ֶ�              
   PRG_Manual  �  ����              06_�Զ�                PRG_Auto                Act_Modbus_TCP  �                 Act_Run  �  u                 PRG_AutoWork                Act_Collect  �                 Act_Cut  �                 Act_GetPaper  �                 Act_PutPaper  �              
   Act_SetBox  �  �  ����               MAIN                _NT  �                 Command  �                 Status  �      ����           
   Data types            	   01_States                 EM_State  (                	   EM_Status  )   ����           
   03_Machine              
   ST_Machine  +   ����              04_AxisControl                 ST_Axis                     ST_Cylinder_Ctrl  !   ����              05_Function            
   01_Machine              	   ST_HmiCmd  z                  ST_HmiDisplay  {  ����              02_Axis              
   ST_AxisCmd  |                  ST_AxisDisplay  }                 ST_AxisParam  x  ������������             Visualizations  ����              Global Variables	                 _01_Machine  ,               
   _02_System  -                	   _03_Param  .                
   _04_Motion  �                  _05_IO  �                  _06_Hmi  w                  Global_Variables                     TwinCAT_Configuration  s                  Variable_Configuration  	   ����                                                            ͹Ng                         	   localhost            P      	   localhost            P      	   localhost            P            �=�
