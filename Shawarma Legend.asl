state("Shawarma Legend")
{	
	double scene		: 0x00D74A80, 0x30, 0x2C0, 0x690;
	double money		: 0x00D74A80, 0x30, 0x2C0, 0x8A0;
	double earning		: 0x00D74A80, 0x30, 0x2C0, 0x4E0;
	double day		: 0x00D74A80, 0x30, 0x2C0, 0x8F0;
	double sodaFountain	: 0x00D74A80, 0x30, 0x2C0, 0x820;
	double kibbeh		: 0x00D74A80, 0x30, 0x2C0, 0x810;
	double potatoFryer		: 0x00D74A80, 0x30, 0x2C0, 0x800;
	double potatoCutter	: 0x00D74A80, 0x30, 0x2C0, 0x7F0;
	double grill		: 0x00D74A80, 0x30, 0x2C0, 0x7E0;
	double frenchFries		: 0x00D74A80, 0x30, 0x2C0, 0x7C0;
	double pomegranateMolasses: 0x00D74A80, 0x30, 0x2C0, 0x7B0;
	double breadThrower	: 0x00D74A80, 0x30, 0x2C0, 0x7A0;
	double orangeJuice		: 0x00D74A80, 0x30, 0x2C0, 0x790;
	double wrappingMachine	: 0x00D74A80, 0x30, 0x2C0, 0x780;
	double ingredientAdding	: 0x00D74A80, 0x30, 0x2C0, 0x770;
	double cupSupply		: 0x00D74A80, 0x30, 0x2C0, 0x760;
	double customizedIngredients: 0x00D74A80, 0x30, 0x2C0, 0x750;
	double trainedWorker	: 0x00D74A80, 0x30, 0x2C0, 0x740;
	double restaurantExpansion	: 0x00D74A80, 0x30, 0x2C0, 0x730;
	double wallRepair		: 0x00D74A80, 0x30, 0x2C0, 0x720;
	double basbousa		: 0x00D74A80, 0x30, 0x2C0, 0x710;
	double antiTheft		: 0x00D74A80, 0x30, 0x2C0, 0x700;
	double meatSlicer		: 0x00D74A80, 0x30, 0x2C0, 0x6E0;
}

init
{
	return;
}

startup
{
	settings.Add("customSplitSettings", false, "Custom Split Settings");
	settings.SetToolTip("customSplitSettings", "check this box if you want to customize your splits");

	settings.CurrentDefaultParent = "customSplitSettings";
	settings.Add("sodaFountain1", false, "Soda Fountain Lv 1");
	settings.Add("sodaFountain2", false, "Soda Fountain Lv 2");
	settings.Add("sodaFountain3", false, "Soda Fountain Lv 3");
	settings.Add("kibbeh", false, "Kibbeh");
	settings.Add("potatoFryer2", false, "Potato Fryer Lv 2");
	settings.Add("potatoFryer3", false, "Potato Fryer Lv 3");
	settings.Add("potatoCutter2", false, "Potato Cutter Lv 2");
	settings.Add("potatoCutter3", false, "Potato Cutter Lv 3");
	settings.Add("grill1", false, "Grill Lv 1");
	settings.Add("grill2", false, "Grill Lv 2");
	settings.Add("grill3", false, "Grill Lv 3");
	settings.Add("frenchFries1", false, "French Fries Lv 1");
	settings.Add("frenchFries2", false, "French Fries Lv 2");
	settings.Add("frenchFries3", false, "French Fries Lv 3");
	settings.Add("pomegranateMolasses1", false, "Pomegranate Molasses Lv 1");
	settings.Add("pomegranateMolasses2", false, "Pomegranate Molasses Lv 2");
	settings.Add("breadThrower2", false, "Bread Thrower Lv 2");
	settings.Add("orangeJuice", false, "Orange Juice");
	settings.Add("meatSlicer2", false, "Meat Slicer Lv 2");
	settings.Add("meatSlicer3", false, "Meat Slicer Lv 3");
	settings.Add("wrappingMachine2", false, "Wrapping Machine Lv 2");
	settings.Add("wrappingMachine3", false, "Wrapping Machine Lv 3");
	settings.Add("ingredientAdding2", false, "Ingredient Adding Lv 2");
	settings.Add("ingredientAdding3", false, "Ingredient Adding Lv 3");
	settings.Add("cupSupply2", false, "Cup Supply Lv 2");
	settings.Add("cupSupply3", false, "Cup Supply Lv 3");
	settings.Add("customizedIngredients2", false, "Customized Ingredients Lv 2");
	settings.Add("customizedIngredients3", false, "Customized Ingredients Lv 3");
	settings.Add("trainedWorker2", false, "Trained Worker Lv 2");
	settings.Add("restaurantExpansion2", false, "Restaurant Expansion Lv 2");
	settings.Add("restaurantExpansion3", false, "Restaurant Expansion Lv 3");
	settings.Add("wallRepair2", false, "Wall Repair Lv 2");
	settings.Add("wallRepair3", false, "Wall Repair Lv 3");
	settings.Add("basbousa", false, "Basbousa");
	settings.Add("antiTheft2", false, "Anti Theft Lv 2");
	settings.Add("antiTheft3", false, "Anti Theft Lv 3");
	settings.Add("gold", false, "25000 Golds");
}

start
{
	if(current.scene == 4 && old.scene != 4 && current.day == 1) {
		return true;
	}
}

reset
{
	if(current.scene == 3 && old.scene != 3 && current.day == 1) {
		return true;
	}
}

split
{
	// Endgame
	if(current.scene == 3 && old.scene != 3 && current.money >= 25000 && current.sodaFountain == 2 && current.kibbeh == 0 && current.potatoFryer == 2 && current.potatoCutter == 2 && current.grill == 2 && current.frenchFries == 2 && current.pomegranateMolasses == 1 && current.breadThrower == 1 && current.orangeJuice == 0 && current.wrappingMachine == 2 && current.ingredientAdding == 2 && current.cupSupply == 2 && current.customizedIngredients == 2 && current.trainedWorker == 1 && current.restaurantExpansion == 2 && current.wallRepair == 2 && current.basbousa == 0 && current.antiTheft == 2 && current.meatSlicer == 2) {
		return true;
	}

	// Custom Splitters
	if(settings["customSplitSettings"]) {
		if((settings["sodaFountain1"] && current.sodaFountain == 0 && old.sodaFountain != 0)
		|| 
		(settings["sodaFountain2"] && current.sodaFountain == 1 && old.sodaFountain != 1)
		|| 
		(settings["sodaFountain3"] && current.sodaFountain == 2 && old.sodaFountain != 2)
		|| 
		(settings["kibbeh"] && current.kibbeh == 0 && old.kibbeh != 0)
		|| 
		(settings["potatoFryer2"] && current.potatoFryer == 1 && old.potatoFryer != 1)
		|| 
		(settings["potatoFryer3"] && current.potatoFryer == 2 && old.potatoFryer != 2)
		|| 
		(settings["potatoCutter2"] && current.potatoCutter == 1 && old.potatoCutter != 1)
		|| 
		(settings["potatoCutter3"] && current.potatoCutter == 2 && old.potatoCutter != 2)
		|| 
		(settings["grill1"] && current.grill == 0 && old.grill != 0)
		|| 
		(settings["grill2"] && current.grill == 1 && old.grill != 1)
		|| 
		(settings["grill3"] && current.grill == 2 && old.grill != 2)
		|| 
		(settings["frenchFries1"] && current.frenchFries == 0 && old.frenchFries != 0)
		|| 
		(settings["frenchFries2"] && current.frenchFries == 1 && old.frenchFries != 1)
		|| 
		(settings["frenchFries3"] && current.frenchFries == 2 && old.frenchFries != 2)
		|| 
		(settings["pomegranateMolasses1"] && current.pomegranateMolasses == 0 && old.pomegranateMolasses != 0)
		|| 
		(settings["pomegranateMolasses2"] && current.pomegranateMolasses == 1 && old.pomegranateMolasses != 1)
		|| 
		(settings["breadThrower2"] && current.breadThrower == 1 && old.breadThrower != 1)
		|| 
		(settings["orangeJuice"] && current.orangeJuice == 0 && old.orangeJuice != 0)
		|| 
		(settings["meatSlicer2"] && current.meatSlicer == 1 && old.meatSlicer != 1)
		|| 
		(settings["meatSlicer3"] && current.meatSlicer == 2 && old.meatSlicer != 2)
		|| 
		(settings["wrappingMachine2"] && current.wrappingMachine == 1 && old.wrappingMachine != 1)
		|| 
		(settings["wrappingMachine3"] && current.wrappingMachine == 2 && old.wrappingMachine != 2)
		|| 
		(settings["ingredientAdding2"] && current.ingredientAdding == 1 && old.ingredientAdding != 1)
		|| 
		(settings["ingredientAdding3"] && current.ingredientAdding == 2 && old.ingredientAdding != 2)
		|| 
		(settings["cupSupply2"] && current.cupSupply == 1 && old.cupSupply != 1)
		|| 
		(settings["cupSupply3"] && current.cupSupply == 2 && old.cupSupply != 2)
		|| 
		(settings["customizedIngredients2"] && current.customizedIngredients == 1 && old.customizedIngredients != 1)
		|| 
		(settings["customizedIngredients3"] && current.customizedIngredients == 2 && old.customizedIngredients != 2)
		|| 
		(settings["trainedWorker2"] && current.trainedWorker == 1 && old.trainedWorker != 1)
		|| 
		(settings["restaurantExpansion2"] && current.restaurantExpansion == 1 && old.restaurantExpansion != 1)
		|| 
		(settings["restaurantExpansion3"] && current.restaurantExpansion == 2 && old.restaurantExpansion != 2)
		|| 
		(settings["wallRepair2"] && current.wallRepair == 1 && old.wallRepair != 1)
		|| 
		(settings["wallRepair3"] && current.wallRepair == 2 && old.wallRepair != 2)
		|| 
		(settings["basbousa"] && current.basbousa == 0 && old.basbousa != 0)
		|| 
		(settings["antiTheft2"] && current.antiTheft == 1 && old.antiTheft != 1)
		|| 
		(settings["antiTheft3"] && current.antiTheft == 2 && old.antiTheft != 2)
		|| 
		(settings["gold"] && (current.earning + current.money) >= 25000 && (old.earning + current.money) < 25000)) {
			return true;
		}
	}
}