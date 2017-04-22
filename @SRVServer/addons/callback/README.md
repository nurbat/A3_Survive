# CallBack

<h2>Келлбеки</h2>
<span>
<p><i>[_from, _to, _isRuin]</i> buildingChanged<sub>Разрушение зданий</sub></p>
<p><i>[_killed, _killer]</i> entityKilled<sub>Смерть любого юнита, бот-игрок-техника</sub></p>
<p><i>[_unit_new, _unit_old]</i> entityRespawned<sub>Респавн юнита</sub></p>
<p><i>[_unit, _id, _uid, _name]</i> handleDisconnect<sub>Дисконнект игрока</sub></p>
<p><i>[_id, _uid, _name, _jip, _owner]</i> playerConnected<sub>Присоеденение игрока</sub></p>
<p><i>[_killed, _killer]</i> playerKilled<sub>Смерть игрока</sub></p>
<p><i>[_killed, _killer]</i> vehicleKilled<sub>Смерить техники</sub></p>
</span>

<h2>Установить свой код на келлБек</h2>
<code>{  _YOU_CODE_ } Call SRVCall_fnc_set...</code>
<span>
<p>SRVCall_fnc_setBuildingChanged<sub>Разрушение зданий</sub></p>
<p>SRVCall_fnc_setEntityKilled<sub>Смерть любого юнита, бот-игрок-техника</sub></p>
<p>SRVCall_fnc_setEntityRespawned<sub>Респавн юнита</sub></p>
<p>SRVCall_fnc_setHandleDisconnect<sub>Дисконнект игрока</sub></p>
<p>SRVCall_fnc_setPlayerConnected<sub>Присоеденение игрока</sub></p>
<p>SRVCall_fnc_setPlayerKilled<sub>Смерть игрока</sub></p>
<p>SRVCall_fnc_setVehicleKilled<sub>Смерить техники</sub></p>
</span>
