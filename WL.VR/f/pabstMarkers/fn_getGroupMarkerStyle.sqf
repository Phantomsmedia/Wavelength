// data values
private _gray	= [0.8, 0.8, 0.8, 1];
private _purple = [0.678, 0, 0.678, 1];	//#AE00AE
private _red	= [1, 0, 0, 1];			//#FF0000
private _green	= [0, 1, 0, 1];			//#00FF00
private _blue	= [0, 0.69, 0.921, 1];	//#00B1EC
private _yellow = [1, 1, 0, 1];			//#FFFF00
private _orange = [1, 0.647, 0, 1];		//#ffa600
private _black	= [0, 0, 0, 1];
private _pink	= [1, 0.753, 0.796, 1];
private _white	= [1, 1, 1, 1];

private _fireteam  = "\A3\ui_f\data\map\markers\nato\b_inf.paa";
private _unknown   = "\A3\ui_f\data\map\markers\nato\b_unknown.paa";
private _hq	   = "\A3\ui_f\data\map\markers\nato\b_hq.paa";
private _support   = "\A3\ui_f\data\map\markers\nato\b_support.paa";	// MMG HMG
private _supportAT = "\A3\ui_f\data\map\markers\nato\b_motor_inf.paa";	// MAT HAT
private _recon	   = "\A3\ui_f\data\map\markers\nato\b_recon.paa";	// Sniper
private _mortar	   = "\A3\ui_f\data\map\markers\nato\b_mortar.paa";	// Mortar
private _maint	   = "\A3\ui_f\data\map\markers\nato\b_maint.paa";	// Engineers
private _mech	   = "\A3\ui_f\data\map\markers\nato\b_mech_inf.paa";	// IFV/APC
private _armor	   = "\A3\ui_f\data\map\markers\nato\b_armor.paa";	// Tank
private _air	   = "\A3\ui_f\data\map\markers\nato\b_air.paa";// Helos
private _plane	   = "\A3\ui_f\data\map\markers\nato\b_plane.paa";	// Planes
private _artillery = "\A3\ui_f\data\map\markers\nato\b_art.paa";// Artillery

private _med = "\A3\ui_f\data\map\markers\nato\b_med.paa";	// Medic


private _size = [24, 24];

private _input	   = _this select 0;
private _shortName = _input;
private _texture   = _unknown;
private _color	   = [1, 1, 1, 1];
switch (true) do {
	case (_input in ["COY"]): {
		_texture   = "\sc_mapmarkers\data\coy.paa";
		_color	   = _gray;
		_shortName = true;
	};
	case (_input in ["1PLT", "CO", "PLT"]): {
		_texture   = "\sc_mapmarkers\data\pl.paa";		// CAN BE REPLACED WITH 1PL.PAA IF/WHEN WE EVER HAVE A SECOND PLATOON!
		_color	   = _purple;
		_shortName = true;
		_size	   = [40, 40];
	};
	case (_input in ["2PLT"]): {
		_texture   = "\sc_mapmarkers\data\2pl.paa";
		_color	   = _purple;
		_shortName = true;
		_size	   = [40, 40];
	};

	case (_input in ["ASL"]): {
		_texture   = "\sc_mapmarkers\data\asl.paa";
		_color	   = _red;
		_shortName = true;
		_size	   = [36, 36];
	};
	case (_input in ["A1"]): {
		_texture   = "\sc_mapmarkers\data\a1.paa";
		_color	   = _red;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["A2"]): {
		_texture   = "\sc_mapmarkers\data\a2.paa";
		_color	   = _red;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["A3"]): {
		_texture   = "\sc_mapmarkers\data\a3.paa";
		_color	   = _red;
		_shortName = true;
		_size	   = [30, 30];
	};

	case (_input in ["BSL"]): {
		_texture   = "\sc_mapmarkers\data\bsl.paa";
		_color	   = _blue;
		_shortName = true;
		_size	   = [36, 36];
	};
	case (_input in ["B1"]): {
		_texture   = "\sc_mapmarkers\data\b1.paa";
		_color	   = _blue;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["B2"]): {
		_texture   = "\sc_mapmarkers\data\b2.paa";
		_color	   = _blue;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["B3"]): {
		_texture   = "\sc_mapmarkers\data\b3.paa";
		_color	   = _blue;
		_shortName = true;
		_size	   = [30, 30];
	};

	case (_input in ["CSL"]): {
		_texture   = "\sc_mapmarkers\data\csl.paa";
		_color	   = _green;
		_shortName = true;
		_size	   = [36, 36];
	};
	case (_input in ["C1"]): {
		_texture   = "\sc_mapmarkers\data\c1.paa";
		_color	   = _green;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["C2"]): {
		_texture   = "\sc_mapmarkers\data\c2.paa";
		_color	   = _green;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["C3"]): {
		_texture   = "\sc_mapmarkers\data\c3.paa";
		_color	   = _green;
		_shortName = true;
		_size	   = [30, 30];
	};

	case (_input in ["DSL"]): {
		_texture   = "\sc_mapmarkers\data\dsl.paa";
		_color	   = _red;
		_shortName = true;
		_size	   = [36, 36];
	};
	case (_input in ["D1"]): {
		_texture   = "\sc_mapmarkers\data\d1.paa";
		_color	   = _red;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["D2"]): {
		_texture   = "\sc_mapmarkers\data\d2.paa";
		_color	   = _red;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["D3"]): {
		_texture   = "\sc_mapmarkers\data\d3.paa";
		_color	   = _red;
		_shortName = true;
		_size	   = [30, 30];
	};

	case (_input in ["ESL"]): {
		_texture   = "\sc_mapmarkers\data\esl.paa";
		_color	   = _yellow;
		_shortName = true;
		_size	   = [36, 36];
	};
	case (_input in ["E1"]): {
		_texture   = "\sc_mapmarkers\data\e1.paa";
		_color	   = _yellow;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["E2"]): {
		_texture   = "\sc_mapmarkers\data\e2.paa";
		_color	   = _yellow;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["E3"]): {
		_texture   = "\sc_mapmarkers\data\e3.paa";
		_color	   = _yellow;
		_shortName = true;
		_size	   = [30, 30];
	};

	case (_input in ["FSL"]): {
		_texture   = "\sc_mapmarkers\data\fsl.paa";
		_color	   = _green;
		_shortName = true;
		_size	   = [36, 36];
	};
	case (_input in ["F1"]): {
		_texture   = "\sc_mapmarkers\data\f1.paa";
		_color	   = _green;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["F2"]): {
		_texture   = "\sc_mapmarkers\data\f2.paa";
		_color	   = _green;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["F3"]): {
		_texture   = "\sc_mapmarkers\data\f3.paa";
		_color	   = _green;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["MMG1"]): {
		_texture   = "\sc_mapmarkers\data\mmg.paa";		// CAN BE REPLACED WITH MMG1.PAA IF MULTIPLE MMGS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["MMG2"]): {
		_texture   = "\sc_mapmarkers\data\mmg2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["MMG3"]): {
		_texture   = "\sc_mapmarkers\data\mmg3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["HMG1"]): {
		_texture   = "\sc_mapmarkers\data\hmg.paa";		// CAN BE REPLACED WITH HMG1.PAA IF MULTIPLE HMGS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["HMG2"]): {
		_texture   = "\sc_mapmarkers\data\hmg2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["HMG3"]): {
		_texture   = "\sc_mapmarkers\data\hmg3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["MAT1"]): {
		_texture   = "\sc_mapmarkers\data\mat.paa";		// CAN BE REPLACED WITH MAT1.PAA IF MULTIPLE MATS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["MAT2"]): {
		_texture   = "\sc_mapmarkers\data\mat2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["MAT3"]): {
		_texture   = "\sc_mapmarkers\data\mat3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["HAT1"]): {
		_texture   = "\sc_mapmarkers\data\hat.paa";		// CAN BE REPLACED WITH HAT1.PAA IF MULTIPLE HATS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["HAT2"]): {
		_texture   = "\sc_mapmarkers\data\hat2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["HAT3"]): {
		_texture   = "\sc_mapmarkers\data\hat3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["MTR1"]): {
		_texture   = "\sc_mapmarkers\data\mtr.paa";		// CAN BE REPLACED WITH MTR1.PAA IF MULTIPLE MTRS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["MTR2"]): {
		_texture   = "\sc_mapmarkers\data\mtr2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["MTR3"]): {
		_texture   = "\sc_mapmarkers\data\mtr3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["MSAM1"]): {
		_texture   = "\sc_mapmarkers\data\msam.paa";		// CAN BE REPLACED WITH MSAM1.PAA IF MULTIPLE MSAMS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["MSAM2"]): {
		_texture   = "\sc_mapmarkers\data\msam2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["MSAM3"]): {
		_texture   = "\sc_mapmarkers\data\msam3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["HSAM1"]): {
		_texture   = "\sc_mapmarkers\data\hsam.paa";		// CAN BE REPLACED WITH HSAM1.PAA IF MULTIPLE HSAMS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["HSAM2"]): {
		_texture   = "\sc_mapmarkers\data\hsam2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["HSAM3"]): {
		_texture   = "\sc_mapmarkers\data\hsam3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};

	// BUCK

	case (_input in ["ST1"]): {
		_texture   = "\sc_mapmarkers\data\st.paa";		// CAN BE REPLACED WITH ST1.PAA IF MULTIPLE STS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["ST2"]): {
		_texture   = "\sc_mapmarkers\data\st2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["ST3"]): {
		_texture   = "\sc_mapmarkers\data\st3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["DT1"]): {
		_texture   = "\sc_mapmarkers\data\dt.paa";		// CAN BE REPLACED WITH DT1.PAA IF MULTIPLE DTS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["DT2"]): {
		_texture   = "\sc_mapmarkers\data\dt2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["DT3"]): {
		_texture   = "\sc_mapmarkers\data\dt3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["ENG1"]): {
		_texture   = "\sc_mapmarkers\data\eng.paa";		// CAN BE REPLACED WITH ENG1.PAA IF MULTIPLE ENGS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["ENG2"]): {
		_texture   = "\sc_mapmarkers\data\eng2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["ENG3"]): {
		_texture   = "\sc_mapmarkers\data\eng3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["IFV1"]): {
		_texture   = "\sc_mapmarkers\data\ifv.paa";		// CAN BE REPLACED WITH IFV1.PAA IF MULTIPLE IFVS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["IFV2"]): {
		_texture   = "\sc_mapmarkers\data\ifv2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["IFV3"]): {
		_texture   = "\sc_mapmarkers\data\ifv3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["IFV4"]): {
		_texture   = "\sc_mapmarkers\data\ifv4.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["IFV5"]): {
		_texture   = "\sc_mapmarkers\data\ifv5.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["IFV6"]): {
		_texture   = "\sc_mapmarkers\data\ifv6.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["IFV7"]): {
		_texture   = "\sc_mapmarkers\data\ifv7.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["IFV8"]): {
		_texture   = "\sc_mapmarkers\data\ifv8.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["TNK1"]): {
		_texture   = "\sc_mapmarkers\data\tnk.paa";		// CAN BE REPLACED WITH TNK1.PAA IF MULTIPLE TNKS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TNK2"]): {
		_texture   = "\sc_mapmarkers\data\tnk2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TNK3"]): {
		_texture   = "\sc_mapmarkers\data\tnk3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TNK4"]): {
		_texture   = "\sc_mapmarkers\data\tnk4.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["APC1"]): {
		_texture   = "\sc_mapmarkers\data\apc.paa";		// CAN BE REPLACED WITH APC1.PAA IF MULTIPLE APCS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["APC2"]): {
		_texture   = "\sc_mapmarkers\data\apc2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["APC3"]): {
		_texture   = "\sc_mapmarkers\data\apc3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["APC4"]): {
		_texture   = "\sc_mapmarkers\data\apc4.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["TH1"]): {
		_texture   = "\sc_mapmarkers\data\th.paa";		// CAN BE REPLACED WITH TH1.PAA IF MULTIPLE THS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TH2"]): {
		_texture   = "\sc_mapmarkers\data\th2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TH3"]): {
		_texture   = "\sc_mapmarkers\data\th3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TH4"]): {
		_texture   = "\sc_mapmarkers\data\th4.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TH5"]): {
		_texture   = "\sc_mapmarkers\data\th5.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TH6"]): {
		_texture   = "\sc_mapmarkers\data\th6.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TH7"]): {
		_texture   = "\sc_mapmarkers\data\th7.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["TH8"]): {
		_texture   = "\sc_mapmarkers\data\th8.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["AH1"]): {
		_texture   = "\sc_mapmarkers\data\ah.paa";		// CAN BE REPLACED WITH AH1.PAA IF MULTIPLE AHS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["AH2"]): {
		_texture   = "\sc_mapmarkers\data\ah2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["AH3"]): {
		_texture   = "\sc_mapmarkers\data\ah3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["AH4"]): {
		_texture   = "\sc_mapmarkers\data\ah4.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};


	case (_input in ["FW1"]): {
		_texture   = "\sc_mapmarkers\data\fw.paa";		// CAN BE REPLACED WITH FW1.PAA IF MULTIPLE FWS ARE BEING USED!
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["FW2"]): {
		_texture   = "\sc_mapmarkers\data\fw2.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["FW3"]): {
		_texture   = "\sc_mapmarkers\data\fw3.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["FW4"]): {
		_texture   = "\sc_mapmarkers\data\fw4.paa";
		_color	   = _orange;
		_shortName = true;
		_size	   = [30, 30];
	};
	case (_input in ["COM", "DCM", "P1M", "P2M", "PM", "AM", "BM", "CM", "DM", "EM", "FM"]): {
		_texture   = _med;
		_color	   = _pink;
		_size	   = [16, 16];
		_shortName = true;
	};
};
[_texture, _color, _size, _shortName];