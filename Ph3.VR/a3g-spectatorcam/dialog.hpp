class A3GSC_titlePlayername {
	idd = -1;
	onLoad = "uiNamespace setVariable ['A3GSC_dispPlayerName', (_this select 0)]";
	duration = 5;
	fadein = 0.2;
	fadeout = 1;
	class controls {
		class ctrlNametag {
			idc = 1;
			type = 0;
			style = 2;
			x = safeZoneX + (safeZoneW / 2) - 0.3;
			y = safeZoneY + 0.05;
			h = 0.1;
			w = 0.6;
			font = "PuristaMedium";
			sizeEx = 0.07;
			colorBackground[] = {0,0,0,0.8};
			colorText[] = {1,1,1,1};
			text = "";
		};
	};
};

class A3GSC_progressBar {
	type = 8;
	style = 0;
	w = 0.3;
	h = 0.03;
	colorFrame[] = {1,1,1,1};
	colorBar[] = {1,1,1,1};
	texture = "#(argb,8,8,3)color(1,1,1,1)";
	x = safeZoneX + safeZoneW - 0.5;
};

class A3GSC_statsText {
	type = 0;
	style = 0;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "PuristaMedium";
	sizeEx = 0.04;
	h = 0.04;
	w = 0.1;
	x = safeZoneX + safeZoneW - 0.6;
};

class A3GSC_titlePlayerstats {
	idd = -1;
	onLoad = "uiNamespace setVariable ['A3GSC_dispPlayerStats', (_this select 0)]";
	duration = 86400;
	fadein = 0.5;
	fadeout = 0;
	class controls {
		class A3GSC_ctrlFatigueBar : A3GSC_progressBar {
			idc = 1;
			y = safeZoneY + safeZoneH - 0.4;
		};
		class A3GSC_ctrlFatigueBarText : A3GSC_statsText {
			idc = -1;
			y = safeZoneY + safeZoneH - 0.408;
			text = "Fatigue:";
		};

		class A3GSC_ctrlBloodBar : A3GSC_progressBar {
			idc = 2;
			y = safeZoneY + safeZoneH - 0.3;
		};
		class A3GSC_ctrlBloodBarText : A3GSC_statsText {
			idc = -2;
			y = safeZoneY + safeZoneH - 0.308;
			text = "Blood:";
		};

		class A3GSC_ctrlPainBar : A3GSC_progressBar {
			idc = 3;
			y = safeZoneY + safeZoneH - 0.2;
		};
		class A3GSC_ctrlPainBarText : A3GSC_statsText {
			idc = -3;
			y = safeZoneY + safeZoneH - 0.208;
			text = "Pain:";
		};

		class A3GSC_ctrlStatusText : A3GSC_statsText {
			idc = 4;
			sizeEx = 0.06;
			h = 0.06;
			w = 0.4;
			y = safeZoneY + safeZoneH - 0.51;
			text = "";
		};
	};
};

class A3GSC_keyText {
	type = 0;
	style = 0;
	colorBackground[] = {0,0,0,0};
	colorText[] = {0.77,0.51,0.08,1};
	font = "PuristaBold";
	sizeEx = 0.04;
	h = 0.04;
	w = 0.1;
	x = safeZoneX + safeZoneW - 0.4;
};

class A3GSC_descText {
	type = 0;
	style = 0;
	colorBackground[] = {0,0,0,0};
	colorText[] = {1,1,1,1};
	font = "PuristaMedium";
	sizeEx = 0.04;
	h = 0.04;
	w = 0.3;
	x = safeZoneX + safeZoneW - 0.3;
};

class A3GSC_titleHelp {
	idd = -1;
	onLoad = "";
	duration = 86400;
	fadein = 0.5;
	fadeout = 0;
	class controls {
		class Background {
			type = 0;
			style = 0;
			idc = -1;
			colorBackground[] = {0.16,0.16,0.16,0.5};
			colorText[] = {0.16,0.16,0.16,1};
			font = "PuristaBold";
			sizeEx = 0.04;
			text = "";
			h = 0.6;
			w = 0.45;
			x = safeZoneX + safeZoneW - 0.45;
			y = safeZoneY + safeZoneH/2 - 0.3;
		}
		class A3GSC_Header {
			idc = -1;
			type = 0;
			style = 0;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaBold";
			sizeEx = 0.08;
			h = 0.08;
			w = 0.45;
			x = safeZoneX + safeZoneW - 0.4;
			y = safeZoneY + safeZoneH/2 - 0.25;
			text = "Controls";
		};
		class A3GSC_keyBind0 : A3GSC_keyText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 - 0.15;
			text = "H";
		};
		class A3GSC_keyDesc0 : A3GSC_descText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 - 0.15;
			text = "Show/hide help";
		};
		class A3GSC_keyBind1 : A3GSC_keyText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 - 0.1;
			text = "WASD";
		};
		class A3GSC_keyDesc1 : A3GSC_descText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 - 0.1;
			text = "Move camera";
		};
		class A3GSC_keyBind2 : A3GSC_keyText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 - 0.05;
			text = "Q/E";
		};
		class A3GSC_keyDesc2 : A3GSC_descText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 - 0.05;
			text = "Raise/Lower camera";
		};
		class A3GSC_keyBind3 : A3GSC_keyText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 - 0;
			text = "Shift";
		};
		class A3GSC_keyDesc3 : A3GSC_descText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 - 0;
			text = "Faster movement";
		};
		class A3GSC_keyBind4 : A3GSC_keyText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 + 0.05;
			text = "Alt";
		};
		class A3GSC_keyDesc4 : A3GSC_descText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 + 0.05;
			text = "Slower movement";
		};
		class A3GSC_keyBind5 : A3GSC_keyText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 + 0.1;
			text = "N";
		};
		class A3GSC_keyDesc5 : A3GSC_descText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 + 0.1;
			text = "Switch vision mode";
		};
		class A3GSC_keyBind6 : A3GSC_keyText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 + 0.15;
			text = "Space";
		};
		class A3GSC_keyDesc6 : A3GSC_descText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 + 0.15;
			text = "Switch camera mode";
		};
		class A3GSC_keyBind7 : A3GSC_keyText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 + 0.2;
			text = "←/→";
		};
		class A3GSC_keyDesc7 : A3GSC_descText {
			idc = -1;
			y = safeZoneY + safeZoneH/2 + 0.2;
			text = "Switch to next player";
		};
	};
};

class A3GSC_titleServerInfo {
	idd = -1;
	onLoad = "((_this select 0) displayCtrl 1) ctrlSetText ('Players alive: ' + str (count playableUnits)); ((_this select 0) displayCtrl 2) ctrlSetText ('Players unconscious: ' + str ({captive _x} count playableUnits))";
	duration = 86400;
	fadein = 0;
	fadeout = 0;
	class controls {
		class A3GSC_PlayerCount {
			type = 0;
			style = 0;
			idc = 1;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0.04;
			h = 0.04;
			w = 0.3;
			x = safeZoneX + 0.03;
			y = safeZoneY + safeZoneH - 0.55;
			text = "";
		};
		class A3GSC_UnconsciousCount {
			type = 0;
			style = 0;
			idc = 2;
			colorBackground[] = {0,0,0,0};
			colorText[] = {1,1,1,1};
			font = "PuristaMedium";
			sizeEx = 0.04;
			h = 0.04;
			w = 0.3;
			x = safeZoneX + 0.03;
			y = safeZoneY + safeZoneH - 0.5;
			text = "asdsad";
		};
	};
};