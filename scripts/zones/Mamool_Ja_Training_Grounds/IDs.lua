-----------------------------------
-- Area: Mamool_Ja_Training_Grounds
-----------------------------------
require("scripts/globals/missions")
require("scripts/globals/zone")
-----------------------------------

zones = zones or {}

zones[tpz.zone.MAMOOL_JA_TRAINING_GROUNDS] =
{
    text = {
        ITEM_CANNOT_BE_OBTAINED = 6383, -- You cannot obtain the <item>. Come back after sorting your inventory.
        ITEM_OBTAINED           = 6389, -- Obtained: <item>.
        GIL_OBTAINED            = 6390, -- Obtained <number> gil.
        KEYITEM_OBTAINED        = 6392, -- Obtained key item: <keyitem>.
        CARRIED_OVER_POINTS     = 7000, -- You have carried over <number> login point[/s].
        LOGIN_CAMPAIGN_UNDERWAY = 7001, -- The [/January/February/March/April/May/June/July/August/September/October/November/December] <number> Login Campaign is currently underway!<space>
        LOGIN_NUMBER            = 7002, -- In celebration of your most recent login (login no. <number>), we have provided you with <number> points! You currently have a total of <number> points.
        ASSAULT_11_START        = 7458, -- Commencing <assault>! Objective: Rescue the agent
        ASSAULT_12_START        = 7459, -- Commencing <assault>! Objective: Destroy the assassins
        ASSAULT_13_START        = 7460, -- Commencing <assault>! Objective: Defeat Sagelord Molaal Ja
        ASSAULT_14_START        = 7461, -- Commencing <assault>! Objective: Steal the supplies
        ASSAULT_15_START        = 7462, -- Commencing <assault>! Objective: Apprehend the spy
        ASSAULT_16_START        = 7463, -- Commencing <assault>! Objective: Recover the treasure
        ASSAULT_17_START        = 7464, -- Commencing <assault>! Objective: Annihilate the enemy
        ASSAULT_18_START        = 7465, -- Commencing <assault>! Objective: Neutralize the marids
        ASSAULT_19_START        = 7466, -- Commencing <assault>! Objective: Gather pathological data
        ASSAULT_20_START        = 7467, -- Commencing <assault>! Objective: Defeat Orochi
        TIME_TO_COMPLETE        = 7508, -- You have <number> [minute/minutes] (Earth time) to complete this mission.
        MISSION_FAILED          = 7509, -- The mission has failed. Leaving area.
        RUNE_UNLOCKED_POS       = 7510, -- ission objective completed. Unlocking Rune of Release ([A/B/C/D/E/F/G/H/I/J/K/L/M/N/O/P/Q/R/S/T/U/V/W/X/Y/Z]-#).
        RUNE_UNLOCKED           = 7511, -- ission objective completed. Unlocking Rune of Release.
        ASSAULT_POINTS_OBTAINED = 7512, -- You gain <number> [Assault point/Assault points]!
        TIME_REMAINING_MINUTES  = 7513, -- ime remaining: <number> [minute/minutes] (Earth time).
        TIME_REMAINING_SECONDS  = 7514, -- ime remaining: <number> [second/seconds] (Earth time).
        PARTY_FALLEN            = 7516, -- ll party members have fallen in battle. Mission failure in <number> [minute/minutes].
        BRUJEEL_RESCUE_1        = 7525, -- Am I glad to see you!
        BRUJEEL_RESCUE_2        = 7526, -- Sorry to put your to all this trouble.
        BRUJEEL_RESCUE_3        = 7527, -- Well, I can't be hanging around here.
        BRUJEEL_RESCUE_4        = 7528, -- I hate to be rescued and run, but I must be off.
        BRUJEEL_RESCUE_5        = 7529, -- Oh, I'm sure I don't have to mention this, but...
        BRUJEEL_RESCUE_6        = 7530, -- You didn't see anything. Your didn't hear anything.
    },

    mob = {
        -- Imperial Agent Rescue 皇国エージェント救出作戦
        [IMPERIAL_AGENT_RESCUE] =
        {
            MAMOOL_JA_WARDER1       = 17047553,
            MAMOOL_JA_WARDER2       = 17047554,
            MAMOOL_JA_WARDER3       = 17047556,
            MAMOOL_JA_WARDER4       = 17047557,
            MAMOOL_JA_WARDER5       = 17047559,
            MAMOOL_JA_WARDER6       = 17047560,
            MAMOOL_JA_WARDER7       = 17047561,
            MAMOOL_JAS_LIZARD1      = 17047562,
            MAMOOL_JA_WARDER8       = 17047563,
            MAMOOL_JA_WARDER9       = 17047564,
            MAMOOL_JA_WARDER10      = 17047565,
            MAMOOL_JA_WARDER11      = 17047566,
        },
        -- Preemptive Strike
        [PREEMPTIVE_STRIKE] =
        {
            PUK_EXECUTIONER1        = 17047570,
            MAMOOL_JA_EXECUTIONER1  = 17047571,
            PUK_EXECUTIONER2        = 17047572,
            PUK_EXECUTIONER3        = 17047573,
            MAMOOL_JA_EXECUTIONER2  = 17047574,
            MAMOOL_JA_EXECUTIONER3  = 17047575,
            PUK_EXECUTIONER4        = 17047576,
            MAMOOL_JA_EXECUTIONER4  = 17047577,
            PUK_EXECUTIONER5        = 17047578,
            PUK_EXECUTIONER6        = 17047579,
            MAMOOL_JA_EXECUTIONER5  = 17047580,
            MAMOOL_JA_EXECUTIONER6  = 17047581,
            PUK_EXECUTIONER7        = 17047582,
            MAMOOL_JA_EXECUTIONER7  = 17047583,
            MAMOOL_JA_EXECUTIONER8  = 17047584,
            MAMOOL_JA_EXECUTIONER9  = 17047585,
            MAMOOL_JA_EXECUTIONER10 = 17047586,
            MAMOOL_JA_EXECUTIONER11 = 17047587,
            MAMOOL_JA_EXECUTIONER12 = 17047588,
            MAMOOL_JA_EXECUTIONER13 = 17047589,
        }
    },

    npc = {
        ANCIENT_LOCKBOX     = 17047808,
        RUNE_OF_RELEASE     = 17047809,
        BRUJEEL             = 17047810,
        SUPPLIES_CREATE     = 17047815,
        ZAHAKAM             = 17047832,
        _1u2                = 17047861,
        _1u3                = 17047862,
        _1u4                = 17047863,
        _1u5                = 17047864,
        _1u6                = 17047865,
        _1u7                = 17047866,
        _1u9                = 17047868,
        _1ua                = 17047869,
        _1ub                = 17047870,
        _1uf                = 17047874,
        _1ug                = 17047875,
        _1ui                = 17047877,
        _1uj                = 17047878,
        _1uk                = 17047879,
        _1ul                = 17047880,
        _1um                = 17047881,
        _1un                = 17047882,
        _1uo                = 17047883,
        _1uv                = 17047890,
        _1uw                = 17047891,
        _ju0                = 17047895,
        _ju1                = 17047896,
        _ju2                = 17047897,
        _ju3                = 17047898,
        _ju4                = 17047899,
        _ju5                = 17047900,
        _ju6                = 17047901,
        _ju7                = 17047902,
        _jul                = 17047916,
        _jum                = 17047917,
        _jun                = 17047918,
        _juo                = 17047919,
        _juq                = 17047920,
    },
}

return zones[tpz.zone.MAMOOL_JA_TRAINING_GROUNDS]
