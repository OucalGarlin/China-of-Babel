local mod = CNEIDBabel
mod:AddModTranslationLoader("dedith", "D!伊迪斯\n 警告: 目前伊迪斯的角色兼容显示会存在异常, 会在未来修复=(",function()
    if dedith then
        local items={
            {
                dedith.Item.SALTY_BABY,
                "盐罐宝宝",
                "多盐伙伴",
                "{{Chargeable}} 蓄力并发射一簇盐弹的跟班#{{Fear}} 盐弹落地后会留下盐粉, 使敌人受到恐惧效果#{{Damage}} 盐弹造成"..dedith.Item.SaltyBaby.TEAR_DAMAGE.."点伤害",
                {ABY="有75%的概率施加恐惧的蝗虫",
                BFF="双倍盐弹, 盐粉持续时间翻倍",
                CONF={
                    {"5.350.141","LullaSalt"},
                    {"5.350.106","NoEffect"}
                }}
            },{
                dedith.Item.SALT_SHAKER,
                "盐瓶",
                "可重复盐味大跳",
                "使用道具后, 按下攻击键或丢弃键释放大跳#落地对附近的敌人造成伤害#暴击落地(完全精准地命中并杀死敌人)可以使该道具完全恢复充能",
                {ABY="冲锋时践踏一次的盐制蝗虫",
                VIR="在起跳的位置生成固定的魂火",
                BEL="{{Burning}} 灼烧砸中的敌人"}
            },{
                dedith.Item.BLUE_BERRY,
                "蓝莓",
                "射速上升",
                "↑ {{Tears}} +0.7射速"
            },{
                dedith.Item.VOODOO_PIN,
                "巫毒针",
                "我的就是你的",
                "攻击时有概率发射巫毒针, 对房间内的所有敌人造成"..dedith.Item.VoodooPin.DAMAGE_MULT_PERCENTAGE.."%的伤害",
                {ABY="会触发{{Collectible"..dedith.Item.VOODOO_PIN.."}}巫毒针效果的橙色蝗虫"} 
            },{
                dedith.Item.BINDLE,
                "漂流者的包裹",
                "归隐",
                "{{Trinket}} 角色可以持有"..dedith.Item.Bindle.BASE_SLOTS.."个饰品#丢弃键({{ButtonRT}})可以指定一个饰品, 使用该道具后将指定的饰品丢弃#{{Trinket}} 生成一个随机饰品#{{Trinket}} 饰品生成率增加",
                {VIR="使用道具以消耗饰品, 并生成3个相同的随机魂火",
                CAR="额外获得2个饰品栏",
                BEL="消耗饰品并获得↑ {{Damage}}5.2伤害, 效果持续"..dedith.Item.Bindle.BELIAL_DAMAGE_COOLDOWN_SECONDS.."秒",
                CONF={{458,139},"Binket"}}
            },{
                dedith.Item.CHECKED_MATE,
                "将杀者",--存疑, checkmate=将杀, mate=同伴, 这是目前能想到的最好的双关翻译(?   当然希望有更好的,看看谁能够榜上留名
                "绝杀! 无解!",--原句为:把我将杀
                "{{DEdithPawn}} 有概率发射一个盐块, 落地后生成一个下落的盐兵#盐兵落地后对周围敌人造成伤害",
                {ABY="会触发{{Collectible"..dedith.Item.CHECKED_MATE.."}}将杀者效果的盐制蝗虫"}  
            },{
                dedith.Item.FAST_FORWARD,
                "快进",
                "跳楼20:00有好看的",
                "使角色朝移动方向快速冲刺#对冲刺碰撞的敌人造成伤害",
                {VIR="在冲刺路径上生成4个魂火",
                BEL="{{Damage}} 每撞上一个敌人获得临时的攻击提升",
                CAR="冲刺更快",
                ABY="快虫"}--速度快到缺字眼.png
            },{
                dedith.Item.YELLOW_PAINT,
                "黄色颜料",
                "宝宝模式",
                "{{TreasureRoom}} 标记通往宝箱房的路#标记石头会被染黄#{{GreedMode}} 贪婪模式将失去价值",--那你还不加非贪婪
                {ABY="黄色的普通蝗虫"}
            },{
                dedith.Item.DANTES_INFERNO,
                "但丁的地狱",
                "更强的罪孽",
                "{{MiniBoss}} 每层生成一个额外的超级七宗罪头目房#超级七宗罪拥有"..dedith.Item.DantesInferno.HEALTH_MULT.."倍的生命值, 死亡后掉落更多战利品"    
            },{
                dedith.Item.EPIC_BACON,
                "史诗培根",
                "神秘的肉",
                "↑ {{UnknownHeart}} +"..dedith.Item.EpicBacon.HEALTH_AMOUNT.."随机心#{{UnknownHeart}} 所有心的生成率相等"    
            },{
                dedith.Item.PUTTY,
                "油灰",
                "属性雕刻",
                "↑ 提供一个属性提升#可以通过丢弃键({{ButtonRT}})选择增强的属性",
                {VIR="内环魂火{{InnerWisp}}#生成3个存在时即提供属性提升的高生命值魂火",
                BEL="↑ {{Damage}} +"..dedith.Item.Putty.BELIAL_DAMAGE.."伤害",
                ABY="苍白的普通蝗虫"}  
            },{
                dedith.Item.Putty.Items.DAMAGE,
                "油灰",
                "属性雕刻",
                "↑ {{Damage}} +"..dedith.Item.Putty.DAMAGE.."伤害",
                {VIR="内环魂火{{InnerWisp}}#↑ {{Damage}}#生成3个存在时即提供+"..dedith.Item.Putty.WISP_DAMAGE.."伤害的高生命值魂火",
                BEL="↑ {{Damage}} +"..dedith.Item.Putty.BELIAL_DAMAGE.."伤害"}
            },{
                dedith.Item.Putty.Items.HEALTH,
                "油灰",
                "属性雕刻",
                "↑ {{Heart}} +1心之容器#{{HealingRed}} 治疗1红心",
                {VIR="内环魂火{{InnerWisp}}#生成3个高生命值魂火{{HealingRed}} 摧毁后治疗1红心#{{SoulHeart}} 摧毁后+1魂心",
                BEL="↑ {{Damage}} +"..dedith.Item.Putty.BELIAL_DAMAGE.."伤害"}
            },{
                dedith.Item.Putty.Items.LUCK,
                "油灰",
                "属性雕刻",
                "↑ {{Luck}} +"..dedith.Item.Putty.LUCK.."幸运",
                {VIR="内环魂火{{InnerWisp}}#↑ {{Luck}}#生成3个存在时即提供+"..dedith.Item.Putty.WISP_LUCK.."幸运的高生命值魂火",
                BEL="↑ {{Damage}} +"..dedith.Item.Putty.BELIAL_DAMAGE.."伤害"}
            },{
                dedith.Item.Putty.Items.MOVE_SPEED,
                "油灰",
                "属性雕刻",
                "↑ {{Speed}} +"..dedith.Item.Putty.SPEED.."移速",
                {VIR="内环魂火{{InnerWisp}}#↑ {{Speed}}#生成3个存在时即提供+"..dedith.Item.Putty.WISP_SPEED.."移速的高生命值魂火",
                BEL="↑ {{Damage}} +"..dedith.Item.Putty.BELIAL_DAMAGE.."伤害"}
            },{
                dedith.Item.Putty.Items.RANGE,
                "油灰",
                "属性雕刻",
                "↑ {{Range}} +"..dedith.Item.Putty.RANGE_STAT.."射程",
                {VIR="内环魂火{{InnerWisp}}#↑ {{Range}}#生成3个存在时即提供+"..dedith.Item.Putty.WISP_RANGE.."射程的高生命值魂火",
                BEL="↑ {{Damage}} +"..dedith.Item.Putty.BELIAL_DAMAGE.."伤害"}  
            },{
                dedith.Item.Putty.Items.SHOT_SPEED,
                "油灰",
                "属性雕刻",
                "↑ {{Shotspeed}} +"..dedith.Item.Putty.SHOT_SPEED.."弹速",
                {VIR="内环魂火{{InnerWisp}}#↑ {{Shotspeed}}#生成3个存在时即提供+"..dedith.Item.Putty.WISP_SHOT_SPEED.."弹速的高生命值魂火",
                BEL="↑ {{Damage}} +"..dedith.Item.Putty.BELIAL_DAMAGE.."伤害"}
            },{
                dedith.Item.Putty.Items.TEARS,
                "油灰",
                "属性雕刻",
                "↑ {{Tears}} +"..dedith.Item.Putty.TEARS.."射速",
                {VIR="内环魂火{{InnerWisp}}#↑ {{Tears}}#生成3个存在时即提供+"..dedith.Item.Putty.WISP_TEARS.."射速的高生命值魂火",
                BEL="↑ {{Damage}} +"..dedith.Item.Putty.BELIAL_DAMAGE.."伤害"}
            },{
                dedith.Item.HEMORRHOID,
                "痔疮",
                "刺股铭心",--原句:一坐下就痛   本句结合 悬梁刺股 和 刻骨民心 而成(
                "↑ {{Tears}} 站立不动时积攒至多+"..dedith.Item.Hemorrhoid.TEARS_UP.."射速提升#{{Warning}} 站的太久会伤害角色并留下血迹",
                {ABY="环绕角色时缓慢积攒至多2倍伤害的蝗虫#伤害会在冲锋时减少",
                CONF={dedith.Item.HEMORRHOID,"ReHemorrhoid"}}
            },{
                dedith.Item.COOLAID,
                "清凉饮品",--存疑
                "射速下降 + 跟随泪弹",
                "↓ {{Tears}} "..dedith.Item.CoolAid.TEAR_DELAY_DECREASE_MULT.."x射速倍率#角色一次发射一行3个泪弹",
                {ABY="3个紫色蝗虫",
                CONF={dedith.Item.COOLAID,"ReCoolAid"},
                CHAR={dedith.Character.EDITH,"CoolEdith",false}}
            }
        }
        local conditionalList={
            Binket="额外的饰品槽位",
            ReCoolAid="角色额外发射2个泪弹#不会进一步减少属性",
            ReHemorrhoi="可以积攒更多的射速提升",
            LullaSalt="蓄力更快",
            NoEffect="没有效果",
            CoolEdith="起跳时, "..dedith.Edith.CoolAid.PAWN_AMOUNT.."个慢速盐兵跟随跳跃"
        }
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
        end
        EID:addCharacterInfo(dedith.Character.EDITH,"无法同时移动和攻击#可以原地大跳(默认键位为{{ButtonRT}}#可以朝指定方向远程大跳(默认键位为攻击键+大跳键)#大跳落地后对周围敌人造成伤害#精准落在敌人的位置并将其击杀视作\"暴击落地\", 重置冷却并触发相关兼容效果","伊迪斯", "zh_cn")
        EID:addBirthright(dedith.Character.EDITH,"大跳滞空时按下攻击键以立即落地并朝指定方向滑铲直至撞墙#滑铲期间无敌并造成碰撞伤害#可以用丢弃键({{ButtonRT}})中断滑铲","伊迪斯-吝啬","zh_cn")--存疑
        --伊迪斯角色专属兼容够我研究五辈子了(但凡高中报考了物理都不至于大学读英语专业.png
        --先用笨办法吧, 等GS忙完了有空了再去请教一下...--Garlin
        local EdithSyn={--{100/350,道具编号,兼容文本}
            {100,CollectibleType.COLLECTIBLE_20_20,"起跳时, 生成一个盐兵跟随角色跳跃"},
            {100,CollectibleType.COLLECTIBLE_2SPOOKY,"对附近的敌人施加恐惧并造成+"..dedith.Edith.TwoSpooky.FEAR_DAMAGE.."伤害"},
            {100,CollectibleType.COLLECTIBLE_3_DOLLAR_BILL,"每隔2-3秒, 大跳获得随机效果"},
            {100,CollectibleType.COLLECTIBLE_ABADDON,"大跳可以施加恐惧"},
            {100,CollectibleType.COLLECTIBLE_ANALOG_STICK,"角色可以朝任意方向远程大跳"},
            {100,CollectibleType.COLLECTIBLE_ANGELIC_PRISM,"大跳穿过棱镜生成2个伴伊迪斯左右一同落地的残影"},
            {100,CollectibleType.COLLECTIBLE_ANTI_GRAVITY,"滞空时按住丢弃键可以摆脱地心引力停在空中"},
            {100,CollectibleType.COLLECTIBLE_BACKSTABBER,"大跳可以使敌人流血"},
            {100,CollectibleType.COLLECTIBLE_BALL_OF_TAR,"大跳可以减速敌人"},
            {100,CollectibleType.COLLECTIBLE_BBF,"大美蝇可以被压炸"},
            {100,CollectibleType.COLLECTIBLE_BERSERK,"狂战状态下, 大跳没有冷却, 更短的跳跃距离, 但一次大跳会连跳"..dedith.Edith.FlatStone.BERSERK_JUMP_AMOUNT.."次"},
            {100,CollectibleType.COLLECTIBLE_BIRDS_EYE,"触发暴击落地时, 朝十字方向释放"..dedith.Edith.BirdsEye.BIRDS_EYE_FLAME_AMOUNT.."条火舌"},
            {100,CollectibleType.COLLECTIBLE_BLACK_BEAN,"触发暴击落地时, 释放一片毒云"},
            {100,CollectibleType.COLLECTIBLE_BLOOD_CLOT,"践踏依次造成+"..dedith.Edith.BloodClotStye.BLOOD_CLOT_FLAT_DAMAGE.."额外伤害 和 不造成额外伤害"},
            {100,CollectibleType.COLLECTIBLE_BRIMSTONE,"触发暴击落地时, 朝十字方向释放"..dedith.Edith.Brimstone.LASER_AMOUNT.."道血激光柱子"},
            {100,CollectibleType.COLLECTIBLE_SULFUR,"触发暴击落地时, 朝十字方向释放"..dedith.Edith.Brimstone.LASER_AMOUNT.."道血激光柱子"},
            {100,CollectibleType.COLLECTIBLE_BUCKET_OF_LARD,"跳跃的高度和距离减少--该减肥了"},
            {100,CollectibleType.COLLECTIBLE_CAINS_OTHER_EYE,"与角色一起跳跃"},
            {100,CollectibleType.COLLECTIBLE_CHEMICAL_PEEL,"践踏依次造成+"..dedith.Edith.BloodClotStye.CHEMICAL_PEEL_FLAT_DAMAGE.."额外伤害 和 不造成额外伤害"},
            {100,CollectibleType.COLLECTIBLE_COMMON_COLD,"大跳可以使敌人中毒"},
            {100,CollectibleType.COLLECTIBLE_CONTINUUM,"大跳可以翻墙, 然后从房间的对侧跳回来"},
            {100,CollectibleType.COLLECTIBLE_CRICKETS_BODY,"落地时, 生成"..dedith.Edith.CricketsBody.TEAR_AMOUNT.."个盐兵朝多个方向等距释放跳跃#盐兵造成"..dedith.Edith.CricketsBody.DAMAGE_MULTIPLIER_PERCENTAGE.."%的角色伤害"},
            {100,CollectibleType.COLLECTIBLE_CUBE_BABY,"冰块宝宝可以被大跳推动"},
            {100,CollectibleType.COLLECTIBLE_CURSED_EYE,"按住大跳键蓄力#释放后, 数个残影跟随角色一同跳跃, 数量受蓄力时间影响"},
            {100,CollectibleType.COLLECTIBLE_CURSE_OF_THE_TOWER,"不慎掉进沟里也会生成即爆炸弹"},
            {100,CollectibleType.COLLECTIBLE_DARK_MATTER,"大跳可以施加恐惧"},
            {100,CollectibleType.COLLECTIBLE_DEAD_EYE,"落地时, 如果正中靶心, 获得100%的死眼伤害增益, 否则失去伤害增益"},
            {100,CollectibleType.COLLECTIBLE_DR_FETUS,"起跳时, 在起跳的位置生成炸弹"},
            {100,CollectibleType.COLLECTIBLE_EPIC_FETUS,"落地时, 在附近生成一个可以被拾取并投掷的导弹"},
            {100,CollectibleType.COLLECTIBLE_EXPLOSIVO,"触发暴击落地时, 释放"..dedith.Edith.StickyTears.TEAR_AMOUNT.."个粘弹泪弹"},
            {100,CollectibleType.COLLECTIBLE_EYE_OF_BELIAL,"触发暴击落地时, 获得临时的双倍伤害跟踪泪弹"},
            {100,CollectibleType.COLLECTIBLE_EYE_OF_THE_OCCULT,"滞空时可以自由控制落点"},
            {100,CollectibleType.COLLECTIBLE_EYE_SORE,"起跳时, 至多3个盐兵朝随机方向跳跃"},
            {100,CollectibleType.COLLECTIBLE_FIRE_MIND,"触发暴击落地时, 产生爆炸#大跳可以灼烧敌人"},
            {100,CollectibleType.COLLECTIBLE_FLAT_STONE,"一次大跳改为"..dedith.Edith.FlatStone.FLAT_STONE_JUMP_AMOUNT.."次连跳#{{ArrowDown}} 每次跳跃伤害为正常的"..dedith.Edith.FlatStone.DAMAGE_DECREASE_PERCENTAGE.."%"},
            {100,CollectibleType.COLLECTIBLE_FRUIT_CAKE,"每次大跳获得不同的效果"},
            {100,CollectibleType.COLLECTIBLE_GELLO,"与角色一起跳跃"},
            {100,CollectibleType.COLLECTIBLE_GHOST_PEPPER,"触发暴击落地时, 朝对角线方向释放"..dedith.Edith.BirdsEye.GHOST_PEPPER_FLAME_AMOUNT.."条火舌"},
            {100,CollectibleType.COLLECTIBLE_GLAUCOMA,"大跳可以使敌人混乱"},
            {100,CollectibleType.COLLECTIBLE_GODS_FLESH,"大跳可以使敌人缩水"},
            {100,CollectibleType.COLLECTIBLE_HAEMOLACRIA,"落地后, 释放"..dedith.Edith.Haemolacria.MINIMUM_PAWNS.."至"..dedith.Edith.Haemolacria.MAXIMUM_PAWNS.."个朝随机方向跳跃的盐兵#盐兵造成"..dedith.Edith.Haemolacria.MINIMUM_DAMAGE_PERCENTAGE.."%~"..dedith.Edith.Haemolacria.MAXIMUM_DAMAGE_PERCENTAGE.."%的角色伤害"},
            {100,CollectibleType.COLLECTIBLE_HOLY_LIGHT,"触发暴击落地时, 原地生成"..dedith.Edith.HolyLight.CIRCLE_AMOUNT.."个圣光环"},
            {100,CollectibleType.COLLECTIBLE_INCUBUS,"与角色一起跳跃"},
            {100,CollectibleType.COLLECTIBLE_INNER_EYE,"起跳时, 生成2个盐兵跟随角色跳跃"},
            {100,CollectibleType.COLLECTIBLE_IRON_BAR,"大跳可以使敌人混乱"},
            {100,CollectibleType.COLLECTIBLE_IPECAC,"大跳可以使敌人中毒"},
            {100,CollectibleType.COLLECTIBLE_ISAACS_HEART,"与角色一起跳跃"},
            {100,CollectibleType.COLLECTIBLE_JACOBS_LADDER,"落地后释放电弧"},
            {100,CollectibleType.COLLECTIBLE_JELLY_BELLY,"跳跃的高度和距离减少--该减肥了#落地后, 推开敌人和敌弹"},
            {100,CollectibleType.COLLECTIBLE_JUPITER,"跳跃高度提升#跳跃会留下屁云"},
            {100,CollectibleType.COLLECTIBLE_LEO,"大跳可以踩碎石头"},
            {100,CollectibleType.COLLECTIBLE_LODESTONE,"大跳可以磁化敌人"},
            {100,CollectibleType.COLLECTIBLE_LOKIS_HORNS,"起跳时, "..dedith.Edith.LokisHorns.CHANCE_AT_BASE_LUCK.."%的概率生成3-4个盐兵朝十字方向跳跃#{{Luck}} 幸运"..dedith.Edith.LokisHorns.LUCK_FOR_MAX..": 100%"},
            {100,CollectibleType.COLLECTIBLE_LOST_CONTACT,"落地时, 摧毁附近的敌弹"},
            {100,CollectibleType.COLLECTIBLE_MARKED,"朝准心的位置大跳"},
            {100,CollectibleType.COLLECTIBLE_MAW_OF_THE_VOID,"触发暴击落地时, 生成一个黑圈"},
            {100,CollectibleType.COLLECTIBLE_ATHAME,"触发暴击落地时, 生成一个黑圈"},
            {100,CollectibleType.COLLECTIBLE_MEGA_MUSH,"落地引发地震, 并持续天降碎石#大跳可以踩碎石头"},
            {100,CollectibleType.COLLECTIBLE_MOMS_CONTACTS,"大跳可以石化敌人"},
            {100,CollectibleType.COLLECTIBLE_MOMS_EYE,"起跳时, 如果不是原地大跳, 有"..dedith.Edith.MomsEye.CHANCE_AT_BASE_LUCK.."%的概率生成一个朝反方向跳跃的盐兵#{{Luck}} 幸运"..dedith.Edith.MomsEye.LUCK_FOR_MAX..": 100%"},
            {100,CollectibleType.COLLECTIBLE_MOMS_EYESHADOW,"大跳可以魅惑敌人"},
            {100,CollectibleType.COLLECTIBLE_MOMS_PERFUME,"大跳可以施加恐惧"},
            {100,CollectibleType.COLLECTIBLE_MUCORMYCOSIS,"触发暴击落地时, 释放"..dedith.Edith.StickyTears.TEAR_AMOUNT.."个孢子泪弹"},
            {100,CollectibleType.COLLECTIBLE_MUTANT_SPIDER,"起跳时, 生成3个盐兵跟随角色跳跃"},
            {100,CollectibleType.COLLECTIBLE_MY_REFLECTION,"杀死敌人后, 立即跳回起跳的位置"},
            {100,CollectibleType.COLLECTIBLE_MYSTERIOUS_LIQUID,"落地时留下伤害液体"},
            {100,CollectibleType.COLLECTIBLE_NEPTUNUS,"触发暴击落地时, 迸射一簇泪弹"},
            {100,CollectibleType.COLLECTIBLE_OCULAR_RIFT,"触发暴击落地时, 生成一个裂隙"},
            {100,CollectibleType.COLLECTIBLE_PARASITE,"碰到敌人或障碍物后, 朝左右释放2个盐兵#盐兵造成"..dedith.Edith.TheParasite.PAWN_DAMAGE_MULT_PERCENT.."%角色伤害"},
            {100,CollectibleType.COLLECTIBLE_PLAYDOUGH_COOKIE,"大跳施加随机效果"},
            {100,CollectibleType.COLLECTIBLE_POP,"触发暴击落地时, 释放数个盐弹"},
            {100,CollectibleType.COLLECTIBLE_PUPULA_DUPLEX,"践踏范围更大"},
            {100,CollectibleType.COLLECTIBLE_REVELATION,"触发暴击落地时, 朝X字方向释放"..dedith.Edith.Revelation.LASER_AMOUNT.."道圣光"},
            {100,CollectibleType.COLLECTIBLE_ROCKET_IN_A_JAR,"滞空时发射导弹可以\"御炮飞行\"#导弹碰撞后爆炸"},
            {100,CollectibleType.COLLECTIBLE_ROTTEN_TOMATO,"大跳可以标记敌人"},
            {100,CollectibleType.COLLECTIBLE_RUBBER_CEMENT,"触发暴击落地时, 进行二次跳跃#在空中撞墙会反弹"},
            {100,CollectibleType.COLLECTIBLE_SCORPIO,"大跳可以使敌人中毒"},
            {100,CollectibleType.COLLECTIBLE_SERPENTS_KISS,"大跳可以使敌人中毒"},
            {100,CollectibleType.COLLECTIBLE_SINUS_INFECTION,"触发暴击落地时, 释放"..dedith.Edith.StickyTears.TEAR_AMOUNT.."个鼻屎泪弹"},
            {100,CollectibleType.COLLECTIBLE_SPIDER_BITE,"大跳可以减速敌人"},
            {100,CollectibleType.COLLECTIBLE_SPIDER_MOD,"生成一个鼠标指示落点(如果启用了辅助瞄准设置则该兼容无效)"},
            {100,CollectibleType.COLLECTIBLE_STYE,"践踏依次造成0额外伤害 至 +"..dedith.Edith.BloodClotStye.STYE_MULTIPLIER_PERCENTAGE.."%额外伤害"},
            {100,CollectibleType.COLLECTIBLE_SUMPTORIUM,"与角色一起跳跃"},
            {100,CollectibleType.COLLECTIBLE_SULFURIC_ACID,"大跳可以摧毁岩石"},
            {100,CollectibleType.COLLECTIBLE_TECHNOLOGY,"在空中时朝下发射激光#激光每秒造成角色"..dedith.Edith.Technology.DAMAGE_MULT_PER_SECOND.."x伤害"},
            {100,CollectibleType.COLLECTIBLE_TECH_X,"触发暴击落地时, 生成一个固定的激光环"},
            {100,CollectibleType.COLLECTIBLE_TERRA,"触发暴击落地时, 释放一道石刃波#大跳可以摧毁岩石"},
            {100,CollectibleType.COLLECTIBLE_THE_NAIL,"大跳可以摧毁岩石"},
            {100,CollectibleType.COLLECTIBLE_THE_WIZ,"起跳时, 生成一个盐兵跟随角色跳跃"},
            {100,CollectibleType.COLLECTIBLE_THUNDER_THIGHS,"跳跃的高度和距离减少--该减肥了#大跳可以摧毁岩石"},
            {100,CollectibleType.COLLECTIBLE_TWISTED_PAIR,"与角色一起跳跃"},
            {100,CollectibleType.COLLECTIBLE_URANUS,"大跳可以冻结敌人"},
            {100,CollectibleType.COLLECTIBLE_VENUS,"落地时若精准命中敌人, 将该敌人魅惑并同样能触发暴击落地的效果"},
            {350,TrinketType.TRINKET_BLACK_TOOTH,"大跳可以使敌人中毒"},
            {350,TrinketType.TRINKET_CHEWED_PEN,"大跳可以减速敌人"},
            {350,TrinketType.TRINKET_LIL_CLOT,"与角色一起跳跃"},
            {350,TrinketType.TRINKET_NOSE_GOBLIN,"触发暴击落地时, 释放"..dedith.Edith.StickyTears.TEAR_AMOUNT.."个鼻屎泪弹"},
            {350,TrinketType.TRINKET_PINKY_EYE,"大跳可以使敌人中毒"},
            {100,CollectibleType.COLLECTIBLE_GIANT_CELL,"迷你以撒和伊迪斯具有相同的被动特质, 且同样可以大跳践踏敌人"},
            {100,CollectibleType.COLLECTIBLE_KEEPERS_KIN,"落地时, "..dedith.Edith.KeepersKin.CHANCE_AT_BASE_LUCK.."%的概率生成蓝蜘蛛#幸运"..dedith.Edith.KeepersKin.LUCK_FOR_MAX..": "..dedith.Edith.KeepersKin.MAXIMUM_CHANCE.."%"}
        }
        for _, syn in ipairs(EdithSyn) do
            EID:addDescriptionModifier("EdithSyn"..syn[2],function(descObj)
                if descObj.ObjType == 5 and descObj.ObjVariant == syn[1] and descObj.ObjSubType == syn[2] and PlayerManager.AnyoneIsPlayerType(dedith.Character.EDITH) then return true end
            end, function(descObj)
                EID:appendToDescription(descObj,"#"..syn[3])
                return descObj
            end)
        end
    end
end)