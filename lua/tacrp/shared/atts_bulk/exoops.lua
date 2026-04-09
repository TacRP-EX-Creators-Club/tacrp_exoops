-- exoops.lua

local ATT = {}

------------------------------
-- #region ammo_modular_65gren (ACR 6.5mm Grendel Mod Kit)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_modular_65gren.name"
ATT.FullName = "att.ammo_modular_65gren.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_grendel.png", "mips smooth")
ATT.Description = "att.ammo_modular_65gren.desc"
ATT.Pros = {"rating.range", "rating.control", "stat.muzzlevelocity"}
ATT.Cons = {"stat.damage_max"}

ATT.Category = "ammo_masada"
ATT.SortOrder = 0.5

ATT.Mult_Damage_Max = 22 / 25
ATT.Mult_Damage_Min = 1
ATT.Mult_Range_Min = 1.25
ATT.Mult_Range_Max = 1.25

ATT.Add_RecoilKick = -1
ATT.Mult_RecoilSpreadPenalty = 0.85
ATT.Mult_MuzzleVelocity = 1.1


ATT.Override_Sound_Shoot = "^tacint_shark/weapons/masada/65_unsil.wav"
ATT.Override_Sound_Shoot_Silenced = "^tacint_shark/weapons/masada/65_sil.wav"

TacRP.LoadAtt(ATT, "ammo_modular_65gren")

------------------------------
-- #region ammo _modular_450bm (ACR .450 Bushmaster Mod Kit)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_modular_450bm.name"
ATT.FullName = "att.ammo_modular_450bm.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_450bm.png", "mips smooth")
ATT.Description = "att.ammo_modular_450bm.desc"
ATT.Pros = {"rating.lethality"}
ATT.Cons = {"rating.range", "rating.control", "att.procon.armor"}

ATT.Category = "ammo_masada"
ATT.SortOrder = 0.6

ATT.Mult_Damage_Max = 1.6
ATT.Mult_Damage_Min = 1.6
ATT.Mult_Range_Min = 0.25
ATT.Mult_Range_Max = 0.5

ATT.Mult_Penetration = 0.25
ATT.Add_ArmorPenetration = -0.1
ATT.Mult_ArmorBonus = 0.75

ATT.Override_RPM = 400
ATT.Mult_ClipSize = 1 / 3

ATT.Add_RecoilKick = 6
ATT.Mult_RecoilSpreadPenalty = 2.5
ATT.Add_RecoilResetTime = 0.075
ATT.Mult_MuzzleVelocity = 0.6
ATT.Add_RecoilPerShot = 0.4

ATT.Mult_ShootTimeMult = 1.5
ATT.Add_Pitch_Shoot = 5
ATT.Override_Sound_Shoot = "^tacint_shark/weapons/masada/fire_beo.ogg"
ATT.Override_Sound_Shoot_Silenced = "^tacint_shark/weapons/masada/fire_beo-supp.ogg"

TacRP.LoadAtt(ATT, "ammo_modular_450bm")

------------------------------
-- #region bolt_spas15_pump (Franchi SPAS-15 Pump-Action)
------------------------------
ATT = {}

ATT.PrintName = "att.bolt_spas15_pump.name"
ATT.FullName = "att.bolt_spas15_pump.name.full"
ATT.Icon = Material("entities/tacrp_att_bolt_light.png", "mips smooth")
ATT.Description = "att.bolt_spas15_pump.desc"
ATT.Pros = {"stat.damage_max", "stat.spread", "stat.muzzlevelocity", "stat.shootingspeed"}
ATT.Cons = {"stat.rpm"}
ATT.Ignore = false

ATT.Category = "bolt_pump"

ATT.SortOrder = 0

ATT.Add_Damage_Max = 2

ATT.Mult_RPM = 0.35
ATT.Mult_ShootTimeMult = 1

ATT.Mult_MuzzleVelocity = 1.15
ATT.Mult_Spread = 0.6

ATT.Mult_ShootingSpeedMult = 1.15

ATT.Override_EjectDelay = 0.2

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire1" then
        return {"fire_pump"}
    elseif seq == "blind_fire1" then
        return {"blind_fire_pump"}
    elseif seq == "fire_iron" then
        return {"fire_pump"}
	elseif seq == "reload" then
		return {"reload_pump"}
    end
end

ATT.Free = true

TacRP.LoadAtt(ATT, "bolt_spas15_pump")

------------------------------
-- #region trigger_mk22_locked (Mk22 Slide Lock)
------------------------------
ATT = {}

ATT.PrintName = "att.trigger_mk22_locked.name"
ATT.FullName = "att.trigger_mk22_locked.name.full"
ATT.Icon = Material("entities/tacrp_att_bolt_light.png", "mips smooth")
ATT.Description = "att.trigger_mk22_locked.desc"
ATT.Pros = {"stat.damage", "rating.precision", "stat.muzzlevelocity", "stat.range"}
ATT.Cons = {"stat.rpm"}
ATT.Ignore = false

ATT.Category = "trigger_mk22"

ATT.SortOrder = 0

ATT.Add_Damage_Max = 5
ATT.Add_Damage_Min = 5

ATT.Mult_Spread = 0.5
ATT.Mult_HipFireSpreadPenalty = 0.75
ATT.Mult_MoveSpreadPenalty = 0.25
ATT.Override_RPM = 80
ATT.Override_RPMMultSemi = 1
ATT.Override_ShootTimeMult = 0.55

ATT.Add_Range_Min = 500
ATT.Add_Range_Max = 500

ATT.Mult_MuzzleVelocity = 1.15

ATT.Override_EjectDelay = 0.6

ATT.Override_TracerNum = 0
ATT.Mult_Vol_Shoot = 0.75

ATT.Override_ProceduralIronFire = false

ATT.Hook_TranslateSequence = function(self, seq)
    if seq == "fire" then
        return {"shoot_locked"}
    elseif seq == "lastshot" then
        return {"shoot_locked_lastshot"}
    elseif seq == "blind_fire" then
        return {"blind_shoot_locked"}
    elseif seq == "blind_lastshot" then
        return {"blind_shoot_locked_last"}
    end
end

ATT.Free = true

TacRP.LoadAtt(ATT, "trigger_mk22_locked")

------------------------------
-- #region optic_howa_scope (Howa Type 64 2.2 DMR Scope)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_howa_scope.name"
ATT.FullName = "att.optic_howa_scope.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_howa.png", "mips smooth")
ATT.Description = "att.optic_howa_scope.desc"
ATT.Pros = {"att.zoom.2.2"}
ATT.Cons = {"stat.aimdownsights"}

ATT.Category = "optic_howa"

ATT.SortOrder = 0

ATT.Override_Scope = true
ATT.Override_ScopeHideWeapon = true
ATT.Override_ScopeOverlay = Material("tacrp/scopes/shortdot.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 2.2

ATT.Add_AimDownSightsTime = 0.03

ATT.InstalledElements = {"scope"}

if engine.ActiveGamemode() == "terrortown" then
    ATT.Free = true
end

TacRP.LoadAtt(ATT, "optic_howa_scope")


------------------------------
-- #region optic_g36c_scope (G36C Integrated Scope)
------------------------------
ATT = {}

ATT.PrintName = "att.optic_g36c_scope.name"
ATT.FullName = "att.optic_g36c_scope.name.full"
ATT.Icon = Material("entities/tacrp_att_optic_g36c_scope.png", "mips smooth")
ATT.Description = "att.optic_g36c_scope.desc"
ATT.Pros = {"att.zoom.2"}

ATT.Category = "optic_g36c"

ATT.SortOrder = 2

ATT.Override_ScopeOverlay = Material("tacrp/scopes/g36.png", "mips smooth")
ATT.Override_ScopeFOV = 90 / 2
ATT.Override_ScopeHideWeapon = true

ATT.InstalledElements = {"scope"}


TacRP.LoadAtt(ATT, "optic_g36c_scope")

------------------------------
-- #region ammo_scout_376 (Scout .376 Steyr Mod Kit)
------------------------------
ATT = {}

ATT.PrintName = "att.ammo_scout_376.name"
ATT.FullName = "att.ammo_scout_376.name.full"
ATT.Icon = Material("entities/tacrp_att_ammo_376steyr.png", "mips smooth")
ATT.Description = "att.ammo_scout_376.desc"
ATT.Pros = {"rating.lethality", "stat.muzzlevelocity"}
ATT.Cons = {"stat.clipsize", "stat.rpm", "stat.recoilkick"}

ATT.Category = "ammo_scout"
ATT.SortOrder = 0.5

ATT.InstalledElements = {"50beo"}

ATT.Add_ClipSize = -4

ATT.Mult_Damage_Max = 1.5
ATT.Mult_Damage_Min = 1.5

ATT.Mult_RPM = 1 / 1.6
ATT.Mult_ShootTimeMult = 1.6

ATT.Add_RecoilKick = 15
ATT.Mult_MuzzleVelocity = 1.1

ATT.Override_Ammo = "357"
ATT.Override_Ammo_Expanded = "ti_sniper"

ATT.Override_Sound_Shoot = "tacint_extras/scout/scout_fire-1-magnum.wav"
ATT.Add_Pitch_Shoot = 10

TacRP.LoadAtt(ATT, "ammo_scout_376")

------------------------------
-- #region muzz_megastar_comp (Compensator)
------------------------------
ATT = {}

ATT.PrintName = "att.muzz_pistol_comp.name"
ATT.Icon = Material("entities/tacrp_att_muzz_pistol_comp.png", "mips smooth")
ATT.Description = "att.muzz_pistol_comp.desc"
ATT.Pros = {"stat.recoil", "stat.spread", "stat.range_min"}
ATT.Cons = {"stat.rpm"}

ATT.Model = "models/weapons/tacint/addons/pistol_comp.mdl"
ATT.Scale = 2
ATT.ModelOffset = Vector(-18, 0, -3.8)

ATT.Category = "muzzle_megastar"
ATT.InvAtt = "muzz_pistol_comp"

ATT.SortOrder = 1

ATT.Mult_RecoilKick = 0.5
ATT.Mult_RPM = 0.9
ATT.Mult_Spread = 0.75
ATT.Mult_Range_Min = 1.5

TacRP.LoadAtt(ATT, "muzz_megastar_comp")