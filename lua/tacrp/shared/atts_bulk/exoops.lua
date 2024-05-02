-- exoops.lua

local ATT = {}

-- MCX .300 Blackout conversion
ATT = {}

ATT.PrintName = ".300 BLK"
ATT.FullName = ".300 AAC Blackout Mod Kit"
ATT.Icon = Material("entities/tacrp_att_ammo_star15_300blk.png", "mips smooth")
ATT.Description = "Modification to load lower velocity bullets with better CQB potential."
ATT.Pros = {"stat.damage_max"}
ATT.Cons = {"rating.range", "stat.muzzlevelocity", "att.procon.armor"}

ATT.Category = "ammo_mcx"
ATT.SortOrder = 0

ATT.InstalledElements = {"300blk"}

ATT.Mult_Damage_Max = 1.2
ATT.Mult_Range_Min = 0.5
ATT.Mult_Range_Max = 0.75
ATT.Mult_MuzzleVelocity = 0.8
ATT.Add_Spread = 0.0007
ATT.Mult_RecoilSpreadPenalty = 1.1

ATT.Mult_Penetration = 0.75
ATT.Add_ArmorPenetration = -0.15
ATT.Mult_ArmorBonus = 0.5

ATT.Override_Sound_Shoot = "^tacint_extras/star15/fire-03.ogg"
ATT.Override_Sound_Shoot_Silenced = "tacint_extras/star15/fire_300blk-supp.ogg"

ATT.Override_DropMagazineModel = "models/weapons/tacint_extras/magazines/star15_pmag.mdl"
ATT.Override_DropMagazineImpact = "plastic"

TacRP.LoadAtt(ATT, "ammo_modular_300blk")

-- MCX .277 Fury conversion
ATT = {}

ATT.PrintName = ".277 FURY"
ATT.FullName = ".277 SIG Fury Mod Kit"
ATT.Icon = Material("entities/tacrp_att_ammo_277fury.png", "mips smooth")
ATT.Description = "Modification to load high-pressure ammunition with better range."
ATT.Pros = {"stat.damage_min", "stat.muzzlevelocity"}
ATT.Cons = {"stat.damage_max", "stat.rpm"}

ATT.Category = "ammo_mcx"
ATT.SortOrder = 0

ATT.InstalledElements = {"277fury"}

ATT.Mult_Damage_Max = 0.9
ATT.Mult_Damage_Min = 1.25
ATT.Mult_Range_Min = 1.15
ATT.Mult_Range_Max = 1.25
ATT.Mult_MuzzleVelocity = 1.1
ATT.Add_Spread = 0.00004
ATT.Mult_RecoilSpreadPenalty = 1.1
ATT.Mult_RPM = 0.95

ATT.Mult_ClipSize = 1 / 1.5

ATT.Override_Sound_Shoot = "^tacint_shark/weapons/mcx/mcx_277.wav"
ATT.Override_Sound_Shoot_Silenced = "tacint_shark/weapons/mcx/mcx_277_supp.wav"

ATT.Override_DropMagazineModel = "models/weapons/tacint_shark/magazines/mcx277.mdl"
ATT.Override_DropMagazineImpact = "plastic"

TacRP.LoadAtt(ATT, "ammo_modular_277fury")


-- ACR 6.8 SPC conversion
ATT = {}

ATT.PrintName = "6.8 SPC"
ATT.FullName = "6.8 Remington SPC Mod Kit"
ATT.Icon = Material("entities/tacrp_att_ammo_star15_50beo.png", "mips smooth")
ATT.Description = "Modification to load in a sporting round with better range."
ATT.Pros = {"rating.range", "rating.control"}
ATT.Cons = {"rating.lethality", "att.procon.armor"}

ATT.Category = "ammo_masada"
ATT.SortOrder = 0.5

ATT.InstalledElements = {"50beo"}

ATT.Mult_Damage_Max = 0.85
ATT.Mult_Damage_Min = 1
ATT.Mult_Range_Min = 1.5
ATT.Mult_Range_Max = 1.25

ATT.Mult_Penetration = 0.5
ATT.Add_ArmorPenetration = -0.1
ATT.Mult_ArmorBonus = 0.75

ATT.Mult_RPM = 1
ATT.Mult_ClipSize = 1

ATT.Add_RecoilKick = -1
ATT.Mult_RecoilSpreadPenalty = 0.85
ATT.Mult_MuzzleVelocity = 1.2

ATT.Mult_ShootTimeMult = 1.5

ATT.Override_Sound_Shoot = "^tacint_shark/weapons/masada/68_unsil.wav"
ATT.Override_Sound_Shoot_Silenced = "Tacint_shark/weapons/mcx/mcx_556_supp.wav"

TacRP.LoadAtt(ATT, "ammo_modular_68spc")

-- ACR 6.5 Grendel conversion
ATT = {}

ATT.PrintName = "GRENDEL"
ATT.FullName = "6.5 Grendel Mod Kit"
ATT.Icon = Material("entities/tacrp_att_ammo_star15_50beo.png", "mips smooth")
ATT.Description = "Modification to load a high power round with better stopping power."
ATT.Pros = {"rating.range", "rating.control"}
ATT.Cons = {"rating.lethality", "att.procon.armor"}

ATT.Category = "ammo_masada"
ATT.SortOrder = 0.5

ATT.InstalledElements = {"50beo"}

ATT.Mult_Damage_Max = 0.85
ATT.Mult_Damage_Min = 1
ATT.Mult_Range_Min = 1.5
ATT.Mult_Range_Max = 1.25

ATT.Mult_Penetration = 0.5
ATT.Add_ArmorPenetration = -0.1
ATT.Mult_ArmorBonus = 0.75

ATT.Mult_RPM = 1
ATT.Mult_ClipSize = 1 * 0.75

ATT.Add_RecoilKick = -1
ATT.Mult_RecoilSpreadPenalty = 0.85
ATT.Mult_MuzzleVelocity = 1.2

ATT.Mult_ShootTimeMult = 1.5

ATT.Override_Sound_Shoot = "^tacint_shark/weapons/masada/65_unsil.wav"
ATT.Override_Sound_Shoot_Silenced = "tacint_shark/weapons/masada/65_sil.wav"

TacRP.LoadAtt(ATT, "ammo_modular_65gren")

--SPAS-15 pump-action mode
ATT = {}

ATT.PrintName = "Pump"
ATT.FullName = "Pump-Action"
ATT.Icon = Material("entities/tacrp_att_bolt_light.png", "mips smooth")
ATT.Description = "Switch to pump-action operation, sacrficing fire-rate for improved control."
ATT.Pros = {"stat.spread", "stat.muzzlevelocity"}
ATT.Cons = {"stat.rpm"}
ATT.Ignore = false

ATT.Category = "bolt_pump"

ATT.SortOrder = 0

ATT.Mult_RPM = 0.35
ATT.Mult_ShootTimeMult = 1

ATT.Mult_MuzzleVelocity = 1.1
ATT.Mult_Spread = 0.8

ATT.Override_EjectDelay = 0.5
ATT.Override_Sound_Shoot = "^tacint_shark/weapons/spas15/fire_pump.wav"

ATT.Override_LastShot = false

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire1" then
        return {"fire_pump"}
    elseif seq == "blind_fire1" then
        return {"fire_pump"}
	elseif seq == "fire_iron" then
		return {"fire_pump"}
    end
end

ATT.Free = true

TacRP.LoadAtt(ATT, "bolt_spas15_pump")