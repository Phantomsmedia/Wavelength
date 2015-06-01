class F_Markers {
    class F_Markers {
        file = "f\pabstMarkers";
        class drawMap {};
        class getGroupMarkerStyle {};
        class playerInit {};
        class serverSetupGroupID {};
        class setupDrawThings {};
    };
};
class F // Defines the "owner"
{
	class briefing {
        file = "f\briefing";
        class showBriefing;
        class showOrbatNotes;
    };
	class common // category
	{
		file = "f\common";
		// Defines the function to preInit (the paramArray dosent seem to be constructed at preInit stage).
		class processParamsArray
		{
			preInit = 1;
			postInit = 1;
		};

		class nearPlayer{};
	};
	class mpEnd
	{
		file = "f\mpEnd";
		class mpEnd{};
		class mpEndReceiver{};
	};
	class assignGear 
	{
	    // Defines the functions to preInit the compling of the assignGear function used by units.
	    file = "f\assignGear";
	    class assignGearMan {};
	    class assignGearVehicle {};
    };
	class setGroupID
	{
		file = "f\setGroupID";
		class setGroupID{};
	};
	class missionConditions
	{
		file = "f\missionConditions";
		class SetTime{};
		class SetFog{};
		class SetWeather{};
	};
	/*
	class cache
	{
		file = "f\cache";
		class cInit {};
		class cTracker {};
		class gCache {};
		class gUncache {};
	};
	*/
	/*
	class authorisedCrew
	{
		file = "f\authorisedCrew";
		class authorisedCrewCheck {};
	};
	*/
	/*
	class bodyRemoval
	{
		file = "f\removeBody";
		class removeBody{};
	};
	*/
	/*
	class setAISkill
	{
		file = "f\setAISKill";
		class setAISKill{};
	};
	*/
	class mapClickTeleport
	{
		file = "f\mapClickTeleport";
		class mapClickTeleportUnit{};
		class mapClickTeleportGroup{};
	};
	/*
	class nametag
	{
		file = "f\nametag";
		class drawNameTag{};
	};
	*/
	/*
	class preMount
	{
		file = "f\preMount";
		class mountGroups{};
	};
	*/
	class zeus
	{
		file = "f\zeus";
		class zeusInit{};
		class zeusAddAddons{};
		class zeusAddObjects{};
	};
	/*
	class acre
	{
		file = "f\radios\acre";
		class acre_removeRadios{};
		class acre_addRadios{};
		class acre_setRadioFrequencies{};
		class acre_configureSpectatorChat{};
	};
	*/
	class tfr
	{
		file = "f\radios\tfr";
		class tfr_removeRadios{};
		class tfr_addRadios{};
		class tfr_setRadioFrequencies{};
		class tfr_configureSpectatorChat{};
	};
	/*
	class safeStart
	{
		file = "f\safeStart";
		class safety{};
	};
	*/
	#include "spect\functions.hpp"

};