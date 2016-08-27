comment "Exported from Arsenal by EidEchse_Yannick";
params ["_unit"];

comment "Exported from Arsenal by EidEchse_Yannick";

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;
removeGoggles _unit;

comment "Add containers";
_unit forceAddUniform "rhs_uniform_FROG01_d";
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_fieldDressing";};
_unit addItemToUniform "ACE_morphine";
_unit addItemToUniform "rhs_m136_hedp_mag";
_unit addItemToUniform "15Rnd_mas_9x21_Mag";
_unit addItemToUniform "rhs_mag_fakel";
_unit addItemToUniform "ACE_key_west";
for "_i" from 1 to 2 do {_unit addItemToUniform "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addVest "rhs_6sh92_digi_radio";
_unit addItemToVest "rhs_mag_rgn";
for "_i" from 1 to 2 do {_unit addItemToVest "15Rnd_mas_9x21_Mag";};
for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addBackpack "B_AssaultPack_ocamo";
for "_i" from 1 to 6 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addHeadgear "rhsusf_cvc_green_helmet";
_unit addGoggles "G_Aviator";

comment "Add weapons";
_unit addWeapon "rhs_weap_m4_pmag_grip2";
_unit addPrimaryWeaponItem "ACE_muzzle_mzls_L";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15side";
_unit addPrimaryWeaponItem "FHQ_optic_AC12136";
_unit addPrimaryWeaponItem "rhsusf_acc_grip2_tan";
_unit addWeapon "rhs_weap_M136_hedp";
_unit addSecondaryWeaponItem "rhs_acc_at4_handler";
_unit addWeapon "hgun_mas_m9_F";
_unit addHandgunItem "muzzle_mas_snds_LM";
_unit addHandgunItem "acc_mas_flash_gun";
_unit addHandgunItem "optic_MRD";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";

comment "Set identity";
_unit setFace "TanoanHead_A3_02";
_unit setSpeaker "ACE_NoVoice";
[_unit,"111thID"] call bis_fnc_setUnitInsignia;
