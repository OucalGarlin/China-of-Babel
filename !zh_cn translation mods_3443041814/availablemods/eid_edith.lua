--将该文件拖放至d!edith/script_dedith/compat/eid, 并替换其内同名文件即可（适用于3.21日更新）
return function()
if not EID then return end

local en = {
    NoEffect = "No effect",
    DEdith = "Edith",

    OnLand = "When landing, ",
    OnJump = "When jumping, ",
    OnCrit = "On critical kill, ",

    JumpingFamiliar = "Jumps alongside you",
    Fat = "Shortened jump height and distance",
    BreakRock = "Stomps can break rocks",

    SpawnsPawnBehind = "1 pawn jumps behind you",
    SpawnsPawnsBehind = " pawns jump behind you",

    Bait = "Stomps can mark enemies",
    Bleed = "Stomps can bleed enemies",
    Burn = "Stomps can burn enemies",
    Charm = "Stomps can charm enemies",
    Confusion = "Stomps can confuse enemies",
    PermaConfusion = "Stomps can confuse enemies", --should this be worded differently???
    Fear = "Stomps can fear enemies",
    Freeze = "Stomps can petrify enemies",
    Ice = "Stomps can freeze enemies",
    Magnetize = "Stomps can magnetize enemies",
    Midas = "Stomps can turn enemies into gold",
    Poison = "Stomps can poison enemies",
    Shrink = "Stomps can shrink enemies",
    Slow = "Stomps can slow enemies",
}
local zh_cn = {
    NoEffect = "没有效果",
    DEdith = "伊迪斯",

    OnLand = "落地时, ",
    OnJump = "起跳时, ",
    OnCrit = "触发暴击落地时, ",

    JumpingFamiliar = "与角色一同跳跃",
    Fat = "跳跃的高度和距离减少",
    BreakRock = "大跳可以摧毁岩石",

    SpawnsPawnBehind = "1个盐兵在角色身后",
    SpawnsPawnsBehind = "个盐兵在角色身后",

    Bait = "大跳可以标记敌人",
    Bleed = "大跳可以使敌人流血",
    Burn = "大跳可以灼烧敌人",
    Charm = "大跳可以魅惑敌人",
    Confusion = "大跳可以使敌人混乱",
    PermaConfusion = "大跳可以使敌人混乱", --should this be worded differently???
    Fear = "大跳可以恐惧敌人",
    Freeze = "大跳可以石化敌人",
    Ice = "大跳可以冻结敌人",
    Magnetize = "大跳可以磁化敌人",
    Midas = "大跳可以金化敌人",
    Poison = "大跳可以使敌人中毒",
    Shrink = "大跳可以使敌人缩水",
    Slow = "大跳可以减速敌人",
}

local PlayerInfo = {
    [dedith.Character.EDITH] = {
        ["en_us"] = {
            en.DEdith,
            "Unable to move and shoot simultaneously#Press the drop button ({{ButtonRT}}) to stomp in place#Press the drop button while shooting to stomp in a direction#Landing from a stomp does damage to nearby enemies#Landing directly on an enemy while dealing enough damage to kill it resets the stomp cooldown and activates all 'critical kill' effects"
        },
        ["zh_cn"] = {
            zh_cn.DEdith,
            "无法同时移动和攻击#可以原地大跳(默认键位为{{ButtonRT}}#可以朝指定方向远程大跳(默认键位为攻击键+大跳键)#大跳落地后对周围敌人造成伤害#精准落在敌人的位置并将其击杀视作\"暴击落地\", 重置冷却并触发相关兼容效果"
        },-- you could stomp in place (drop button at default) ...
    }
}

local BirthrightDescriptions = {
    [dedith.Character.EDITH] = {
        ["en_us"] = {
            en.DEdith,
            "Shooting while jumping causes Edith to stomp down and slide until hitting a wall#Edith is invulnerable while sliding and hurts enemies on contact#Pressing the drop button ({{ButtonRT}}) while sliding cancels the slide"
        },
        ["zh_cn"] = {
            zh_cn.DEdith,
            "大跳滞空时按下攻击键以立即落地并朝指定方向滑铲直至撞墙#滑铲期间无敌并造成碰撞伤害#可以用丢弃键({{ButtonRT}})中断滑铲"
        },
    }
}

local StompSynergiesItems = {
    [CollectibleType.COLLECTIBLE_20_20] = {
        ["en_us"] = en.OnJump..en.SpawnsPawnBehind,
        ["zh_cn"] = zh_cn.OnJump..zh_cn.SpawnsPawnBehind,
    },
    [CollectibleType.COLLECTIBLE_2SPOOKY] = {
        ["en_us"] = en.OnLand.."fears and inflicts +"..dedith.Edith.TwoSpooky.FEAR_DAMAGE.." damage to nearby enemies",
        ["zh_cn"] = zh_cn.OnLand.."对附近的敌人施加恐惧并造成+"..dedith.Edith.TwoSpooky.FEAR_DAMAGE.."伤害"
    },
    [CollectibleType.COLLECTIBLE_3_DOLLAR_BILL] = {
        ["en_us"] = "Your stomps get random effects every 2-3 seconds",
        ["zh_cn"] = "每隔2-3秒, 大跳获得随机效果"
    },
    [CollectibleType.COLLECTIBLE_ABADDON] = {
        ["en_us"] = en.Fear,
        ["zh_cn"] = zh_cn.Fear
    },
    [CollectibleType.COLLECTIBLE_ANALOG_STICK] = {
        ["en_us"] = "Allows you to jump in any direction",
        ["zh_cn"] = "角色可以朝任意方向远程大跳"
    },
    [CollectibleType.COLLECTIBLE_ANGELIC_PRISM] = {
        ["en_us"] = "{{DEdithPawn}} Jumping through the prism creates 2 clones that stomp alongside you",
        ["zh_cn"] = "{{DEdithPawn}} 大跳穿过棱镜生成2个伴伊迪斯左右一同落地的残影"
    },
    [CollectibleType.COLLECTIBLE_ANTI_GRAVITY] = {
        ["en_us"] = "Holding the drop button mid-air keeps you in place",
        ["zh_cn"] = "滞空时按住丢弃键可以摆脱地心引力停在空中"
    },
    [CollectibleType.COLLECTIBLE_BACKSTABBER] = {
        ["en_us"] = en.Bleed,
        ["zh_cn"] = zh_cn.Bleed,
    },
    [CollectibleType.COLLECTIBLE_BALL_OF_TAR] = {
        ["en_us"] = en.Slow,
        ["zh_cn"] = zh_cn.Slow,
    },
    [CollectibleType.COLLECTIBLE_BBF] = {
        ["en_us"] = "Landing on BBF makes it explode",
        ["zh_cn"] = "大美蝇可以压炸"
    },
    [CollectibleType.COLLECTIBLE_BERSERK] = {
        ["en_us"] = "When enraged: no jump cooldown, shorter jumps and you jump "..dedith.Edith.FlatStone.BERSERK_JUMP_AMOUNT.." times in a row",
        ["zh_cn"] = "狂战状态下, 大跳没有冷却, 更短的跳跃距离, 但一次大跳会连跳"..dedith.Edith.FlatStone.BERSERK_JUMP_AMOUNT.."次"
    },
    [CollectibleType.COLLECTIBLE_BIRDS_EYE] = {
        ["en_us"] = en.OnCrit.."releases "..dedith.Edith.BirdsEye.BIRDS_EYE_FLAME_AMOUNT.." waves of fire in each cardinal direction",
        ["zh_cn"] = zh_cn.OnCrit.."朝十字方向释放"..dedith.Edith.BirdsEye.BIRDS_EYE_FLAME_AMOUNT.."条火舌"
    },
    [CollectibleType.COLLECTIBLE_BLACK_BEAN] = {
        ["en_us"] = en.OnCrit.."releases a poison cloud",
        ["zh_cn"] = zh_cn.OnCrit.."释放一片毒云"
    },
    [CollectibleType.COLLECTIBLE_BLOOD_CLOT] = {
        ["en_us"] = "Stomps alternate between +"..dedith.Edith.BloodClotStye.BLOOD_CLOT_FLAT_DAMAGE.." damage and no extra damage",
        ["zh_cn"] = "践踏依次造成+"..dedith.Edith.BloodClotStye.BLOOD_CLOT_FLAT_DAMAGE.."额外伤害 和 不造成额外伤害"
    },
    [CollectibleType.COLLECTIBLE_BRIMSTONE] = {
       ["en_us"] = en.OnCrit.."releases "..dedith.Edith.Brimstone.LASER_AMOUNT.." Brimstone beams in each cardinal direction",
       ["zh_cn"] = zh_cn.OnCrit.."朝十字方向释放"..dedith.Edith.Brimstone.LASER_AMOUNT.."道血激光柱子"
    },
    [CollectibleType.COLLECTIBLE_BUCKET_OF_LARD] = {
        ["en_us"] = en.Fat,
        ["zh_cn"] = zh_cn.Fat
    },
    [CollectibleType.COLLECTIBLE_CAINS_OTHER_EYE] = {
        ["en_us"] = en.JumpingFamiliar,
        ["zh_cn"] = zh_cn.JumpingFamiliar
    },
    [CollectibleType.COLLECTIBLE_CHEMICAL_PEEL] = {
        ["en_us"] = "Stomps alternate between +"..dedith.Edith.BloodClotStye.CHEMICAL_PEEL_FLAT_DAMAGE.." damage and no extra damage",
        ["zh_cn"] = "见他依次造成+"..dedith.Edith.BloodClotStye.CHEMICAL_PEEL_FLAT_DAMAGE.."额外伤害 和 不造成额外伤害"
    },
    [CollectibleType.COLLECTIBLE_COMMON_COLD] = {
        ["en_us"] = en.Poison,
        ["zh_cn"] = zh_cn.Poison
    },
    [CollectibleType.COLLECTIBLE_CONTINUUM] = {
        ["en_us"] = "Jumping into a wall loops you to the opposite wall",
        ["zh_cn"] = "大跳可以翻墙, 然后传送至房间的对侧"
    },
    [dedith.Item.COOLAID] = {
        ["en_us"] = "{{DEdithPawn}} "..en.OnJump..dedith.Edith.CoolAid.PAWN_AMOUNT.." slower pawns jump behind you",
        ["zh_cn"] = "{{DEdithPawn}} "..zh_cn.OnJump..dedith.Edith.CoolAid.PAWN_AMOUNT.."个慢速盐兵跟随跳跃"
    },
    [CollectibleType.COLLECTIBLE_CRICKETS_BODY] = {
        ["en_us"] = "{{DEdithPawn}} "..en.OnLand.."creates "..dedith.Edith.CricketsBody.TEAR_AMOUNT.." pawns that jump in equally-spaced directions#Pawns deal "..dedith.Edith.CricketsBody.DAMAGE_MULTIPLIER_PERCENTAGE.."% your damage",
        ["zh_cn"] = "{{DEdithPawn}} "..zh_cn.OnLand.."生成"..dedith.Edith.CricketsBody.TEAR_AMOUNT.."个盐兵朝多个方向等距释放跳跃#盐兵造成"..dedith.Edith.CricketsBody.DAMAGE_MULTIPLIER_PERCENTAGE.."%的角色伤害"
    },
    [CollectibleType.COLLECTIBLE_CUBE_BABY] = {
        ["en_us"] = "Cube Baby can be pushed by stomps",
        ["zh_cn"] = "冰块宝宝可以被大跳推动"
    },
    [CollectibleType.COLLECTIBLE_CURSED_EYE] = {
        ["en_us"] = "{{DEdithPawn}} Hold the jump button to stay in place to charge up a jump #Releasing causes you to jump, followed by a number of stomping clones scaling with time charged",
        ["zh_cn"] = "{{DEdithPawn}} 按住大跳键蓄力#释放后, 数个残影跟随角色一同跳跃, 数量受蓄力时间影响"
    },
    [CollectibleType.COLLECTIBLE_CURSE_OF_THE_TOWER] = {
        ["en_us"] = "{{Warning}} Falling into a pit spawns 6 Troll Bombs",
        ["zh_cn"] = "{{Warning}} 不慎掉进沟里也会生成即爆炸弹"
    },
    [CollectibleType.COLLECTIBLE_DARK_MATTER] = {
        ["en_us"] = en.Fear,
        ["zh_cn"] = zh_cn.Fear
    },
    [CollectibleType.COLLECTIBLE_DEAD_EYE] = {
        ["en_us"] = en.OnLand.."gain 100% of Dead Eye's multiplier if landing directly on an enemy, resets the multiplier otherwise",
        ["zh_cn"] = zh_cn.OnLand.."如果正中靶心, 获得100%的死眼伤害增益, 否则失去伤害增益"
    },
    [CollectibleType.COLLECTIBLE_DR_FETUS] = {
        ["en_us"] = en.OnJump.."creates a bomb on your original position",
        ["zh_cn"] = zh_cn.OnJump.."在起跳的位置生成炸弹"
    },
    [CollectibleType.COLLECTIBLE_EPIC_FETUS] = {
        ["en_us"] = en.OnLand.."a rocket that can be picked up and thrown spawns nearby",
        ["zh_cn"] = zh_cn.OnLand.."在附近生成一个可以被拾取并投掷的导弹"
    },
    [CollectibleType.COLLECTIBLE_EXPLOSIVO] = {
        ["en_us"] = en.OnCrit.."spawns "..dedith.Edith.StickyTears.TEAR_AMOUNT.." sticky tears from you",
        ["zh_cn"] = zh_cn.OnCrit.."释放"..dedith.Edith.StickyTears.TEAR_AMOUNT.."个粘弹泪弹"
    },
    [CollectibleType.COLLECTIBLE_EYE_OF_BELIAL] = {
        ["en_us"] = en.OnCrit.."grants temporary homing tears with 2x damage",
        ["zh_cn"] = zh_cn.OnCrit.."获得临时的双倍伤害跟踪泪弹"
    },
    [CollectibleType.COLLECTIBLE_EYE_OF_THE_OCCULT] = {
        ["en_us"] = "You can move with movement keys while airborne",
        ["zh_cn"] = "滞空时可以自由控制落点"
    },
    [CollectibleType.COLLECTIBLE_EYE_SORE] = {
        ["en_us"] = "{{DEdithPawn}} "..en.OnJump.."up to 3 pawns jump in random directions",
        ["zh_cn"] = "{{DEdithPawn}} "..zh_cn.OnJump.."至多3个盐兵朝随机方向跳跃"
    },
    [CollectibleType.COLLECTIBLE_FIRE_MIND] = {
        ["en_us"] = en.OnCrit.."creates an explosion#"..en.Burn,
        ["zh_cn"] = zh_cn.OnCrit.."产生爆炸#"..zh_cn.Burn
    },
    [CollectibleType.COLLECTIBLE_FLAT_STONE] = {
        ["en_us"] = "You jump "..dedith.Edith.FlatStone.FLAT_STONE_JUMP_AMOUNT.." times in a row instead of once #{{ArrowDown}} Each jump deals "..dedith.Edith.FlatStone.DAMAGE_DECREASE_PERCENTAGE.."% normal damage",
        ["zh_cn"] = "一次大跳改为"..dedith.Edith.FlatStone.FLAT_STONE_JUMP_AMOUNT.."次连跳#{{ArrowDown}} 每次跳跃伤害为正常的"..dedith.Edith.FlatStone.DAMAGE_DECREASE_PERCENTAGE.."%"
    },
    [CollectibleType.COLLECTIBLE_FRUIT_CAKE] = {
        ["en_us"] = "Every stomp has a different effect",
        ["zh_cn"] = "每次大跳获得不同的效果"
    },
    [CollectibleType.COLLECTIBLE_GELLO] = {
        ["en_us"] = en.JumpingFamiliar,
        ["zh_cn"] = zh_cn.JumpingFamiliar
    },
    [CollectibleType.COLLECTIBLE_GHOST_PEPPER] = {
        ["en_us"] = en.OnCrit.."releases "..dedith.Edith.BirdsEye.GHOST_PEPPER_FLAME_AMOUNT.." waves of blue fire in each diagonal direction",
        ["zh_cn"] = zh_cn.OnCrit.."朝对角线方向释放"..dedith.Edith.BirdsEye.GHOST_PEPPER_FLAME_AMOUNT.."条火舌"
    },
    [CollectibleType.COLLECTIBLE_GLAUCOMA] = {
        ["en_us"] = en.PermaConfusion,
        ["zh_cn"] = zh_cn.PermaConfusion
    },
    [CollectibleType.COLLECTIBLE_GODS_FLESH] = {
        ["en_us"] = en.Shrink,
        ["zh_cn"] = zh_cn.Shrink
    },
    [CollectibleType.COLLECTIBLE_HAEMOLACRIA] = {
        ["en_us"] = en.OnLand.."creates "..dedith.Edith.Haemolacria.MINIMUM_PAWNS.." to "..dedith.Edith.Haemolacria.MAXIMUM_PAWNS.." pawns that jump in random directions#Pawns deal from "..dedith.Edith.Haemolacria.MINIMUM_DAMAGE_PERCENTAGE.."% to "..dedith.Edith.Haemolacria.MAXIMUM_DAMAGE_PERCENTAGE.."% your damage",
        ["zh_cn"] = zh_cn.OnLand.."释放"..dedith.Edith.Haemolacria.MINIMUM_PAWNS.."至"..dedith.Edith.Haemolacria.MAXIMUM_PAWNS.."个朝随机方向跳跃的盐兵#盐兵造成"..dedith.Edith.Haemolacria.MINIMUM_DAMAGE_PERCENTAGE.."%-"..dedith.Edith.Haemolacria.MAXIMUM_DAMAGE_PERCENTAGE.."%的角色伤害"
    },
    [CollectibleType.COLLECTIBLE_HOLY_LIGHT] = {
        ["en_us"] = en.OnCrit..dedith.Edith.HolyLight.CIRCLE_AMOUNT.." circles of Holy Light beams will spawn in place",
        ["zh_cn"] = zh_cn.OnCrit.."原地生成"..dedith.Edith.HolyLight.CIRCLE_AMOUNT.."个圣光环"
    },
    [CollectibleType.COLLECTIBLE_INCUBUS] = {
        ["en_us"] = en.JumpingFamiliar,
        ["zh_cn"] = zh_cn.JumpingFamiliar
    },
    [CollectibleType.COLLECTIBLE_INNER_EYE] = {
        ["en_us"] = "{{DEdithPawn}} "..en.OnJump.."2"..en.SpawnsPawnsBehind,
        ["zh_cn"] = "{{DEdithPawn}} "..zh_cn.OnJump.."2"..zh_cn.SpawnsPawnsBehind,
    },
    [CollectibleType.COLLECTIBLE_IRON_BAR] = {
        ["en_us"] = en.Confusion,
        ["zh_cn"] = zh_cn.Confusion
    },
    [CollectibleType.COLLECTIBLE_IPECAC] = {
        ["en_us"] = en.Poison,
        ["zh_cn"] = zh_cn.Poison
    },
    [CollectibleType.COLLECTIBLE_ISAACS_HEART] = {
        ["en_us"] = en.JumpingFamiliar,
        ["zh_cn"] = zh_cn.JumpingFamiliar
    },
    [CollectibleType.COLLECTIBLE_JACOBS_LADDER] = {
        ["en_us"] = en.OnLand.."emits a spark of electricity",
        ["zh_cn"] = zh_cn.OnLand.."释放电弧"
    },
    [CollectibleType.COLLECTIBLE_JELLY_BELLY] = {
        ["en_us"] = en.Fat.."#"..en.OnLand.."enemies and projectiles are pushed back",
        ["zh_cn"] = zh_cn.Fat.."#"..zh_cn.OnLand.."推开敌人和敌弹"
    },
    [CollectibleType.COLLECTIBLE_JUPITER] = {
        ["en_us"] = "Increased jump height#Leaves behind a fart when jumping",
        ["zh_cn"] = "跳跃高度提升#跳跃会留下屁云"
    },
    [CollectibleType.COLLECTIBLE_LEO] = {
        ["en_us"] = en.BreakRock,
        ["zh_cn"] = zh_cn.BreakRock
    },
    [CollectibleType.COLLECTIBLE_LODESTONE] = {
        ["en_us"] = en.Magnetize,
        ["zh_cn"] = zh_cn.Magnetize
    },
    [CollectibleType.COLLECTIBLE_LOKIS_HORNS] = {
        ["en_us"] = "{{DEdithPawn}} "..en.OnJump..dedith.Edith.LokisHorns.CHANCE_AT_BASE_LUCK.."% chance to create 3 pawns if you jumped in a direction, or 4 pawns if you jumped in place#Pawns jump in cardinal directions#100% chance at "..dedith.Edith.LokisHorns.LUCK_FOR_MAX.." luck",
        ["zh_cn"] = "{{DEdithPawn}} "..zh_cn.OnJump..dedith.Edith.LokisHorns.CHANCE_AT_BASE_LUCK.."%的概率生成3-4个盐兵朝十字方向跳跃#{{Luck}} 幸运"..dedith.Edith.LokisHorns.LUCK_FOR_MAX..": 100%"
    },
    [CollectibleType.COLLECTIBLE_LOST_CONTACT] = {
        ["en_us"] = en.OnLand.."destroys nearby enemy shots",
        ["zh_cn"] = zh_cn.OnLand.."摧毁附近的敌弹"
    },
    [CollectibleType.COLLECTIBLE_MARKED] = {
        ["en_us"] = "You jump towards the target",
        ["zh_cn"] = "朝准心的位置大跳"
    },
    [CollectibleType.COLLECTIBLE_MAW_OF_THE_VOID] = {
        ["en_us"] = en.OnCrit.."creates a black brimstone ring",
        ["zh_cn"] = zh_cn.OnCrit.."生成一个黑圈"
    },
    [CollectibleType.COLLECTIBLE_MEGA_MUSH] = {
        ["en_us"] = "On landing, rocks continuously fall from the ceiling that damage enemies#"..en.BreakRock,
        ["zh_cn"] = "落地后, 持续天降碎石#"..zh_cn.BreakRock
    },
    [CollectibleType.COLLECTIBLE_MOMS_CONTACTS] = {
        ["en_us"] = en.Freeze,
        ["zh_cn"] = zh_cn.Freeze
    },
    [CollectibleType.COLLECTIBLE_MOMS_EYE] = {
        ["en_us"] = "{{DEdithPawn}} "..en.OnJump..dedith.Edith.MomsEye.CHANCE_AT_BASE_LUCK.."% chance to create a pawn if you don't jump in place#The pawn jumps in the opposite direction#100% chance at "..dedith.Edith.MomsEye.LUCK_FOR_MAX.." luck",
        ["zh_cn"] = "{{DEdithPawn}} "..zh_cn.OnJump.."如果不是原地大跳, 有"..dedith.Edith.MomsEye.CHANCE_AT_BASE_LUCK.."%的概率生成一个盐兵#盐兵朝反方向跳跃#{{Luck}} 幸运"..dedith.Edith.MomsEye.LUCK_FOR_MAX..": 100%"
    },
    [CollectibleType.COLLECTIBLE_MOMS_EYESHADOW] = {
        ["en_us"] = en.Charm,
        ["zh_cn"] = zh_cn.Charm
    },
    [CollectibleType.COLLECTIBLE_MOMS_PERFUME] = {
        ["en_us"] = en.Fear,
        ["zh_cn"] = zh_cn.Fear
    },
    [CollectibleType.COLLECTIBLE_MUCORMYCOSIS] = {
        ["en_us"] = en.OnCrit.."spawns "..dedith.Edith.StickyTears.TEAR_AMOUNT.." spore tears from you",
        ["zh_cn"] = zh_cn.OnCrit.."释放"..dedith.Edith.StickyTears.TEAR_AMOUNT.."个孢子泪弹"
    },
    [CollectibleType.COLLECTIBLE_MUTANT_SPIDER] = {
        ["en_us"] = "{{DEdithPawn}} "..en.OnJump.."3"..en.SpawnsPawnsBehind,
        ["zh_cn"] = "{{DEdithPawn}} "..zh_cn.OnJump.."3"..zh_cn.SpawnsPawnsBehind,
    },
    [CollectibleType.COLLECTIBLE_MY_REFLECTION] = {
        ["en_us"] = "When killing an enemy, you jump to your original position",
        ["zh_cn"] = "杀死敌人后, 立即跳回起跳的位置"
    },
    [CollectibleType.COLLECTIBLE_MYSTERIOUS_LIQUID] = {
        ["en_us"] = en.OnLand.."creates damaging creep",
        ["zh_cn"] = zh_cn.OnLand.."留下伤害液体"
    },
    [CollectibleType.COLLECTIBLE_NEPTUNUS] = {
        ["en_us"] = en.OnCrit.."creates a burst of tears",
        ["zh_cn"] = zh_cn.OnCrit.."迸射一簇泪弹"
    },
    [CollectibleType.COLLECTIBLE_OCULAR_RIFT] = {
        ["en_us"] = en.OnCrit.."creates a rift",
        ["zh_cn"] = zh_cn.OnCrit.."生成一个裂隙"
    },
    [CollectibleType.COLLECTIBLE_PARASITE] = {
        ["en_us"] = "{{DEdithPawn}} On enemy or obstacle impact, creates 2 pawns that jump perpendicular to you#Pawns deal "..dedith.Edith.TheParasite.PAWN_DAMAGE_MULT_PERCENT.."% your damage",
        ["zh_cn"] = "{{DEdithPawn}} 碰到敌人或障碍物后, 朝左右释放2个盐兵#盐兵造成"..dedith.Edith.TheParasite.PAWN_DAMAGE_MULT_PERCENT.."%角色伤害"
    },
    [CollectibleType.COLLECTIBLE_PLAYDOUGH_COOKIE] = {
        ["en_us"] = "Your stomps apply random status effects",
        ["zh_cn"] = "大跳施加随机效果"
    },
    [CollectibleType.COLLECTIBLE_POP] = {
        ["en_us"] = en.OnCrit.."creates several salt tears",
        ["zh_cn"] = zh_cn.OnCrit.."释放数个盐弹"
    },
    [CollectibleType.COLLECTIBLE_PUPULA_DUPLEX] = {
        ["en_us"] = "Stomps have a bigger radius",
        ["zh_cn"] = "践踏范围更大"
    },
    [CollectibleType.COLLECTIBLE_REVELATION] = {
        ["en_us"] = en.OnCrit.."releases "..dedith.Edith.Revelation.LASER_AMOUNT.." holy beams in diagonal directions",
        ["zh_cn"] = zh_cn.OnCrit.."朝X字方向释放"..dedith.Edith.Revelation.LASER_AMOUNT.."道圣光"
    },
    [CollectibleType.COLLECTIBLE_ROCKET_IN_A_JAR] = {
        ["en_us"] = "Placing a bomb mid-air makes you ride a rocket#The rocket explodes if it hits a wall or an enemy",
        ["zh_cn"] = "滞空时发射导弹可以\"御炮飞行\"#导弹碰撞后爆炸"
    },
    [CollectibleType.COLLECTIBLE_ROTTEN_TOMATO] = {
        ["en_us"] = en.Bait,
        ["zh_cn"] = zh_cn.Bait
    },
    [CollectibleType.COLLECTIBLE_RUBBER_CEMENT] = {
        ["en_us"] = en.OnCrit.."jump again#You bounce off walls mid-air",
        ["zh_cn"] = zh_cn.OnCrit.."进行二次跳跃#在空中撞墙会反弹"
    },
    [CollectibleType.COLLECTIBLE_SCORPIO] = {
        ["en_us"] = en.Poison,
        ["zh_cn"] = zh_cn.Poison
    },
    [CollectibleType.COLLECTIBLE_SERPENTS_KISS] = {
        ["en_us"] = en.Poison,
        ["zh_cn"] = zh_cn.Poison
    },
    [CollectibleType.COLLECTIBLE_SINUS_INFECTION] = {
        ["en_us"] = en.OnCrit.."spawns "..dedith.Edith.StickyTears.TEAR_AMOUNT.." booger tears from you",
        ["zh_cn"] = zh_cn.OnCrit.."释放"..dedith.Edith.StickyTears.TEAR_AMOUNT.."个鼻屎泪弹"
    },
    [CollectibleType.COLLECTIBLE_SPIDER_BITE] = {
        ["en_us"] = en.Slow,
        ["zh_cn"] = zh_cn.Slow
    },
    [CollectibleType.COLLECTIBLE_SPIDER_MOD] = {
        ["en_us"] = "Displays a cursor that shows you where you will land#Does nothing if you have Aim Helper enabled",
        ["zh_cn"] = "生成一个鼠标指示落点#如果启用了辅助瞄准则该兼容无效"
    },
    [CollectibleType.COLLECTIBLE_STYE] = {
        ["en_us"] = "Stomps alternate between no extra damage and "..dedith.Edith.BloodClotStye.STYE_MULTIPLIER_PERCENTAGE.."% damage",
        ["zh_cn"] = "大跳落地依次造成无额外伤害至"..dedith.Edith.BloodClotStye.STYE_MULTIPLIER_PERCENTAGE.."%额外伤害"
    },
    [CollectibleType.COLLECTIBLE_SUMPTORIUM] = {
        ["en_us"] = en.JumpingFamiliar,
        ["zh_cn"] = zh_cn.JumpingFamiliar
    },
    [CollectibleType.COLLECTIBLE_SULFURIC_ACID] = {
        ["en_us"] = en.BreakRock,
        ["zh_cn"] = zh_cn.BreakRock
    },
    [CollectibleType.COLLECTIBLE_TECHNOLOGY] = {
        ["en_us"] = "Creates a laser underneath you mid-air#The laser deals "..dedith.Edith.Technology.DAMAGE_MULT_PER_SECOND.."x your damage per second",
        ["zh_cn"] = "在空中时朝下发射激光#激光每秒造成角色"..dedith.Edith.Technology.DAMAGE_MULT_PER_SECOND.."x伤害"
    },
    [CollectibleType.COLLECTIBLE_TECH_X] = {
        ["en_us"] = en.OnCrit.."creates a stationary laser ring",
        ["zh_cn"] = zh_cn.OnCrit.."生成一个固定的激光环"
    },
    [CollectibleType.COLLECTIBLE_TERRA] = {
        ["en_us"] = en.OnCrit.."creates a rock shockwave#"..en.BreakRock,
        ["zh_cn"] = zh_cn.OnCrit.."释放一道石刃波#"..zh_cn.BreakRock
    },
    [CollectibleType.COLLECTIBLE_THE_NAIL] = {
        ["en_us"] = en.BreakRock,
        ["zh_cn"] = zh_cn.BreakRock
    },
    [CollectibleType.COLLECTIBLE_THE_WIZ] = {
        ["en_us"] = "{{DEdithPawn}} "..en.OnJump..en.SpawnsPawnBehind,
        ["zh_cn"] = "{{DEdithPawn}} "..zh_cn.OnJump..zh_cn.SpawnsPawnBehind
    },
    [CollectibleType.COLLECTIBLE_THUNDER_THIGHS] = {
        ["en_us"] = en.Fat.."#"..en.BreakRock,
        ["zh_cn"] = zh_cn.Fat.."#"..zh_cn.BreakRock
    },
    [CollectibleType.COLLECTIBLE_TWISTED_PAIR] = {
        ["en_us"] = en.JumpingFamiliar,
        ["zh_cn"] = zh_cn.JumpingFamiliar
    },
    [CollectibleType.COLLECTIBLE_URANUS] = {
        ["en_us"] = en.Ice,
        ["zh_cn"] = zh_cn.Ice
    },
    [CollectibleType.COLLECTIBLE_VENUS] = {
        ["en_us"] = "When landing directly on an enemy, charms it and activates all 'critical kill' effects",
        ["zh_cn"] = "落地时若精准命中靶心, 将该敌人魅惑并同样能触发暴击落地的效果"
    },
}
StompSynergiesItems[CollectibleType.COLLECTIBLE_SULFUR] = StompSynergiesItems[CollectibleType.COLLECTIBLE_BRIMSTONE]
StompSynergiesItems[CollectibleType.COLLECTIBLE_ATHAME] = StompSynergiesItems[CollectibleType.COLLECTIBLE_MAW_OF_THE_VOID]

local StompSynergiesTrinkets = {
    [TrinketType.TRINKET_BLACK_TOOTH] = {
        ["en_us"] = en.Poison,
        ["zh_cn"] = zh_cn.Poison
    },
    [TrinketType.TRINKET_CHEWED_PEN] = {
        ["en_us"] = en.Slow,
        ["zh_cn"] = zh_cn.Slow
    },
    [TrinketType.TRINKET_LIL_CLOT] = {
        ["en_us"] = en.JumpingFamiliar,
        ["zh_cn"] = zh_cn.JumpingFamiliar
    },
    [TrinketType.TRINKET_NOSE_GOBLIN] = {
        ["en_us"] = en.OnCrit.."spawns "..dedith.Edith.StickyTears.TEAR_AMOUNT.." booger tears from you",
        ["zh_cn"] = zh_cn.OnCrit.."释放"..dedith.Edith.StickyTears.TEAR_AMOUNT.."个鼻屎泪弹"
    },
    [TrinketType.TRINKET_PINKY_EYE] = {
        ["en_us"] = en.Poison,
        ["zh_cn"] = zh_cn.Poison
    },
}

local EdithSynergiesItems = {
    [CollectibleType.COLLECTIBLE_GIANT_CELL] = {
        ["en_us"] = "Minisaacs can stomp on enemies and are unable to move while shooting",
        ["zh_cn"] = "迷你以撒和伊迪斯具有相同的被动特质, 且同样可以大跳践踏敌人"
    },
    [CollectibleType.COLLECTIBLE_KEEPERS_KIN] = {
        ["en_us"] = en.OnLand..dedith.Edith.KeepersKin.CHANCE_AT_BASE_LUCK.."% chance to spawn a blue spider#"..dedith.Edith.KeepersKin.MAXIMUM_CHANCE.."% chance at "..dedith.Edith.KeepersKin.LUCK_FOR_MAX.." luck",
        ["zh_cn"] = zh_cn.OnLand..dedith.Edith.KeepersKin.CHANCE_AT_BASE_LUCK.."%的概率生成蓝蜘蛛#幸运"..dedith.Edith.KeepersKin.LUCK_FOR_MAX..": "..dedith.Edith.KeepersKin.MAXIMUM_CHANCE.."%"
    },
}

local EdithSynergiesTrinkets = {

}

--- Adds any External Item Descriptions description for an item stomp synergy.
---@param item integer The item ID.
---@param lang string The language ID.
---@param desc string The description.
function dedith:AddStompItemSynergyEID(item, lang, desc)
    StompSynergiesItems[item] = StompSynergiesItems[item] or {}
    StompSynergiesItems[item][lang] = desc
end

--- Adds any External Item Descriptions description for an item D!Edith synergy.
---@param item integer The item ID.
---@param lang string The language ID.
---@param desc string The description.
function dedith:AddEdithItemSynergyEID(item, lang, desc)
    EdithSynergiesItems[item] = EdithSynergiesItems[item] or {}
    EdithSynergiesItems[item][lang] = desc
end

--- Adds any External Item Descriptions description for a trinket stomp synergy.
---@param item integer The item ID.
---@param lang string The language ID.
---@param desc string The description.
function dedith:AddStompTrinketSynergyEID(item, lang, desc)
    StompSynergiesTrinkets[item] = StompSynergiesTrinkets[item] or {}
    StompSynergiesTrinkets[item][lang] = desc
end

--- Adds any External Item Descriptions description for a trinket D!Edith synergy.
---@param item integer The item ID.
---@param lang string The language ID.
---@param desc string The description.
function dedith:AddEdithTrinketSynergyEID(item, lang, desc)
    EdithSynergiesTrinkets[item] = EdithSynergiesTrinkets[item] or {}
    EdithSynergiesTrinkets[item][lang] = desc
end



for playerID, table in pairs(PlayerInfo) do
    for lang, descs in pairs(table) do
        EID:addCharacterInfo(playerID, descs[2], descs[1], lang)
    end
end

for playerID, table in pairs(BirthrightDescriptions) do
    for lang, descs in pairs(table) do
        EID:addBirthright(playerID, descs[2], descs[1], lang)
    end
end

EID:addDescriptionModifier("D!Edith Edith & Salt Shaker synergies", function (descObj)
    if descObj.ObjType ~= EntityType.ENTITY_PICKUP then return false end
    if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE and descObj.ObjSubType == dedith.Item.SALT_SHAKER then return true end

    local anyoneIsEdith = PlayerManager.AnyoneIsPlayerType(dedith.Character.EDITH)
    local anyoneHasSaltShaler = PlayerManager.AnyoneHasCollectible(dedith.Item.SALT_SHAKER)

    if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
        if StompSynergiesItems[descObj.ObjSubType] and (anyoneIsEdith or anyoneHasSaltShaler) then return true end
        if EdithSynergiesItems[descObj.ObjSubType] and anyoneIsEdith then return true end
    elseif descObj.ObjVariant == PickupVariant.PICKUP_TRINKET then
        if StompSynergiesTrinkets[descObj.ObjSubType] and (anyoneIsEdith or anyoneHasSaltShaler) then return true end
        if EdithSynergiesTrinkets[descObj.ObjSubType] and anyoneIsEdith then return true end
    end
    return false
end, function (descObj)
    local anyoneIsEdith = PlayerManager.AnyoneIsPlayerType(dedith.Character.EDITH)
    local edithIcon
    if anyoneIsEdith then
        edithIcon = "#{{Player"..dedith.Character.EDITH.."}} {{ColorSilver}}"
    else
        edithIcon = "#{{Collectible"..dedith.Item.SALT_SHAKER.."}} {{ColorSilver}}"
    end

    local function append(table, icon)
        local desc = table[EID:getLanguage()] or table["en_us"]
        desc = desc:gsub("#", icon)

        EID:appendToDescription(descObj, icon..desc)
    end

    if descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE and descObj.ObjSubType == dedith.Item.SALT_SHAKER then
        for itemID, table in pairs(StompSynergiesItems) do
            if PlayerManager.AnyoneHasCollectible(itemID) then
                append(table, "#{{Collectible"..itemID.."}} {{ColorSilver}}")
            end
        end

        for itemID, table in pairs(StompSynergiesTrinkets) do
            if PlayerManager.AnyoneHasTrinket(itemID) then
                append(table, "#{{Trinket"..itemID.."}} {{ColorSilver}}")
            end
        end
    elseif descObj.ObjVariant == PickupVariant.PICKUP_COLLECTIBLE then
        if StompSynergiesItems[descObj.ObjSubType] ~= nil then
            append(StompSynergiesItems[descObj.ObjSubType], edithIcon)
        elseif EdithSynergiesItems[descObj.ObjSubType] ~= nil and anyoneIsEdith then
            append(EdithSynergiesItems[descObj.ObjSubType], edithIcon)
        end
    elseif descObj.ObjVariant == PickupVariant.PICKUP_TRINKET then
        if StompSynergiesTrinkets[descObj.ObjSubType] ~= nil then
            append(StompSynergiesTrinkets[descObj.ObjSubType], edithIcon)
        elseif EdithSynergiesTrinkets[descObj.ObjSubType] ~= nil and anyoneIsEdith then
            append(EdithSynergiesTrinkets[descObj.ObjSubType], edithIcon)
        end
    end

    return descObj
end)

end