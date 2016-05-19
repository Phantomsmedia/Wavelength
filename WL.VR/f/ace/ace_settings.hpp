class ACE_Settings
{
	#include "ace_medical_settings.hpp"

	//Daylight laser pointer (helps perf: https://github.com/acemod/ACE3/blob/master/addons/laserpointer/XEH_postInit.sqf)
	class ace_laserPointer_enabled {
		value = 0;
	};

	class ace_map_DefaultChannel {//ACE 3.4.0 - https://github.com/acemod/ACE3/pull/2650
		typeName = "NUMBER";
		value = 1; //SIDE
	};

	class ace_zeus_autoAddObjects {
    	value = 1;
    	typeName = "BOOL";
  	};

  	class ace_hearing_autoAddEarplugsToUnits {
  	  value = 0;
  	  typeName = "BOOL";
 	};

};