SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Benelli M3"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "2Operator"
SWEP.SubCatType = "5Shotgun"

SWEP.Description = "Semi-automatic shotgun with good recoil control and accuracy."
SWEP.Description_Quote = "\"Come on, Daywalker!\"" --Blade (1998)

SWEP.Trivia_Caliber = "12 Gauge"
SWEP.Trivia_Manufacturer = "Benelli Armi S.p.A."
SWEP.Trivia_Year = "1989"

SWEP.Faction = TacRP.FACTION_COALITION
SWEP.Credits = [[
Model, Textures: Kimono
Sounds: Cas., Tactical Intervention
Animation: Tactical Intervention
]]

SWEP.ViewModel = "models/weapons/tacint_extras/v_m3.mdl"
SWEP.WorldModel = "models/weapons/tacint_extras/w_m3.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3


SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 9,
        Damage_Min = 4,
        Range_Min = 400,
        Range_Max = 2000,
        RPM = 140,

        FreeAimMaxAngle = 5,
        RecoilSpreadPenalty = 0.015,

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
}

SWEP.TTTReplace = TacRP.TTTReplacePreset.AutoShotgun

// "ballistics"

SWEP.ShootTimeMult = 0.6

SWEP.Damage_Max = 10
SWEP.Damage_Min = 6
SWEP.Range_Min = 400 // distance for which to maintain maximum damage
SWEP.Range_Max = 1800 // distance at which we drop to minimum damage
SWEP.Penetration = 1 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.725
SWEP.ArmorBonus = 0.5

SWEP.Num = 8

SWEP.MuzzleVelocity = 11000

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

// misc. shooting

SWEP.Firemode = 1

SWEP.RPM = 170

SWEP.Spread = 0.02
SWEP.ShotgunPelletSpread = 0.01

SWEP.HipFireSpreadPenalty = 0.02
SWEP.MidAirSpreadPenalty = 0

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 2
SWEP.RecoilResetTime = 0.2 // time after you stop shooting for recoil to start dissipating
SWEP.RecoilDissipationRate = 3.5
SWEP.RecoilFirstShotMult = 1 // multiplier for the first shot's recoil amount

SWEP.RecoilVisualKick = 1.5
SWEP.RecoilKick = 8
SWEP.RecoilStability = 0.2
SWEP.RecoilAltMultiplier = 500

SWEP.RecoilSpreadPenalty = 0.022

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.65
SWEP.SightedSpeedMult = 0.75

SWEP.ReloadSpeedMult = 0.5

SWEP.AimDownSightsTime = 0.35
SWEP.SprintToFireTime = 0.35

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_CROSSBOW
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -2, -6)

SWEP.BlindFireAng = Angle(0, 5, 0)
SWEP.BlindFirePos = Vector(4, -2, -4)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(0.2, 0.5, 0)
SWEP.SightPos = Vector(-2.9, -5, -4.2)

SWEP.SightPos = Vector(-2.8, -4, -4.0)
SWEP.SightAng = Angle(0.35, -0.55, 0)

SWEP.CorrectivePos = Vector(-0.05, 0, -0.1)
SWEP.CorrectiveAng = Angle(0.3, 1.039, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

SWEP.Sway = 1
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 3.5

// reload

SWEP.ClipSize = 5
SWEP.Ammo = "buckshot"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1.25

SWEP.JamBaseMSB = 9

// sounds

local path = "tacint_extras/m3/"

SWEP.Sound_Shoot = "^" .. path .. "m3-1.wav"
SWEP.Sound_Shoot_Silenced = "tacint/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot
SWEP.Pitch_Shoot = 107

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_m3"
SWEP.EjectEffect = 3

// anims

SWEP.AnimationTranslationTable = {
    ["fire"] = {"shoot1", "shoot2"},
    ["blind_fire"] = {"blind_shoot1"},
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload"},
    ["jam"] = "reload_finish"
}

// attachments

SWEP.AttachmentElements = {
    ["sights"] = {
        BGs_VM = {
            {1, 1}
        },
        BGs_WM = {
            {1, 1}
        },
    },
}

SWEP.Attachments = {
    [1] = {
        PrintName = "Optic",
        Category = {"optic_cqb", "optic_medium"},
        Bone = "ValveBiped._ROOT_Super90",
        InstalledElements = {"sights"},
        AttachSound = "tacrp/weapons/optic_on.wav",
        DetachSound = "tacrp/weapons/optic_off.wav",
        VMScale = 0.75,
        WMScale = 0.75,
        Pos_VM = Vector(-5.15, 0.18, 5.5),
        Pos_WM = Vector(9, 1.3, -5.9),
        Ang_VM = Angle(90, 0, 0),
        Ang_WM = Angle(0, 0, 180),
    },
    [2] = {
        PrintName = "Tactical",
        Category = {"tactical", "tactical_zoom"},
        Bone = "ValveBiped._ROOT_Super90",
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
        InstalledElements = {"tactical"},
        VMScale = 1.25,
        Pos_VM = Vector(-3, 1, 15),
        Pos_WM = Vector(19, 0.25, -3.75),
        Ang_VM = Angle(90, 0, 90),
        Ang_WM = Angle(0, 0, -90),
    },
    [3] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_duffle", "acc_extmag_shotgun", "acc_sling"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [7] = {
        PrintName = "Perk",
        Category = {"perk", "perk_melee", "perk_shooting", "perk_reload"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Bolt",
        Category = {"bolt_automatic"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
        PrintName = "Trigger",
        Category = {"trigger_semi"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [6] = {
        PrintName = "Ammo",
        Category = {"ammo_shotgun"},
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

addsound("tacint_m3.Insertshell", path .. "m3_insertshell.wav")
addsound("tacint_Bekas.Movement", "tacrp/weapons/bekas/movement-1.wav")
addsound("tacint_m3.Bolt_Back", "tacrp/weapons/m4star10/bolt_back.wav")
addsound("tacint_m3.Bolt_release", "tacrp/weapons/m4star10/bolt_release.wav")
addsound("tacint_m3.throw_catch", "tacrp/weapons/m4/m4_throw_catch.wav")