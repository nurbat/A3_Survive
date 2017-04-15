countPointLoot = 5;//Max, Количество точек спавна
countItemLoot = 5;//Max || Колиство предметов на точке, кроме оружия
countMagazineLoot = [2, 3];//[Min, Max] || Количество патронов к оружию
countWeaponLoot = 3;//Max || Максимальное количество оружия на здание
chanceBuilding = true;//Использовать процент здания на весь лут внутри

timeDelay = 60;
timeLifeLoot = 120;
distanceLoad = 60;
serverLoad = false; //Вычесления на сервере (true) / Вычесления на клиенте (false)

buildingList = [
    ["Military", "Land_Mil_ControlTower", [[-4.88721,1.0083,-0.569817],[-4.8584,4.39209,-0.551966],[-5.49658,9.32007,-0.537412],[1.34863,2.8877,-0.556461],[2.17041,-4.57568,-0.655972],[-5.04736,3.41724,-4.73248],[-1.27393,3.59521,-4.67979],[-1.92822,5.10083,-9.06344],[-0.941406,2.67188,-9.08268]]]
];

lootTable = [
    ["Military", 
        [
            [0, "Trash"],
            [80, "arifle_Katiba_GL_F"],
            [50, "arifle_MXC_F"]
        ]
    ]
];

lootGroup =
[
    ["Trash", 
        [
            [90, "arifle_Katiba_F"],
            [80, "arifle_Katiba_GL_F"],
            [50, "arifle_MXC_F"]
        ]
    ]
];