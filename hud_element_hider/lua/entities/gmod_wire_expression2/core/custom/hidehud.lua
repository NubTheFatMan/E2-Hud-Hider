Msg( "/====================================\\\n")
Msg( "||     Hud Element Hider Loading    ||\n" )
Msg( "||----------------------------------||\n" )

E2Lib.RegisterExtension("HUD Hider", true, "Enables functions that lets you disable the drawing of default HUD elements. Perfect for creating default HUDs.")

util.AddNetworkString("ShowHealth")
util.AddNetworkString("ShowArmor")
util.AddNetworkString("ShowAmmo")

e2function void showHealth(number True)
	if True ~= 0 then
		net.Start("ShowHealth")
		net.WriteBool(true)
		net.Send(self.player)
	else
		net.Start("ShowHealth")
		net.WriteBool(false)
		net.Send(self.player)
	end
end
Msg("||    showHealth(number) Loaded!    ||\n")
e2function void showArmor(number True)
	if True ~= 0 then
		net.Start("ShowArmor")
		net.WriteBool(true)
		net.Send(self.player)
	else
		net.Start("ShowArmor")
		net.WriteBool(false)
		net.Send(self.player)
	end
end
Msg("||    showArmor(number) Loaded!     ||\n")
e2function void showAmmo(number True)
	if True ~= 0 then
		net.Start("ShowAmmo")
		net.WriteBool(true)
		net.Send(self.player)
	else
		net.Start("ShowAmmo")
		net.WriteBool(false)
		net.Send(self.player)
	end
end
Msg("||     showAmmo(number) Loaded!     ||\n")
e2function number getClip()
	if self.player:Alive() and IsValid(self.player:GetActiveWeapon()) then
		return self.player:GetActiveWeapon():Clip1()
	end
	return 0
end
Msg("||         getClip() Loaded!        ||\n")
e2function number maxClip()
	if self.player:Alive() and IsValid(self.player:GetActiveWeapon()) then
		return self.player:GetActiveWeapon():GetMaxClip1()
	end
	return 0
end
Msg("||         maxClip() Loaded!        ||\n")
e2function number getAmmoLeft()
	if self.player:Alive() and IsValid(self.player:GetActiveWeapon()) then
		return self.player:GetAmmoCount(self.player:GetActiveWeapon():GetPrimaryAmmoType())
	end
	return 0
end
Msg("||      getAmmoLeft() Loaded!       ||\n")
Msg("||----------------------------------||\n")
Msg("|| Hud Element Hider Load Complete! ||\n")
Msg("\\====================================/\n")