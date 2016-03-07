_mapControl = _this select 0;

if ((player != player) || {!alive player}) exitWith {};

if ((diag_tickTime - F_Markers_lastUpdate) > 5) then {
    [] call F_Markers_fnc_setupDrawThings;
    F_Markers_lastUpdate = diag_tickTime;
};

{
    //regular marker
	_data = _x getVariable ["f_var_drawSettings", []];
    if (_data isEqualTo []) then {
        diag_log format ["Bad f_var_drawSettings on %1", _x]
    } else {
        _text = if ((typeName (_data select 0)) == "BOOL") then {""} else {(_data select 0)};
        _texture = _data select 1;
        _color = _data select 2;
        _size = _data select 3;
        _pos = _data select 4;
        _time = _data select 5;
		_mot = _data select 6;

        if(((time - _time) > F_Markers_delay) && {!isNull (_x)}) then {
            if(typeName _x == "GROUP") then {
				_pos = getpos leader _x;
			};
            if(typeName _x == "OBJECT") then {_pos = getpos _x};
            _time = time;
            _data set [4,_pos];
            _data set [5,_time];
        };
        _sizeX = _size select 0;
        _sizeY = _size select 1;
        _textsize = 0.05;
        if((ctrlMapScale _mapControl) > 0.1) then {_textsize = 0};
        _mapControl drawIcon [_texture,_color,_pos,_sizeX,_sizeY,0,_text,0,_textsize,'TahomaB',"right"];
		if (_mot) then {
			_mapControl drawIcon ["\sc_mapmarkers\data\motorized.paa",_color,[_pos select 0, _pos select 1, (_pos select 2) + 1],_sizeX,_sizeY,0,_text,0,_textsize,'TahomaB',"right"];
		};
    };
} foreach F_Markers_thingsToDraw;

if((ctrlMapScale _mapControl) < 0.5) then {
    {
        _tex = _x call ST_STHud_GetIconPicture;
        _color = switch (assignedTeam _x) do {
        case "RED": {[0.9,0,0,1]};
        case "YELLOW": {[0.9,0.9,0,1]};
        case "GREEN": {[0,0.8,0,1]};
        case "BLUE": {[0,0,1,1]};
            default {[1,1,1,1]}
        };
        _textsize = if((ctrlMapScale _mapControl) < 0.005) then {0.02} else {0};
        _pos = getPos _x;
        _dir = getDir _x;
        _text = if (alive _x) then {name _x} else {""};

        _size = -(3200/13)*(ctrlMapScale _mapControl) + 386/13;
        if (_size < 10) then {_size = 10};
        if (_size > 26) then {_size = 26};
        //if((ctrlMapScale _mapControl) > 0.08) then {_size = 10};
        //if((ctrlMapScale _mapControl) > 0.03) then {_size = 16};
        //if((ctrlMapScale _mapControl) > 0.015) then {_size = 20};
                //from 0.08 to 0.015, between 10 and 26

        _mapControl drawIcon [_tex, [0,0,0,1], _pos, _size, _size, _dir, "", 0, _textsize, 'TahomaB', "left"];
        _mapControl drawIcon [_tex, _color, _pos, _size - 4, _size - 4, _dir, _text, 0, _textsize, 'TahomaB', "left"];
    } forEach (units (group player));
};