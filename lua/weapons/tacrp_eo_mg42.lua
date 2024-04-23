SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "MG 42"
SWEP.AbbrevName = ""
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "4Machine Gun"

SWEP.Description = "Antique machine gun with a blazing fast rate of fire. Capable of cutting people in half like a buzzsaw."

SWEP.Trivia_Caliber = "7.92x57mm Mauser"
SWEP.Trivia_Manufacturer = "Großfuß AG"
SWEP.Trivia_Year = "1942"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Assets: Red Orchestra 2
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_mg42.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_mg42.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 28,
        Damage_Min = 22,

        ClipSize = 75,
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
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.9,
    [HITGROUP_RIGHTARM] = 0.9,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.75
}

// "ballistics"

SWEP.Damage_Max = 35
SWEP.Damage_Min = 25
SWEP.Range_Min = 1200
SWEP.Range_Max = 4000
SWEP.Penetration = 10
SWEP.ArmorPenetration = 0.8

SWEP.MuzzleVelocity = 17500

// misc. shooting

SWEP.Firemode = 2

SWEP.RPM = 1200

SWEP.Spread = 0.01

SWEP.ShootTimeMult = 0.5

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 25
SWEP.RecoilResetTime = 0.15
SWEP.RecoilDissipationRate = 40
SWEP.RecoilFirstShotMult = 2

SWEP.RecoilVisualKick = 2

SWEP.RecoilKick = 10

SWEP.HipFireSpreadPenalty = 0.025
SWEP.RecoilSpreadPenalty = 0.001
SWEP.PeekPenaltyFraction = 0.125

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.4
SWEP.SightedSpeedMult = 0.5

SWEP.ReloadSpeedMult = 0.1
SWEP.ReloadSpeedMultTime = 1

SWEP.AimDownSightsTime = 0.5
SWEP.SprintToFireTime = 0.5

SWEP.Sway = 2
SWEP.ScopedSway = 0.75

SWEP.FreeAimMaxAngle = 7

SWEP.Bipod = true
SWEP.BipodRecoil = 0.3
SWEP.BipodKick = 0.25

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

SWEP.ClipSize = 100
SWEP.Ammo = "ar2"

SWEP.ReloadTimeMult = 1.25
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
    ["fire1"] = "fire1_L",
    ["fire2"] = "fire2_L",
    ["fire3"] = "fire3_L",
    ["fire4"] = "fire4_L",
    ["fire5"] = "fire5_L",
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
    --[1] = {
       --PrintName = "Optic",
       -- Category = {"optic_cqb", "optic_medium"},
        --Bone = "ValveBiped.feed_cover",
        --AttachSound = "TacRP/weapons/optic_on.wav",
        --DetachSound = "TacRP/weapons/optic_off.wav",
        --VMScale = 1.1,
        --Pos_VM = Vector(-0.75, 0, -3),
        --Pos_WM = Vector(8, 1.15, -7),
        --Ang_VM = Angle(90, 0, 0),
        --Ang_WM = Angle(0, 0, 180),
    --},
    [2] = {
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
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.MG4_root",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        Pos_VM = Vector(-4.7, -0.9, 19),
        Pos_WM = Vector(25, 2, -5),
        Ang_VM = Angle(90, 0, -90),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "extendedbelt", "acc_duffle", "acc_bipod", "acc_sling"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [8] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
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
    }
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