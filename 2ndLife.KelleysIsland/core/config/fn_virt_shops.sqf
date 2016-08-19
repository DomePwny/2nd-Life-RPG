/*
	File: fn_virt_shops.sqf
	
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "phones": {["Zubehör",["nos"]]};
	case "market": {["Markt",["medkit","condom","bandage","water","tierope","bec","cigarette","rabbit","apple","redgull","tbacon","pickaxe","lockpick","fuelF","peach","boltcutter","storagesmall","storagebig"]]};
	case "drinks": {["Leckerchen",["cigarette","zoobeer","zoobeer2","vodka","jagerbomb","absinthe","redwine","whiterussian","sexonthebeach","tequila","jackdanielsandcoke","rumrax","water","redgull"]]};
	case "rebel": {["Mafia Markt",["tierope","bandage","RoadBlockConc","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","boltcutter","blastingcharge","hackingtool"]]};
	case "gang": {["Gang Markt", ["bandage","water","rabbit","apple","redgull","tbacon","lockpick","pickaxe","fuelF","peach","blastingcharge","boltcutter"]]};
	case "wongs": {["Wong's Food Cart",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogen Händler",["marijuana","cokep","cokeu","methp","methu","MDMAp","MDMAu"]]};
	case "gems": {["Juwelen Händler",["sapphire","ruby","emerald"]]};
	case "oil": {["Öl Händler",["oilp","pickaxe","fuelF"]]};
	case "fishmarket": {["Fisch Markt",["bombfish","Fish"]]};
	case "farmingmarket": {["Landwirtschaft",["wheat","sunflower","corn","bean","cotton","olive","opium","pumpkin"]]};	
	case "glass": {["Glas Händler",["glass"]]};
	case "iron": {["Industrial Trader",["iron_r","copper_r"]]};
	case "diamond": {["Diamond Dealer",["weddingring","diamond","diamondc"]]};
	case "salt": {["Salz Händler",["salt_r"]]};
	case "cop": {["Cop Item Shop",["medkit","panicbutton","bandage","fuelF","defusekit","BarGate","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "donuts": {["Dunkin's Bronuts",["donuts","coffee","water","redgull"]]};
	case "cement": {["Zement Händler",["cement"]]};
	case "gold": {["Gold Buyer",["goldbar"]]};
	case "ems": {["Arzt Zubehör",["medschere","medmarijuana","epipen","bandage","genitalcreme","tabletten","antibiotika","stitches","splint","airkit","bec","water","rabbit","apple","redgull","tbacon","peach","RoadBlockWood","RoadCone","RoadConeStrip","RoadConeB","RoadConeStripB"]]};
	case "butcher": {["Butcher Bob",["raw_meat"]]};
};


