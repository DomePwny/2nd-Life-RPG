#define IDC_LIFE_BAR_FOOD 2200
#define IDC_LIFE_BAR_WATER 2201
#define IDC_LIFE_BAR_HEALTH 2202


	class RSC_ID_BG
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 8;
		class controls
		{
			class CTRL_ID_BG
			{    
				idc = 20;
				type = 0;
				style = 512;
				x = 0.024 * safezoneW + safezoneX;
				y = 0.418 * safezoneH + safezoneY;
				w = 0.4 * safezoneW;
				h = 0.310 * safezoneH;
				font="PuristaLight";
				sizeEx = 0.1;
				ColorBackground[] = {1, 1, 1, 0.4};
				colorText[] = {1,1,1,0};
				text = "";
			};  
		};	
	};

	class RSC_DOMSG7
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 4;
		name="RSC_DOMSG7";
		onLoad="uiNamespace setVariable ['RSC_DOMSG7',_this select 0]";
		objects[]={};
		class controls
		{
			class cg_popup_text_basic7
			{
				type=13;
				style=0x0c+0x02;
				idc=13377;
				x = 0.01 * safezoneW + safezoneX;
				y = 0.200 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
				sizeEx=0.035;
				size=0.035;
				font="PuristaMedium";
				colorBackground[]={0,0,0,0.6};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class backgroundPic: RscPicture
			{
				idc=13477;
				text = "\secondlife_client\texturen\i_doMsg.paa";
				x = 0.01 * safezoneW + safezoneX;
				y = 0.200 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
			};
		};	
	};

	class RSC_DOMSG6
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 7;
		name="RSC_DOMSG6";
		onLoad="uiNamespace setVariable ['RSC_DOMSG6',_this select 0]";
		objects[]={};
		class controls
		{
			class cg_popup_text_basic6
			{
				type=CT_STRUCTURED_TEXT;
				idc=13376;
				style=ST_LEFT;
				x = 0.01 * safezoneW + safezoneX;
				y = 0.350 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
				valign = "left";
				sizeEx=0.035;
				size=0.035;
				font="PuristaMedium";
				colorBackground[]={0,0,0,0.6};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class backgroundPic: RscPicture
			{
				idc=13476;
				text = "\secondlife_client\texturen\i_doMsg.paa";
				x = 0.01 * safezoneW + safezoneX;
				y = 0.350 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
			};
		};	
	};

	class RSC_DOMSG5
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 7;
		name="RSC_DOMSG5";
		onLoad="uiNamespace setVariable ['RSC_DOMSG5',_this select 0]";
		objects[]={};
		class controls
		{
			class cg_popup_text_basic5
			{
				type=CT_STRUCTURED_TEXT;
				idc=13375;
				style=ST_LEFT;
				x = 0.01 * safezoneW + safezoneX;
				y = 0.420 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
				valign = "left";
				sizeEx=0.035;
				size=0.035;
				font="PuristaMedium";
				colorBackground[]={0,0,0,0.6};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class backgroundPic: RscPicture
			{
				idc=13475;
				text = "\secondlife_client\texturen\i_doMsg.paa";
				x = 0.01 * safezoneW + safezoneX;
				y = 0.420 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
			};
		};	
	};


	class RSC_DOMSG4
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 7;
		name="RSC_DOMSG4";
		onLoad="uiNamespace setVariable ['RSC_DOMSG4',_this select 0]";
		objects[]={};
		class controls
		{
			class cg_popup_text_basic4
			{
				type=CT_STRUCTURED_TEXT;
				idc=13374;
				style=ST_LEFT;
				x = 0.01 * safezoneW + safezoneX;
				y = 0.490 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
				valign = "left";
				sizeEx=0.035;
				size=0.035;
				font="PuristaMedium";
				colorBackground[]={0,0,0,0.6};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class backgroundPic: RscPicture
			{
				idc=13474;
				text = "\secondlife_client\texturen\i_doMsg.paa";
				x = 0.01 * safezoneW + safezoneX;
				y = 0.490 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
			};
		};	
	};

	class RSC_DOMSG3
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 7;
		name="RSC_DOMSG3";
		onLoad="uiNamespace setVariable ['RSC_DOMSG3',_this select 0]";
		objects[]={};
		class controls
		{

			class cg_popup_text_basic3
			{
				type=CT_STRUCTURED_TEXT;
				idc=13373;
				style=ST_LEFT;
				x = 0.01 * safezoneW + safezoneX;
				y = 0.560 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
				valign = "left";
				sizeEx=0.035;
				size=0.035;
				font="PuristaMedium";
				colorBackground[]={0,0,0,0.6};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class backgroundPic: RscPicture
			{
				idc=13473;
				text = "\secondlife_client\texturen\i_doMsg.paa";
				x = 0.01 * safezoneW + safezoneX;
				y = 0.560 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
			};
		};	
	};

	class RSC_DOMSG2
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 7;
		name="RSC_DOMSG2";
		onLoad="uiNamespace setVariable ['RSC_DOMSG2',_this select 0]";
		objects[]={};
		class controls
		{
			class cg_popup_text_basic2
			{
				type=CT_STRUCTURED_TEXT;
				idc=13372;
				style=ST_LEFT;
				x = 0.01 * safezoneW + safezoneX;
				y = 0.630 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
				valign = "left";
				sizeEx=0.035;
				size=0.035;
				font="PuristaMedium";
				colorBackground[]={0,0,0,0.6};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class backgroundPic: RscPicture
			{
				idc=13472;
				text = "\secondlife_client\texturen\i_doMsg.paa";
				x = 0.01 * safezoneW + safezoneX;
				y = 0.630 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
			};
		};	
	};

	class RSC_DOMSG1
	{    
		idd = -1;
		fadein=1;
	  	fadeout=1;
		duration = 7;
		name="RSC_DOMSG1";
		onLoad="uiNamespace setVariable ['RSC_DOMSG1',_this select 0]";
		objects[]={};
		class controls
		{
			class cg_popup_text_basic1
			{
				type=CT_STRUCTURED_TEXT;
				idc=13371;
				style=ST_LEFT;
				x = 0.01 * safezoneW + safezoneX;
				y = 0.700 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
				valign = "left";
				sizeEx=0.035;
				size=0.035;
				font="PuristaMedium";
				colorBackground[]={0,0,0,0.6};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class backgroundPic: RscPicture
			{
				idc=13471;
				text = "\secondlife_client\texturen\i_doMsg.paa";
				x = 0.01 * safezoneW + safezoneX;
				y = 0.700 * safezoneH + safezoneY;
				w = 0.55;
				h = 0.11;
			};
		};	
	};

	class playerHUD
   	{
		idd=80085;
		movingEnable=0;
	  	fadein=1;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=1;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		
		class controls
		{




			class id_name
			{
				type=CT_STRUCTURED_TEXT;
				idc=44446;

				style=ST_LEFT;
				x = 0.034 * safezoneW + safezoneX;
				y = 0.433 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.045;
				size=0.045;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			class id_faction
			{
				type=CT_STRUCTURED_TEXT;
				idc=44447;
				style=ST_LEFT;
				x = 0.034 * safezoneW + safezoneX;
				y = 0.483 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.045;
				size=0.045;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			class id_uid
			{
				type=CT_STRUCTURED_TEXT;
				idc=44448;
				style=ST_LEFT;
				x = 0.034 * safezoneW + safezoneX;
				y = 0.533 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.045;
				size=0.045;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			class id_city
			{
				type=CT_STRUCTURED_TEXT;
				idc=44449;
				style=ST_LEFT;
				x = 0.034 * safezoneW + safezoneX;
				y = 0.583 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.045;
				size=0.045;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 0.7 , 1 , 1 };
				shadow=true;
				text="";
			};
			class id_houses
			{
				type=CT_STRUCTURED_TEXT;
				idc=44450;
				style=ST_LEFT;
				x = 0.034 * safezoneW + safezoneX;
				y = 0.633 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.045;
				size=0.045;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 0.7 , 1 , 1 };
				shadow=true;
				text="";
			};
			class id_licenses
			{
				type=CT_STRUCTURED_TEXT;
				idc=44451;
				style=ST_LEFT;
				x = 0.034 * safezoneW + safezoneX;
				y = 0.683 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.045;
				size=0.045;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 0.7 , 1 , 1 };
				shadow=true;
				text="";
			};


			class cg_health
			{
				type=CT_STRUCTURED_TEXT;
				fadein=1;
			  	fadeout=1;
				idc=444440;
				style=ST_LEFT;
				x = 0.967 * safezoneW + safezoneX;
				y = 0.35 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_food
			{
				type=CT_STRUCTURED_TEXT;
				idc=444441;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.967 * safezoneW + safezoneX;
				y = 0.4 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_drink
			{
				type=CT_STRUCTURED_TEXT;
				idc=444442;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.967 * safezoneW + safezoneX;
				y = 0.45 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_pizza
			{
				type=CT_STRUCTURED_TEXT;
				idc=444443;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.275 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_donuts
			{
				type=CT_STRUCTURED_TEXT;
				idc=444444;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.3 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_energy
			{
				type=CT_STRUCTURED_TEXT;
				idc=444445;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.325 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_phonecall
			{
				type=CT_STRUCTURED_TEXT;
				idc=444446;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.35 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_ears
			{
				type=CT_STRUCTURED_TEXT;
				idc=444447;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.375 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_gopro
			{
				type=CT_STRUCTURED_TEXT;
				idc=444448;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.4 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_dorughz
			{
				type=CT_STRUCTURED_TEXT;
				idc=444449;
				style=ST_LEFT;
				fadein=1;
			  	fadeout=1;
				x = 0.425 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class cg_weed
			{
				type=CT_STRUCTURED_TEXT;
				idc=444450;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.45 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_battery
			{
				type=CT_STRUCTURED_TEXT;
				idc=444451;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.5 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_working
			{
				type=CT_STRUCTURED_TEXT;
				idc=444453;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.55 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class cg_seatbelt
			{
				type=CT_STRUCTURED_TEXT;
				idc=444454;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.575 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
			class cg_nos
			{
				type=CT_STRUCTURED_TEXT;
				idc=444455;
				fadein=1;
			  	fadeout=1;
				style=ST_LEFT;
				x = 0.6 * safezoneW + safezoneX;
				y = 0.96 * safezoneH + safezoneY;
				w = 0.75; 
				h = 0.5;
				sizeEx=0.035;
				size=0.035;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};

			class fpstext {
				type=0;
				idc = 23515;
				style=0;
				x = 0.03 * safezoneW + safezoneX;
				y = 0.925 * safezoneH + safezoneY;
				w = 0.2; 
				h = 0.04;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class FPSPic: RscPicture
			{
				idc=13480;
				text = "icons\fps.paa";
				x = 0.02 * safezoneW + safezoneX;
				y = 0.930 * safezoneH + safezoneY;
				w = 0.02; 
				h = 0.02;
			};

			class statustext {
				type=0;
				idc = 23520;
				style=0;
				x = 0.03 * safezoneW + safezoneX;
				y = 0.936 * safezoneH + safezoneY;
				w = 0.2; 
				h = 0.04;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
	
			class UptimePic: RscPicture
			{
				idc=13481;
				text = "icons\itime.paa";
				x = 0.02 * safezoneW + safezoneX;
				y = 0.941 * safezoneH + safezoneY;
				w = 0.018; 
				h = 0.018;
			};


			class cg_battery_text
				{
				type=0;
				idc=23610;
				style=0;
				x = 0.03 * safezoneW + safezoneX;
				y = 0.947 * safezoneH + safezoneY;
				w = 0.2; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class BatteryPic: RscPicture
			{
				idc=13482;
				text = "icons\ibattery.paa";
				x = 0.02 * safezoneW + safezoneX;
				y = 0.952 * safezoneH + safezoneY;
				w = 0.02; 
				h = 0.02;
			};


			class ammotext
			{
				type=0;
				idc=23525;
				style=0;
				x = 0.03 * safezoneW + safezoneX;
				y = 0.958 * safezoneH + safezoneY;
				w = 0.2; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class AmmoPic: RscPicture
			{
				idc=13478;
				text = "icons\ammo.paa";
				x = 0.02 * safezoneW + safezoneX;
				y = 0.963 * safezoneH + safezoneY;
				w = 0.02; 
				h = 0.02;
			};


			class bullettext
			{
				type=0;
				idc=23530;
				style=0;
				x = 0.03 * safezoneW + safezoneX;
				y = 0.969 * safezoneH + safezoneY;
				w = 0.2;  
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class BulletPic: RscPicture
			{
				idc=13479;
				text = "icons\bullets.paa";
				x = 0.02 * safezoneW + safezoneX;
				y = 0.974 * safezoneH + safezoneY;
				w = 0.02;  
				h = 0.02;
			};

			//Display Total Money
			class selecttext
			{
				type=0;
				idc=23535;
				style=0;
				x = 0.03 * safezoneW + safezoneX;
				y = 0.98 * safezoneH + safezoneY;
				w = 0.2; 
				h = 0.04;

				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0.1,0.1,0.1,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class FiremodPic: RscPicture
			{
				idc=13483;
				text = "icons\firemod.paa";
				x = 0.02 * safezoneW + safezoneX;
				y = 0.985 * safezoneH + safezoneY;
				w = 0.02;  
				h = 0.02;
			};
	
			class bleedingtext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23570;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.463 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};

			class woundedtext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23575;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.503 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};	
			class fracturetext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23580;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.543 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};	

			class unconcioustext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23585;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.583 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};	


			class diseasetext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23590;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.623 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};

			class severeinjurytext
			{
				type=CT_STRUCTURED_TEXT;
				idc=23595;
				style=ST_LEFT;
				x = 0.834 * safezoneW + safezoneX;
				y = 0.663 * safezoneH + safezoneY;
				w = 0.8; 
				h = 1;
				sizeEx=0.03;
				size=1;
				font="PuristaLight";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};   			 
 	};