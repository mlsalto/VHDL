
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:062default:default2
1268.9142default:default2
0.0002default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2q
]C:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/utils_1/imports/synth_1/top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
q
Command: %s
53*	vivadotcl2@
,synth_design -top top -part xc7a100tcsg324-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
130442default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 1268.914 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
top2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
202default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
RGB2default:default2g
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/RGB.vhd2default:default2
362default:default2
RGB_MODE2default:default2
RGB2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
922default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
RGB2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/RGB.vhd2default:default2
502default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Color2default:default2i
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
362default:default2
Red2default:default2
Color2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/RGB.vhd2default:default2
692default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
Color2default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
492default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	Debouncer2default:default2m
YC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/debouncer.vhd2default:default2
52default:default2$
boton0_debouncer2default:default2
	debouncer2default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
992default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	Debouncer2default:default2o
YC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/debouncer.vhd2default:default2
112default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	Debouncer2default:default2
02default:default2
12default:default2o
YC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/debouncer.vhd2default:default2
112default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	Debouncer2default:default2m
YC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/debouncer.vhd2default:default2
52default:default2$
boton1_debouncer2default:default2
	debouncer2default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
1002default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	synchrnzr2default:default2l
XC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/sychrnzr.vhd2default:default2
42default:default2$
boton0_synchrnzr2default:default2
	Synchrnzr2default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
1032default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	synchrnzr2default:default2n
XC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/sychrnzr.vhd2default:default2
122default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	synchrnzr2default:default2
02default:default2
12default:default2n
XC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/sychrnzr.vhd2default:default2
122default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	synchrnzr2default:default2l
XC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/sychrnzr.vhd2default:default2
42default:default2$
boton1_synchrnzr2default:default2
	Synchrnzr2default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
1042default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2#
pulse_generator2default:default2s
_C:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/pulse_generator.vhd2default:default2
342default:default2
pulses2default:default2#
pulse_generator2default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
1072default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2#
pulse_generator2default:default2u
_C:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/pulse_generator.vhd2default:default2
412default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2#
pulse_generator2default:default2
02default:default2
12default:default2u
_C:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/pulse_generator.vhd2default:default2
412default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
counter2default:default2k
WC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/counter.vhd2default:default2
352default:default2
ctr2default:default2
counter2default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
1102default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
counter2default:default2m
WC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/counter.vhd2default:default2
482default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
counter2default:default2
02default:default2
12default:default2m
WC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/counter.vhd2default:default2
482default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
Color2default:default2
02default:default2
12default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
492default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Color2default:default2i
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
362default:default2
Blue2default:default2
Color2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/RGB.vhd2default:default2
702default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Color2default:default2i
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
362default:default2
Green2default:default2
Color2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/RGB.vhd2default:default2
712default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
RGB2default:default2
02default:default2
12default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/RGB.vhd2default:default2
502default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PARTY2default:default2i
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PARTY.vhd2default:default2
352default:default2

PARTY_MODE2default:default2
PARTY2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
932default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
PARTY2default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PARTY.vhd2default:default2
462default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
PARTY2default:default2
02default:default2
12default:default2k
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PARTY.vhd2default:default2
462default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
HSV2default:default2g
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/HSV.vhd2default:default2
352default:default2
HSV_MODE2default:default2
HSV2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
942default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
HSV2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/HSV.vhd2default:default2
472default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Color2default:default2i
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
362default:default2
Hue2default:default2
Color2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/HSV.vhd2default:default2
642default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Color2default:default2i
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
362default:default2

Saturation2default:default2
Color2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/HSV.vhd2default:default2
652default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Color2default:default2i
UC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Color.vhd2default:default2
362default:default2
Value2default:default2
Color2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/HSV.vhd2default:default2
662default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
HSV2default:default2
02default:default2
12default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/HSV.vhd2default:default2
472default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2'
Convertidor_HSV_RGB2default:default2w
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
362default:default2

HSV_TO_RGB2default:default2'
Convertidor_HSV_RGB2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
952default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2'
Convertidor_HSV_RGB2default:default2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
472default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
CapitalM2default:default2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
682default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
m2default:default2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
682default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
z2default:default2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
682default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2'
Convertidor_HSV_RGB2default:default2
02default:default2
12default:default2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
472default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PWM2default:default2g
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PWM.vhd2default:default2
292default:default2
PWM_R2default:default2
PWM2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
992default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
PWM2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PWM.vhd2default:default2
382default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
PWM2default:default2
02default:default2
12default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PWM.vhd2default:default2
382default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PWM2default:default2g
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PWM.vhd2default:default2
292default:default2
PWM_B2default:default2
PWM2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
1002default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PWM2default:default2g
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PWM.vhd2default:default2
292default:default2
PWM_G2default:default2
PWM2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
1012default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PWM2default:default2g
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PWM.vhd2default:default2
292default:default2'
PWM_R_COMPLEMENTARY2default:default2
PWM2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
1302default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PWM2default:default2g
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PWM.vhd2default:default2
292default:default2'
PWM_B_COMPLEMENTARY2default:default2
PWM2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
1312default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PWM2default:default2g
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/PWM.vhd2default:default2
292default:default2'
PWM_G_COMPLEMENTARY2default:default2
PWM2default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
1322default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
top2default:default2
02default:default2
12default:default2i
SC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/top.vhd2default:default2
202default:default8@Z8-256h px? 
?
?Implementing Library version of Mod/Rem due to signed path. This typically leads to poor QOR. Check RTL to see if unsigned path for the operator is possible 
4285*oasys2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
682default:default8@Z8-5863h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
NUM[8]2default:default2
PWM2default:defaultZ8-7129h px? 
?
%s*synth2?
wFinished RTL Elaboration : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1268.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1268.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1268.914 ; gain = 0.000
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0172default:default2
1268.9142default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2x
bC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2x
bC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2v
bC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/constrs_1/new/Nexys-4-DDR-Master.xdc2default:default2)
.Xil/top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1285.3792default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1285.3792default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
~Finished Constraint Validation : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1285.379 ; gain = 16.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1285.379 ; gain = 16.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1285.379 ; gain = 16.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!inferring latch for variable '%s'327*oasys2
R_U_reg2default:default2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
682default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
G_U_reg2default:default2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
682default:default8@Z8-327h px? 
?
!inferring latch for variable '%s'327*oasys2
B_U_reg2default:default2y
cC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.srcs/sources_1/new/Convertidor_HSV_RGB.vhd2default:default2
682default:default8@Z8-327h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:25 ; elapsed = 00:00:27 . Memory (MB): peak = 1285.379 ; gain = 16.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   31 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   21 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 18    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 12    
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 12    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 42    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   31 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 37    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
NUM[8]2default:default2
PWM2default:defaultZ8-7129h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
HSV_TO_RGB/R_U_reg[8]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
HSV_TO_RGB/G_U_reg[8]2default:default2
top2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2)
HSV_TO_RGB/B_U_reg[8]2default:default2
top2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:37 ; elapsed = 00:00:39 . Memory (MB): peak = 1285.379 ; gain = 16.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 1285.379 ; gain = 16.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Timing Optimization : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 1285.379 ; gain = 16.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
{Finished Technology Mapping : Time (s): cpu = 00:00:47 ; elapsed = 00:00:49 . Memory (MB): peak = 1285.379 ; gain = 16.465
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
uFinished IO Insertion : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1293.102 ; gain = 24.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1293.102 ; gain = 24.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1293.102 ; gain = 24.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1293.102 ; gain = 24.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1293.102 ; gain = 24.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1293.102 ; gain = 24.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+---------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|Module Name | RTL Name                                          | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+---------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | RGB_MODE/Red/boton0_synchrnzr/SYNC_OUT_reg        | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | RGB_MODE/Red/boton1_synchrnzr/SYNC_OUT_reg        | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | RGB_MODE/Blue/boton0_synchrnzr/SYNC_OUT_reg       | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | RGB_MODE/Blue/boton1_synchrnzr/SYNC_OUT_reg       | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | RGB_MODE/Green/boton0_synchrnzr/SYNC_OUT_reg      | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | RGB_MODE/Green/boton1_synchrnzr/SYNC_OUT_reg      | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | HSV_MODE/Hue/boton0_synchrnzr/SYNC_OUT_reg        | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | HSV_MODE/Hue/boton1_synchrnzr/SYNC_OUT_reg        | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | HSV_MODE/Saturation/boton0_synchrnzr/SYNC_OUT_reg | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | HSV_MODE/Saturation/boton1_synchrnzr/SYNC_OUT_reg | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | HSV_MODE/Value/boton0_synchrnzr/SYNC_OUT_reg      | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?|top         | HSV_MODE/Value/boton1_synchrnzr/SYNC_OUT_reg      | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
2default:defaulth p
x
? 
?
%s
*synth2?
?+------------+---------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |   199|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    54|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |   125|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    77|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |   128|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |   105|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |   225|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |     2|
2default:defaulth px? 
D
%s*synth2,
|10    |SRL16E |    12|
2default:defaulth px? 
D
%s*synth2,
|11    |FDCE   |    49|
2default:defaulth px? 
D
%s*synth2,
|12    |FDRE   |   497|
2default:defaulth px? 
D
%s*synth2,
|13    |LD     |    24|
2default:defaulth px? 
D
%s*synth2,
|14    |IBUF   |    11|
2default:defaulth px? 
D
%s*synth2,
|15    |OBUF   |     6|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:56 ; elapsed = 00:00:58 . Memory (MB): peak = 1293.102 ; gain = 24.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 8 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
}Synthesis Optimization Runtime : Time (s): cpu = 00:00:41 ; elapsed = 00:00:55 . Memory (MB): peak = 1293.102 ; gain = 7.723
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Complete : Time (s): cpu = 00:00:56 ; elapsed = 00:00:59 . Memory (MB): peak = 1293.102 ; gain = 24.188
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0452default:default2
1305.2032default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
2252default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0022default:default2
1310.8162default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2[
G  A total of 24 instances were transformed.
  LD => LDCE: 24 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
1ac6fddf2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
652default:default2
132default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:042default:default2
00:01:072default:default2
1310.8162default:default2
41.9022default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
MC:/Users/GU502D/Desktop/UPM/S.E.D/TRABAJO_VHDL/project_1.runs/synth_1/top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2p
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Jan  8 19:26:45 20232default:defaultZ17-206h px? 


End Record