SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "SIG MCX"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "1Elite"
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "Light assault rifle with a modular receiver, allowing it to accept a variety of calibers."
SWEP.Description_Quote = "\"Bravo Six, going dark.\""

SWEP.Trivia_Caliber = "5.56x45mm"
SWEP.Trivia_Manufacturer = "SIG Sauer AG"
SWEP.Trivia_Year = "2015"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Assets: Alliance of Valiant Arms
Originally ported to CS 1.6 by GR_Lucia
Sounds: A.V.A., speedonerd
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_mcx.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_mcx.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 14,
        Damage_Min = 8,

        Range_Min = 600,
        Range_Max = 2000,

        RPM = 650,

        RecoilSpreadPenalty = 0.002,

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
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 9,
        Damage_Min = 5,
        Range_Min = 600,
        Range_Max = 2800,
        RPM = 700,

        RecoilSpreadPenalty = 0.0017,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilMaximum = 25,
        RecoilPerShot = 2,
        RecoilDissipationRate = 20
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AssaultRifle

// "ballistics"

SWEP.Damage_Max = 22
SWEP.Damage_Min = 15
SWEP.Range_Min = 1200
SWEP.Range_Max = 2800
SWEP.Penetration = 7 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.7

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 5,
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
SWEP.RecoilSpreadPenalty = 0.0017
SWEP.HipFireSpreadPenalty = 0.04
SWEP.PeekPenaltyFraction = 0.2

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 10
SWEP.RecoilResetTime = 0
SWEP.RecoilDissipationRate = 35
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 0.75
SWEP.RecoilKick = 3
SWEP.RecoilStability = 0.25



SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.36
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

SWEP.SightAng = Angle(0.15, -0.1, 0)
SWEP.SightPos = Vector(-4.185, -7, -4.85)

SWEP.CorrectivePos = Vector(-0.05, 0, 0.05)
SWEP.CorrectiveAng = Angle(0.03, 0.45, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 30
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/masada.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.3
SWEP.DropMagazineTime = 0.4

// sounds

local path = "TacRP/weapons/m4/m4_"
local path1 = "Tacint_shark/weapons/masada/"
local path2 = "Tacint_shark/weapons/mcx/mcx_"

SWEP.Sound_Shoot = "^" .. path2 .. "556.wav"
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
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire5_M",
    ["melee"] = {"melee1", "melee2"}
}

// attachments

SWEP.AttachmentElements = {
    ["foldstock"] = {
        BGs_VM = {
            {1, 1}
        },
		BGs_WM = {
			{1, 1}
		},
    },
    ["sights"] = {
        BGs_VM = {
            {2, 1},
        },
    },
	["277fury"] = {
		BGs_VM = {
			{3, 1}
		},
		BGs_WM = {
			{3, 1}
		},
	},
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium", "optic_sniper"},
        InstalledElements = {"sights"},
        Bone = "ValveBiped.m4_rootbone",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 1,
        Pos_VM = Vector(-5.8, -0.05, 8.5),
        Pos_WM = Vector(0.35, 5, 1.3),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -87, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.m4_rootbone",
        WMBone = "Box01",
		VMScale = 0.75,
		WMScale = 0.7,
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        Pos_VM = Vector(-4.1, 0, 22),
        Pos_WM = Vector(1.1, 18, -0.4),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -87, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.m4_rootbone",
        WMBone = "Box01",
		VMScale = 1.1,
		WMScale = 1.1,
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        Pos_VM = Vector(-2.85, 0, 15),
        Pos_WM = Vector(0.9, 16, -1.7),
        Ang_VM = Angle(90, 0, 180),
        Ang_WM = Angle(180, -90, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_foldstock", "acc_sling", "acc_duffle", "perk_extendedmag"},
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
        Category = {"ammo_rifle", "ammo_mcx"},
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

addsound("tacint_mcx.Remove_Clip", path1 .. "magout.wav")
addsound("tacint_mcx.Insert_Clip", path1 .. "magin.wav")
addsound("tacint_mcx.Insert_Clip-mid", path .. "insert_clip-mid.wav")
addsound("tacint_mcx.bolt_action", path .. "bolt_action.wav")
addsound("tacint_mcx.bolt_slap", path1 .. "boltrelease.wav")
addsound("tacint_mcx.throw_catch", path .. "throw_catch.wav")