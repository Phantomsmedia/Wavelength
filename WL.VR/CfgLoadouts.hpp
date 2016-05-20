class CfgLoadouts {

    #define MEDICAL_MODE_BASIC 1
    #define MEDICAL_MODE_ADVANCED 2

    MEDICAL_MODE = MEDICAL_MODE_ADVANCED;

    class MEDICAL_BASIC {
        class STANDARD {
            items[] = {"ACE_fieldDressing:3","ACE_morphine"};
        };
        class LEADER {
            items[] = {"ACE_fieldDressing:4","ACE_morphine"};
        };
        class MEDIC {
            items[] = {"ACE_fieldDressing:31","ACE_epinephrine:8","ACE_bloodIV:2","ACE_morphine:14"};
        };
        class VEHICLE {
            items[] = {"ACE_fieldDressing:12","ACE_morphine:4"};
        };
    };

    class MEDICAL_ADVANCED {
        class STANDARD {
            items[] = {"ACE_elasticBandage:4","ACE_packingBandage:5","ACE_morphine","ACE_tourniquet"};
        };
        class LEADER {
            items[] = {"ACE_elasticBandage:4","ACE_packingBandage:8","ACE_morphine","ACE_tourniquet:2"};
        };
        class MEDIC {
            items[] = {"ACE_fieldDressing:15","ACE_elasticBandage:20","ACE_packingBandage:20","ACE_atropine:6","ACE_morphine:8","ACE_epinephrine:8","ACE_salineIV_500:4","ACE_personalAidKit"};
        };
        class VEHICLE: MEDIC {};
    };

    //Only include one hpp per faction!
    //use (//) to comment out other files

    //BLUFOR FACTION:
    #include "Loadouts\bluefor_standard.hpp" //Our Standard "us tan" loadout


    //INDFOR FACTION:
    #include "Loadouts\indfor_standard.hpp" //Our Standard "ukraine" loadout


    //OPFOR FACTION:
    #include "Loadouts\opfor_standard.hpp" //Our standard "middle-east" loadout


    //Bonus example civilian loadouts:
    class CIV_F {
        class C_man_1 {
            uniform[] = {"U_C_Poloshirt_blue","U_C_Poloshirt_burgundy","U_C_Poloshirt_stripped","U_C_Poloshirt_tricolour","U_C_Poloshirt_salmon","U_C_Poloshirt_redwhite"};  /// randomized
            vest[] = {}; /// randomized
            headgear[] = {}; /// randomized
            backpack[] = {}; /// randomized
            backpackItems[] = {};
            weapons[] = {}; /// randomized
            launchers[] = {}; /// randomized
            handguns[] = {}; /// randomized
            magazines[] = {};
            items[] = {"ACE_fieldDressing:3"};
            linkedItems[] = {"ItemMap","ItemCompass","ItemWatch"};
            attachments[] = {};
        };
        class C_journalist_F: C_man_1 {
            uniform[] = {"U_C_Journalist"};  /// randomized
            vest[] = {"V_Press_F"}; /// randomized
            headgear[] = {"H_Cap_press"}; /// randomized
        };
        class CEO: C_man_1 {
            uniform[] = {"U_Marshal"};  /// randomized
            headgear[] = {"H_Hat_brown"};
            items[] += {};
        };
        class C_man_hunter_1_F: C_man_1 {
            uniform[] = {"U_C_HunterBody_grn"};  /// randomized
            headgear[] = {"H_Booniehat_grn"};  /// randomized
            weapons[] = {};
            magazines[] = {};
            backpack[] = {"B_OutdoorPack_blk"};
        };
    };
};
