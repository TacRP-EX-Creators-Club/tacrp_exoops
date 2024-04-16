SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Jericho 941"
SWEP.AbbrevName = "Jericho"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "1Sidearm"

SWEP.Description = "Sturdy 9mm pistol with great mobility. \nMarketed as the \"Baby Eagle\" for its superficial resemblance to the Desert Eagle."
SWEP.Description_Quote = "\"See you, space cowboy...\""

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Israel Military Industries"
SWEP.Trivia_Year = "1990"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model: philibuster
Texture: oyman
Sounds: xLongWayHome
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_jericho.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_jericho.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 22,
        Damage_Min = 14,
        RPM = 450,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 18,
        Damage_Min = 10,
        Range_Min = 600,
        Range_Max = 1800,
        RPM = 380,
        RPMMultSemi = 1,

        Spread = 0.007,

        RecoilResetInstant = true,
        RecoilMaximum = 3.5,
        RecoilResetTime = 0.24,
        RecoilDissipationRate = 6,
        RecoilFirstShotMult = 1,
        RecoilSpreadPenalty = 0.006,

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

        ReloadTimeMult = 1.05 * 1.25,
    },
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.Pistol

// "ballistics"

SWEP.Damage_Max = 20
SWEP.Damage_Min = 12
SWEP.Range_Min = 800 // distance for which to maintain maximum damage
SWEP.Range_Max = 2000 // distance at which we drop to minimum damage
SWEP.Penetration = 3 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.55
SWEP.ArmorBonus = 0.25

SWEP.MuzzleVelocity = 8400

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 3,
    [HITGROUP_CHEST] = 2,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 450
SWEP.RPMMultSemi = 0.9

SWEP.Spread = 0.008
SWEP.RecoilSpreadPenalty = 0.005
SWEP.HipFireSpreadPenalty = 0.008

SWEP.ShootTimeMult = 0.5

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.01
SWEP.RecoilDissipationRate = 18
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 3
SWEP.RecoilStability = 0.75

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 1
SWEP.ShootingSpeedMult = 0.9
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.8

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.2

// hold types

SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeBlindFire = "pistol"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -5)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(0, -2, -5)

SWEP.BlindFireSuicideAng = Angle(-130, 0, 45)
SWEP.BlindFireSuicidePos = Vector(27, 17, -6)

SWEP.SprintAng = Angle(0, 30, 0)
SWEP.SprintPos = Vector(2, 0, -12)

SWEP.SightAng = Angle(0.04, 0.5, 0)
SWEP.SightPos = Vector(-3.31, -2, -3.66)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 3.5

// reload

SWEP.ClipSize = 16
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.2

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/jericho.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 1
SWEP.DropMagazineTime = 0.2

// sounds

local path = "TacRP/weapons/gsr1911/gsr1911_"
local path1 = "tacint_shark/weapons/jericho/p228"

SWEP.Sound_Shoot = "^" .. path1 .. "-1.wav"
SWEP.Sound_Shoot_Silenced = path1 .. "_sil-1.wav"

SWEP.Vol_Shoot = 110
SWEP.ShootPitchVariance = 2.5 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 4

SWEP.MuzzleEffect = "muzzleflash_pistol"

// anims

SWEP.AnimationTranslationTable = {
    ["deploy"] = "draw",
    ["fire"] = {"shoot1", "shoot2", "shoot3"},
    ["blind_fire"] = {"blind_shoot1", "blind_shoot2", "blind_shoot3"},
    ["melee"] = {"melee1", "melee2"}
}

SWEP.ProceduralIronFire = {
    vm_pos = Vector(0, -0.5, -0.6),
    vm_ang = Angle(0, 2, 0),
    t = 0.2,
    tmax = 0.2,
    bones = {
        {
            bone = "ValveBiped.slide",
            pos = Vector(0, 0, -3),
            t0 = 0,
            t1 = 0.1,
        },
        {
            bone = "ValveBiped.hammer",
            ang = Angle(-15, 0, 0),
            t0 = 0,
            t1 = 0.15,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger1",
            ang = Angle(0, -15, 0),
            t0 = 0,
            t1 = 0.2,
        },
        {
            bone = "ValveBiped.Bip01_R_Finger11",
            ang = Angle(-35, 0, 0),
            t0 = 0,
            t1 = 0.15,
        },
    },
}

SWEP.LastShot = true

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = "optic_pistol",
        Bone = "ValveBiped.slide",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "TacRP/weapons/optic_on.wav",
        DetachSound = "TacRP/weapons/optic_off.wav",
        VMScale = 0.85,
        WMScale = 1,
        Pos_VM = Vector(-0.02, 2, 0.1),
        Ang_VM = Angle(0, 90, 180),
        Pos_WM = Vector(3.75, 1.3, -4.5),
        Ang_WM = Angle(180, 180, 0),
    },
    [2] = {
        PrintName = "Muzzle",
        Category = "silencer",
        Bone = "ValveBiped.barrel",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.5,
        WMScale = 0.5,
        Pos_VM = Vector(-0.7, 0.71, 5.8),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(13, 1.3, -4.2),
        Ang_WM = Angle(0, -0, 0),
    },
    [3] = {
        PrintName = "Tactical",
        Category = "tactical",
        Bone = "ValveBiped.GSR1911_rootbone",
        WMBone = "ValveBiped.Bip01_R_Hand",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 0.8,
        WMScale = 1,
        Pos_VM = Vector(-1.8, 0, 5.4),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(9.5, 1.25, -2.9),
        Ang_WM = Angle(0, 0, 0),
    },
    [4] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol2", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
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

addsound("tacint_jericho.clip_in", path1 .. "_clipin.wav")
addsound("tacint_jericho.clip_in-mid", path1 .. "_clipin.wav")
addsound("tacint_jericho.clip_out", path1 .. "_clipout.wav")
addsound("tacint_jericho.slide_action", path1 .. "_slidepull.wav")
addsound("tacint_jericho.slide_shut", path1 .. "_sliderelease.wav")
addsound("tacint_jericho.cock_hammer", path .. "cockhammer.wav")
