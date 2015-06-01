class F_Markers {
    class F_Markers {
        file = "pabstMarkers";
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
        file = "briefing";
        class showBriefing;
        class showOrbatNotes;
    };
	class common // category
	{
		file = "common";
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
		file = "mpEnd";
		class mpEnd{};
		class mpEndReceiver{};
	};
	class assignGear 
	{
	    // Defines the functions to preInit the compling of the assignGear function used by units.
	    file = "assignGear";
	    class assignGearMan {};
	    class assignGearVehicle {};
    };
	class setGroupID
	{
		file = "setGroupID";
		class setGroupID{};
	};
	class missionConditions
	{
		file = "missionConditions";
		class SetTime{};
		class SetFog{};
		class SetWeather{};
	};
	/*
	class cache
	{
		file = "cache";
		class cInit {};
		class cTracker {};
		class gCache {};
		class gUncache {};
	};
	*/
	class groupMarkers {
		file = "groupMarkers";
		class localGroupMarker{};
		class localSpecialistMarker{};
	};
	/*
	class authorisedCrew
	{
		file = "authorisedCrew";
		class authorisedCrewCheck {};
	};
	*/
	class FTMemberMarkers
	{
		file = "FTMemberMarkers";
		class SetLocalFTMemberMarkers{};
		class GetMarkerColor{};
		class LocalFTMarkerSync{};
	};
	/*
	class bodyRemoval
	{
		file = "removeBody";
		class removeBody{};
	};
	*/
	/*
	class setAISkill
	{
		file = "setAISKill";
		class setAISKill{};
	};
	*/
	class mapClickTeleport
	{
		file = "mapClickTeleport";
		class mapClickTeleportUnit{};
		class mapClickTeleportGroup{};
	};
	/*
	class nametag
	{
		file = "nametag";
		class drawNameTag{};
	};
	*/
	/*
	class preMount
	{
		file = "preMount";
		class mountGroups{};
	};
	*/
	class zeus
	{
		file = "zeus";
		class zeusInit{};
		class zeusAddAddons{};
		class zeusAddObjects{};
	};
	/*
	class acre
	{
		file = "radios\acre";
		class acre_removeRadios{};
		class acre_addRadios{};
		class acre_setRadioFrequencies{};
		class acre_configureSpectatorChat{};
	};
	*/
	class tfr
	{
		file = "radios\tfr";
		class tfr_removeRadios{};
		class tfr_addRadios{};
		class tfr_setRadioFrequencies{};
		class tfr_configureSpectatorChat{};
	};
	/*
	class safeStart
	{
		file = "safeStart";
		class safety{};
	};
	*/
	#include "spect\functions.hpp"

};