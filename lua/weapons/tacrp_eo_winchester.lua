SWEP.Base = "tacrp_base"
SWEP.Spawnable = true

AddCSLuaFile()

// names and stuff
SWEP.PrintName = "Winchester M1873"
SWEP.AbbrevName = "W1873"
SWEP.Category = "Tactical RP"

SWEP.SubCatTier = "5Value"
SWEP.SubCatType = "5Sporter"

SWEP.Description = "Iconic cowboy rifle with a design that has endured to this day. A venerable classic - but unsuitable for the demanding battlefields of today."
SWEP.Description_Quote = "\"The gun that won the West.\""

SWEP.Trivia_Caliber = ".44-40 WCF"
SWEP.Trivia_Manufacturer = "Winchester Repeating Arms"
SWEP.Trivia_Year = "1873"

SWEP.Faction = TacRP.FACTION_MILITIA
SWEP.Credits = [[
Model: Enron
Textures: !NC!Furious
Sounds: Vunsunta
Animation: Tactical Intervention & speedonerd
]]

SWEP.ViewModel = "models/weapons/tacint_shark/v_winchester.mdl"
SWEP.WorldModel = "models/weapons/tacint_shark/w_winchester.mdl"

SWEP.Slot = 2
SWEP.SlotAlt = 3

SWEP.BalanceStats = {
    [TacRP.BALANCE_SBOX] = {
        Damage_Max = 50,
        Damage_Min = 34,
        HipFireSpreadPenalty = 0.015,
    },
    [TacRP.BALANCE_TTT] = {
        Damage_Max = 35,
        Damage_Min = 28,
        Range_Min = 400,
        Range_Max = 2000,

        RPM = 80,
        ShootTimeMult = 1.2,

        ShootingSpeedMult = 0.8,
        HipFireSpreadPenalty = 0.015,

        BodyDamageMultipliers = {
            [HITGROUP_HEAD] = 3,
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

SWEP.TTTReplace = TacRP.TTTReplacePreset.Shotgun

// "ballistics"

SWEP.Damage_Max = 44
SWEP.Damage_Min = 18
SWEP.Range_Min = 900 // distance for which to maintain maximum damage
SWEP.Range_Max = 3200 // distance at which we drop to minimum damage
SWEP.Penetration = 10 // units of metal this weapon can penetrate
SWEP.ArmorPenetration = 0.75
SWEP.ArmorBonus = 1.25

SWEP.Num = 1

SWEP.MuzzleVelocity = 10000

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

// misc. shooting

SWEP.Firemode = 1

SWEP.FiremodeName = "Lever-Action" // only used externally for firemode name distinction

SWEP.RPM = 72

SWEP.Spread = 0.003

SWEP.HipFireSpreadPenalty = 0.02
SWEP.MidAirSpreadPenalty = 0.05
SWEP.PeekPenaltyFraction = 0.25

SWEP.RecoilPerShot = 1
SWEP.RecoilMaximum = 3
SWEP.RecoilResetTime = 0.4
SWEP.RecoilDissipationRate = 1.5
SWEP.RecoilFirstShotMult = 1

SWEP.RecoilVisualKick = 1.25
SWEP.RecoilKick = 12
SWEP.RecoilStability = 0.5

SWEP.RecoilSpreadPenalty = 0.015
SWEP.RecoilAltMultiplier = 500

SWEP.CanBlindFire = true

// handling

SWEP.MoveSpeedMult = 0.9
SWEP.ShootingSpeedMult = 0.5
SWEP.SightedSpeedMult = 0.65

SWEP.ReloadSpeedMult = 0.4

SWEP.AimDownSightsTime = 0.39
SWEP.SprintToFireTime = 0.38

SWEP.Sway = 1
SWEP.ScopedSway = 0.2

SWEP.FreeAimMaxAngle = 6

// hold types

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeBlindFire = false
SWEP.HoldTypeNPC = "shotgun"

SWEP.GestureShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN
SWEP.GestureReload = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN

SWEP.PassiveAng = Angle(0, 0, 0)
SWEP.PassivePos = Vector(0, -1, -5)

SWEP.BlindFireAng = Angle(5, 5, -35)
SWEP.BlindFirePos = Vector(6, -2, -1)

SWEP.BlindFireLeftAng = Angle(85, 0, -50)
SWEP.BlindFireLeftPos = Vector(12, 12, -6)

SWEP.BlindFireRightAng = Angle(-85, 0, -50)
SWEP.BlindFireRightPos = Vector(-10, 12, -8)

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, 0, -2)

SWEP.SightAng = Angle(-0.55, -0.7, 2)
SWEP.SightPos = Vector(-3.5, -5, -2.7)

SWEP.CorrectivePos = Vector(0.275, 0, -0.2)
SWEP.CorrectiveAng = Angle(1.21, 0.1, 0)

SWEP.HolsterVisible = true
SWEP.HolsterSlot = TacRP.HOLSTER_SLOT_BACK2
SWEP.HolsterPos = Vector(5, 0, -6)
SWEP.HolsterAng = Angle(0, 0, 0)

// reload

SWEP.ClipSize = 12
SWEP.Ammo = "ar2"
SWEP.ShotgunReload = true

SWEP.ReloadTimeMult = 1

// sounds

local path = "Tacint_shark/weapons/winchester/m3_"
local path1 = "TacRP/weapons/bekas/"

SWEP.Sound_Shoot = "^" .. path .. "fire-1.wav"
SWEP.Sound_Shoot_Silenced = "TacRP/weapons/sg551/sg551_fire_silenced-1.wav"

SWEP.Vol_Shoot = 130
SWEP.ShootPitchVariance = 0 // amount to vary pitch by each shot

// effects

// the .qc attachment for the muzzle
SWEP.QCA_Muzzle = 1
SWEP.QCA_Eject = 2

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.EjectEffect = 2
SWEP.EjectDelay = 0.5

// anims

SWEP.AnimationTranslationTable = {
    ["fire"] = "shoot1",
    ["deploy"] = "deploy",
    ["blind_idle"] = "idle",
    ["blind_fire"] = "shoot1",
    ["blind_dryfire"] = "dryfire",
    ["melee"] = {"melee1", "melee2"},
    ["reload"] = {"reload", "reload2"},
    ["jam"] = "reload_finish"
}

SWEP.ShootTimeMult = 1.3
SWEP.DeployTimeMult = 1.15

// attachments

SWEP.Attachments = {
    [1] = {
        PrintName = "Accessory",
        Category = {"acc", "acc_sling", "acc_duffle"},
        AttachSound = "tacrp/weapons/flashlight_on.wav",
        DetachSound = "tacrp/weapons/flashlight_off.wav",
    },
    [2] = {
        PrintName = "Bolt",
        Category = {"bolt_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [3] = {
        PrintName = "Trigger",
        Category = {"trigger_manual"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [4] = {
        PrintName = "Ammo",
        Category = {"ammo_rifle"},
        AttachSound = "TacRP/weapons/flashlight_on.wav",
        DetachSound = "TacRP/weapons/flashlight_off.wav",
    },
    [5] = {
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

addsound("tacint_winchester.Insertshell", path .. "insertshell.wav")
addsound("tacint_winchester.Movement", path .. "hammer.wav")
addsound("tacint_winchester.PumpBack", path .. "pump_back.wav")
addsound("tacint_winchester.PumpForward", path .. "pump_forward.wav")