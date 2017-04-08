{
    if (isNull _x) throw false;
    if (isObjectHidden _x) throw false;
    if !(isClass(configFile >> "SRVConfig" >> "SRVLoot" >> "Buildings" >> typeOf _x)) throw false;
    if (_x getVariable ["LootLife", 0] > time) throw false;

	_x call SRVServer_loot_createLoot;

} forEach _this;