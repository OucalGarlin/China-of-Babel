local mod=CNEIDBabel
mod:AddModTranslationLoader("battleFantasy","战争幻想\n* 注: 建议安装Encyclopedia以查看该模组的轶事描述 (那个没有翻译哈哈)\n* 更合理的道具品质 已生效!",function()
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
                }}
            },{
                battleFantasy.Items.BF_BOILING_BLOOD,
                "热血沸腾",
                "我火了...",
                "{{ArrowUp}} 每个{{HalfHeart}}半红心提供+0.15 {{Damage}}伤害#受伤后释放10团火焰#{{Burning}} 火焰的伤害为: {{Damage}} + 20",
                {ABY="25%的概率施加{{Burning}}灼烧的蝗虫",
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
                {VIR="较弱的魂火, 必定石化敌人"}
            },{
                battleFantasy.Items.BF_BROKEN_SNOWGLOBE,
                "破碎的雪景球",
                "严寒泪弹",
                "{{ArrowUp}} +0.61 {{Tears}}射速#{{ArrowDown}} -0.16 {{Shotspeed}}弹速#{{Freezing}} 有10%的概率发射2倍伤害的{{ColorBlue}}冻结泪弹{{CR}}#{{Luck}} 幸运22: 50",
                {ABY="造成1.25x伤害的蝗虫, 有5%的概率施加{{Freezing}}冰冻",
                CONF={448,"GlobeShard"}}
            },{
                battleFantasy.Items.BF_BUILDING_BLOCK,
                "积木砖块",
                "移速上升 + 卧槽!!!",
                "{{ArrowUp}} +0.3 {{Speed}}移速#{{Collectible".. CollectibleType.COLLECTIBLE_DULL_RAZOR .."}} 拾取后造成一次假伤",
            },{
                battleFantasy.Items.BF_CAVITY,
                "蛀牙",
                "一切开始腐烂",
                "{{Poison}} 25%的概率发射一个黑牙泪弹施加中毒#{{Damage}} 大部分特殊泪弹(例如{{Collectible7}}血泪, {{Collectible183}}钻石泪弹等)均造成1.25倍伤害(包括该道具发射的黑牙泪弹)",
                {ABY="造成1.25x伤害的蝗虫, 有10%的概率施加{{Poison}}中毒",
                CONF={
                    {{7,90,34,150,259,237,83,415,443,531,5,374,463,462,503,572,592,183,"5.350.95"},"CavityDMGEffected"},
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
                "{{Warning}} 一次性! #{{Battery}} 有概率将电池替换为{{EternalHeart}}#{{EternalHeart}} 自动消耗血条内的永恒之心并收集#根据收集的永恒之心, 生成至少一个{{AngelRoom}}天使道具#最好的结果为收集4{{EternalHeart}}的情况, {{IGIcon}}更多的永恒之心会被返还#{{ArrowDown}} 最好别把4个永恒之心的结果拿到{{DevilRoom}}里面用...",
                {VIR="具有更高生命的魂火, 熄灭后生成{{EternalHeart}}",
                BEL="若消耗了2-3个{{EternalHeart}}, 在道具奖池中加入{{DevilRoom}}道具#取消在恶魔房使用4{{EternalHeart}}时的亏损",
                ABY="在拥有永恒之心时造成+15伤害的蝗虫"}
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
                ABY="2%的概率施加{{BleedingOut}}流血的蝗虫"}
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
                }}
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
            },{
                battleFantasy.Items.BF_SPIRIT_BURNER,
                "魂油灯",
                "融毁灵魂",
                "持有时, 敌人有7.5%的概率掉落一个魂石#!!! {{ColorRed}}任何魂石不会在离开房间后保留{{CR}}#使用后, 消耗持有的魂石并存储; 存储3个魂石后, 再次使用会根据存储的魂石的品质生成掉落物或道具#{{GarlinIcon}} 可在死海卷轴中设置是否显示魂石品质",
                {BEL="{{Card84}}犹大的魂石具有更高的品质",--不是你丫?
                ABY="7.5%的概率在杀死敌人后生成魂石",
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
                {ABY="造成1.5x伤害的蝗虫, 有5%的概率施加{{Charm}}魅惑"}
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
            }
        }
        local conditionalList={
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
            DrLyre="特殊泪弹的伤害下限上调至150"
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
    end
end)
