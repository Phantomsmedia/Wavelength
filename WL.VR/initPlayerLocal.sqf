params ["_player","_isJip"];
//any


// ====================================================================================
// WL - JIP Units Auto-teleportation
// Credits: Bismarck
if (_isJip && !isNil "PABST_ADMIN_SAFESTART_public_isSafe" && {!PABST_ADMIN_SAFESTART_public_isSafe} && (f_param_autoTeleport == 1)) then {
  [] execVM "f\JIP\f_JIP_autoTeleport.sqf";
};
// ====================================================================================
