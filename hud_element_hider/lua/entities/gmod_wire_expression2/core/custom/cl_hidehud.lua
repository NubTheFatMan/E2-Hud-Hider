E2Helper.Descriptions["showHealth"] = "Hides/Shows the health indicator on your HUD so you can create your own."
E2Helper.Descriptions["showArmor"] = "Hides/Shows the armor indicator on your HUD so you can create your own."
E2Helper.Descriptions["showAmmo"] = "Hides/Shows the ammo indicator on your HUD so you can create your own."
E2Helper.Descriptions["getClip"] = "Returns the ammo left your clip of the current weapon you're holding."
E2Helper.Descriptions["maxClip"] = "Returns the maximum ammo capacity of the clip of the current weapon you're holding."
E2Helper.Descriptions["getAmmoLeft"] = "Returns how much ammo is left that is not in the clip."

local hideHealth = {["CHudHealth"] = true}
local hideArmor = {["CHudBattery"] = true}
local hideAmmo = {["CHudAmmo"] = true, ["CHudSecondaryAmmo"] = true}

net.Receive("ShowHealth", function(len, ply)
	local Bool = net.ReadBool()
	hook.Add("HUDShouldDraw", "ShowHealth", function(name)
		if hideHealth[name] then return Bool end
	end)
end)

net.Receive("ShowArmor", function(len, ply)
	local Bool = net.ReadBool()
	hook.Add("HUDShouldDraw", "ShowArmor", function(name)
		if hideArmor[name] then return Bool end
	end)
end)

net.Receive("ShowAmmo", function(len, ply)
	local Bool = net.ReadBool()
	hook.Add("HUDShouldDraw", "ShowAmmo", function(name)
		if hideAmmo[name] then return Bool end
	end)
end)
