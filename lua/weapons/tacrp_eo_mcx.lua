SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "SIG MCX SPEAR"
SWEP.AbbrevName = "MCX SPEAR"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "5Battle Rifle"

SWEP.Description = "Battle rifle designed for multiple infantry roles. Specialized ammo has high armor penetration and maintains damage over range."
SWEP.Description_Quote = "\"Bravo Six, going dark.\""

SWEP.Trivia_Caliber = ".277 SIG Fury"
SWEP.Trivia_Manufacturer = "SIG Sauer Inc."
SWEP.Trivia_Year = "2019"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model & Textures: Akinaro & Farengar
Sounds: Infinity Ward, speedonerd, XLongWayHome
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_mcx.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_mcx.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Range_Min = 1000,
        RecoilSpreadPenalty = 0.004,
        HipFireSpreadPenalty = 0.04,
        RecoilKick = 5,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 22,
        Damage_Min = 18,

        Range_Min = 800,
        Range_Max = 2800,

        RPM = 500,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1,
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

SWEP.Damage_Max = 30
SWEP.Damage_Min = 20
SWEP.Range_Min = 1400
SWEP.Range_Max = 3500
SWEP.Penetration = 8 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.9

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1.25,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 25000

// misc. shooting

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 700

SWEP.Spread = 0.003
SWEP.RecoilSpreadPenalty = 0.0025
SWEP.HipFireSpreadPenalty = 0.03
SWEP.PeekPenaltyFraction = 0.3

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 10
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 30
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 4
SWEP.RecoilStability = 0.6
SWEP.RecoilAltMultiplier = 200


SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.77
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.4
SWEP.SprintToFireTime = 0.38

SWEP.Sway = 1.25
SWEP.ScopedSway = 0.15

SWEP.FreeAimMaxAngle = 4.5

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0.5, -3, -5.75)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.03, 0.4, 0)
SWEP.SightPos = Vector(-4.51, -7, -5.6)

SWEP.CorrectivePos = Vector(-0.05, 0, 0.05)
SWEP.CorrectiveAng = Angle(-0.2, 0.35, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 20
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1.1
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/mcx277.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.4
SWEP.DropMagazineTime = 0.4

// sounds

local path = "TacRP/weapons/m4/m4_"
local path1 = "Tacint_shark/weapons/masada/"
local path2 = "Tacint_shark/weapons/mcx/mcx_"

SWEP.Sound_Shoot = "^" .. path2 .. "277.wav"
SWEP.Sound_Shoot_Silenced = path2 .. "556_supp.wav"

SWEP.Vol_Shoot = 120
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_ak47"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = "dryfire",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = {"fire4_M", "fire4_L", "fire4_R"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -1, -0.1),
    vm_ang = Angle(0, 0.4, 0),
    t = 0.25,
    tmax = 0.25,
}

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {1, 1},
        },
    },
    ["muzzle"] = {
        BGs_VM = {
            {2, 2},
        },
        BGs_WM = {
            {1, 2},
        },
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        InstalledElements = {"sights"},
        Bone = "ValveBiped._ROOT_HK417",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1.1,
        Pos_VM = Vector(-5.2, 0.6, 7),
        Pos_WM = Vector(0.65, 5, 0.9),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -87, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        InstalledElements = {"muzzle"},
        Bone = "ValveBiped._ROOT_HK417",
        WMBone = "Box01",
        VMScale = 0.8,
        WMScale = 0.85,
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-3.15, 0.7, 24.5),
        Pos_WM = Vector(1.5, 22, -1.3),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -87, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped._ROOT_HK417",
        WMBone = "Box01",
        VMScale = 1.1,
        WMScale = 1.1,
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        Pos_VM = Vector(-3.2, -0.7, 17),
        Pos_WM = Vector(2.5, 14, -1.3),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(-90, -90, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "perk_extendedmag"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
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

addsound("tacint_mcx.Clip_Out", path1 .. "magout.wav")
addsound("tacint_mcx.Clip_In", path1 .. "magin.wav")
addsound("tacint_mcx.bolt_action", path .. "bolt_action.wav")
addsound("tacint_mcx.bolt_latch", path1 .. "boltrelease.wav")
addsound("tacint_mcx.Fire_Select", "tacrp/weapons/hk417/fire_select.wav")