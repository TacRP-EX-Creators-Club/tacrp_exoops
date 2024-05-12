SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "MG 42"
SWEP.AbbrevName = ""
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "5Machine Gun"

SWEP.Description = "Antique machine gun with a blazing fast rate of fire. Capable of cutting people in half like a buzzsaw.\nFiring from the shoulder is not recommended."

SWEP.Trivia_Caliber = "7.92x57mm Mauser"
SWEP.Trivia_Manufacturer = "Großfuß AG"
SWEP.Trivia_Year = "1942"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Assets: Red Orchestra 2
Sounds: Red Orechesta 2 & rzen1th
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_mg42.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_mg42.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 40,
        Damage_Min = 28,
        RecoilKick = 12,
    },
    [TacRP.BALANCE_TTT] = {

        Description = "Machine gun with high damage but very low mobility.",

        Damage_Max = 20,
        Damage_Min = 12,
        Range_Min = 750,
        Range_Max = 3000,
        RPM = 950,
        ClipSize = 75,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
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

SWEP.TTTReplace = TacRP.TTTReplacePreset.MachineGun

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// "ballistics"

SWEP.Damage_Max = 38
SWEP.Damage_Min = 28
SWEP.Range_Min = 1200
SWEP.Range_Max = 4000
SWEP.Penetration = 10
SWEP.ArmorPenetration = 0.8

SWEP.MuzzleVelocity = 17500

// misc. shooting

SWEP.Firemode = 2

SWEP.RPM = 1200

SWEP.Spread = 0.009

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 12
SWEP.RecoilResetTime = 0.15
SWEP.RecoilDissipationRate = 20
SWEP.RecoilFirstShotMult = 2

SWEP.RecoilVisualKick = 2
SWEP.RecoilKick = 15
SWEP.RecoilAltMultiplier = 500
SWEP.RecoilStability = 0.15

SWEP.HipFireSpreadPenalty = 0.025
SWEP.MoveSpreadPenalty = 0.025
SWEP.RecoilSpreadPenalty = 0.0015
SWEP.PeekPenaltyFraction = 0.2

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.82
SWEP.ShootingSpeedMult = 0.25
SWEP.SightedSpeedMult = 0.25

SWEP.ReloadSpeedMult = 0.1
SWEP.ReloadSpeedMultTime = 1

SWEP.AimDownSightsTime = 0.65
SWEP.SprintToFireTime = 0.65

SWEP.Sway = 3
SWEP.ScopedSway = 0.75

SWEP.FreeAimMaxAngle = 9

SWEP.Bipod = true
SWEP.BipodRecoil = 0.25
SWEP.BipodKick = 0.125

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -4, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.07, 0, 0)
SWEP.SightPos = Vector(-4.5, -7.5, -3)

SWEP.CorrectivePos = Vector(0.025, 0, 0.125)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 50
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1.2
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/mg42.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 3.5
SWEP.DropMagazineTime = 0.7

SWEP.BulletBodygroups = {
    [1] = {5, 0},
    [2] = {5, 1},
    [3] = {5, 1},
    [4] = {5, 1},
    [5] = {5, 1},
    [6] = {5, 1},
    [7] = {5, 1},
}
SWEP.DefaultBodygroups = "000001"

// sounds

local path = "TacRP/weapons/mg4/"
local path1 = "Tacint_shark/weapons/mg42/mg42_"

SWEP.Sound_Shoot = "^" .. path1 .. "shoot1.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/g36k/g36k_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_minimi"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["fire_iron"] = {"fire4_M", "fire3_M", "fire2_M", "fire1_M"},
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"},
    ["deploy"] = "unholster",
}

SWEP.DeployTimeMult = 2.5

// attachments

SWEP.AttachmentElements = {
    ["bipod"] = {
        BGs_VM = {
            {3, 1}
        },
        BGs_WM = {
            {3, 1}
        },
    },
}

//ValveBiped.MG4_root

SWEP.Attachments = {
    [1] = {
        PrintName = "Muzzle",
        Category = "barrel",
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-5.5, 0, 32),
        Pos_WM = Vector(33, 1.15, -5.75),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-4.7, -0.9, 19),
        Pos_WM = Vector(25, 2, -5),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "extendedbelt", "acc_duffle", "acc_bipod", "acc_sling"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_auto"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
	[7] = {
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

addsound("tacint_mg3.Clip_Out", path1 .. "magout.wav")
addsound("tacint_mg3.Clip_In", path1 .. "magin.wav")
addsound("tacint_mg3.bolt_release", path .. "bolt_release-1.wav")
addsound("tacint_mg3.bolt_back", path1 .. "boltback.wav")
addsound("tacint_mg3.bolt_forward", path1 .. "boltforward.wav")
addsound("tacint_mg3.feedcover_close", path1 .. "coverclose.wav")
addsound("tacint_mg3.feedcover_open", path1 .. "coveropen1.wav")
addsound("tacint_mg3.insertbullets", path1 .. "bullets.wav")
addsound("tacint_mg3.deploy", path .. "deploy-1.wav")