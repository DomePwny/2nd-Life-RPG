/*
	File: fn_varToStr.sqf
	
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/

params [["_var", "", [""]]];

if(_var isEqualTo "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items 
	case "life_inv_emerald": {"Emerald Rings"};
	case "life_inv_medschere": {"Med. Marijuanaschere"};
	case "life_inv_medcanna": {"Med. Cannabis"};
	case "life_inv_medmarijuana": {"Med. Marijuana"};
	case "life_inv_sapphire": {"Sapphire Jewellery"};
	case "life_inv_genitalcreme": {"Genitalcreme"};
	case "life_inv_ruby": {"Ruby Necklace"};
	case "life_inv_nos": {"NOS Kit (Vorsicht)"};
	case "life_inv_weddingring": {(localize "STR_Item_WeddingRing")};
	case "life_inv_bandage": {"Bandage"};
	case "life_inv_stitches": {"Nähkiste"};
	case "life_inv_splint": {"Schiene"};
	case "life_inv_epipen": {"Epinephrin"};
	case "life_inv_tabletten": {"Tabletten"};
	case "life_inv_antibiotika": {"Antibiotika"};
	case "life_inv_bec": {"Ei mit Speck & Kaffee"};
	case "life_inv_tierope": {"Sturdy Rope"};
	case "life_inv_airkit": {"E.S. Air Supply"};
	case "life_inv_mobilephone": {"Mobile Phone"};
	case "life_inv_panicbutton": {"Panic Button"};
	case "life_inv_MDMAu": {"Pure MDMA"};
	case "life_inv_cleankit": {"Deoderant"};
	case "life_inv_medkit": {"CPR Medkit"};
	case "life_inv_condom": {"Condom"};
	case "life_inv_MDMAp": {"Pure MDMA Pills"};
	case "life_inv_methu": {"Seperated Meth"};
	case "life_inv_shank": {"Tunnel"};
	case "life_inv_methp": {"Pure Meth"};
	case "life_inv_cokeu": {"Unpackaged Cocaine"};
	case "life_inv_cokep": {"Cocaine Bricks"};
	case "life_inv_oilu": {(localize "STR_Item_OilU")};
	case "life_inv_oilp": {(localize "STR_Item_OilP")};
	case "life_inv_heroinu": {(localize "STR_Item_HeroinU")};
	case "life_inv_heroinp": {(localize "STR_Item_HeroinP")};
	case "life_inv_marijuana": {(localize "STR_Item_Marijuana")};
	case "life_inv_apple": {(localize "STR_Item_Apple")};
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {(localize "STR_Item_WaterBottle")};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {(localize "STR_Item_FuelE")};
	case "life_inv_fuelF": {(localize "STR_Item_FuelF")};
	case "life_inv_pickaxe": {(localize "STR_Item_Pickaxe")};
	case "life_inv_copperore": {(localize "STR_Item_CopperOre")};
	case "life_inv_ironore": {(localize "STR_Item_IronOre")};
	case "life_inv_ironr": {(localize "STR_Item_IronIngot")};
	case "life_inv_copperr": {(localize "STR_Item_CopperIngot")};
	case "life_inv_sand": {(localize "STR_Item_Sand")};
	case "life_inv_salt": {(localize "STR_Item_Salt")};
	case "life_inv_saltr": {(localize "STR_Item_SaltR")};
	case "life_inv_glass": {(localize "STR_Item_Glass")};
	case "life_inv_diamond": {(localize "STR_Item_DiamondU")};
	case "life_inv_diamondr": {(localize "STR_Item_DiamondC")};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {(localize "STR_Item_RedGull")};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_peach": {(localize "STR_Item_Peach")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_rock": {(localize "STR_Item_Rock")};
	case "life_inv_cement": {(localize "STR_Item_CementBag")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_hackingtool": {(localize "STR_Item_HTool")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {(localize "STR_Item_StorageBS")};
	case "life_inv_storagebig": {(localize "STR_Item_StorageBL")};
	case "life_inv_wheat": {(localize "STR_Item_wheat")};
	case "life_inv_sunflower": {(localize "STR_Item_sunflower")};
	case "life_inv_corn": {(localize "STR_Item_corn")};
	case "life_inv_bean": {(localize "STR_Item_bean")};
	case "life_inv_cotton": {(localize "STR_Item_cotton")};
	case "life_inv_olive": {(localize "STR_Item_olive")};
	case "life_inv_opium": {(localize "STR_Item_opium")};
	case "life_inv_cannabis": {(localize "STR_Item_cannabis")};
	case "life_inv_pumpkin": {(localize "STR_Item_Pumpkin")};
	case "life_inv_rawmeat": {(localize "STR_Item_rawmeat")};
	//Additions
	case "life_inv_zoobeer": {"Light Beer"}; 
	case "life_inv_zoobeer2": {"Heavy Beer"}; 
	case "life_inv_jackdaniels": {"Jack Daniels"};
	case "life_inv_vodka": {"Vodka Shot"};
	case "life_inv_jagerbomb": {"Jagerbomb"};
	case "life_inv_absinthe": {"Absinthe"};
	case "life_inv_redwine": {"Redwine"};
	case "life_inv_whitewine": {"Whitewine"};
	case "life_inv_whiterussian": {"White Russian"};
	case "life_inv_sexonthebeach": {"Sex on the Beach"};
	case "life_inv_tequila": {"Tequila"};
	case "life_inv_jackdanielsandcoke": {"Jack Daniels & Coke"};
	case "life_inv_RoadConeStripB": {"Blinking Road Cone Strip"};
	case "life_inv_RoadConeB": {"Blinking Road Cone"};
	case "life_inv_RoadConeStrip": {"Road Cone Strip"};
	case "life_inv_RoadCone": {"Road Cone"};
	case "life_inv_RoadBlockWood": {"Road Block (Wooden)"};
	case "life_inv_RoadBlockConc": {"Road Block (Fortified)"};
	case "life_inv_RoadBlockRebel": {"Road Block (Wreck)"};
	case "life_inv_BarGate": {"Police Bar Gate"};
	case "life_inv_cigarette": {"Cigarette"};
	case "life_inv_rumrax": {"Raxs Rum"};
	case "life_inv_bombfish": {"Fisch Bombe"};
	case "life_inv_meatfish": {"Fischfilet"};
	case "life_inv_fish": {"Frischer Fisch"};
	case "life_inv_meat": {"Verarbeitetes Fleisch"};
	case "life_inv_wood": {"Holz"};
	
	//License Block
	case "license_civ_driver": {("Führerschein")};
	case "license_maf_driver": {("Führerschein")};
	case "license_civ_air": {("Pilotenschein")};
	case "license_maf_air": {("Pilotenschein")};
	case "license_civ_heroin": {("Heroin Dealer")};
	case "license_maf_heroin": {("Heroin Dealer")};
	case "license_civ_oil": {("Öl Bauer")};
	case "license_maf_oil": {("Öl Bauer")};
	case "license_civ_dive": {("Tauchschein")};
	case "license_maf_dive": {("Tauchschein")};
	case "license_civ_boat": {("Bootsschein")};
	case "license_maf_boat": {("Bootsschein")};
	case "license_civ_gun": {("Waffenschein")};
	case "license_maf_gun": {("Waffenschein")};
	case "license_cop_air": {("Pilotenschein")};
	case "license_cop_swat": {("SERT License")};
	case "license_cop_cg": {(localize "STR_License_CG")};
	case "license_civ_truck": {("LKW Führerschein")};
	case "license_maf_truck": {("LKW Führerschein")};
	case "license_civ_diamond": {("Diamand Händler")};
	case "license_maf_diamond": {("Diamand Händler")};
	case "license_civ_copper": {("Kupfer Händler")};
	case "license_maf_copper": {("Kupfer Händler")};
	case "license_civ_iron": {("Eisen Händler")};
	case "license_maf_iron": {("Eisen Händler")};
	case "license_civ_sand": {("Sand Händler")};
	case "license_maf_sand": {("Sand Händler")};
	case "license_civ_salt": {("Salz Händler")};
	case "license_maf_salt": {("Salz Händler")};
	case "license_civ_coke": {("Kokain Dealer")};
	case "license_maf_coke": {("Kokain Dealer")};
	case "license_civ_marijuana": {("Gras Dealer")};
	case "license_maf_marijuana": {("Gras Dealer")};
	case "license_civ_cement": {("Zement Händler")};
	case "license_maf_cement": {("Zement Händler")};
	case "license_med_air": {("Pilotenschein")};
	case "license_med_medmarijuana": {("Med. Marijuana Professor")};
	case "license_civ_home": {("Grundstückschein")};
	case "license_maf_home": {("Grundstückschein")};
	case "license_civ_MDMA": {("MDMA Dealer")};
	case "license_maf_MDMA": {("MDMA Dealer")};
	case "license_civ_meth": {("METH Dealer")};
	case "license_maf_meth": {("METH Dealer")};
	case "license_civ_rifle": {"Jägerschein"};
	case "license_maf_rifle": {"Jägerschein"};
};
