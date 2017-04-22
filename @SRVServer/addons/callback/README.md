# CallBack

<h2>Келлбеки</h2>
<span>
<p><i>[_from, _to, _isRuin]</i> buildingChanged <sup>Разрушение зданий</sup></p>
<p><i>[_killed, _killer]</i> entityKilled <sup>Смерть любого юнита, бот-игрок-техника</sup></p>
<p><i>[_unit_new, _unit_old]</i> entityRespawned <sup>Респавн юнита</sup></p>
<p><i>[_unit, _id, _uid, _name]</i> handleDisconnect <sup>Дисконнект игрока</sup></p>
<p><i>[_id, _uid, _name, _jip, _owner]</i> playerConnected <sup>Присоеденение игрока</sup></p>
<p><i>[_killed, _killer]</i> playerKilled<sup>Смерть игрока </sup></p>
<p><i>[_killed, _killer]</i> vehicleKilled<sup>Смерть техники </sup></p>
</span>

<h2>Установить свой код на келлБек</h2>
<code>
{  _YOU_CODE_ } Call SRVCall_fnc_set...
</code>
Example:

<code>
{  _owner Call SRVRespawn_fnc_connect; } Call SRVCall_fnc_setPlayerConnected;
</code>
<code>
{  deleteVehicle _killed; } Call SRVCall_fnc_setVehicleKilled;
</code>

<span>
<p>SRVCall_fnc_setBuildingChanged <sup>Разрушение зданий</sup></p>
<p>SRVCall_fnc_setEntityKilled <sup>Смерть любого юнита, бот-игрок-техника</sup></p>
<p>SRVCall_fnc_setEntityRespawned <sup>Респавн юнита</sup></p>
<p>SRVCall_fnc_setHandleDisconnect <sup>Дисконнект игрока</sup></p>
<p>SRVCall_fnc_setPlayerConnected <sup>Присоеденение игрока</sup></p>
<p>SRVCall_fnc_setPlayerKilled <sup>Смерть игрока</sup></p>
<p>SRVCall_fnc_setVehicleKilled <sup>Смерть техники</sup></p>
</span>
