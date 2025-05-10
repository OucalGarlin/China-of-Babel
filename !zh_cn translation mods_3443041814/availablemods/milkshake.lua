local mod = CNEIDBabel
mod:AddModTranslationLoader("MilkshakeVol1","重搅",function()
    if MilkshakeVol1 then
        local reshaken = MilkshakeVol1.enums
        local items={
            {
                reshaken.Collectibles.MILKSHAKE,
                "奶昔",
                "全属性搅起来!",
                "{{Heart}} 随机获得1魂心/黑心/心之容器#{{ArrowUp}} 提升 1.1x - 1.5x 倍的全部属性!",
                {ABY="巨大, 快速, 造成2倍角色伤害的粉红色蝗虫"}
            },{
                reshaken.Collectibles.SHARP_CURSOR,
                "锋利指针",
                "咔咔咔",
                "{{Warning}} 双击ctrl切换{{ColorRed}}鼠标跟班{{CR}}控制模式#{{1}} 默认情况下, 鼠标跟班会自动跟随房间里最远的敌人#{{2}} 可以切换为跟随电脑鼠标的行动方式#{{Damage}} 按下攻击键会进行点击, 造成玩家10%的伤害",
            },{
                reshaken.Collectibles.BLACK_EYE,
                "黑眼",
                "AUV! + 射速上升",
                "{{ArrowUp}} {{Tears}} 射速+0.7#只能用右眼射击#!!! 隐藏的道具, 可能会在未来成为正式道具(也可能不会)"
            },{
                reshaken.Collectibles.DICE_DICE,
                "骰骰",
                "天骰?",
                "{{DiceRoom}} 激活随机骰子房效果#!!! 隐藏的道具, 可能会在未来成为正式道具",
            },{
                reshaken.Collectibles.FIRECRACKER_ROSE,
                "爆竹花",
                "绽放与灭亡",
                "{{Burning}} 有概率发射黏住敌人的种子泪弹#4秒后种子绽放, 爆发花瓣眼泪, 造成 35+6x{{Damage}} 伤害",
                {ABY="火系绿色蝗虫,有10%的概率产生爆炸"}
            },{
                reshaken.Collectibles.GLOBIN_IN_A_BUCKET,
                "桶装血红尸",
                "多肉伙伴",
                "生成一个友好的血红尸#!!! 一些特殊楼层可能会产生不同的血红尸变体#一次最多可以拥有4个血红尸",
                {VIR="中环魂火, 熄灭后有50%的概率复活"}
            },{
                reshaken.Collectibles.GOLDEN_SHOVEL,
                "金铲铲",
                "淘金热!",
                "挖出一个金宝箱和2-4个硬币#{{LadderRoom}} 在装饰地板砖上使用时打开一个金色的暗门, 通往一个地下商店, 出售金饰品和金掉落物, 以及来自各种道具池的道具",
            },{
                reshaken.Collectibles.LA_CHANCLA,
                "人字拖",
                "我祝你的屁股痛到明年",
                "\1 {{Speed}} 移速+0.3#{{MomBossSmall}} 免疫践踏攻击",
            },{
                reshaken.Collectibles.LYRA,
                "天琴座",
                "律动之灵",
                "{{SpiritOrb}} 清理房间奖励有15%的几率变为随机灵珠#{{SpiritOrb}} 有概率从箱子、隐藏石头和爆炸的机器中获得一个额外的灵珠#\1 使用灵珠后开始一个短的迷你节奏游戏, 完美完成后可以激活灵珠的双倍效果",
            },{
                reshaken.Collectibles.EMPTY_SLOT,
                "空捐款箱",
                "99%的赌徒都在成功发之前就大败而归了, 你敢不敢来挑战我",
                "{{Coin}} 使用以投入1美分# 每投入10美分, 有1.5%的几率爆炸, 并返还双倍投入的硬币#投入100枚后必定爆炸",
                {GOLD="内环低生命值魂火",
                BEL="↑ {{Damage}} 每投入1美分, 伤害修正+0.066",
                CAR="仍旧只投入1美分, 但是爆炸的概率翻倍"}
            },{
                reshaken.Collectibles.SHATTERED_ORB,
                "破碎灵珠",
                "脆弱力量",
                "可以丢向敌人以俘获他们的灵魂#{{SpiritOrb}} 被俘的敌人会变成与其灵魂元素相对应的灵珠",
                {VIR="破碎灵柱未命中而落地时生成一个随机元素魂火",
                ABY="{{SpiritOrb}} 50%的几率用亵渎灵珠替换产生的混沌灵珠"}
            },{
                reshaken.Collectibles.PRISMATIC_DICE,
                "棱镜骰子",
                "量变引发质变",
                "将房间中的道具拆分为两个品质更低的随机道具#{{Quality0}}级道具会变成随机掉落物",
                {VIR="无法攻击的中环魂火, 具有{{Collectible528}} 天使棱镜的特质",
                BEL="30%的概率拆分得到{{ItemPoolDevil}} 恶魔房道具",
                ABY="粉红色发光的蝗虫, 有20%的几率在接触时将敌人分裂为2个较弱的敌人"}
            },{
                reshaken.Collectibles.SPIRIT_BUM,
                "灵魂乞丐",
                "它想要你的灵魂",
                "{{SoulHeart}} 拾取附近的魂心#{{SpiritOrb}} 生成随机灵珠作为回报",
            },{
                reshaken.Collectibles.INNER_REFLECTION,
                "仙镜",
                "永远无法超越你自己的镜像",
                "镜像玩家动作的镜像跟班, 造成50DPS的接触伤害#\1 {{MirrorRoom}} 镜中世界获得伤害修正+2.5",
            },{
                reshaken.Collectibles.SICKLE_CELL,
                "镰状细胞",
                "穿透 + 血之泪弹",
                "穿刺泪弹#{{BleedingOut}} 泪弹会施加流血效果",
                {ABY="施加流血的红蝗虫"}
            },{
                reshaken.Collectibles.SPOILED_BREAKFAST,
                "洒掉的早餐",
                "生命上升?",
                "\1 +1 空心之容器#{{EmptyHeart}} 移除半颗红心",
            },{
                reshaken.Collectibles.BALANCED_BREAKFAS,
                "营养均衡的早餐",
                "生命 + 幸运上升",
                "\1 {{Heart}} +1 心之容器#\1 {{Luck}} +1 幸运#{{SoulHeart}} +1 魂心#{{Heart}} 治疗1红心",
            },{
                reshaken.Collectibles.HEARTY_BREAKFAST,
                "丰盛的早餐",
                "生命 + 伤害 + 幸运上升!",
                "\1 {{Heart}} +1 心之容器#\1 {{Damage}} +0.5 伤害#\1 {{Tears}} +0.3 射速修正#\1 {{Luck}} +1 幸运#{{Heart}} 回满红心",
            },{
                reshaken.Collectibles.POT_OF_GOLD,
                "黄金罐",
                "彩虹硬币!",
                "将所有炸弹、钥匙和大多数硬币掉落物转换为彩虹硬币#{{Trinket52}} 彩虹硬币在拾取时激活相应硬币小饰品的效果",
            },{
                reshaken.Collectibles.FRAGILE_MIRROR,
                "玻璃神像",
                "粉碎的来世",
                "可以抵挡泪弹的玻璃神像跟班#可以抵挡3次敌弹, 而后破碎#未破碎的玻璃神像可以在玩家死亡后将其以1{{SoulHeart}}复活, 而后破碎#↓ {{Luck}} 神像破碎后获得幸运-1"
            },{
                reshaken.Collectibles.LEVITICUS,
                "利未记",
                "净化你的灵魂",
                "{{SoulHeart}} 通过拾取魂心来充能#{{AngelRoom}} 传送到一个特殊的天使房, 每层一次, 其中提供一个免费的天使道具和出售一些掉落物",
                {VIR="内环高生命魂火, 每个该魂火提供+10%{{AngelRoom}}天使房出现率",
                ABY="有概率召唤圣光的蝗虫"}
            },{
                reshaken.Collectibles.LEVITICUS_FANCY,
                "利未记",
                "净化你的灵魂",
                "{{SoulHeart}} 通过拾取魂心来充能#{{AngelRoom}} 传送到一个特殊的天使房, 每层一次, 其中提供一个免费的天使道具和出售一些掉落物",
                {VIR="内环高生命魂火, 每个该魂火提供+10%{{AngelRoom}}天使房出现率",
                ABY="有概率召唤圣光的蝗虫"}
            },{
                reshaken.Collectibles.LEVITICUS_ALADAR,
                "利未记",
                "净化你的灵魂",
                "{{SoulHeart}} 通过拾取魂心来充能#{{AngelRoom}} 传送到一个特殊的天使房, 每层一次, 其中提供一个免费的天使道具和出售一些掉落物",
                {VIR="内环高生命魂火, 每个该魂火提供+10%{{AngelRoom}}天使房出现率",
                ABY="有概率召唤圣光的蝗虫"}
            },{
                reshaken.Collectibles.BATTERY_ACID,
                "电池漏液",
                "PH 下降",
                "{{Battery}} 双倍充能速率#\2 每15秒损失1充能#移动时留下稀疏的酸液水迹"
            },{
                reshaken.Collectibles.DOGGY_BAG,
                "狗屎袋",
                "好好处理\"后事\"",
                "受到伤害会产生随机便便#可以捡起便便并投掷",
            },{
                reshaken.Collectibles.DADS_MITT,
                "爸爸的棒球手套",
                "曲线球!",
                "\1 {{Tears}} +10% 射速修正#\2 {{Shotspeed}} -0.2 弹速#泪弹行动方向受角色移动影响",
                {ABY="跟随玩家移动方向的棒球蝗虫"}
            },{
                reshaken.Collectibles.LIL_BISHOP,
                "主教宝宝",
                "护盾伙伴",
                "阻挡敌弹的跟班#每阻挡1个敌弹, 有10%的几率激活并为角色提供5s无敌",
                {BFF="提供的无敌时间翻倍"}
            },{
                reshaken.Collectibles.RAINBOW_FRAGMENT,
                "彩虹碎片",
                "碰上彩虹, 吃定彩虹",
                "\1 {{Luck}} +1 幸运#生成 4 个彩虹硬币#{{Trinket52}} 彩虹硬币在拾取时激活饰品的效果",
            },{
                reshaken.Collectibles.WITCH_DOCTOR_MASK,
                "巫医假面",
                "灵药",
                "{{Pill}} 生成一个药丸#将所有药丸转化为灵药#{{SpiritOrb}} 灵药在其药丸效果的基础上额外触发对应的灵珠效果",
            },{
                reshaken.Collectibles.PRISMATIC_GOGGLES,
                "色散棱镜",
                "色散敌人",
                "敌人有20%的几率变为折射状态#折射敌人死亡时释放3道彩虹光束#激光总共造成4次判定, 每次16倍角色伤害#{{Luck}} 幸运32: 100%",
            },{
                reshaken.Collectibles.FINGORE,
                "千夫所指",
                "恩-嗯↓↑",
                "{{Bait}} 指向房间内的随机敌人, 并将其标记10秒, 使其被集火",
            },{
                reshaken.Collectibles.MIRROR_KEY,
                "镜像密钥",
                "另一头",
                "{{MirrorRoom}} 在合适的位置生成镜像入口, 以进入当前房间对应的镜像房间#镜像房间重新生成所有掉落物、障碍物和敌人#{{Warning}} 道具不会重复生成#{{Player10}} 在镜像世界中变成游魂形态#{{BossRoom}} 可以再次挑战头目获得额外奖励",
                {BEL="↑ {{Damage}} 镜像世界中获得伤害+2.5",
                VIR="发射回旋泪弹的魂火"}
            }
        }
        local trinkets={
            {
                reshaken.Trinkets.TUNGSTEN_CUBE,
                "钨立方",
                "重磅登场",
                "{{ArrowDown}} {{Speed}} 移速-0.2#将该饰品丢到地上以释放大范围石刃波",
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害x3"}}}
            },{
                reshaken.Trinkets.ACID_PENNY,
                "酸液硬币",
                "财富即疫病",
                "{{Pill}} 捡起硬币有几率生成药丸"
            },{
                reshaken.Trinkets.CRYSTAL_PENNY,
                "水晶硬币",
                "财富即学识",
                "{{Card}} 捡起硬币有概率生成一张卡牌"
            },{
                reshaken.Trinkets.ROCK_WHEEL,
                "石轮",
                "石器时代的盟军",
                "石像头将会以敌人为目标",
            },{
                reshaken.Trinkets.AMETHYST_SHARD,
                "预兆紫晶石",
                "隐藏的天眼之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个天眼灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.RUBY_SHARD,
                "炼狱红晶石",
                "隐藏的炼狱之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个炼狱灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.TOURMALINE_SHARD,
                "引雷青晶石",
                "隐藏的闪电之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个闪电灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.EMERALD_SHARD,
                "自然翠晶石",
                "隐藏的自然之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个自然灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.PERIDOT_SHARD,
                "猛毒绿晶石",
                "隐藏的剧毒之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个剧毒灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.GARNET_SHARD,
                "天谴血晶石",
                "隐藏的亵渎之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个亵渎灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.ONYX_SHARD,
                "亡灵白晶石",
                "隐藏的亡魂之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个亡魂灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.DIAMOND_SHARD,
                "神圣天晶石",
                "隐藏的圣洁之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个圣洁灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.SAPPHIRE_SHARD,
                "激流蓝晶石",
                "隐藏的激流之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个激流灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.AMBER_SHARD,
                "大地褐晶石",
                "隐藏的大地之力",
                "隐藏石头具有独特外观#{{SpiritOrb}} 隐藏石头在被摧毁时有75%的几率掉落1个大地灵珠",
                {GOLD={INFO={findReplace=true},TEXT={"1","1-2","2-3"}}}
            },{
                reshaken.Trinkets.TRACK_ALT_PATH_UNLOCK,
                "支线解锁追踪器",
                "请不要把这个漏洞上传至奶昔工作室",
                "在击败楼层boss后自动解锁通往下水道、矿井、陵墓的门",
            },{
                reshaken.Trinkets.RAINBOW_COOKIE,
                "彩虹饼干",
                "更多的彩虹硬币",
                "10%的几率将硬币替换为随机的彩虹硬币#彩虹硬币的次要效果在拾取时翻倍",
                {GOLD={INFO={findReplace=true},TEXT={"10","15","20"}}}
            },{
                reshaken.Trinkets.PRISMATIC_LACEWING,
                "棱镜草蜻蛉",
                "退化泪弹",
                "5%的概率发射色散泪弹, 可以让敌人分裂为2个生命值更少的退化敌人#{{Luck}} 幸运15: 20%",
                {GOLD={INFO={findReplace=true},TEXT={"5%","10%","15%"}}}
            }
        }
        local cards={
            {
                reshaken.Orbs.NATURE,
                "自然灵珠",
                "枝繁叶茂",
                "用藤蔓将房间里的所有敌人捆绑, 12秒内无法行动; 被捆绑的敌人会在死亡时掉落一颗水果心(会快速消失!)#{{BlendedHeart}} 水果心可以治愈{{HalfHeart}}，如果红心已满则可以治愈{{HalfSoulHeart}}",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Nature"}}
            },{
                reshaken.Orbs.ELECTRIC,
                "闪电灵珠",
                "脉冲爆破",
                "向所有方向发射一波电弧，伤害附近的敌人#{{ArcadeRoom}} 范围内的所有机器短路，导致它们多次运行并爆炸",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Elec"}}
            },{
                reshaken.Orbs.FIRE,
                "炼狱灵珠",
                "火烧连营",
                "{{Burning}} 向指定方向射出大片高伤害火焰#{{BossRoom}} 火焰无视护甲",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Fire"}}
            },{
                reshaken.Orbs.PSYCHIC,
                "天眼灵珠",
                "灵能之佑",
                "{{Timer}} 获得一个持续100s的光环, 减速其中的敌人并反弹泪弹",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Psy"}}
            },{
                reshaken.Orbs.UNDEAD,
                "亡魂灵珠",
                "死者苏生",
                "在房间周围召唤4-6个坟墓, 这些坟墓在被摧毁时会产生友好的骷髅仔或鬼魂#用骨头填满房间里的所有坑",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Dead"}}
            },{
                reshaken.Orbs.POISON,
                "剧毒灵珠",
                "毒性气场",
                "{{Throwable}} 投掷一个有毒球体，该球体落地后生成具有破坏性的毒云#{{Slow}} 毒云内的敌人会持续减速并受到伤害#毒云范围越大, 造成的伤害越大#{{RottenHeart}} 将心和乞丐转化为腐烂版本 {{RottenBeggar}}",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Poison"}}
            },{
                reshaken.Orbs.HOLY,
                "圣洁灵珠",
                "天堂之光",
                "#发射8向圣光#圣光可以摧毁岩石并打开隐藏房门",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Holy"}}
            },{
                reshaken.Orbs.UNHOLY,
                "亵渎灵珠",
                "地狱之刃",
                "#{{BleedingOut}} 砍杀房间里的所有敌人和乞丐, 施加流血和硫磺诅咒#乞丐掉落额外的掉落物",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_UNHoly"}}
            },{
                reshaken.Orbs.WATER,
                "激流灵珠",
                "风暴洪流",
                "#{{Timer}} 角色的攻击被一个可控的水龙卷所代替, 它会吸入敌人和可拾取物品, 持续8s",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Water"}}
            },{
                reshaken.Orbs.ROCK,
                "大地灵珠",
                "势不可挡",
                "#召唤4-5个石柱, 刺穿敌人并破坏金属块",
                {CONF={reshaken.Collectibles.LYRA,"Lyra_Rock"}}
            },{
                reshaken.Orbs.RANDOM,
                "混沌灵珠",
                "学艺不精",
                "#触发随机灵珠效果",
            },{
                reshaken.Orbs.ORDER,
                "秩序灵珠",
                "可控混沌",
                "{{SpiritOrb}} 按下{{ButtonRT}}以选择触发指定灵珠的效果",
            },{
                reshaken.Cards.TATTERED_PAGE,
                "破烂书页",
                "废弃档案",
                "{{Collectible712}} 生成一个随机道具魂火"
            }
        }
        local other={
            {
                EntityType.ENTITY_SLOT,MilkshakeVol1.enums.Slots.SPIRIT_KLIN_BRENDA,0,
                "灵魂之炉",
                "{{HalfSoulHeart}} 交换半颗魂心以获得以下奖励(不视作伤害):" ..
                "#{{SpiritOrb}} 一个随机的灵珠" ..
                "#{{Burning}} 一个随机的特殊魂火" ..
                "#{{Rune}} 一个随机的魂石" ..
                "#{{Trinket" .. 139 .. "}} 一个随机的玻璃或晶石饰品" ..
                "#{{Collectible" .. reshaken.Collectibles.FRAGILE_MIRROR .. "}} 交易至少3颗心后, 有概率获得一个玻璃道具"
            }
        }
        local conditionalList={
            Lyra_Nature="掉落双倍的水果心",
            Lyra_Elec="电弧范围和持续时间翻倍",
            Lyra_Fire="双倍火焰",
            Lyra_Psy="光环增大, 持续时间翻倍, 反弹泪弹加速",
            Lyra_Dead="坟墓数量翻倍",
            Lyra_Poison="毒云范围翻倍",
            Lyra_Holy="发射16向圣光",
            Lyra_UNHoly="效果翻倍",
            Lyra_Water="持续时间翻倍",
            Lyra_Rock="8-10个石柱",
        }
        mod:AddToConditionalList(conditionalList)
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#{{Collectible"..reshaken.Collectibles.MILKSHAKE.."}} 所属mod: Reshaken", item[5])
        end
        for _, item in ipairs(trinkets) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#{{Collectible"..reshaken.Collectibles.MILKSHAKE.."}} 所属mod: Reshaken", item[5])
        end
        for _, item in ipairs(cards) do
            mod:AddTranslate(300, item[1], item[2], item[3], item[4].."#{{Collectible"..reshaken.Collectibles.MILKSHAKE.."}} 所属mod: Reshaken", item[5])
        end
        for _, item in ipairs(other) do
            mod:AddEntityTransl(item[1],item[2],item[3],item[4],item[5])
        end
    end
end)
