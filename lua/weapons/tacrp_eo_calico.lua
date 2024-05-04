SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Calico M950A"
SWEP.AbbrevName = "P90"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "2Machine Pistol"

SWEP.Description = "Odd spacegun-looking pistol with a massive helical magazine. Converted to full auto."
SWEP.Description_Quote = ""

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Calico Light Weapons Systems"
SWEP.Trivia_Year = "1987"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Assets: Warface
Originally ported to CS 1.6 by GR_Lucia
Sound: A.V.A. & speedonerd
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_m950a.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_m950a.mdl"

SWEP.Slot = 2

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 12,
        Damage_Min = 10,

        RecoilKick = 2,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 10,
        Damage_Min = 8,
        Range_Min = 1000,
        Range_Max = 2000,

        RPM = 800,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2,
            [HITGROUP_CHEST] = 1,
            [HITGROUP_STOMACH] = 1,
            [HITGROUP_LEFTARM] = 1,
            [HITGROUP_RIGHTARM] = 1,
            [HITGROUP_LEFTLEG] = 0.75,
            [HITGROUP_RIGHTLEG] = 0.75,
            [HITGROUP_GEAR] = 0.9
        },
    },
    [TacRP.BALANCE_PVE] = {
        Damage_Max = 9,
        Damage_Min = 7,
    },
    [TacRP.BALANCE_OLDSCHOOL] = {
        RecoilSpreadPenalty = 0.0025,
        RecoilMaximum = 25
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SMG

// "ballistics"

SWEP.Damage_Max = 15
SWEP.Damage_Min = 12
SWEP.Range_Min = 1000 // distance for which to maintain maximum damage
SWEP.Range_Max = 3500 // distance at which we drop to minimum damage
SWEP.Penetration = 10 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.875
SWEP.ArmorBonus = 2

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
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

SWEP.Firemode = 2

SWEP.RPM = 750

SWEP.Spread = 0.008

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 20
SWEP.RecoilResetTime = 0.05
SWEP.RecoilDissipationRate = 45
SWEP.RecoilFirstShotMult = 2

SWEP.RecoilVisualKick = 0.75

SWEP.RecoilKick = 1.5
SWEP.RecoilStability = 0.1

SWEP.RecoilSpreadPenalty = 0.0014

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.925
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.35
SWEP.SprintToFireTime = 0.375

SWEP.Sway = 0.75
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 3

// hold types

SWEP.HoldType = "smg"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SMG1

SWEP.PassiveAng = Angle(0, 2, 1)
SWEP.PassivePos = Vector(0, -7, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -4, -3)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(6, -2, -1)

SWEP.SightAng = Angle(0.18, -0.06, 0)
SWEP.SightPos = Vector(-3.5, -15, -3.3)

SWEP.CorrectivePos = Vector(0.03, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 6, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 50
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.05
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/m950a.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.85
SWEP.DropMagazineTime = 0.55

// sounds

local path = "tacrp/weapons/p90/"
local path1 = "tacint_shark/weapons/m950/"

SWEP.Sound_Shoot = "^" .. path1 .. "m950_unsil.wav"
SWEP.Sound_Shoot_Silenced = "^" .. path1 .. "m950_sil.wav"

SWEP.Vol_Shoot = 115
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
// ditto for shell
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.EjectEffect = 1

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
    ["optic"] = {
        BGs_VM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "p90_ROOT",
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.85,
        WMScale = 0.85,
        Pos_VM = Vector(-4.8, -0.15, 5),
        Pos_WM = Vector(7, 1.7, -6.5),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "p90_ROOT",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
		VMScale = 0.55,
		WMScale = 0.65,
        Pos_VM = Vector(-1.6, -0.06, 17),
        Pos_WM = Vector(19, 2.2, -3.3),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "p90_ROOT",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        VMScale = 0.85,
        Pos_VM = Vector(-2.3, 0, 11),
        Pos_WM = Vector(13, 1.7, -4),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, -180),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_holster", "acc_duffle", "acc_extmag_smg"},
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
        Category = {"ammo_pistol"},
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

addsound("tacint_m950.Clip_Out", path1 .. "magout.wav")
addsound("tacint_m950.Clip_In", path1 .. "magin.wav")
addsound("tacint_m950.Clip_slap", path .. "clip_slap.wav")
addsound("tacint_m950.bolt_release", path .. "bolt_release.wav")
addsound("tacint_m950.bolt_back", path1 .. "boltback.wav")
addsound("tacint_m950.bolt_forward", path1 .. "boltforward.wav")
addsound("tacint_m950.fire_select", path .. "fire_select.wav")
addsound("tacint_m950.mag_release", path .. "mag_release.wav")