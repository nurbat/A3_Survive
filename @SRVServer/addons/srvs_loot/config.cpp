class CfgPatches
{
	class SrvLoot
	{
		projectName="Loot Manager";
		author="Hummer";
		version="2017.3.22";
		requiredAddons[] = { };
		units[] = {};
	};
};

class CfgFunctions
{
	class srvs_loot
	{
		class start
		{
			file = "\srvs_loot\start";
			class preInit {preInit = 1;};
		};
	};
};

class SrvConfig
{
	class SrvLoot
	{
		/*timeDelay = 300; // [60 * 5 min = 300] переодичность запроса лута
		countPointLoot = [1, 5]; //[min, max] point spawn loot / Количество точек с лутом
		countItemsLoot = [1, 5]; //[min, max] max items on point loot / Количество вещей на точке с лутом
		lootLife = 1800; // [60 * 30 min = 1800] Время жизни лута, до появления нового
		
		class Buildings
		{
			#include "config\Buildings.cpp"
		};
		class ListLoot
		{
			#include "config\List_Loot.cpp"
		};
		class GroupLoot
		{
			#include "config\Group_Loot.cpp"
		};*/
	};

};

	/*
	
bX = (getPosATL cursorObject) select 0;
bY = (getPosATL cursorObject) select 1;
bZ = (getPosATL cursorObject) select 2;

pX = (getPosATL player) select 0;
pY = (getPosATL player) select 1;
pZ = (getPosATL player) select 2;

pX = bX - pX;
pY = bY - pY;
pZ = bZ - pZ;

pos = [bX - pX, bY - pY, bZ - pZ];

delete = 0;
if(delete == 0) then {
	if(!(isNull cursorObject)) then {
		if(typeOf cursorObject == lastWrite) then {
			write pushBack [pX, pY, pZ];
		}else {
			lastWrite = typeOf cursorObject;
			write = [];
			write pushBack [pX, pY, pZ];
		};
		lootHolder = createVehicle ["GroundWeaponHolder", pos, [], 0, "CAN_COLLIDE"];
		lootHolder setDir (random 360);
		lootHolder setPosATL pos;
		lootHolder addMagazineCargoGlobal ["20Rnd_762x51_Mag", 2];
		lootHolder addWeaponCargoGlobal ["srifle_EBR_ARCO_pointer_snds_F", 1];
	};
}else 
{
	deleteVehicle cursorObject;
	write = [];
}
	*/