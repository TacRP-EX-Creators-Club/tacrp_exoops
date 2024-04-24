SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Franchi SPAS-15"
SWEP.AbbrevName = "SPAS-15"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Magazine-fed successor to the iconic dual-mode shotgun. Extreme heft allows for excellent control but poor handling."

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Luigi Franchi S.p.A."
SWEP.Trivia_Year = "1986"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Assets: filosoma, ported from Fallout: New Vegas by Kindred Flame
Sounds: Navaro, SevenZero & Magmacow
Animation: Tactical Intervention & speedonerd
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_spas15.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_spas15.mdl"

SWEP.Slot = 3


SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 18,
        Damage_Min = 13,
        Range_Min = 1200,
        Range_Max = 2800,

        RPM = 550,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
            [HITGROUP_CHEST] = 1.25,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 0.9,
            [HITGROUP_RIGHTARM] = 0.9,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 12
SWEP.Damage_Min = 5
SWEP.Range_Min = 700 // distance for which to maintain maximum damage
SWEP.Range_Max = 1800 // distance at which we drop to minimum damage
SWEP.Penetration = 9 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.775

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.4,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 30000

SWEP.Num = 6

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 190

SWEP.Spread = 0.04
SWEP.ShotgunSpread = 0.02

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 10
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 40
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 0.8
SWEP.RecoilKick = 4
SWEP.RecoilStability = 0.5

SWEP.RecoilSpreadPenalty = 0.0015
SWEP.HipFireSpreadPenalty = 0.035

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 0.6

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.38

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.15

SWEP.FreeAimMaxAngle = 4.25

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(2, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(40, -15, 0)
SWEP.SprintPos = Vector(5, 0, -4)

SWEP.SightAng = Angle(0, 0, 0)
SWEP.SightPos = Vector(-4.12, -2.5, -3.62)

SWEP.CorrectivePos = Vector(0, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 6
SWEP.Ammo = "buckshot"

SWEP.ReloadTimeMult = 1.25
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/spas15.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.4
SWEP.DropMagazineTime = 0.4

// sounds

local path = "TacRP/weapons/g36k/g36k_"
local path1 = "Tacint_shark/weapons/spas15/"

SWEP.Sound_Shoot = "^" .. path1 .. "fire1.wav"
SWEP.Sound_Shoot_Silenced = path .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 120
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 3

// anims

SWEP.AnimationTranslationTable = {
	["deploy"] = "unholster",
    ["fire_iron"] = "fire1_M",
    ["fire1"] = "fire3_M",
    ["fire2"] = "fire3_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire3_M",
    ["fire5"] = "fire3_M",
    ["melee"] = "melee2",
	["dryfire"] = "dryfire_empty"
}

SWEP.LastShot = true

SWEP.DeployTimeMult = 2

// attachments

SWEP.AttachmentElements = {
    ["tactical"] = {
        BGs_VM = {
            {2, 1}
        },
    },
    ["irons"] = {
        BGs_VM = {
            {1, 1}
        },
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_cqb",
        Bone = "ValveBiped.g36k_rootbone",
        WMBone = "Box01",
        InstalledElements = {"irons"},
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.9,
        Pos_VM = Vector(-6.6, 0.2, 4),
        Pos_WM = Vector(0, 1, 2.25),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "barrel",
        Bone = "ValveBiped.g36k_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-3.45, 0.075, 24.5),
        Pos_WM = Vector(-0.25, 24, -1),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -90, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.bolt_handle",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(0.8, -11, 1.25),
        Pos_WM = Vector(1.5, 16, -0.8),
        Ang_VM = Angle(0, 90, 90),
        Ang_WM = Angle(-70, -90, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "acc_extmag_shotgun"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic", "bolt_pump"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
}

local function addsound(name, spath)
    sound.Add({
        name = name,
        channel = 16,
        volume = 1.0,
        sound = spath
    })
end

addsound("tacint_spas15.remove_clip", path1 .. "clipout.wav")
addsound("tacint_spas15.insert_clip", path1 .. "clipin.wav")
addsound("tacint_spas15.bolt_action", path1 .. "boltaction.wav")
addsound("tacint_spas15.fire_select", path .. "fire_selector.wav")
addsound("tacint_spas15.Buttstock_Back", path .. "buttstock_back.wav")