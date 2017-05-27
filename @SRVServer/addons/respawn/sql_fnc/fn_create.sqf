/*
 * Arguments:
 * 0: Player <OBJECT>
 *
 * Return Value:
 * None
 *
 */
 ["INSERT INTO player SET",
    [
        ["uid",        getPlayerUID _this],
        ["name",       name _this]
    ]
] Call SRVDB_fnc_queryBuild;