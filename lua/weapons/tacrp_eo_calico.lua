SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Calico M950A"
SWEP.AbbrevName = "P90"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "3Machine Pistol"

SWEP.Description = "Odd spacegun-looking pistol with a massive helical magazine."
SWEP.Description_Quote = "\"I've got more hostages than you've had hot dinners.\""

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Calico Light Weapons Systems"
SWEP.Trivia_Year = "1987"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Assets: A.V.A.
Rail and foregrip from Warface
Sound: A.V.A., Warface, speedonerd
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_m950a.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_m950a.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 18,
        Damage_Min = 8,
        Range_Min = 800,
        HipFireSpreadPenalty = 0.02,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 10,
        Damage_Min = 5,
        Range_Min = 300,
        Range_Max = 1500,
        HipFireSpreadPenalty = 0.015,
        RPM = 700,

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
    }
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.SMG

// "ballistics"

SWEP.Damage_Max = 18
SWEP.Damage_Min = 6
SWEP.Range_Min = 600 // distance for which to maintain maximum damage
SWEP.Range_Max = 2000 // distance at which we drop to minimum damage
SWEP.Penetration = 2 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.5
SWEP.ArmorBonus = 1

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
    [HITGROUP_GEAR] = 0.9
}

SWEP.MuzzleVelocity = 25000

// misc. shooting

SWEP.Firemodes = {2, 1}

SWEP.RPM = 750
SWEP.RPMMultSemi = 0.85

SWEP.Spread = 0.008

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 25
SWEP.RecoilResetTime = 0.08
SWEP.RecoilDissipationRate = 40
SWEP.RecoilFirstShotMult = 2

SWEP.RecoilVisualKick = 0.75

SWEP.RecoilKick = 3
SWEP.RecoilStability = 0.4

SWEP.RecoilSpreadPenalty = 0.001
SWEP.HipFireSpreadPenalty = 0.03

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.85
SWEP.SightedSpeedMult = 0.7

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.32
SWEP.SprintToFireTime = 0.32

SWEP.Sway = 1
SWEP.ScopedSway = 0.25

SWEP.FreeAimMaxAngle = 3.5

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

SWEP.SightAng = Angle(0.165, -0.14, 0)
SWEP.SightPos = Vector(-3.46, -12, -3.9)

SWEP.CorrectivePos = Vector(0.03, 0, 0.1)
SWEP.CorrectiveAng = Angle(0, 0, 0)

SWEP.CustomizePos = Vector(8, 0, -7)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK
SWEP.HolsterPos = Vector(5, 6, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 50
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.15
SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/m950a.mdl"
SWEP.DropMagazineImpact = "plastic"

SWEP.ReloadUpInTime = 1.85
SWEP.DropMagazineTime = 0.55

// sounds

local path = "tacrp/weapons/p90/"
local path1 = "tacint_shark/weapons/m950/"

SWEP.Sound_Shoot = "^" .. path1 .. "mac10-1.wav"
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
        Pos_VM = Vector(-5.55, -0.2, 4),
        Pos_WM = Vector(6, 1.8, -6.8),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "p90_ROOT",
        AttachSound = "tacrp/weapons/silencer_on.wav",
        DetachSound = "tacrp/weapons/silencer_off.wav",
        VMScale = 0.7,
        WMScale = 0.65,
        Pos_VM = Vector(-2.1, -0.08, 17),
        Pos_WM = Vector(19, 2.2, -3.8),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, -3.5, 180),
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom", "tactical_ebullet"},
        Bone = "p90_ROOT",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        VMScale = 0.85,
        Pos_VM = Vector(-3, -0.08, 11),
        Pos_WM = Vector(13, 2, -4.5),
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