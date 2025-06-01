local mod=CNEIDBabel
mod:AddModTranslationLoader("battleFantasy","战争幻想\n* 注: 建议安装Encyclopedia以查看该模组的轶事描述 (那个没有翻译哈哈)\n* 更合理的道具品质 已生效!\n\n* 新增了与 幻想曲 小丑牌 模组的花哨兼容(测试?)",function()
    if battleFantasy then
        local items={
            {
                battleFantasy.Items.BF_ANGELIC_MIRROR,
                "天堂仙镜",
                "暂时性神魂颠倒",
                "在当前房间内获得{{Collectible533}}三圣颂的效果#{{ArrowUp}} 使用后获得-0.2 {{Shotspeed}}弹速#{{ArrowUp}} 多次触发效果时额外获得+1 {{Damage}}伤害",
                {VIR="发射穿透泪弹的魂火",
                QUA=2}--三圣颂三级你就只能当二了
            },{
                battleFantasy.Items.BF_ANGELIC_WING,
                "天使之翼",
                "至善之人, 羽化登仙",
                "{{EternalHeart}} 获得1永恒之心#{{ArrowUp}} +1.5 {{Range}}射程#{{ArrowUp}} +0.3 {{Shotspeed}}弹速#获得飞行, 但是受到3次惩罚伤害会在当前楼层失去该道具提供的飞行#第三次伤害同时会降下数道圣光轰击",
                {QUA=1}--加弹速导致风评烂了（但再怎么说也是飞其实
            },{
                battleFantasy.Items.BF_ASTRAEA,
                "义神星",
                "五重射击 + 伤害上升",
                "五重泪弹! 出来!#{{ArrowDown}} 0.42x {{Tears}}射速#{{ArrowUp}} +1 {{Damage}}伤害",
                {ABY="5只蝗虫",
                CONF={CollectibleType.COLLECTIBLE_20_20,"Twenty"}}
            },{
                battleFantasy.Items.BF_BLAZING_IRIS,
                "燃烧的虹膜",
                "它看着你的一举一动",
                "可以抵挡敌弹的燃烧眼球环绕物#每隔几秒, 其视野内的所有敌弹转换为高伤害火焰",
                {CONF={"5.350.141","SirenIris"}}
            },{
                battleFantasy.Items.BF_BLOOD_PACT,
                "血之契约",
                "用血签注",
                "{{Tears}} 根据角色拥有的红心数{{Heart}}指数提供射速增益#{{ArrowUp}} 每失去一个心之容器{{EmptyHeart}}获得+0.6 {{Damage}}伤害#",
                {ABY="造成两倍伤害的蝗虫",
                CHAR={
                    {PlayerType.PLAYER_THELOST,"LostPack",true},
                    {PlayerType.PLAYER_KEEPER,"KeePack",false},
                    {PlayerType.PLAYER_KEEPER_B,"MiserPack",false},
                    {PlayerType.PLAYER_THEFORGOTTEN,"BonePack",false}
                },MOD={PAPER=true,BLOOD=true}}
            },{
                battleFantasy.Items.BF_BOILING_BLOOD,
                "热血沸腾",
                "我火了...",
                "{{ArrowUp}} 每个{{HalfHeart}}半红心提供+0.15 {{Damage}}伤害#受伤后释放10团火焰#{{Burning}} 火焰的伤害为: {{Damage}} + 20",
                {ABY="25%的概率施加{{Burning}}灼烧的蝗虫",
                MOD={BLOOD=true},
                CONF={{CollectibleType.COLLECTIBLE_GHOST_PEPPER,"5.350."..battleFantasy.Trinkets.BF_ECTOPLASM},"BlueBoil"},
                QUA=2}--数值还是太保守了，也不可能当受伤触发道具用
            },{
                battleFantasy.Items.BF_BOOK_OF_PHANTOMS,
                "恶鬼之书",
                "毁灭肉身",
                "{{Warning}} 移除所有{{Heart}}心之容器#若此时少于6{{SoulHeart}}则补充魂心至6个#{{ArrowDown}} 多次使用会导致{{ColorRed}}永久减少攻击倍率, 最少剩余10%{{CR}}",
                {VIR="2个高生命的魂火",
                ABY="每拥有{{HalfSoulHeart}}半个魂心, 蝗虫额外造成1伤害",
                CONF={"5.350."..TrinketType.TRINKET_BLACK_FEATHER,"PhanFeather"},
                CHAR={PlayerType.PLAYER_BETHANY,"BethPhan",false},
                QUA=2}--那骂声可太大嘞
            },{
                battleFantasy.Items.BF_BREEZE_FROM_HOME,
                "家乡的微风",
                "怀旧漫步",
                "{{ArrowUp}} 使用后在当前房间内获得全属性提升#在当前房间内获得一个{{ColorYellow}}可召唤{{CR}}的Flash版本道具的效果({{Collectible1}} -> {{Collectible197}})",
                {VIR="清理房间后, 魂火有15%的概率额外生成一个Flash版本的主动道具魂火"}
            },{
                battleFantasy.Items.BF_BROKEN_SNOWGLOBE,
                "破碎的雪景球",
                "严寒泪弹",
                "{{ArrowUp}} +0.61 {{Tears}}射速#{{ArrowDown}} -0.16 {{Shotspeed}}弹速#{{Freezing}} 有10%的概率发射2倍伤害的{{ColorBlue}}冻结泪弹{{CR}}#{{Luck}} 幸运22: 50",
                {ABY="造成1.25x伤害的蝗虫, 有5%的概率施加{{Freezing}}冰冻",
                CONF={448,"GlobeShard"},
                MOD={GLASS=true,ICE=true}}
            },{
                battleFantasy.Items.BF_BUILDING_BLOCK,
                "积木砖块",
                "移速上升 + 卧槽!!!",
                "{{ArrowUp}} +0.3 {{Speed}}移速#{{Collectible".. CollectibleType.COLLECTIBLE_DULL_RAZOR .."}} 拾取后造成一次假伤",
                {MOD={STONE=true}}
            },{
                battleFantasy.Items.BF_CAVITY,
                "蛀牙",
                "一切开始腐烂",
                "{{Poison}} 25%的概率发射一个黑牙泪弹施加中毒#{{Damage}} 大部分特殊泪弹(例如{{Collectible7}}血泪, {{Collectible183}}钻石泪弹等)均造成1.25倍伤害(包括该道具发射的黑牙泪弹)",
                {ABY="造成1.25x伤害的蝗虫, 有10%的概率施加{{Poison}}中毒",
                MOD={ILL=true},
                CONF={
                    {{7,90,34,150,259,237,83,415,443,531,5,374,463,462,503,572,592,183,battleFantasy.Items.BF_NOTHING_BURGER,"5.350.95"},"CavityDMGEffected"},
                    {battleFantasy.Items.BF_WRAPPED_CANDY,"MULT1"},
                    {443,"MULT2"}
                }}
            },{
                battleFantasy.Items.BF_CHANCE_CARD,
                "机遇卡",--捏他: 大富翁   该死我都没玩过我都不知道是不是叫这个
                "赌一把",
                "使用后, 触发随机卡牌的效果#{{Card}} 85% 为塔罗牌, 10%为逆位塔罗牌, 5%为扑克牌或杂牌( {{GarlinIcon}}{{ColorRainbow}}没有自杀之王{{CR}})#对符文或其他副手物品无效, {{ColorFade}}不兼容其他模组的卡牌=({{CR}}",--你猜我为什么会在意有没有自杀之王?
                {VIR="有概率在敌人死亡后触发随机塔罗牌的效果, 概率取决于拥有机遇卡魂火的数量",
                ABY="20%的概率在杀死敌人后触发弱化的塔罗牌效果",
                QUA=1}--跟卡牌盒坐一桌去
            },{
                battleFantasy.Items.BF_CRYSTAL_SHARD,
                "水晶碎片",
                "异想泪弹",
                "角色的泪弹替换为{{ColorGray}}穿透{{CR}}的粉水晶#粉水晶首次命中的敌人会分裂出3发高弹速水晶, {{IGIcon}}且分裂出的水晶0.23s后命中敌人可能继续分裂#每个分裂的水晶继承原水晶泪弹的80%伤害",
                {ABY="造成两倍伤害的蝗虫",
                MOD={STONE=true},
                CONF={
                    {battleFantasy.Items.BF_CRYSTAL_SHARD,"CopyCrystal"},
                    {{104,224,453,572},"PCFriendly"},
                    {{68,118},"BrimShard"},
                    {52,"DrCrystal"},
                    {114,"CrystalKnife"}
                },QUA=3}--对单输出提升并没有特别高其实，但确实有强度，兼容也不错，跟科技一桌
            },{
                battleFantasy.Items.BF_CUP_OF_YOGURT,
                "一杯酸奶",
                "伤害上升 + 强身健骨",
                "{{ArrowUp}} +0.5 {{Damage}}伤害#将角色的2个{{SoulHeart}}均转化为{{EmptyBoneHeart}}",
            },{
                battleFantasy.Items.BF_DEMONIC_BRACE,
                "魔系支柱",
                "天使中的魔鬼",--存疑
                "{{ArrowUp}} +1 {{Damage}}伤害#{{HalfBlackHeart}} 获得半黑心#拾取{{EternalHeart}}时, 同时获得一个{{BlackHeart}}#{{GarlinIcon}} 不知何种原因, 在开启某些模组后可能导致拾取第偶数个永恒之心(使其与原有的永恒之心结合成生命上限)不生效",
                --看在你加伤害的份上原谅你了不改你品质，跟五角星坐一桌去
            },{
                battleFantasy.Items.BF_EARWORM,
                "耳朵虫",
                "余音绕梁",
                "每隔15 - 60s播放一个音效#该效果触发时, 获得10s内衰减的{{Speed}} +0.6移速",
                {CONF={battleFantasy.Items.BF_EARWORM,"MultiEar"},
                QUA=1}--事实证明老外是真捷豹喜欢移速道具
            },{
                battleFantasy.Items.BF_EDENS_TEARS,
                "伊甸之泪",
                "随机击杀效果",
                "25%的概率在杀死敌人后触发随机效果#{{GarlinIcon}} 例如回血{{Collectible62}}, 生成蓝蜘蛛{{Collectible234}}, 生成随机硬币{{Card68}}等",
            },{
                battleFantasy.Items.BF_ESSENTIAL_OIL,
                "精油",
                "射速 + 幸运上升",
                "{{ArrowUp}} +0.66 {{Tears}}射速#{{ArrowUp}} +1 {{Luck}}幸运",
            },{
                battleFantasy.Items.BF_ETERNAL_D1,
                "永恒一面骰",
                "旧神回归?",
                "{{Collectible".. CollectibleType.COLLECTIBLE_D1 .."}} 类似削弱前的一面骰, 生成房间内的一个掉落物的完全复制#33%的概率删除房间内的所有相同掉落物#{{IGIcon}} 可以复制饰品",
                {VIR="若触发了删除掉落物的效果, 失去所有的永恒一面骰魂火",
                ABY="造成0.666x伤害的蝗虫, 有33%的概率在杀死敌人后顺带杀死附近的敌人"}
            },{
                battleFantasy.HiddenItems.BF_EVES_PRAYER_CARD,
                "夏娃的祈祷卡",
                "你丫会不会玩夏娃啊",--存疑
                "移除1心之容器, 直至角色剩余1 {{Heart}}",
            },{
                battleFantasy.Items.BF_FAST_DIE,
                "飞骰",
                "没时间了, 开ROLL!",
                "{{Collectible105}} 重随房间内的道具#20% 的概率复制房间内的一个道具#{{ArrowDown}} {{ColorCyan}}有概率连续重随5次, 而后失去飞骰{{CR}}#上述效果生效后, 有25%的概率{{ColorYellow}}在下一层再次遇到飞骰{{CR}}",
                {CAR="有概率复制2个道具, 概率互相独立#重随效果不会复制",
                BEL="在{{DevilRoom}}恶魔房使用时, 33%的概率复制道具",
                ABY="1.25速"}
            },{
                battleFantasy.Items.BF_FUNNEL,
                "漏斗",
                "属性输送",
                "{{ArrowDown}} 将高于基础值的{{Speed}}{{Range}}{{Shotspeed}}重置为基础值#{{ArrowUp}} 将这些属性重新分配至{{Tears}}{{Damage}}",
                {ABY="蝗虫的速度减半, 伤害x1.5"}
            },{
                battleFantasy.Items.BF_HALF_DOLLAR,
                "50美分",
                "稀有款硬币!",
                "{{SecretRoom}} 可以通过击败隐藏房的超级贪婪获取#{{Coin}} +50美分#40% 的概率将1美分转换为粘硬币, 否则消失",
                {ABY="2%的概率在命中时生成粘硬币",
                QUA=1},--你丫什么资格跟纸币平起平坐?
            },{
                battleFantasy.Items.BF_HALLOWED_CANDLE,
                "神圣蜡烛",
                "沐浴在守护之火中",
                "使用后, 朝指定方向发射圣火#与红蜡烛相比, 圣火的伤害更高, 持续时间更久#站在圣火的范围内获得{{Tears}} 2x射速, {{Damage}} 1.25x伤害和{{ColorPink}}追踪泪弹{{CR}}",
                {CAR="一次发射2簇圣火",
                VIR="魂火的生命较低, 弹具有更高的伤害和射速, 发射追踪泪弹",
                ABY="造成1.1x伤害的追踪蝗虫"}
            },{
                battleFantasy.Items.BF_HAND_OF_HEAVEN,
                "天堂之手",
                "他在等一份神圣的祭品",
                "{{Warning}} 一次性! #{{Battery}} 有概率将电池替换为{{EternalHeart}}#{{EternalHeart}} 自动消耗血条内的永恒之心并收集#根据收集的永恒之心, 生成至少一个{{AngelRoom}}天使道具#最好的结果为收集4{{EternalHeart}}的情况, 更多的永恒之心会被返还({{GarlinIcon}}因未知漏洞可能会出现牛奶)#{{ArrowDown}} 最好别把4个永恒之心的结果拿到{{DevilRoom}}里面用...",
                {VIR="具有更高生命的魂火, 熄灭后生成{{EternalHeart}}",
                BEL="若消耗了2-3个{{EternalHeart}}, 在道具奖池中加入{{DevilRoom}}道具#取消在恶魔房使用4{{EternalHeart}}时的亏损",
                ABY="在拥有永恒之心时造成+15伤害的蝗虫",
                QUA=3}
            },{
                battleFantasy.Items.BF_HEALING_SPELL,
                "治疗法术",
                "充能形回春",
                "恢复1{{Heart}}#{{Heart}} 如果治疗量超过了角色的生命上限, 转而获得一个40s内衰减的全属性提升#!!! 属性提升无法叠加, 只会重置",
                {CAR="恢复2红心, 无法提供两倍的全属性提升",
                BEL="成功治疗时, 同时获得{{HalfBlackHeart}}",
                CONF={battleFantasy.Items.BF_NATALIES_RIBBON,"RibbonSpell"}}
            },{
                battleFantasy.Items.BF_HOLY_BOMBS,
                "神圣炸弹",
                "+7炸弹 + 神圣爆破",
                "{{Bomb}} +7炸弹#炸弹爆炸会生成一个暂时的神圣光环, 角色在其中获得{{Tears}} 1.5x射速, {{Damage}} 1.25x伤害, {{ColorPink}}追踪泪弹{{CR}}和{{ColorYellow}}爆炸免疫{{CR}}#炸弹爆炸时若范围内没有敌人, 同时释放X向圣光",
                {ABY="追踪敌人的蝗虫, 每次攻击有25%的概率爆炸, 造成20伤害",
                CONF={52,"drFetusHolyBomb"}}
            },{
                battleFantasy.Items.BF_MOMS_SHAMPOO,
                "妈妈的洗发剂",
                "射速 + 伤害上升",
                "{{ArrowUp}} +0.6 {{Tears}}射速#{{ArrowUp}} +0.3 {{Damage}}伤害"
            },{
                battleFantasy.Items.BF_MOUTHWASH,
                "漱口水",
                "射速上升 + 射程下降",
                "{{ArrowUp}} +0.85 {{Tears}}射速#{{ArrowDown}} -1.5 {{Range}}射程"
            },{
                battleFantasy.Items.BF_NAIL_CLIPPERS,
                "指甲剪",
                "咔擦",
                "使用后, 朝最近的敌人发射一个指甲泪弹, 造成{{ColorYellow}}3{{Damage}}+10{{CR}}, 并施加{{BleedingOut}}流血效果#{{Warning}} 每层只有10个指甲要剪, 继续剪将会造成伤害, 优先失去红心#自伤时不会发射指甲, 而是1.5倍伤害的血泪",
                {VIR="生命值更低的魂火, 熄灭后对附近的敌人施加流血",
                BEL="指甲{{Collectible257}}燃起来了",
                ABY="2%的概率施加{{BleedingOut}}流血的蝗虫",
                MOD={STEEL=true}}
            },{
                battleFantasy.Items.BF_NATALIES_RIBBON,
                "娜塔莉的蝴蝶结",--我不会再回去了(跳进染缸)
                "治愈带来神力",
                "{{Heart}} 每拾取1红心, 15%的概率生成等量的{{SoulHeart}}#{{RottenHeart}} 腐心视作半个红心#{{Luck}} 幸运36: 33%",
            },{
                battleFantasy.Items.BF_PHYRNNAS_LYRE,
                "Phyrnna的竖琴",--存疑
                "创造之声",--存疑
                "15%的概率发射一枚造成至少15伤害的泪弹#这枚泪弹同时会造成15溅射伤害并施加{{Confusion}}混乱#{{Luck}} 幸运16: 50%",
                {CONF={
                    {{CollectibleType.COLLECTIBLE_SOY_MILK,CollectibleType.COLLECTIBLE_ALMOND_MILK},"MilkyLyre"},
                    {52,"DrLyre"}
                },MOD={MUSIC=true}}
            },{
                battleFantasy.Items.BF_SERPENS,
                "巨蛇座",
                "蛇行泪弹",
                "20%的概率额外发射2束蛇形泪弹#{{Poison}} 蛇头泪弹会施加中毒, 且有5%的概率生成一个快速消失的{{HalfHeart}}#蛇尾泪弹造成40%的伤害#{{Trinket"..TrinketType.TRINKET_WIGGLE_WORM.."}} 所有蛇形泪弹为蛇形弹道(废话)",
                {ABY="30%的概率施加{{Poison}}中毒的蝗虫"}
            },{
                battleFantasy.Items.BF_SHATTERED_HEADPHONES,
                "坏掉的耳机",
                "终于安静了",--存疑
                "{{ArrowUp}} +0.4 {{Tears}}射速#20% 的概率在杀死敌人时生成一个音符环绕物#音符可以抵挡3次敌弹, 而后伤害附近的敌人并{{Confusion}}施加混乱",
                {BFF="音符伤害翻倍",
                MOD={MUSIC=true}}
            },{
                battleFantasy.Items.BF_SPIRIT_BURNER,
                "魂油灯",
                "融毁灵魂",
                "持有时, 敌人有7.5%的概率掉落一个魂石#!!! {{ColorRed}}任何魂石不会在离开房间后保留{{CR}}#使用后, 消耗持有的魂石并存储; 存储3个魂石后, 再次使用会根据存储的魂石的品质生成掉落物或道具#{{GarlinIcon}} 可在死海卷轴中设置是否显示魂石品质",
                {BEL="{{Card84}}犹大的魂石具有更高的品质",--不是你丫?
                ABY="7.5%的概率在杀死敌人后生成魂石",
                MOD={GLASS=true},
                QUA=3}--魂石爆率挺高的, 但魂石不保存全部变成其他掉落物那跟里蓝人没有炸弹有什么区别（难怪给重随的魂石低品质）
            },{
                battleFantasy.Items.BF_SPORE_SAC,
                "孢子囊",
                "喷毒器",
                "{{Poison}} 对靠近的敌人施加中毒#每发射一枚泪弹, 在角色周围的随机位置生成孢子, 孢子具有{{ColorPink}}跟踪{{CR}}, {{ColorFade}}灵体效果{{CR}}, 造成125%的伤害#{{ArrowDown}} 每30s麻痹角色(具有特效提示)",
                {ABY="造成0.2x伤害的蝗虫, 25%的概率施加{{Poison}}中毒或石化",
                CONF={
                    {battleFantasy.Items.BF_SPORE_SAC,"MultySpore"},
                    {{114,118,68},"QuickDam"},
                    {52,"DrSpore"}
                }}
            },{
                battleFantasy.Items.BF_SUCCUBUS_HORN,
                "魅魔的角",
                "愿汝敌不堪一击",
                "{{ArrowUp}} +1 {{Damage}}伤害#{{Charm}} 有概率发射魅惑泪弹#{{Charm}} 魅惑的敌人受到的任何伤害x1.5#{{Luck}} 幸运27: 100%",
                {ABY="造成1.5x伤害的蝗虫, 有5%的概率施加{{Charm}}魅惑",
                MOD={FEM=true}}
            },{
                battleFantasy.Items.BF_SUNFLOWER,
                "向日葵",
                "5000米开外...",
                "{{Tears}} 角色与{{BossRoom}}头目房每隔1个房间, 获得+0.25射速#{{ArrowUp}} 若本层未遇到{{PlanetariumChance}}星象房, 进入下一层获得3个随机属性提升#{{GreedMode}} 与头目波次相差数个波次时, 每个波次提供+0.25射速",
            },{
                battleFantasy.Items.BF_SUS_HEART,
                "可疑的心",
                "闻起来...好像能吃?",
                "生成2个蓝苍蝇, {{HalfHeart}} 半个红心 或者 {{RottenHeart}} 1腐心",
                {VIR="有概率发射毒性泪弹的魂火",
                BEL="25% 的概率将蓝苍蝇替换为瘟疫蝗虫",
                ABY="5%的概率施加{{Poison}}中毒的蝗虫"}
                --QUA=1      想乳一下腐烂心主动但还是算了吧
            },{
                battleFantasy.Items.BF_WHITE_HABANERO,
                "白色哈瓦那",
                "圣火攻击",
                "有概率在攻击时额外发射一团圣火#圣火造成3倍伤害, 且能提供一个光环, 光环内的角色获得{{Tears}} 2x射速, {{Damage}} 1.25x伤害和{{ColorPink}}追踪泪弹{{CR}}#{{Luck}} 幸运20: 20%",
            },{
                battleFantasy.Items.BF_WHITE_KEY,
                "白钥匙",
                "永恒回报",
                "{{HolyChest}} 在一些特定的房间内生成永恒箱子#在永恒箱子上花费钥匙{{ColorYellow}}有50%的概率回本{{CR}}#从永恒箱子中出现的道具将在两种选择中循环, 另外一个道具来自{{AngelRoom}}",
                {ABY="造成1.75x伤害的追踪蝗虫"}--跟妈妈的钥匙一桌
            },{
                battleFantasy.Items.BF_FALLEN_WING,
                "堕者羽翼",
                "交替之力",
                "{{CurseBlind}} 拾取该道具后, 每拾取一个道具from the opposite deal room, 获得{{Damage}} +1.5伤害#拾取错误的交易不会有惩罚#每层开始获得{{Collectible498}}的效果, 受伤后失去#20%的概率将{{Slotmachine}}老虎机替换为{{Confessional}}忏悔室",
            },{
                battleFantasy.Items.BF_WRAPPED_CANDY,
                "包装糖果",
                "伤害上升 + 移速成长",
                "{{ArrowUp}} +0.7 {{Damage}}伤害#{{ArrowUp}} 每15s获得一次+0.01 {{Speed}}移速",
                {QUA=2}--谁要你移速啊天秤吗
            },{
                "Mom's Flowers",
                "妈妈的花",
                --"射程上升 + 未被接受的礼物",
                "射程上升 + 作业写完了没有",
                "{{ArrowUp}} +0.2{{Tears}}射速#{{ArrowUp}} +2{{Range}}射程#拾取后生成3个随机掉落物"
            },{
                battleFantasy.Items.BF_SOUR_BREAD,
                "酸面包",
                "如果它还是好的吐司面包...",
                "{{EmptyHeart}} +1空心之容器#{{HalfHeart}} 治疗0.5红心#{{ArrowUp}} +2{{Range}}射程"
            },{
                battleFantasy.Items.BF_WISHING_ORB,
                "许愿珠",
                "一切愿望...",
                "生成随机掉落物; 当房间内已有16+个掉落物后触发{{Collectible"..CollectibleType.COLLECTIBLE_D20.."}}二十面骰#基于所处的特殊房间或是否清理房间, 额外触发一个特殊效果(可以按Tab查看, 但是需要开英文EID才能看见而且没翻译嘻嘻)",
                {VIR="熄灭后生成随机掉落物的魂火, 有概率根据魂火生成时所处的房间类型生成特定掉落物"}
            },{
                battleFantasy.Items.BF_PX_41,
                "PX-41血清",
                "伤害上升, 稳定性下降",
                "{{Warning}} {{Damage}}获得介于50% - 200%的随机伤害倍率#每次进入房间重随该伤害倍率#{{Collectible201}} 金属道具可以提升10%可获得的伤害倍率上限, 最高可达300%",
                {QUA=2,
                ABY="造成50% - 200%随机伤害的紫色蝗虫",
                MOD={STEEL=true}}
            },{
                battleFantasy.Items.BF_MONEY_MAKING_GUIDE,
                "挣大钱教程",
                "同类书籍中的佼佼者",
                "{{Coin}} 持有时, 进入商店会生成3-5美分, 进入黑市则生成5-8美分#{{Coin}} 敌人死亡后有7%概率掉落硬币#{{Warning}} 一次性道具, 使用后立即获得15-20硬币",
                {VIR="该魂火熄灭后角色获得7美分",
                BEL="使用时, 每有1美分获得永久伤害+0.04"}
            },{
                battleFantasy.Items.BF_IMPOSSIBLE_QUIZ_BOOK,
                "不可能解密书",--捏他自同名游戏, 中文名不知道
                "无脑标记",
                "{{Bomb}} 将房间内的即爆炸弹变成可拾取的炸弹#使用后, 使房间内的一个随机敌人连续受到1-5次或者10-15次基于楼层数的伤害, 每次间隔0.5s",
                {QUA=1,--泛用性太少了，伤害还不如死灵书
                VIR="熄灭后释放10向血泪或一个即爆炸弹的魂火"}
            },{
                battleFantasy.Items.BF_CLUMP_OF_SEEDS,
                "种子堆",--捏他Duck Life
                "尝起来像泥土",
                "敌人死亡后有10%的概率生成种子堆掉落物#收集种子堆掉落物, 进入下一层获得小幅度随机属性增益{{Speed}}{{Tears}}{{Shotspeed}}",
                {QUA=1}--总感觉成长太慢了是幻觉吗
            },{
                battleFantasy.Items.BF_GIANT_PURPLE_PILL,
                "我找到枚超大号紫色怪药",
                "完美药方",
                "{{EmptyHeart}} +1心之容器, {{Heart}} 回满生命, 并获得+2{{SoulHeart}}魂心#{{ArrowUp}} +0.15 {{Speed}} 移速#{{ArrowUp}} +0.4 {{Tears}} 射速#{{ArrowUp}} +1.5 {{Range}} 射程#{{ArrowUp}} +0.16 {{Shotspeed}} 弹速#{{ArrowUp}} +1 {{Luck}} 幸运#{{ArrowUp}} 当前所有主动道具回满充能, 持有的所有饰品全部吞咽",
            },{
                battleFantasy.Items.BF_CRYBERRY,
                "哭梅",
                "不嘻嘻",
                "{{SoulHeart}} 获得1魂心#{{ArrowUp}} +0.4 {{Tears}} 射速#{{ArrowUp}} 1.16x 泪弹体积",
                {QUA=2}--你是不是以为自己属性给的很慷慨？
            },{
                battleFantasy.Items.BF_RED_SQUARE,
                "红色小方块",
                "别把自己绕晕了",
                "{{ArrowUp}} +0.7 {{Tears}} 射速#{{ArrowUp}} 体型下降#{{Collectible437}} 受到伤害会将角色传送至进入房间的门口, 并且重打该房间#自伤和已清理房间只有15%的概率触发",
                {QUA=0}--我不明白
            },{
                battleFantasy.Items.BF_100_GRAINS_OF_SUGAR,
                "百粒糖",
                "太糖了",--能把too much sugar说成这样的也有够糖的
                "{{Collectible"..battleFantasy.Items.BF_CAVITY.."}} 在当前房间内有概率发射牙齿泪弹, 且使绝大部分特殊泪弹获得伤害增幅#持有时, 20%的概率将道具变成{{Collectible"..battleFantasy.Items.BF_WRAPPED_CANDY.."}}包装糖果, 直到角色已拥有",
                {QUA=1}
            },{
                battleFantasy.Items.BF_FANCY_PANTS,
                "花样裤衩",
                "看着就很符你的气质!",
                "{{ArrowUp}} 进入房间的前5s获得+2.0 {{Speed}} 移速#{{BossRoom}} 在头目房会持续15s",
                {CONF={444,"FancyPantsAdventure"},
                QUA=1}--真几把当移速很有用是吧
            },{
                battleFantasy.Items.BF_PURPLE_MELON,
                "紫瓜",
                "敌人弱化?",
                "有敌人被生成时, 30%的概率将其退化(90%), 重随(5%), 或移除(5%)#{{Luck}} 幸运上升会将部分重随概率转化为移除概率",
                {QUA=1}
            },{
                battleFantasy.Items.BF_AGAR_JELLY,
                "琼脂果冻",
                "分而治之",--是对某国外多人游戏Agar.io. 的捏他但我不认识（
                "15%的概率在受到伤害后生成一个随机饰品#当地上有至少2个饰品时, 效果改为将那些饰品吞掉#每吞下一个饰品会治疗半颗心{{HalfHeart}}{{HalfSoulHeart}}",
                {ABY="有5%概率{{Collectible631}}切分敌人的天蓝色蝗虫"}
            },{
                battleFantasy.Items.BF_NGU,
                "NGU",
                "升值器",
                "持有时, 每分钟获得{{Tears}} {{Damage}} {{Range}} 或 {{Shotspeed}} 的小幅度提升#使用后, 消耗1美分, 或1炸弹, 或1钥匙(硬币优先, 而后炸弹), 缩减获得属性提升的冷却1s#冷却无法少于1s",
                {VIR="每清理一个房间, 魂火的泪弹永久获得伤害+0.2, 上限+3",
                BEL="该道具提供的伤害增幅翻3倍",
                ABY="固定造成4.2伤害的蝗虫"}
            },{
                battleFantasy.Items.BF_PANACEA,
                "万能药",
                "奇迹疗效",
                "{{HealingRed}} 治疗3{{Heart}}#{{Pill}} 生成一个药丸#{{OnyxCard}} 生成一个随机玛瑙塔罗牌",
            },{
                battleFantasy.Items.BF_POOL_BLASTER,
                "水池炮",
                "把它们从水里肘飞!",
                "使用后, 发射3个{{ColorYellow}}弹射球体{{CR}}, 每个造成15伤害, 且会随着楼层数进一步提升",
                {QUA=1,
                VIR="弹射球体的落点处生成无法攻击的固定魂火, 熄灭后发射3发弹射球体, 每个造成4.5伤害",
                BEL="弹射球体获得强击退"}
            },{
                battleFantasy.Items.BF_BAD_ICE_CREAM,
                "坏蛋冰淇淋",
                "冻结吐息",
                "{{Freezing}} 使用后朝攻击方向发射一串{{ColorCyan}}冰风{{CR}}造成伤害#对靠近的敌人造成更高的伤害",
                {VIR="发射冰系泪弹的魂火",
                ABY="有5%的概率{{Freezing}}冻结敌人的天蓝色蝗虫",
                MOD={ICE=true}}
            },{
                battleFantasy.Items.BF_COSMIC_PEARL,
                "末影珍珠",
                "TP跑打!",
                "有概率发射{{ColorGreen}}传送泪弹{{CR}}把敌人传送至远处#传送中的敌人受到更少的伤害, 但也不会对角色造成伤害#敌人会受到基于传送距离和角色DPS的额外伤害#{{Luck}} 概率受幸运影响",
                {ABY="根据角色的射速属性造成额外伤害的蓝绿色蝗虫"}
            },{
                battleFantasy.Items.BF_NOTHING_BURGER,
                "空心汉堡",--指代无足轻重之物
                "并非全属性提升",
                "{{ColorRainbow}}给那么多属性一定是个{{Quality4}}道具吧!#{{ArrowUp}} +8 泪弹高度#{{ArrowUp}} 1.04x 泪弹体积#{{ArrowUp}} 体型上升#{{ArrowUp}} 有概率发射一个棕色泪弹, 使那个泪弹看起来像棕色的#{{ArrowUp}} 泪弹造成+0.2伤害和更强的后坐力, 有5%的概率施加随机异常状态#{{ArrowUp}} 拾取后为持有的主动道具+1充能, 并生成1硬币#{{Blank}} {{ColorGray}} Nothing Burger算是个俚语, 意为空而无用之物",
                {CONF={"5.350.80","EVIL"}}
            },{
                battleFantasy.Items.BF_BLACK_TONIC,
                "黑色补品药",
                "尝起来像玛瑙",
                "{{OnyxCard}} 拾取后, 生成随机玛瑙塔罗牌#{{OnyxCard}} 每层初始房间生成一个随机玛瑙塔罗牌#机器和标记石头有概率爆出{{OnyxCard}}玛瑙塔罗牌#允许部分与卡牌相关的道具生成玛瑙塔罗牌",
                {CONF={
                    {{194,624},"OnyxPack"},
                    {{158,85},"OnyxDeck"},
                    {battleFantasy.Items.BF_CHANCE_CARD,"ChanceOnyx"},
                    {battleFantasy.Items.BF_WISHING_ORB,"WishingOnyx"},
                }}
            },{
                battleFantasy.Items.BF_ANGRY_RED_BUTTON,
                "愤怒的红按钮",
                "别几把按了",
                "杀死当前房间内的所有敌人和敌弹#使用次数越多, 按钮越{{ColorRed}}愤怒{{CR}}#极度愤怒的按钮将可能会整蛊角色",
                {VIR="有50%概率发射护盾泪弹的魂火"}
            },{
                battleFantasy.Items.BF_CURSED_THORN,
                "诅咒棘刺",
                "空洞之王",
                "落地的敌弹有概率生成一个{{ColorLime}}剧毒宝石{{CR}}, 有6s的时间将其捡起来#{{Collectible"..CollectibleType.COLLECTIBLE_IPECAC.."}} 拾取会瞬间发射一个跟踪{{ColorLime}}爆破泪弹{{CR}}, 发射方向取决于角色与{{ColorLime}}剧毒宝石{{CR}}之间的方向#{{ColorLime}}爆破泪弹{{CR}}会留下一个3s的{{ColorLime}}绿色水迹{{CR}}",
                {ABY="10%概率施加中毒的黑色蝗虫"}
            },{
                battleFantasy.Items.BF_CURSE_OF_REMORSE,
                "懊悔诅咒",
                "死亡带来苦痛",
                "{{Warning}} 杀死房间内最后一个敌人时对自己造成伤害(优先失去红心), 在当前楼层获得{{Tears}}射速提升#当角色处于危险血量或者最后一个敌人是头目则不触发效果#射速提升值取决于最后死亡的敌人的HP, HP越低属性越高",
            },{
                battleFantasy.Items.BF_RETURN_TO_SENDER,
                "物归原主",
                "谢了不用",
                "受到伤害会释放一个泪弹瞄准伤害源#{{Heart}} 根据角色拥有的最弱的心的类型, 那个泪弹将获得不同的效果和不同的伤害:#{{EmptyBoneHeart}} 弹射骨头泪弹, 4x伤害#{{CoinHeart}} 弹射点金泪弹, 4x伤害#{{Heart}} 留下大片血迹的弹射血泪, 3x伤害#{{SoulHeart}} 命中分裂泪弹, 4.5x伤害#{{BlackHeart}} 恐惧跟踪泪弹, 6x伤害",
                {MOD={BLOOD=true}}
            },{
                battleFantasy.Items.BF_THUNDER_FLOWER,
                "闪电花",
                "充能形霹雳哨兵",
                "生成一个静止的跟班, 朝靠近的敌人发射中等距离激光, 造成{{ColorYellow}}{{Damage}} x 2 + 20{{CR}}的伤害#{{Coin}} 死于激光的敌人有50%的概率掉落硬币",
                {BFF="伤害翻倍",
                VIR="发射电系泪弹的魂火",
                CONF={{"5.350.127","5.350.141"},"FamiliarBuff"}}
            },{
                battleFantasy.Items.BF_HAZMAT_MASK,
                "防毒面罩",
                "化身瘟神",
                "{{BlackHeart}} 获得1黑心#{{Poison}} 有概率随机对附近的敌人施加中毒#角色每有一个{{BlackHeart}}黑心, 施加中毒的范围就会增大#被施加中毒的敌人有80%的概率受到另一个异常状态#免疫毒云",
                {CONF={battleFantasy.Items.BF_SPORE_SAC,"WoxianzaiButongkule"},
                ABY="10%概率施加中毒的黑色蝗虫"}
            },{
                battleFantasy.Items.BF_GOLDEN_COOKIE,
                "黄金曲奇",
                "生命上升 + 让我们一起摇摆",
                "{{Heart}} +1心之容器#{{HealingRed}} 治疗1红心#{{GoldenHeart}} 获得1金心#有时候会出现一个{{ColorYellow}}提示{{CR}}, 然后狂搓移动和攻击键以叠加{{ColorYellow}}计数器{{CR}}#{{Damage}} 根据{{ColorYellow}}计数器{{CR}}数值, 在当前楼层获得伤害上升",
                {MOD={GOLD=true}}
            },{
                battleFantasy.Items.BF_SCARLET_HEADBAND,
                "猩红头巾",
                "速通奖励",--存疑
                "击败当前楼层的头目后生成数个{{Coin}}硬币#每清理一个房间可以增加生成硬币的数量, 但是在同一层内滞留太久也会减少生成硬币的数量",
                {QUA=1,
                ABY="1.25倍速度的蝗虫"}
            },{
                battleFantasy.Items.BF_STRANGE_BUBBLE,
                "奇怪的泡泡",
                "好怪",
                "斜向运动的跟班, 时常根据自身颜色发动攻击#进入新房间后变色",
                {BFF="伤害翻倍",
                CONF={{"5.350.127","5.350.141"},"FamiliarBuff"}}
            },{
                battleFantasy.Items.BF_REFRACTION,
                "折射光线",
                "光线弯折术",
                "敌人生成时有概率获得{{Refracted}}折射效果#{{Refracted}} 折射效果下的敌人会将角色的泪弹附加{{Collectible"..CollectibleType.COLLECTIBLE_HOLY_LIGHT.."}}圣光效果",
                {ABY="有15%的概率施加折射效果的蝗虫"}
            },{
                battleFantasy.Items.BF_GLASS_CANNON_MK2,
                "玻璃大炮-MK2",
                "轻拿轻放",
                "使用后, 连发3发玻璃弹丸, 造成{{ColorYellow}}{{Damage}} + 4.2 {{CR}}的伤害#{{Warning}} 命中敌人或落地后的玻璃弹丸会变为玻璃碎片, 具有灵体穿透效果, 且能造成3倍伤害,!!!但是具有友伤#{{BleedingOut}} 玻璃弹丸和玻璃碎片均可对敌人施加流血效果",
                {VIR="发射分裂泪弹的低生命魂火",
                BEL="受到来自玻璃碎片的伤害时触发彼列之书的效果",
                MOD={GLASS=true}}
            },{
                battleFantasy.Items.BF_ROLLER_SKATES,
                "滚轮溜冰鞋",
                "让你飞起来!",
                "使用后, 在轮滑和步行形态间切换#{{Speed}} 轮滑状态下, 获得更高的移速和惯性, 基于移动的速度有概率肘飞敌人和敌弹而不受到伤害",
                {QUA=1,
                VIR="轮滑状态下跟随3个魂火(不会攻击)",
                BEL="轮滑状态下, 如果速度够快将会留下火焰",
                ABY="1.5倍速度的灰色蝗虫"}
            },{
                battleFantasy.Items.BF_PLASMA_WHIP,
                "等离子鞭",
                "闪电五连鞭!",
                "在当前房间内获得闪电鞭的攻击方式: 双击攻击键甩鞭#造成75%的伤害#闪电鞭命中敌人后释放数道电弧, {{Burning}} 有20%的概率灼烧敌人",
                {CAR="多次使用会增加闪电鞭的伤害",
                VIR="发射电系泪弹的魂火",
                CONF={
                    {205,"PlasmaAhAhAH"},
                    {{63,116,520,603,"5.350.3","WHIPPPPPP"}}
                }}
            },{
                battleFantasy.Items.BF_GLITCHED_FLAME,
                "故障之焰",
                "",
                "将房间内的道具拆分成2个道具, 分别为原道具ID+1 和 +36的道具#只能拾取其中一个#{{Collectible"..CollectibleType.COLLECTIBLE_TMTRAINER.."}} 获得一个故障效果(如贴图错误, 触发特殊效果等)#!!! 如果启用了邪魔典纸, 5%的概率生成6个蜜蜂敌人 ",
                {CAR="拆分道具的效果不会翻倍",
                VIR="发射具有2个随机泪弹效果的泪弹的故障魂火",
                ABY="造成3 - 1000随机伤害的蝗虫"}
            },{
                battleFantasy.HiddenItems.BF_SATANIC_SARDONYX,
                "撒旦的玛瑙",
                "战争幻想仿造品",
                "{{Quality4}} 省流: {{Collectible"..battleFantasy.HiddenItems.BF_SATANIC_SARDONYX.."}}  >  {{Collectible"..battleFantasy.Items.BF_CRYSTAL_SHARD.."}}#{{ColorGray}} 据说该道具是因为水晶碎片的贴图被另一个模组偷了所以作者做了这个道具((",
            }
        }
        local trinkets={
            {
                battleFantasy.Trinkets.BF_BENT_CARD,
                "折皱卡",
                "仍旧留有力量",
                "清理房间后, 37.5%的概率获得{{Coin}} 1美分, {{Bomb}} 1炸弹或{{Key}} 1钥匙#清理房间后, 37.5%的概率将{{Coin}}{{Bomb}}{{Key}}其中一个数量-1",
                {GOLD={INFO={append=true},TEXT={"可以获得2个物资","可以获得2个物资","可以获得3个物资"}}}
            },{
                battleFantasy.Trinkets.BF_BLACK_TICKET,
                "黑票",
                "调皮的恶作剧",
                "房间内生成的任何道具均变为{{DemonBeggar}}道具池道具#不会影响后生成的道具#2层后, 持有该饰品时受伤会将其破坏, 生成2个{{DemonBeggar}}, 并将饰品变为{{Trinket" .. tostring(battleFantasy.Trinkets.BF_TORN_TICKET) .. "}}撕碎的黑票",
                {GOLD={INFO={append=true},TEXT={"生成3个{{DemonBeggar}}","生成3个{{DemonBeggar}}","生成4个{{DemonBeggar}}"}}}
            },{
                battleFantasy.Trinkets.BF_CHEWING_GUM,
                "口香糖",
                "小心别吞了...",
                "进入下一层时吞掉持有的饰品",
                {GOLD={INFO={append=true},TEXT={"自动吞服该饰品!#有33%的概率在进入下一层后生成一个饰品","自动吞服该饰品!#有33%的概率在进入下一层后生成一个饰品","自动吞服该饰品!#有33%的概率在进入下一层后生成一个饰品"}}}
            },{
                battleFantasy.Trinkets.BF_ECTOPLASM,
                "外胚层质",
                "残余的力量",
                "12.5%的概率在受伤后获得一层{{HolyMantle}}神圣屏障",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                battleFantasy.Trinkets.BF_FALLENS_BLOOD,
                "堕落恶魔的血",
                "血将传扬他的圣言",--存疑
                "{{DevilRoom}} 恶魔房提供一个额外的交易#{{AngelRoom}} 天使房有50%的概率额外生成一个恶魔交易",
                {GOLD={INFO={append=true},TEXT={"提供两个交易","提供两个交易","提供三个交易"}}}
            },{
                battleFantasy.Trinkets.BF_INCUBUS_EYE,
                "淫魔之眼",
                "滋养它们的悲恸",
                "跟班有50%的概率发射双倍子弹",
                {GOLD={INFO={append=true},TEXT={"必定发射双倍子弹","必定发射双倍子弹","必定发射双倍子弹"}}}
            },{
                battleFantasy.Trinkets.BF_OCD,
                "强迫症",
                "皆应完美",
                "将除{{Speed}}{{Shotspeed}}外的属性向上取整#{{Speed}}{{Shotspeed}}取至小数点后一位",
                {GOLD={INFO={append=true},TEXT={"调整属性前获得全属性提升","调整属性前获得全属性提升","调整属性前获得全属性提升"}}}
            },{
                battleFantasy.Trinkets.BF_PLASTIC_KNIFE,
                "塑料刀",
                "能用...应该",
                "{{BleedingOut}} 10%的概率发射施加流血的泪弹",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                battleFantasy.Trinkets.BF_SHARPENING_STONE,
                "磨刀石",
                "用岩石的力量磨练自己",
                "每摧毁一个石头, 在当前房间内获得+0.06 {{Damage}}伤害",
                {GOLD={INFO={append=true},TEXT={"伤害上升","伤害上升","伤害上升"}}}
            },{
                battleFantasy.Trinkets.BF_SUSHI,
                "寿司",
                "优良猫食",
                "击败头目后, 有20%的概率额外生成{{Collectible145}} 嗝屁猫, {{Collectible4}} 柯吉猫或{{Collectible38}} 塔米猫相关道具#{{Collectible81}} 死猫 和{{Collectible4}} 柯吉猫类道具的权重较低#在子宫2或尸宫1之后无效",
                {CONF={249,"CatOption"},
                GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                battleFantasy.Trinkets.BF_TORN_TICKET,
                "撕碎的黑票",
                "撕成两半",
                "{{DevilRoom}} 恶魔房内的任何道具有50%的概率变为{{DemonBeggar}}道具池的道具"
            },{
                battleFantasy.Trinkets.BF_TUNISIAN_DIAMOND,
                "突尼西钻石",
                "向时代致敬",
                "{{ArrowUp}} 每有一个致敬Flash游戏的道具就获得+0.7 {{Damage}} 伤害",--妈的我不想列举了
                {GOLD={INFO={findReplace=true},TEXT={"0.7","1.4","2.1"}}}
            },{
                battleFantasy.Trinkets.BF_SWORD_TOKEN,
                "剑币",
                "头目战利品提升",
                "{{BossRoom}} 每在头目房拾取一个道具则生成1-4个随机掉落物",
                {GOLD={INFO={findReplace=true},TEXT={"1-4","2-8","3-12"}}}
            },{
                battleFantasy.Trinkets.BF_VAMPIRE_FANG,
                "吸血鬼之牙",
                "血 = 力",
                "{{BloodDonationMachine}} 进入新楼层后生成献血机#{{Collectible135}} 献血袋和{{Collectible119}} 血袋额外提供+1 {{Damage}} 伤害",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}},
                CONF={62,"VampireBuff"}}
            },{
                battleFantasy.Trinkets.BF_USB_CONVERTER,
                "数据线转换器",
                "额外充能增益",
                "2x1, 1x2, 0.5x2, 和 2x0.5 规格的房间额外提供1充能",
                {GOLD={INFO={findReplace=true},TEXT={"1充能","2充能","3充能"}}}
            },{
                battleFantasy.Trinkets.BF_TINY_TRANSISTOR,
                "小晶体管收音机",
                "电刺激你的朋友",
                "{{Collectible"..CollectibleType.COLLECTIBLE_JACOBS_LADDER.."}} 跟班的泪弹有25%的概率导电并获得伤害+1.5",
                {GOLD={INFO={findReplace=true},TEXT={"25","50","75"}}}
            },{
                battleFantasy.Trinkets.BF_POCKET_DICTIONARY,
                "口袋字典",
                "语言学砖佳",
                "根据当前种子选择一个随机字母#包含该字母的{{ColorYellow}}非任务{{CR}}道具将被重随#更难抽到VOWELS",
            },{
                battleFantasy.Trinkets.BF_AWESOME_FACE,
                "嬉皮笑脸",
                "嘻嘻",
                "敌人受到的伤害+1",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                battleFantasy.Trinkets.BF_GREATER_SMOKE,
                "更牛逼的烟",
                "这烟...是个好烟!",
                "烟雾箱子的出现率提升4%#{{Bomb}} 当烟雾箱子中出现易爆粉尘时, 生成一个随机的炸弹掉落物",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                battleFantasy.Trinkets.BF_DRACONIC_PENNY,
                "龙焰硬币",
                "财富即主动权",
                "{{Collectible166}} 20%的概率在拾取硬币时触发二十面骰#房间内拥有多个掉落物时概率会略微下降",
            },{
                battleFantasy.Trinkets.BF_JALAPENO_POPPER,
                "青椒按扣",
                "巨辣无比开胃小菜",--来感觉了(?
                "{{Collectible"..CollectibleType.COLLECTIBLE_BIRDS_EYE.."}} 25%的概率在当前房间内获得随机辣椒效果#{{BossRoom}} 头目房内概率翻倍#{{Collectible"..battleFantasy.Items.BF_WHITE_HABANERO.."}} 白色哈瓦那的权重较低",
                {GOLD={INFO={findReplace=true},TEXT={"25","50","75"}}}
            },{
                "Crystal Soda",
                "水晶苏打",
                "闪闪发光!",
                "{{Collectible"..battleFantasy.Items.BF_CRYSTAL_SHARD.."}} 10%的概率发射水晶碎片",
                {GOLD={INFO={findReplace=true},TEXT={"10","20","30"}}}
            },{
                battleFantasy.Trinkets.BF_ELEPHANT_PLUSHIE,
                "大象公仔",
                "成就已解锁?",
                "{{ArrowUp}} {{Damage}} 每解锁一个原版成就获得+0.001 伤害修正#{{CurseBlind}} 每击败一个具有通关标记的头目获得{{Damage}}伤害+1和{{Luck}}幸运+1 (retroactive)",
                {GOLD={INFO={append=true},TEXT={"更高的伤害和幸运增幅(不包括0.001伤害修正)","更高的伤害和幸运增幅(不包括0.001伤害修正)","更高的伤害和幸运增幅(不包括0.001伤害修正)"}}}
            },{
                battleFantasy.Trinkets.BF_IMPROBABILITY_DRIVE,
                "不可能驱动",--捏他：Madness Combat
                "斗爆暴力!",
                "受到伤害时触发随机主动的效果",
                {GOLD={INFO={findReplace=true},TEXT={"随机主动","多个随机主动","多个随机主动"}}}
            },{
                battleFantasy.Trinkets.BF_PRIME_SLIME,
                "优质粘液",
                "经典彩虹泪弹",
                "{{Collectible"..CollectibleType.COLLECTIBLE_PLAYDOUGH_COOKIE.."}} 每11发泪弹中有一个2-4倍伤害的彩虹泪弹",
                {GOLD={INFO={findReplace=true},TEXT={"11","7","5"}}}
            },{
                battleFantasy.Trinkets.BF_SODA_CAP,
                "苏打瓶盖",
                "珍贵藏品",
                "当角色拥有至少99美分时, 继续拾取硬币获得永久的{{Damage}} 伤害修正#每1美分提供0.1伤害修正",
                {GOLD={INFO={findReplace=true},TEXT={"0.1","0.2","0.3"}}}
            },{
                battleFantasy.Trinkets.BF_PICKLE_CHIP,
                "腌黄瓜片",
                "酸起来了",
                "{{ArrowUp}} +0.5 {{Tears}} 射速#{{Collectible"..CollectibleType.COLLECTIBLE_SULFURIC_ACID.."}} 30%的概率发射硫酸泪弹",
                {GOLD={INFO={findReplace="true"},TEXT={"0.5","1","1.5"}}}
            },{
                battleFantasy.Trinkets.BF_MYSTERY_MEAT,
                "神秘的肉",
                "可疑的营养品",
                "每一个提供空心之容器的道具被重随成提供心之容器的道具",
            },{
                battleFantasy.Trinkets.BF_DEGRADED_PENNY,
                "退化硬币",
                "它需要进化",
                "{{ArrowDown}} 无效果#{{Trinket"..battleFantasy.Trinkets.BF_UPGRADED_PENNY.."}} 进入下一层后升级",
            },{
                battleFantasy.Trinkets.BF_UPGRADED_PENNY,
                "升级硬币",
                "耐心即力量",
                "进入新楼层后, 该饰品永久获得+10%{{Tears}} 射速倍率或+10%{{Damage}} 伤害倍率, 并获得如下增益之一: #{{ArrowUp}} +0.2 {{Speed}} 移速#{{ArrowUp}} +20%的概率发射穿透泪弹#+15%的概率将一个炸弹变为{{Collectible"..CollectibleType.COLLECTIBLE_HOT_BOMBS.."}} 炽热炸弹#+15%的概率将一个{{Key}}钥匙变为钥匙串",
                {GOLD={INFO={append=true},TEXT={"效果翻倍","效果翻倍","效果翻倍"}}}
            },{
                battleFantasy.Trinkets.BF_INTERACTIVE_BUDDY_3,
                "交互式玩偶",
                "它会承受所有伤痛",
                "具有3HP#当角色受到伤害时失去1HP, 生成二到三个随机掉落物#失去最后1HP时掉落一个福袋并失去该饰品#角色拾取有治疗效果的道具时也可以治疗该饰品",
                {GOLD={INFO={findReplace=true},TEXT={"二到三","四到六","六到九"}}}
            },{
                battleFantasy.Trinkets.BF_INTERACTIVE_BUDDY_2,
                "交互式玩偶",
                "它会承受所有伤痛",
                "具有3HP#当角色受到伤害时失去1HP, 生成二到三个随机掉落物#失去最后1HP时掉落一个福袋并失去该饰品#角色拾取有治疗效果的道具时也可以治疗该饰品",
                {GOLD={INFO={findReplace=true},TEXT={"二到三","四到六","六到九"}}}
            },{
                battleFantasy.Trinkets.BF_INTERACTIVE_BUDDY_1,
                "交互式玩偶",
                "它会承受所有伤痛",
                "具有3HP#当角色受到伤害时失去1HP, 生成二到三个随机掉落物#失去最后1HP时掉落一个福袋并失去该饰品#角色拾取有治疗效果的道具时也可以治疗该饰品",
                {GOLD={INFO={findReplace=true},TEXT={"二到三","四到六","六到九"}}}
            },{
                battleFantasy.Trinkets.BF_WARPED_PENNY,
                "异次元硬币",
                "财富即另一维度",
                "在拾取硬币时, 20%的概率储存至多10个其他饰品(类似{{Collectible523}})#已储存饰品的情况下拾取硬币会放出储存的饰品",
            }
        }
        local card={
            {
                battleFantasy.Cards.BF_GIFT_CARD,
                "礼物卡",
                "神秘的馈赠",
                "{{Collectible297}} 获得一个潘多拉的盒子的随机奖励#{{ColorGray}}如果你抽到了1美分的结果, 可能有0.05%的概率附赠一个音效--这么欧的情况我可得好好笑话你一番=)",
                {BEL="兼容同潘多拉的盒子",
                CONF={"5.350."..TrinketType.TRINKET_STRANGE_KEY,"MoreGift"}}
            },{
                battleFantasy.Cards.BF_NEG_TWO_OF_HEARTS,
                "负片红桃2",
                "物品折半?",
                "{{ArrowDown}} 对角色造成等同于一半最大生命的伤害(向下取整)#{{Heart}} 接下来20s内, 敌人死亡后会掉落快速消失的随机心掉落物#{{ColorGray}}捏他: 再来一张(Dungeons and Degenerate Gamblers)"
            },{
                battleFantasy.Cards.BF_NEG_TWO_OF_SPADES,
                "负片黑桃2",
                "物品折半?",
                "{{ArrowDown}} 失去一半的钥匙(向下取整)#{{Key}} 接下来20s内, 敌人死亡后会掉落快速消失的随机钥匙#{{ColorGray}}捏他: 再来一张(Dungeons and Degenerate Gamblers)"
            },{
                battleFantasy.Cards.BF_NEG_TWO_OF_CLUBS,
                "负片梅花2",
                "物品折半?",
                "{{ArrowDown}} 失去一半的炸弹(向下取整)#{{Key}} 接下来20s内, 敌人死亡后会掉落快速消失的随机炸弹#{{ColorGray}}捏他: 再来一张(Dungeons and Degenerate Gamblers)"
            },{
                battleFantasy.Cards.BF_NEG_TWO_OF_DIAMONDS,
                "负片方片2",
                "物品折半?",
                "{{ArrowDown}} 失去一半的钱币(向下取整)#{{Key}} 接下来20s内, 敌人死亡后会掉落快速消失的随机硬币#{{ColorGray}}捏他: 再来一张(Dungeons and Degenerate Gamblers)"
            },{--玛瑙塔罗牌，名字为自己杜撰
                battleFantasy.Cards.BF_ONYX_THE_FOOL,
                "0 - 大智若愚",--玛瑙愚者
                "抛却生命真理",
                "拆解房间内所有高品质掉落物为等价的低品质掉落物(如1镍币 -> 5美分), 然后将拆解得到的掉落物重随",
            },{
                battleFantasy.Cards.BF_ONYX_THE_MAGICIAN,
                "I - 炽热文明",
                "有形的厚障壁",
                "将房间内的所有敌弹转化为火焰",
            },{
                battleFantasy.Cards.BF_ONYX_THE_HIGH_PRIESTESS,
                "II - 玛瑙之母",
                "凭仗慈母之力",
                "{{Mom}} 在当前房间获得3个妈妈道具的效果#{{ArrowUp}} 至少有一个道具为{{Quality3}}及以上",
            },{
                battleFantasy.Cards.BF_ONYX_THE_EMPRESS,
                "III - 血凝之后",
                "汝之血, 吾之力",
                "转化至多4个最强的心为对应的血团跟班(不致死)",
                {CHAR={
                    {10,"LostEmpress",true},
                    {14,"Keepress",true}
                }}
            },{
                battleFantasy.Cards.BF_ONYX_THE_EMPEROR,
                "IV - 斥罪之皇",
                "直面万恶之源",
                "将角色传送至有2个七宗罪头目的长房间#清理该房间获得道具奖励#{{Collectible668}} 在祸兽竞技场中只会随机传送, 并生成七宗罪魂火#!!! 启用God's Gambit模组时也会传送至有2个七美德头目的房间",
                {CONF={249,"EmperorChoice"}}
            },{
                battleFantasy.Cards.BF_ONYX_THE_HIEROPHANT,
                "V - 纳垢主教",
                "生机者之双祷",
                "角色获得2个随机心, 必定不会是无用的心",
            },{
                battleFantasy.Cards.BF_ONYX_THE_LOVERS,
                "VI - 淋血之爱",
                "愿君坚守初心",
                "在60s内获得{{Collectible276}}以撒的心脏和{{Collectible448}}玻璃碎片的效果",
            },{
                battleFantasy.Cards.BF_ONYX_THE_CHARIOT,
                "VII - 故障战车",--我们机煲怎么你了
                "耐心即为力量",
                "{{ArrowDown}} 麻痹角色2s#{{ArrowUp}} 期间未受到伤害则在当前房间获得+0.5 {{Damage}} 伤害和1.75x {{Damage}} 伤害倍率",
            },{
                battleFantasy.Cards.BF_ONYX_JUSTICE,
                "VIII - 多重天平",
                "拥抱绝对公正",
                "角色获得{{Coin}}3美分, {{Bomb}}3炸弹, {{Key}}3钥匙#在30s内获得{{Collectible304}}天秤座",
            },{
                battleFantasy.Cards.BF_ONYX_THE_HERMIT,
                "IX - 流浪商人",
                "接下这笔交易?",
                "生成1-3个当前房间道具池的道具, 附上随机价格(浮动于原价与角色持有的硬币数)#离开房间后道具消失#{{GarlinIcon}} 重随后会让道具变回原价且不会因离开房间消失",
            },{
                battleFantasy.Cards.BF_ONYX_WHEEL_OF_FORTUNE,
                "X - 轮盘赌博",
                "成败在此一举",
                "触发{{Collectible"..battleFantasy.Items.BF_ETERNAL_D1.."}}永恒一面骰和{{Collectible"..CollectibleType.COLLECTIBLE_ETERNAL_D6.."}}永恒六面骰",
            },{
                battleFantasy.Cards.BF_ONYX_STRENGTH,
                "XI - 血狼破军",--?????????放飞自我了
                "杀戮才有出路",
                "在30s内获得{{Collectible"..battleFantasy.Items.BF_FUNNEL.."}}漏斗, 将多余的无用属性分配给DPS",
            },{
                battleFantasy.Cards.BF_ONYX_THE_HANGED_MAN,
                "XII - 上等祭品",
                "奋斗一无是处",
                "{{GoldenChest}} 将房间内的道具重随为随机箱子道具池的道具",
            },{
                battleFantasy.Cards.BF_ONYX_DEATH,
                "XIII - 遗忘之骸",
                "命运在汝眼前",
                "将房间内的所有箱子变为{{DirtyChest}}旧箱子#没有箱子则生成一个旧箱子",
            },{
                battleFantasy.Cards.BF_ONYX_TEMPERANCE,
                "XIV - 光辉盛宴",
                "皇室布宴重赏",
                "吞服角色所持有的饰品的一个复制#没有饰品则吞服一个随机饰品",
            },{
                battleFantasy.Cards.BF_ONYX_THE_DEVIL,
                "XV - 恶人英雄",--恶人的救世主,字数不对(
                "拥抱残破之魂",
                "生成2个烟雾箱子#{{ArrowUp}} 生成的烟雾箱子不会包含易爆烟尘",
            },{
                battleFantasy.Cards.BF_ONYX_THE_TOWER,
                "XVI - 高塔将塌",
                "在毁灭中陶醉",
                "在当前房间内, 每有一个石头被摧毁, 释放数个岩石泪弹, 并提供+0.2 {{Damage}} 衰减伤害#岩石泪弹造成25伤害, 有概率施加{{Confusion}}混乱或{{BleedingOut}}流血",
            },{
                battleFantasy.Cards.BF_ONYX_THE_STARS,
                "XVII - 宿命明星",
                "嘉奖唯有苦痛",
                "{{Collectible"..CollectibleType.COLLECTIBLE_EVERYTHING_JAR.."}} 触发百宝罐的12充效果#{{Collectible"..battleFantasy.Items.BF_WISHING_ORB.."}} 触发一个随机特殊房间效果的许愿珠",
            },{
                battleFantasy.Cards.BF_ONYX_THE_MOON,
                "XVIII - 未知妖月",
                "永远无人问津",
                "{{ArrowDown}} 失去3 {{SoulHeart}} 魂心#没有魂心则消耗心之容器#!!! {{ColorRed}}可能致死#生成一个{{QuestionMark}}未知的{{SecretRoom}}隐藏房道具",
            },{
                battleFantasy.Cards.BF_ONYX_THE_SUN,
                "XIX - 傲慢耀阳",
                "沐浴自我之光",
                "{{Heart}} 将血条内的红心消耗, 为所有主动道具充能, {{HalfHeart}} = 1充能 {{Battery}}#不至死, 角色没有红心时, 将心掉落物变为充能#{{Collectible"..CollectibleType.COLLECTIBLE_BATTERY.."}} 可以提供额外充能",
            },{
                battleFantasy.Cards.BF_ONYX_JUDGEMENT,
                "XX - 安息宝珠",
                "实现自我价值",
                "{{Collectible691}} 未来3个道具将被重随为高品质道具#{{ArrowDown}} 第四个道具将被移除",
            },{
                battleFantasy.Cards.BF_ONYX_THE_WORLD,
                "XXI - 哲人石",
                "解答世间万物",
                "{{EternalHeart}} 获得1永恒之心和{{HalfBlackHeart}}1个半黑心#获得{{Coin}} 1硬币, {{Bomb}} 1炸弹, {{Key}} 1钥匙#在当前楼层获得3个随机属性提升#{{Trinket}} 如果角色没有饰品则生成一个随机饰品#{{UltraSecretRoom}} 揭示究极隐藏房#触发一个随机{{Pill}} 药丸, {{Rune}} 符文, {{OnyxCard}} 玛瑙塔罗牌",
            },{
                battleFantasy.Cards.BF_MUFFIN_TIME,
                "吗啡时间!",
                "抽5!!!",
                "触发5张不同随机卡牌的效果#只有最后一张牌有可能为传送牌",
            },{
                battleFantasy.Cards.BF_MUFFIN_TIME_DEAD,
                "吗啡时间?",
                "抽5...",
                "触发5张不同随机逆位塔罗牌的效果#只有最后一张牌有可能为传送牌#{{ArrowDown}} 在接下来3层内获得{{Collectible252}}小药袋的效果",
            }
        }
        local pill={
            {
                battleFantasy.Pills.BF_LIGHTHEADED_QUESTION,
                "目眩神迷?",
                "{{Refracted}} 对房间内的所有敌人施加折射效果5s#{{Refracted}} 折射效果下的敌人会将角色的泪弹附加{{Collectible"..CollectibleType.COLLECTIBLE_HOLY_LIGHT.."}}圣光效果"
            },{
                battleFantasy.Pills.BF_LIGHTHEADED_EXCLAMATION,
                "目眩神迷!",
                "角色的头起飞10s"
            }
        }
        local conditionalList={
            EmperorChoice="生成二选一道具",
            Keepress="每个硬币心生成一个金心血团",
            LostEmpress="仅生成一个魂心血团",
            WHIPPPPPP="增加电弧的数量",
            PlasmaAhAhAH="电弧伤害x1.25",
            WoxianzaiButongkule="免疫孢子囊的麻痹效果; 施加中毒的范围提升",
            OnyxPack="其中一张牌必定为玛瑙塔罗牌",
            WishingOnyx="生成的卡牌被替换为玛瑙塔罗牌",
            ChanceOnyx="选中杂牌时, 有50%的概率选择玛瑙塔罗牌",
            OnyxDeck="10%的概率生成玛瑙塔罗牌",
            CatOption="额外生成的猫道具也会变为二选一",
            DrSpore="炸弹爆炸时有50%的概率释放2个孢子",
            QuickDam="在伤害敌人时有50%的概率释放孢子",
            MultiSpore="多个该道具可以让角色攻击时生成更多的孢子",
            RibbonSpell="额外治疗1魂心",
            MultiEar="多个该道具可以减少播放音效的间隔时间; 超过4个该道具无效",
            CrystalKnife="刀子在命中时分裂为3枚小刀",
            DrCrystal="炸弹爆炸会分裂为3个更快爆炸的小炸弹",
            BrimShard="激光命中即可分裂3发激光",
            PCFriendly="分裂的水晶不会继承这些效果(你也不想你的电脑冒烟吧)",
            CopyCrystal="分裂更多的水晶",
            MULT1="x1.1{{Damage}}伤害倍率",
            MULT2="x1.5{{Damage}}伤害倍率",
            CavityDMGEffected="触发了{{ColorLime}}可以提供伤害加成的泪弹特效{{CR}}的泪弹也造成1.25x伤害",
            GlobeShard="冻结泪弹也有50%的概率施加{{BleedingOut}}流血",
            PhanFeather="改为获得{{BlackHeart}}",
            MoreGift="有50%的概率同样触发神秘钥匙与潘多拉的盒子的特殊兼容效果, 并消耗饰品",
            Twenty="取消射速下降",
            SirenIris="更短的生效间隔",
            LostPack="#+0.85 {{Tears}}射速#每进行过一次恶魔交易{{DevilRoom}}获得+0.6 {{Damage}}伤害",
            KeePack="#每失去一个硬币心{{EmptyCoinHeart}}获得+2.4 {{Damage}}伤害",
            MiserPack="#每失去一个硬币心{{EmptyCoinHeart}}获得+3.6 {{Damage}}伤害",
            BonePack="#每失去一个骨心{{EmptyBoneHeart}}获得+1.2 {{Damage}}伤害",
            BlueBoil="火焰替换为蓝火焰(仅视觉效果)",
            BethPhan="保留1个心之容器, 并获得18魂心充能; 该道具变为一次性",
            drFetusHolyBomb="有概率投掷神圣炸弹, 幸运为29.67时达到最大100%",
            MilkyLyre="下调特殊泪弹的伤害下限",
            DrLyre="特殊泪弹的伤害下限上调至150",
            FancyPantsAdventure="获得x150%伤害倍率",
            EVIL="伤害上升",
            FamiliarBuff="可以增强该随从",
            VampireBuff="伤害+0.7"
        }
        mod:AddToConditionalList(conditionalList)
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#{{Collectible"..battleFantasy.Items.BF_CRYSTAL_SHARD.."}} 所属mod: Battle Fantasy", item[5])
        end
        for _, item in ipairs(trinkets) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#{{Collectible"..battleFantasy.Items.BF_CRYSTAL_SHARD.."}} 所属mod: Battle Fantasy", item[5])
        end
        for _, item in ipairs(card) do
            mod:AddTranslate(300, item[1], item[2], item[3], item[4].."#{{Collectible"..battleFantasy.Items.BF_CRYSTAL_SHARD.."}} 所属mod: Battle Fantasy", item[5])
        end
        for _, item in ipairs(pill) do
            mod:AddTranslate(70,item[1],item[2],"empty",item[3].."#{{Collectible"..battleFantasy.Items.BF_CRYSTAL_SHARD.."}} 所属mod: Battle Fantasy",item[4])
        end
        local PDDsyn={
            {battleFantasy.Items.BF_CAVITY,446},
            {battleFantasy.Items.BF_WHITE_HABANERO,battleFantasy.Items.BF_HALLOWED_CANDLE},
            {18,battleFantasy.Items.BF_MONEY_MAKING_GUIDE},
            {battleFantasy.Items.BF_COSMIC_PEARL,Isaac.GetItemIdByName("Trader Llama")},
            {Isaac.GetItemIdByName("Stale Burger"),battleFantasy.Items.BF_NOTHING_BURGER},
            {battleFantasy.Items.BF_GLITCHED_FLAME,Isaac.GetItemIdByName("Flint and Steel")}
        }
        for _,i in ipairs(PDDsyn) do mod:PDDfakeAddon(i[1],i[2]) end
        local Dflipsyn={
            {5,100,battleFantasy.Items.BF_SPIRIT_BURNER,5,100,Isaac.GetItemIdByName("Rune Sword")},
            {5,100,battleFantasy.Items.BF_ANGELIC_WING,5,100,battleFantasy.Items.BF_FALLEN_WING},
            {5,100,battleFantasy.Items.BF_BLOOD_PACT,5,100,601},
            {5,100,battleFantasy.Items.BF_HALF_DOLLAR,5,100,74},
            {5,100,battleFantasy.Items.BF_CAVITY,5,100,446},
            {5,100,battleFantasy.Items.BF_BLAZING_IRIS,5,100,509},
            {5,100,battleFantasy.Items.BF_FUNNEL,5,100,304},
            {5,100,battleFantasy.Items.BF_NATALIES_RIBBON,5,100,312},
            {5,100,battleFantasy.Items.BF_NAIL_CLIPPERS,5,350,16},
            {5,100,battleFantasy.Items.BF_CLUMP_OF_SEEDS,5,100,Isaac.GetItemIdByName("Baby Chicken")},
            {5,100,battleFantasy.Items.BF_CRYBERRY,5,350,battleFantasy.Trinkets.BF_AWESOME_FACE},
            {5,100,battleFantasy.Items.BF_100_GRAINS_OF_SUGAR,5,100,battleFantasy.Items.BF_WRAPPED_CANDY},
            {5,100,battleFantasy.Items.BF_HAZMAT_MASK,5,100,battleFantasy.Items.BF_SPORE_SAC},
            {5,350,battleFantasy.Trinkets.BF_VAMPIRE_FANG,5,100,Isaac.GetItemIdByName("Tooth of the Vampire")},
            {5,350,battleFantasy.Trinkets.BF_CRYSTAL_SODA,5,100,battleFantasy.Items.BF_CRYSTAL_SHARD},
            {5,350,battleFantasy.Trinkets.BF_PRIME_SLIME,5,100,570},
        }
        for _,i in ipairs(Dflipsyn) do mod:DFlipPairsAddon(i) end
        if ReverieMGO then mod:DFlipPairsAddon({5,100,battleFantasy.Items.BF_SHATTERED_HEADPHONES,5,100,ReverieMGO.Collectibles.HeadbandHeadphones.ID}) end
    end
end)
