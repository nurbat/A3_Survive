private["_container","_magazines"];
_container = _this;
_magazines = [];
if (!isNull _container) then
{
	_magazines = magazinesAmmoCargo _container;
};
_magazines