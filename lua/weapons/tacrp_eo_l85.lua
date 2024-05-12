SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Enfield L85A2"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value" -- :trolley:
SWEP.SubCatType = "4Assault Rifle"

SWEP.Description = "British bullpup rifle with poor performance. At least it sorta looks neat. \nEquipped with a 4x scope by default."

SWEP.Trivia_Caliber = "5.56x45mm"
SWEP.Trivia_Manufacturer = "Royal Ordnance"
SWEP.Trivia_Year = "1985"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model & Texture: Milo, edited by speedonerd
Animations: Tactical Intervention, edited by speedonerd
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_l85.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_l85.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 23,
        Damage_Min = 12,

        ClipSize = 30,
        JamFactor = 0,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 14,
        Damage_Min = 10,
        Range_Min = 400,
        Range_Max = 2200,
        PostBurstDelay = 0.2,

        RecoilResetTime = 0.2,
        RecoilSpreadPenalty = 0.003,
        RecoilDissipationRate = 18,

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

SWEP.Damage_Max = 20
SWEP.Damage_Min = 10
SWEP.Range_Min = 1200
SWEP.Range_Max = 3200
SWEP.Penetration = 7
SWEP.ArmorPenetration = 0.8

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3, // Must land at least 2 shots from a burst to get a headshot kill at full health.
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 18000

// misc. shooting

SWEP.Firemodes = {
    2,
    1
}

SWEP.RPM = 700

SWEP.Spread = 0.004

SWEP.PostBurstDelay = 0.22
SWEP.RunawayBurst = true

SWEP.JamFactor = 0.2

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 10
SWEP.RecoilResetTime = 0.01
SWEP.RecoilDissipationRate = 21
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1
SWEP.RecoilKick = 4
SWEP.RecoilStability = 0.4
SWEP.RecoilAltMultiplier = 350

SWEP.RecoilSpreadPenalty = 0.003
SWEP.HipFireSpreadPenalty = 0.04

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.85
SWEP.ShootingSpeedMult = 0.7
SWEP.SightedSpeedMult = 0.7

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.Sway = 1.1
SWEP.ScopedSway = 0.125

SWEP.FreeAimMaxAngle = 4


// hold types

SWEP.HoldType = "smg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -1, -5.5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(3, -2, -5)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0, 0.3, 0)
SWEP.SightPos = Vector(-4.04, -6, -4.6)

SWEP.CorrectivePos = Vector(0, 0, -0.2)
SWEP.CorrectiveAng = Angle(-0.2, 1.3, -0.2)

SWEP.CustomizePos = Vector(2, 1, -6)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 4, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// scope

SWEP.Scope = true
SWEP.ScopeOverlay = Material("tacrp/scopes/susat.png", "mips smooth") // Material("path/to/overlay")
SWEP.ScopeFOV = 90 / 4
SWEP.ScopeLevels = 1 // 2 = like CS:S
SWEP.ScopeHideWeapon = true

// reload

SWEP.ClipSize = 25
SWEP.Ammo = "smg1"

SWEP.ReloadTimeMult = 1.2
SWEP.DropMagazineModel = "models/weapons/tacint/magazines/m4.mdl"
SWEP.DropMagazineImpact = "metal"

SWEP.ReloadUpInTime = 1.7
SWEP.DropMagazineTime = 0.5

// sounds

local path = "tacint_shark/weapons/l85/"
local path1 = "tacrp/weapons/aug/aug_"

SWEP.Sound_Shoot = "^" .. path .. "aug-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.EjectEffect = 2

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "unholster",
    ["fire_iron"] = "idle",
    ["fire1"] = "fire1_M",
    ["fire2"] = "fire2_M",
    ["fire3"] = "fire3_M",
    ["fire4"] = "fire4_M",
    ["fire5"] = "fire4_M",
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.2, -0.12),
    vm_ang = Angle(0, 0.25, 0),
    t = 0.1,
    tmax = 0.1,
    bones = {
        {
            bone = "ValveBiped.bolt",
            pos = Vector(0, 0, -3),
            t0 = 0.01,
            t1 = 0.08,
        },
    },
}

SWEP.DeployTimeMult = 2.25

// attachments

SWEP.AttachmentElements = {
	["irons"] = {
        BGs_VM = {
            {1, 1}
        },
		BGs_WM = {
			{1, 1}
		},
	},
	
    ["scope"] = {
        BGs_VM = {
            {1, 2}
        },
		BGs_WM = {
			{1, 2}
		},
    },
}


SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"ironsights", "optic_cqb", "optic_medium", "optic_sniper"},
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        InstalledElements = {"scope"},
        VMScale = 1,
        Pos_VM = Vector(-5.3, 0, -1),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(7.6, 1, -8.3),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.9,
        WMScale = 0.9,
        Pos_VM = Vector(-3.75, 0.15, 19.5),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(22, 1, -4.4),
        Ang_WM = Angle(0, 0, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "ValveBiped.AUG_rootbone",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        VMScale = 1,
        Pos_VM = Vector(-3.6, 0.9, 10),
        Ang_VM = Angle(90, 0, 75),
        Pos_WM = Vector(14.75, 1.5, -6),
        Ang_WM = Angle(0, 0, 90),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle", "perk_extendedmag", "acc_bipod"},
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
        Category = {"trigger_burst"},
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

addsound("tacint_l85.insert_clip", path .. "magin.wav")
addsound("tacint_l85.insert_clip-mid", path .. "tap.wav")
addsound("tacint_l85.remove_clip", path .. "magout.wav")
addsound("tacint_l85.Handle_FoldDown", path .. "handle_folddown.wav")
addsound("tacint_l85.bolt_lockback", path .. "boltpull.wav")
addsound("tacint_l85.bolt_release", path .. "boltslap.wav")