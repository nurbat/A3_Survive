maxCount = count _this;
nowArray = [];

while { maxCount > count nowArray } do {
    nowArray pushBackUnique (selectRandom _this);
};
nowArray