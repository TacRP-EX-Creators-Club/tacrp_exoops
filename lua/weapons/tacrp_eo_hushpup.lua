SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "SW Mk 22 Mod 0"
SWEP.AbbrevName = "Mk 22"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "3Security"
SWEP.SubCatType = "1Pistol"

SWEP.Description = "Vintage special forces pistol designed for covert operations."
SWEP.Description_Quote = "\"Commencing operation Snake Eater.\""

SWEP.Trivia_Caliber = "9x19mm"
SWEP.Trivia_Manufacturer = "Smith & Wesson"
SWEP.Trivia_Year = "1954"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model: Stoke
Texture: Dayofdfeat12, edited by speedonerd
Sounds: oneshotofficial & speedonerd
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_hushpup.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_hushpup.mdl"

SWEP.Slot = 1

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 35,
        Damage_Min = 18,
        RPM = 380,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 28,
        Damage_Min = 10,
        Range_Min = 400,
        Range_Max = 1800,
        RPM = 200,
        RPMMultSemi = 1,

        Spread = 0.007,

        RecoilResetInstant = true,
        RecoilMaximum = 3.5,
        RecoilResetTime = 0.24,
        RecoilDissipationRate = 6,
        RecoilFirstShotMult = 1,
        RecoilSpreadPenalty = 0.008,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 2.5,
            [HITGROUP_CHEST] = 1.25,
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

SWEP.Damage_Max = 28
SWEP.Damage_Min = 14
SWEP.Range_Min = 500 // distance for which to maintain maximum damage
SWEP.Range_Max = 1800 // distance at which we drop to minimum damage
SWEP.Penetration = 3 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.675
SWEP.ArmorBonus = 0.25

SWEP.MuzzleVelocity = 8400

SWEP.BodyDamageMultipliers = {
    [HITGROUP_HEAD] = 4,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
    [HITGROUP_GEAR] = 0.9
}

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 350
SWEP.RPMMultSemi = 0.8

SWEP.Spread = 0.005
SWEP.RecoilSpreadPenalty = 0.003
SWEP.HipFireSpreadPenalty = 0.01

SWEP.ShootTimeMult = 0.7

SWEP.RecoilResetInstant = false
SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 4
SWEP.RecoilResetTime = 0.035
SWEP.RecoilDissipationRate = 12
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1

SWEP.RecoilKick = 3
SWEP.RecoilStability = 0.35
SWEP.RecoilAltMultiplier = 400

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.975
SWEP.ShootingSpeedMult = 0.8
SWEP.SightedSpeedMult = 0.8

SWEP.ReloadSpeedMult = 0.75

SWEP.AimDownSightsTime = 0.25
SWEP.SprintToFireTime = 0.25

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

SWEP.SightAng = Angle(0.02, -0.1, 0)
SWEP.SightPos = Vector(-3.325, 0, -3.97)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_PISTOL
SWEP.HolsterPos = Vector(0, 3, -4)
SWEP.HolsterAng = Angle(90, 0, 0)

SWEP.Sway = 1
SWEP.ScopedSway = 0.5

SWEP.FreeAimMaxAngle = 3.5

// reload

SWEP.ClipSize = 8
SWEP.Ammo = "pistol"

SWEP.ReloadTimeMult = 1.05

SWEP.DropMagazineModel = "models/weapons/tacint_shark/magazines/hushpup.mdl"
SWEP.DropMagazineImpact = "pistol"

SWEP.ReloadUpInTime = 1
SWEP.DropMagazineTime = 0.2

// sounds

local path1 = "Tacint_shark/weapons/megastar/"
local path = "Tacint_shark/weapons/hushpup/"

SWEP.Sound_Shoot = "^" .. path .. "hushpup_unsil.wav"
SWEP.Sound_Shoot_Silenced = path .. "hushpup_sil.wav"

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
        PrintName = "Muzzle",
        Category = {"silencer"},
        Bone = "ValveBiped.barrel",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/silencer_on.wav",
        DetachSound = "TacRP/weapons/silencer_off.wav",
        VMScale = 0.5,
        WMScale = 0.5,
        Pos_VM = Vector(-0.95, 0.72, 6.7),
        Ang_VM = Angle(90, 0, 0),
        Pos_WM = Vector(0.05, 8.3, -1.45),
        Ang_WM = Angle(0, -90, 0),
    },
    [2] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_extmag_pistol2", "acc_holster", "acc_brace"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Tactical",
        Category = {"tactical_zoom", "tactical_ebullet"},
        Bone = "sphinx_ROOT",
        WMBone = "Box01",
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
        VMScale = 1.1,
        WMScale = 1.3,
        Pos_VM = Vector(-2, 0.1, 6.5),
        Ang_VM = Angle(90, 0, 180),
        Pos_WM = Vector(0, 5.5, -2.75),
        Ang_WM = Angle(0, -90, 180),
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_semi", "trigger_mk22"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_pistol"},
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

addsound("tacint_hushpup.clip_in", path1 .. "magin.wav")
addsound("tacint_hushpup.clip_in-mid", path1 .. "magin.wav")
addsound("tacint_hushpup.clip_out", path1 .. "magout.wav")
addsound("tacint_hushpup.slide_action", path1 .. "slideaction.wav")
addsound("tacint_hushpup.slide_shut", path .. "slideforward.wav")
addsound("tacint_hushpup.cock_hammer", path .. "cockhammer.wav")
