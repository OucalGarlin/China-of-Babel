local mod=CNEIDBabel
mod:AddModTranslationLoader("EclipsedMod","日蚀(Eclipsed)\n* 新增了与 幻想曲 白日梦 小丑牌 模组的花哨兼容(测试?)",function()
    local LBAB=Isaac.GetItemIdByName("The Book of All The Books")
    if EclipsedMod then
        local items={
            {
                EclipsedMod.enums.Items.FloppyDisk,
                "红色软盘",
                "读取存档",
                "将当前持有的所有道具存档, 或将已有的道具用存档内的道具覆盖#{{ColorFade}}开关导致道具道具编号的变动会影响存档{{CR}}#!!! {{ColorError}}{{ColorFade}}如果因开关模组导致存档内的道具编号成了空号, 那个道具将变为{{Collectible258}}编号丢失{{CR}}#",
                {VIR="外环魂火#每存档/读档一个道具额外获得一个红色魂火"}
            },{
                EclipsedMod.enums.Items.RedMirror,
                "红镜子",
                "窥见另一面",
                "{{Card78}} 将最靠近的{{Trinket}}饰品变为红钥匙碎片",
                {VIR="外环红钥匙魂火#魂火被熄灭时创造一个红房间"}
            },{
                EclipsedMod.enums.Items.BlackKnight,
                "KNIGHT-黑棋",
                "将杀!",
                "{{Warning}} 取消移动能力!#取而代之的是一个可操作的准心#{{ColorYellow}}使用后{{CR}}:朝准心位置大跳#落地时摧毁障碍物并造成伤害",
                {VIR="静止的黑色魂火#仅在当前房间存在#无法攻击的魂火",
                BEL="在角色位置留下一团火焰"}
            },{
                EclipsedMod.enums.Items.WhiteKnight,
                "KNIGHT-白棋",
                "将杀!",
                "使用后, 朝最近的敌人大跳#未找到敌人则朝移动方向大跳#落地时摧毁障碍物并造成伤害",
                {VIR="静止的白色魂火#仅在当前房间存在#无法攻击的魂火",
                BEL="在角色位置留下一团火焰"}
            },{
                EclipsedMod.enums.Items.KeeperMirror,
                "月光之镜",--Moonlighter (The Merchant Mirror) is a reference to the game Moonlighter, created by Digital Sun Games.
                "物资交易",
                "生成一团{{ColorLime}}可操作{{CR}}的火焰#{{Card65}} 火焰会烧毁一个道具或掉落物, 并分解为等量的钱币; 没有任何东西被烧毁也会至少生成一美分"
            },{
                EclipsedMod.enums.Items.MiniPony,
                "独角兽",
                "飞行 + 暂时性横冲直撞",
                "持有时:#{{Speed}} 设置移速至少为1.5#飞行#{{Collectible77}} 使用后, 触发彩虹独角兽的效果",
                {VIR="阳光彩虹中环魂火#无法攻击#使用主动道具后环绕速度加快",
                ABY="高移速蝗虫"},
            },{
                EclipsedMod.enums.Items.StrangeBox,
                "奇怪的箱子",
                "转移选项",
                "{{Collectible249}} 为当前房间内的所有道具, 掉落物和商店物品额外提供一个选项",
                {VIR="2个中环黑色魂火#发射{{Collectible369}}连续统泪弹",
                ABY="2个穿墙蝗虫"}
            },{
                EclipsedMod.enums.Items.LostMirror,
                "迷失之镜",
                "透过镜面",
                "{{Player10}} 变为游魂形态, 类似白火",--能白嫖恶魔房还是太有用了(
                {VIR="跟随玩家的魂火#无法攻击#熄灭后释放{{Collectible653}}鬼灵爆破",
                CONF={"5.350."..EclipsedMod.enums.Trinkets.LostFlower,"ReLost"},
                QUA=1}
            },{
                EclipsedMod.enums.Items.BleedingGrimoire,--Bleeding Grimoire is a reference to the game They Bleed Pixels, created by indie studio Spooky Squid Games.
                "流血法术",
                "我流了一像素的血",--存疑
                "{{BleedingOut}} 使用后使角色开始流血, 类似不会生成红心掉落物的{{Collectible448}}#角色的攻击也可以施加流血效果",
                {VIR="中环紫色魂火#可以施加{{BleedingOut}}流血",
                ABY="施加流血的红色蝗虫",
                CONF={LBAB,"BAB_Bleeding"}}
            },{
                EclipsedMod.enums.Items.BlackBook,
                "黑书",--Black Book is a reference to the game Black Book, created by indie studio Morteshka.
                "语言之主",
                "对房间内的敌人施加随机异常状态#包括{{Freezing}}{{Poison}}{{Slow}}{{Charm}}{{Confusion}}{{Collectible202}}{{Fear}}{{Burning}}{{Collectible398}}{{BleedingOut}}{{Collectible110}}{{Magnetize}}{{Bait}}",
                {VIR="内环黑色魂火#魂火具有随机泪弹特效",
                ABY="施加随机异常状态的黑色蝗虫",
                CONF={LBAB,"BAB_Blackbook"}}
            },{
                EclipsedMod.enums.Items.RubikDice,
                "魔方骰子",--Rubik's Cube 魔方
                "4.326 x 10的十九次方 面骰",
                "{{Collectible105}} 重随道具#{{Battery}} 每次使用随机变化充能#{{Collectible721}} 充能未满时也能使用, 但是会重随为错误道具",
                {VIR="故障彩虹魂火#发射可以重随敌人和石头的彩虹泪弹",
                ABY="退化蝗虫"}
            },{
                EclipsedMod.enums.Items.VHSCassette,
                "VHS磁带",
                "卡住的录像带",
                "!!! 一次性 !!! #将角色送至未来的随机楼层#{{Delirium}} 可能到达虚空#{{ItemPoolMomsChest}} 在回溯中则传送至家中#生成两种类型的掉落物共12个"
            },{
                "Long Elk",--我叼你妈的为什么guru和你EID写的不一样啊
                "长鹿皮",
                "自然怪胎",
                "由攻击键控制的跟班, 造成100接触伤害后暂时失效, 需要角色触碰后重新生效#失效期间在房间内斜向运动, 期间生成至多3个跟随的脊椎#脊椎会抵挡敌弹和造成100%面板的接触伤害, 而后破碎"
            },{
                EclipsedMod.enums.Items.Threshold,
                "临界点",
                "我将夺回属于我的物品",
                "{{Collectible712}} 当角色拥有道具魂火时, 将其变为具体的道具#可使用时会展示哪个道具魂火会变为道具#{{Card41}} 触发黑符文的效果",
                {VIR="道具魂火可以发射跟踪泪弹",
                CAR="获得两倍的选定道具"}
            },{
                EclipsedMod.enums.Items.CharonObol,
                "冥河之钱",--AI翻译    Charon's Obol is a reference to the game Hades.
                "为生灵付出",
                "↑ +5硬币 #{{Coin}} 消耗1美分生成一个{{Collectible684}}饥渴之魂#{{DeathMark}} 角色死亡后会迅速失去所有硬币, 并生成{{Collectible634}} 大量炼狱恶鬼, 硬币数为0时失去该道具",
                {VIR="外环硬币魂火",
                BEL="鬼魂将留下火焰",
                ABY="杀死敌人生成硬币的黄色蝗虫",
                MOD={GOLD=true}}
            },{
                EclipsedMod.enums.Items.BookMemory,
                "记忆之书",
                "遗忘",
                "{{Collectible638}} 擦除房间内的所有敌人#{{BrokenHeart}} 生效时获得1碎心",
                {VIR="内环蓝色卡牌魂火#熄灭后生成{{Card"..EclipsedMod.enums.Pickups.OblivionCard.."}}遗忘卡",
                CONF={LBAB,"BAB_Memory"}}
            },{
                EclipsedMod.enums.Items.CosmicJam,
                "宇宙果酱",
                "飘渺之物",
                "获得房间内所有道具的对应{{Collectible584}}{{Collectible712}}魂火",
                {VIR="道具魂火可以发射跟踪泪弹",
                ABY="杀死敌人后生成魂火的紫色蝗虫"}
            },{
                EclipsedMod.enums.Items.MongoCells,
                "蒙戈细胞",
                "友谊的力量!",
                "角色复制跟班的效果",
                {CONF={
                    {{CollectibleType.COLLECTIBLE_OBSESSED_FAN,CollectibleType.COLLECTIBLE_PAPA_FLY,CollectibleType.COLLECTIBLE_ANGRY_FLY,CollectibleType.COLLECTIBLE_PSY_FLY,CollectibleType.COLLECTIBLE_BEST_BUD,CollectibleType.COLLECTIBLE_BLUE_BABYS_ONLY_FRIEND,CollectibleType.COLLECTIBLE_SWORN_PROTECTOR,CollectibleType.COLLECTIBLE_FRIEND_ZONE,CollectibleType.COLLECTIBLE_LOST_FLY,CollectibleType.COLLECTIBLE_BIG_FAN,CollectibleType.COLLECTIBLE_SMART_FLY,CollectibleType.COLLECTIBLE_FOREVER_ALONE,CollectibleType.COLLECTIBLE_DISTANT_ADMIRATION,},"MongoFly"},
                    {{CollectibleType.COLLECTIBLE_DEAD_BIRD,"5.350."..TrinketType.TRINKET_EVES_BIRD_FOOT},"MongoBerdly"},
                    {{CollectibleType.COLLECTIBLE_LITTLE_STEVEN,"5.350."..TrinketType.TRINKET_SOUL},"MongoHoming"},
                    {CollectibleType.COLLECTIBLE_LIL_SPEWER,"MongoLemon"},
                    {CollectibleType.COLLECTIBLE_LIL_DUMPY,"MongoDump"},
                    {CollectibleType.COLLECTIBLE_DRY_BABY,"BadToTheMongo"},
                    {CollectibleType.COLLECTIBLE_FARTING_BABY,"MongoFart"},
                    {CollectibleType.COLLECTIBLE_STAR_OF_BETHLEHEM,"MongoBethlehem"},
                    {{CollectibleType.COLLECTIBLE_BBF,CollectibleType.COLLECTIBLE_BOBS_BRAIN,EclipsedMod.enums.Items.NadabBrain},"MongoKami"},
                    {CollectibleType.COLLECTIBLE_MOMS_RAZOR,"MongoBleed"},
                    {CollectibleType.COLLECTIBLE_BIRD_CAGE,"MongoCrash"},
                    {CollectibleType.COLLECTIBLE_HOLY_WATER,"MongoWaterH"},
                    {CollectibleType.COLLECTIBLE_DEPRESSION,"MongoEMO"},
                    {CollectibleType.COLLECTIBLE_TINYTOMA,"MongoToma"},
                    {CollectibleType.COLLECTIBLE_SHADE,"MongoShade"},
                    {CollectibleType.COLLECTIBLE_GEMINI,"MongoGemini"},
                    {{CollectibleType.COLLECTIBLE_GUILLOTINE,CollectibleType.COLLECTIBLE_FATES_REWARD},"MongoTine"},
                    {CollectibleType.COLLECTIBLE_DADDY_LONGLEGS,"MongoDad"},
                    {CollectibleType.COLLECTIBLE_FINGER,"MongoFinger"},
                    {CollectibleType.COLLECTIBLE_HARLEQUIN_BABY,"MongoWiz"},
                    {CollectibleType.COLLECTIBLE_FREEZER_BABY,"MongoFreeze"},
                    {CollectibleType.COLLECTIBLE_GHOST_BABY,"MonGost"},
                    {CollectibleType.COLLECTIBLE_ABEL,"MongAbel"},
                    {{CollectibleType.COLLECTIBLE_RAINBOW_BABY,CollectibleType.COLLECTIBLE_BUDDY_IN_A_BOX},"MongoRand"},
                    {CollectibleType.COLLECTIBLE_LIL_BRIMSTONE,"MongoBrims"},
                    {CollectibleType.COLLECTIBLE_BALL_OF_BANDAGES,"MongoCharm"},
                    {CollectibleType.COLLECTIBLE_LIL_HAUNT,"MongoFear"},
                    {CollectibleType.COLLECTIBLE_SISSY_LONGLEGS,"MongoSissy"},
                    {CollectibleType.COLLECTIBLE_HEADLESS_BABY,"MongoTrail"},
                    {CollectibleType.COLLECTIBLE_TWISTED_PAIR,"MongoRepeater"},
                    {CollectibleType.COLLECTIBLE_1UP,"MongoShrink"},
                    {CollectibleType.COLLECTIBLE_SISTER_MAGGY,"MongoMaggy"},
                    {CollectibleType.COLLECTIBLE_LIL_ABADDON,"MongoAHA"},
                    {CollectibleType.COLLECTIBLE_LIL_LOKI,"MongoLoki"},
                    {CollectibleType.COLLECTIBLE_LIL_MONSTRO,"Monstrgo"},
                    {CollectibleType.COLLECTIBLE_LITTLE_GISH,"MongoTar"},
                    {CollectibleType.COLLECTIBLE_MYSTERY_EGG,"MonGoGOGO"},
                    {{CollectibleType.COLLECTIBLE_MULTIDIMENSIONAL_BABY,CollectibleType.COLLECTIBLE_HUSHY},"MongoInf"},
                    {CollectibleType.COLLECTIBLE_ACID_BABY,"MongoPill"},
                    {CollectibleType.COLLECTIBLE_SPIDER_MOD,"MongoCheat"},
                    {CollectibleType.COLLECTIBLE_SERAPHIM,"MongoSacred"},
                    {CollectibleType.COLLECTIBLE_BUMBO,"BombotheMongo"},
                    {CollectibleType.COLLECTIBLE_CHARGED_BABY,"MongoCharge"},
                    {CollectibleType.COLLECTIBLE_KING_BABY,"MongoKing"},
                    {CollectibleType.COLLECTIBLE_YO_LISTEN,"MongoVision"},
                    {CollectibleType.COLLECTIBLE_BROTHER_BOBBY,"MongoBobby"},
                    {CollectibleType.COLLECTIBLE_ROBO_BABY,"MongoTech"},
                    {CollectibleType.COLLECTIBLE_ROBO_BABY_2,"MongoTech2"},
                    {CollectibleType.COLLECTIBLE_ROTTEN_BABY,"MongoRot"},
                    {CollectibleType.COLLECTIBLE_DEMON_BABY,"MongoMark"},
                    {CollectibleType.COLLECTIBLE_BOT_FLY,"MongoShield"},
                    {CollectibleType.COLLECTIBLE_BOILED_BABY,"MongoBoil"},
                    {CollectibleType.COLLECTIBLE_BLOOD_PUPPY,"MongoBlood"},
                    {CollectibleType.COLLECTIBLE_LEECH,"MongoVampire"},
                    {CollectibleType.COLLECTIBLE_MONGO_BABY,"GreatMongo"},
                    {CollectibleType.COLLECTIBLE_CUBE_BABY,"MongoLDH"},
                    {CollectibleType.COLLECTIBLE_LIL_PORTAL,"MongoPortal"},
                    {CollectibleType.COLLECTIBLE_LIL_GURDY,"MonGurdy"},
                    {CollectibleType.COLLECTIBLE_DEAD_CAT,"MonGuppy"},
                    {CollectibleType.COLLECTIBLE_GUPPYS_HAIRBALL,"MonGuppyBall"},
                    {CollectibleType.COLLECTIBLE_JUICY_SACK,"MongoSlow"},
                    {CollectibleType.COLLECTIBLE_PUNCHING_BAG,"ManBo"},
                    {CollectibleType.COLLECTIBLE_SAMSONS_CHAINS,"MongoRocking"},
                    {CollectibleType.COLLECTIBLE_CAINS_OTHER_EYE,"MongoEye"},
                    {CollectibleType.COLLECTIBLE_CENSER,"MongoCenser"},
                    {CollectibleType.COLLECTIBLE_MILK,"MongoMilk"},
                    {CollectibleType.COLLECTIBLE_JAW_BONE,"MongoJaw"},
                    {CollectibleType.COLLECTIBLE_POINTY_RIB,"MongoRib"},
                    {CollectibleType.COLLECTIBLE_BLOOD_OATH,"MongOath"},
                    {CollectibleType.COLLECTIBLE_SLIPPED_RIB,"MongoSlip"},
                    {CollectibleType.COLLECTIBLE_ANGELIC_PRISM,"MongoPrism"},
                    {EclipsedMod.enums.Items.ZumaFrog,"MongoFrog"},
                    {CollectibleType.COLLECTIBLE_FRUITY_PLUM,"MongoPlum"},
                    {CollectibleType.COLLECTIBLE_SPIN_TO_WIN,"MongoSpin"},
                    {CollectibleType.COLLECTIBLE_WORM_FRIEND,"MongoWorm"},
                }}
            },{
                EclipsedMod.enums.Items.MeltedCandle,
                "融蜡烛",
                "蜡滴泪弹",
                "泪弹有概率将敌人变为蜡像3s#{{Burning}} 蜡像敌人会被定住并燃烧, 死亡后留下火焰",--我去,蜡像师!
                {ABY="造成一半伤害的白色蝗虫, 有概率将敌人变为蜡像"}
            },{
                EclipsedMod.enums.Items.IvoryOil,--Ivory Oil is a reference to the game Iconoclasts.
                "象牙白油",--存疑
                "充能上升",
                "{{Battery}} 首次进入未清理的房间即可获得充能#{{RoomXL}} 大房间同样会获得2点充能",
                {ABY="白色电系蝗虫"}
            },{
                EclipsedMod.enums.Items.RedLotus,
                "红莲",
                "???",
                "{{BrokenHeart}} +3碎心#每层开始时: #{{BrokenHeart}} 移除1碎心并获得{{Damage}}伤害+1"
            },{
                EclipsedMod.enums.Items.MidasCurse,
                "弥达斯诅咒",
                "金!",
                "{{GoldenHeart}} 获得3金心#{{CoinHeart}} 失去金心会将整个房间点金, 将饰品镀金#{{Warning}} {{ColorYellow}}那么, 代价是什么?#{{Warning}} {{ColorYellow}}100%得到金掉落物#{{Warning}} {{ColorYellow}}所有食物道具被拆解为硬币{{CR}}#{{Collectible260}} 黑蜡烛可以削弱甚至免疫上述代价",
                {ABY="造成10%伤害的蝗虫, 必定施加点金效果",
                MOD={GOLD=true}}
            },{
                EclipsedMod.enums.Items.RubberDuck,--Ducking is a reference to the game Killing Room.
                "橡皮鸭",
                "流行度上升",
                "{{Luck}} 持有时获得幸运增幅+20#↑ {{Luck}} 进入未进入过的房间获得+1幸运增幅#↓ {{Luck}} 进入已进入过的房间失去-1幸运增幅#幸运增幅不会导致亏损",
                {QUA=1}
            },{
                EclipsedMod.enums.Items.RedButton,--Red Button is a reference to the game Please, Don't Touch Anything created by Four Quarters.
                "红按钮",
                "请不要按下这个按钮",
                "进入新房间生成红色按钮#按下后10%的概率触发随机{{ColorYellow}}奖励按钮{{CR}}的效果#{{Warning}} 按下66次按钮后消失({{IGIcon}}第64和65次会有提示)#1%的概率改为生成{{ColorRed}}击杀按钮{{CR}}"
            },{
                "Compo Bombs",
                "组合弹",
                "爆破组合技 + 5个炸弹",
                "{{Bomb}} 炸弹+5#炸弹爆炸后生成{{ColorRed}}可投掷炸弹{{CR}}",
                {ABY="有概率生成{{Trinket113}}{{ColorOrange}}战争蝗虫{{CR}}的深渊蝗虫"}
            },{
                EclipsedMod.enums.Items.Limb,
                "异色光环",--存疑
                "弥留于此",
                "{{Player10}} 死亡后在当前楼层变为游魂形态(其他复活方式优先)",
                {ABY="产生鬼灵爆破的紫色蝗虫"}
            },{
                EclipsedMod.enums.Items.GravityBombs,
                "黑洞炸弹",
                "引力爆破 + 1个究极炸弹",
                "{{Bomb}} 获得+1究极炸弹#{{Collectible512}} 炸弹附有黑洞的效果",
                {ABY="生成{{Collectible606}}裂隙的紫色蝗虫"}
            },{
                EclipsedMod.enums.Items.MirrorBombs,
                "玻璃炸弹",
                "反射爆破 + 5个炸弹",
                "{{Bomb}} 炸弹+5#炸弹在房间的另一头释放爆炸",
                {ABY="爆炸性黑色蝗虫",
                MOD={GLASS=true}}
            },{
                EclipsedMod.enums.Items.FrostyBombs,
                "冰块炸弹",
                "寒冰爆破 + 5个炸弹",
                "{{Bomb}} 炸弹+5#炸弹留下水迹并{{Slow}}减速敌人#{{Freezing}} 冻结被炸死的敌人",
                {ABY="冰系蓝色蝗虫",
                CHAR={EclipsedMod.enums.Characters.Nadab,"NadabIce",false},
                MOD={ICE=true}}
            },{
                EclipsedMod.enums.Items.VoidKarma,--Karma Level is a reference to the game Rain World.
                "因果值",--存疑
                "生还者",
                "↑ 进入下一层后获得全属性提升#{{Damage}} 伤害+0.5#{{Tears}} 射速+0.35#{{Range}} 射程+1.25#{{Shotspeed}} 弹速+0.15#{{Speed}} 移速+0.15#{{Luck}} 幸运+1"
            },{
                "VVV",
                "VVV",
                "重力倒转",
                "获得飞行#受到伤害后停住所有敌弹"
            },{
                EclipsedMod.enums.Items.RedBag,
                "红袋",
                "给予红色",
                "有概率在清理房间后生成{{ColorRed}}红色掉落物{{CR}}#包括{{Heart}}红心, {{Card49}}骰子碎片, {{Pill"..EclipsedMod.enums.Pickups.RedPillColor.."}}红色药丸, {{Card78}}钥匙碎片, {{Bomb}}可投掷炸弹#{{Warning}} 可能生成{{ColorRed}}红大便{{CR}}",
                {BFF="不再生成红大便"}
            },{
                EclipsedMod.enums.Items.Lililith,
                "莉莉小",
                "地狱召唤师",
                "每隔7-8个房间生成随机恶魔跟班#这些跟班仅持续一层#可能的情况包括: {{Collectible113}} {{Collectible275}} {{Collectible679}} {{Collectible360}} {{Collectible417}} {{Collectible270}} {{Collectible698}}",
                {BFF="每隔6个房间生成随机恶魔跟班",
                ABY="可以生成蓝苍蝇的蝗虫"}
            },{
                EclipsedMod.enums.Items.AbihuFam,
                "亚比户",
                "异教徒",
                "{{Collectible281}} 吸引敌人仇恨的跟班#{{Burning}} 灼烧接触的敌人#碰到火堆会将其扑灭, 释放一圈10发火焰弹幕",
                {BFF="碰到敌人时也会释放火焰弹幕",
                ABY="火系蝗虫"}
            },{
                EclipsedMod.enums.Items.NadabBrain,
                "拿答的脑浆子",
                "沉重的思维",
                "朝指定方向发射的跟班#接触敌人后爆炸, 并留下火焰#{{ColorYellow}}特别特别慢{{CR}}",
                {BFF="爆炸威力提升",
                ABY="爆炸性黑色蝗虫"}
            },{
                EclipsedMod.enums.Items.NadabBody,
                "拿答的尸体",
                "异教徒",
                "{{Throwable}} 可以被捡起并投掷#抵挡敌弹#投掷途中碰到敌人会爆炸, 造成15倍角色伤害#{{Warning}} {{ColorYellow}}爆炸可能会伤害角色!{{CR}}",
                {ABY="爆炸性黑色蝗虫",
                CONF={
                    {106,"MegaNada"},
                    {125,"NadaBoby"},
                    {137,"NaDenotate"}
                }}
            },{
                EclipsedMod.enums.Items.DMS,
                "死神镰刀",
                "致离去的灵魂",--存疑
                "{{Collectible634}} 25%的概率在敌人死亡后生成{{ColorError}}恶鬼{{CR}}#概率与幸运无关",
                {CONF={EclipsedMod.enums.Items.DMS,"MultiDMS"},
                ABY="有概率在杀死敌人后生成恶鬼的白色蝗虫"}
            },{
                EclipsedMod.enums.Items.MewGen,
                "猫基因",--捏他什么不用我说了吧
                "猫代更替",
                "获得飞行#{{Collectible522}} 角色停止攻击和移动5s触发{{ColorCyan}}念力{{CR}}",
                {ABY="跟踪性粉色蝗虫"}
            },{
                EclipsedMod.enums.Items.ElderSign,
                "古老之迹",--Elder Sign is a reference to the H.P. Lovecraft.
                "封印",
                "原地生成一个持续3s的{{ColorGreen}}法阵{{CR}}#首个进入{{ColorGreen}}法阵{{CR}}的敌人将{{Collectible503}}被秒杀或重击, 被杀死的敌人生成{{Collectible634}}一个{{ColorGreen}}恶鬼{{CR}}#{{GarlinIcon}} 技巧: 可以通过在多个怪物靠近时使用以使法阵同时秒杀多个敌人",
                {VIR="持续一个房间的绿色魂火, 可以定住敌人",
                ABY="可以定住敌人的绿色蝗虫"}
            },{
                "Eclipse",
                "日蚀",
                "最黑暗的地下室!",
                "按住攻击键释放脉冲波, 造成范围伤害#{{CurseDarkness}} 黑暗诅咒中角色获得{{Damage}}伤害翻倍#!!! 与堕化不速之客不同, 脉冲波不再兼容特殊攻击方式",
                {ABY="携带黑暗光圈的蝗虫, 光圈造成75DPS, 在黑暗诅咒中伤害翻倍",
                QUA=3}
            },{
                EclipsedMod.enums.Items.WitchPot,
                "女巫的锅",
                "咒语",
                "{{Collectible439}} {{ColorGreen}}魔咒!{{CR}}-75%的概率生成饰品#{{Collectible479}} {{ColorYellow}}喝下去!{{CR}}-50%的概率将持有的饰品吞下#{{Pill}} {{ColorOrange}}吐出来!{{CR}}-25%的概率吐出一个被吞下的饰品和一个{{Pill}}{{ColorYellow}}咕噜!{{CR}}#{{Warning}} {{ColorRed}}魔咒反噬!{{CR}}-5%的概率摧毁持有的饰品",
                {VIR="绿色魂火, 每个魂火提供+0.12幸运",
                {CONF="5.350.75","Pot404"}}
            },{
                EclipsedMod.enums.Items.PandoraJar,
                "潘多拉之瓮",
                "释放",
                "生成一个持续生成蓝苍蝇和蓝蜘蛛的传送门",
                {VIR="会生成苍蝇的蓝色魂火",
                ABY="有概率生成蓝苍蝇的蓝色蝗虫"}
            },{
                EclipsedMod.enums.Items.SecretLoveLetter,
                "秘密情书",
                "隐藏的爱意",
                "举起情书, 而后朝指定方向发射#{{Charm}} 情书不造成伤害, 而是将触碰的所有同类敌人魅惑, 直到情书魅惑另一种敌人#魅惑的敌人可以跨房间和楼层存在#{{TimerSmall}} 魅惑对头目仅暂时生效#{{IGIcon}} 可以秒杀大基甸",
                {VIR="紫色魂火, 熄灭后魅惑附近敌人",
                ABY="魅惑敌人的紫色蝗虫"}
            },{
                EclipsedMod.enums.Items.DiceBombs,
                "骰子炸弹?",
                "重随?爆破 + 5个炸弹",
                "{{Bomb}} +5炸弹#被爆炸波及的道具底座将额外获得一个可选道具",
                {ABY="爆炸性黑色蝗虫"}
            },{
                EclipsedMod.enums.Items.BatteryBombs,
                "电池炸弹",
                "充能爆破 + 5个炸弹",
                "{{Bomb}} +5炸弹#炸弹会朝5个敌人释放电弧#{{Key}} 爆炸波及的钥匙和钥匙串变为充能钥匙#{{Battery}} 角色被爆炸波及时为主动道具充能#{{Battery}} 充能数基于炸弹的伤害",
                {ABY="电系黄色蝗虫"}
            },{
                EclipsedMod.enums.Items.Pyrophilia,
                "烟火狂人",
                "爽炸它们",
                "{{Bomb}} +5炸弹#有敌人被炸弹伤害时治疗{{HalfHeart}}",
                {VIR="火系橙色蝗虫"}
            },{
                EclipsedMod.enums.Items.SpikedCollar,
                "尖刺项圈",
                "生气的小家伙",
                "受到伤害改为触发{{Collectible126}}剃刀片#对尖刺和献祭伤害无效"
            },{
                EclipsedMod.enums.Items.DeadBombs,
                "死亡炸弹",
                "亡灵爆破 + 5个炸弹",
                "{{Bomb}} +5炸弹#{{Collectible683}} 被爆炸杀死的敌人生成骨片环绕物#25%的概率生成友好骷髅仔, 骷髅苍蝇, 骷髅肥仔, 黑骷髅仔或还魂骷髅",
                {ABY="杀死敌人有概率生成骨片的骷髅蝗虫",
                CHAR={EclipsedMod.enums.Characters.Nadab,"NadabBone",false}}
            },{
                EclipsedMod.enums.Items.AgonyBox,
                "苦难之盒",
                "我不应恐惧",
                "{{ColorCyan}}自动消耗{{CR}}1充能抵挡下一次伤害#进入下一层恢复1充能",
                {VIR="内环绿色护盾魂火#在自动消耗充能时生成#抵挡下一次伤害",
                ABY="可以抵挡敌弹的绿色蝗虫",
                BEL="在自动消耗充能时临时增加伤害"}
            },{
                EclipsedMod.enums.Items.Potato,
                "土豆",
                "生命充能?",
                "{{EmptyHeart}} 获得1空心之容器#{{Battery}} 为持有的主动道具充能"
            },{
                EclipsedMod.enums.Items.SurrogateConception,
                "代孕受胎",
                "用血浇灌它们",
                "清理头目房获得随机{{ColorYellow}}头目相关{{CR}}跟班#{{CurseLabyrinth}} 每层只能触发一次",
                {ABY="有概率生成蓝苍蝇或蓝蜘蛛的蝗虫"}
            },{
                EclipsedMod.enums.Items.HeartTransplant,
                "心脏移植",--Heart Transplant is a reference to the game Crypt of the NecroDancer.
                "\"跳\"战这个心脏",
                "{{Chargeable}} 持有时, 在角色头顶展示冷却条#满充能后0.5s未使用则失去充能和{{ColorRed}}心跳等级{{CR}}#若成功使用则积攒心跳等级, 并因此获得{{Speed}}{{Damage}}{{Tears}}增益#心跳等级最大时使用会同时释放一圈10发泪弹#{{GarlinIcon}} 不用把它当什么音游, 狂按主动糊过去就完事了",
                {VIR="无法攻击的固定魂火"}
            },{
                EclipsedMod.enums.Items.GardenTrowel,
                "花园泥铲",
                "挖骨刀",
                "{{Collectible683}} 生成骨片#持有时, 在{{SecretRoom}}{{SuperSecretRoom}}隐藏放生成随土块#可以挖开碎土块",
                {VIR="与骨片数量相同的魂火, 仅持续一个房间",
                ABY="杀死敌人有概率生成骨片的骷髅蝗虫"}
            },{
                EclipsedMod.enums.Items.ElderMyth,
                "古老神话",
                "循环卡抽卡器",--Loop Hero
                "生成一张\"循环英雄\"卡#循环英雄卡的效果多为创造特殊类型的红房间",
                {VIR="卡牌魂火, 熄灭后生成循环卡",
                ABY="杀死敌人生成循环卡的蓝色蝗虫",
                CONF={LBAB,"BAB_Elder"}}
            },{
                EclipsedMod.enums.Items.ForgottenGrimoire,
                "遗忘的魔法书",
                "充能形骨骼",
                "{{EmptyBoneHeart}} 获得1骨心",
                {VIR="发射骨头泪弹的魂火",
                ABY="杀死敌人有概率生成骨片的骷髅蝗虫",
                CONF={LBAB,"BAB_Forgotton"}}
            },{
                EclipsedMod.enums.Items.CodexAnimarum,
                "灵法典",
                "降灵会",
                "{{Collectible684}} 释放恶鬼追杀敌人",
                {VIR="魂火有50%的概率在死亡后释放鬼灵爆破",
                ABY="杀死敌人生成恶鬼的蝗虫",
                CONF={LBAB,"BAB_Codex"}}
            },{
                EclipsedMod.enums.Items.RedBook,
                "红书",
                "充能形产红",
                "使用后生成{{ColorRed}}红色掉落物{{CR}}#包括{{Heart}}红心, {{Card49}}骰子碎片, {{Pill"..EclipsedMod.enums.Pickups.RedPillColor.."}}红色药丸, {{Card78}}钥匙碎片, {{Bomb}}可投掷炸弹#{{Warning}} 可能生成{{ColorRed}}红大便{{CR}}",
                {VIR="生成随机的红色魂火",
                CONF={LBAB,"BAB_Red"}}
            },{
                EclipsedMod.enums.Items.CosmicEncyclopedia,
                "宇宙百科全书",
                "万物之书",
                "生成一种掉落物共6个#{{Heart}}{{Coin}}{{Key}}{{Bomb}}{{Chest}}{{GrabBag}}{{Pill}}{{Battery}}{{Collectible}}",
                {VIR="6个随机泪弹特效的彩虹魂火",
                ABY="杀死敌人生成随机掉落物的蝗虫",
                CONF={LBAB,"BAB_Encyclopedia"}}
            },{
                EclipsedMod.enums.Items.AncientVolume,
                "远古圣卷",
                "逐步消逝",
                "{{Collectible497}} 在当前房间内获得迷彩内裤的效果",
                {VIR="固定魂火#进入新房间后魂火环绕角色#魂火熄灭后获得{{Collectible497}}迷彩内裤的效果",
                ABY="可以施加{{Confusion}}混乱的蝗虫",
                CONF={LBAB,"BAB_Ancient"}}
            },{
                EclipsedMod.enums.Items.HolyHealing,
                "圣疗巨著",
                "充能形生命回满",
                "{{HealingRed}} 回满生命#{{SoulHeart}} 没有心之容器则获得3魂心",
                {VIR="无法攻击的魂火, 具有20HP",
                ABY="杀死敌人生成红心的蝗虫",
                CONF={LBAB,"BAB_HolyHeal"}}
            },{
                EclipsedMod.enums.Items.WizardBook,
                "巫师之书",
                "多彩苍蝇",
                "生成2-4个随机天启蝗虫",
                {VIR="生成随机颜色的魂火, 熄灭后生成对应颜色的天启蝗虫",
                ABY="有概率生成{{Trinket113}}{{ColorRainbow}}随机蝗虫{{CR}}的深渊蝗虫",
                CONF={LBAB,"BAB_Wizard"}}
            },{
                EclipsedMod.enums.Items.RitualManuscripts,
                "仪式手稿",
                "充能形混合生命",
                "{{BlendedHeart}} 使用后获得融合心#{{Trinket123}} 持有时获得银丝羽毛的效果",
                {VIR="生成一红一蓝两个魂火",
                ABY="有概率降下圣光的蝗虫",
                CONF={LBAB,"BAB_Ritual"}}
            },{
                EclipsedMod.enums.Items.StitchedPapers,
                "装订纸",
                "魔法泪弹",
                "当前房间中，获得{{Collectible418}}水果蛋糕的效果",
                {VIR="随机泪弹效果的故障魂火",
                ABY="施加随机异常状态的蝗虫",
                CONF={LBAB,"BAB_Stitch"}}
            },{
                EclipsedMod.enums.Items.NirlyCodex,
                "尼利的宝典",
                "解放双手",
                "拾取后, 生成3张尖塔牌#可以储存至多5张牌在这本书里#使用后, 触发所有储存卡牌的效果#同样可以丢弃这本书储存的卡牌",
                {VIR="卡牌魂火, 熄灭后生成尖塔牌",
                ABY="杀死敌人生成尖塔牌的蓝色蝗虫",
                CONF={
                    {63,"MoreNirly"},
                    {LBAB,"BAB_Nirly"}
                }}
            },{
                EclipsedMod.enums.Items.AlchemicNotes,
                "炼金笔记",
                "魂火收集者",
                "将房间内的所有掉落物转化为对应魂火#!!! 角色至多能持有26个魂火",
                {VIR="在没有掉落物的情况下也获得魂火",
                CONF={LBAB,"BAB_Alchemic"}}
            },{
                EclipsedMod.enums.Items.LockedGrimoire,
                "锁住的魔法书",
                "上了锁",
                "{{Key}} 获得5钥匙#每次使用消耗1钥匙#获得一个随机箱子的内容物#可能的奖励: {{ColorFade}}空气{{CR}}, {{Chest}}{{GoldenChest}}{{DirtyChest}}{{WoodenChest}}{{RedChest}}{{MegaChest}}",
                {VIR="中环钥匙魂火#熄灭后有概率生成钥匙",
                ABY="可以打开箱子的蝗虫",
                CONF={
                    {{"5.350.76","5.350.159"},"UnlockedGrimoire"},
                    {LBAB,"BAB_Locked"}
                }}--我也不确定妈妈钥匙能不能维基没提到这个
            },{
                EclipsedMod.enums.Items.StoneScripture,
                "石之圣典",
                "涤罪",
                "每个房间可用3次#进入下一个房间后恢复充能#{{Collectible653}} 使用后释放鬼灵爆破",
                {VIR="单房间内环魂火#魂火熄灭后释放{{Collectible653}}鬼灵爆破",
                ABY="可以触发鬼灵爆破的蝗虫",
                CONF={
                    {63,"BatterStone"},
                    {LBAB,"BAB_Stone"},
                }}
            },{
                EclipsedMod.enums.Items.HuntersJournal,
                "猎人日志",
                "开始狩猎!",
                "生成暗影冲刺蝇蛆#{{Collectible512}} 冲刺蝇蛆死亡后生成黑洞",
                {VIR="中环黑色魂火#无碰撞伤害, 发射{{Collectible315}}磁性泪弹",
                ABY="{{Magnetize}} 磁化敌人的黑色蝗虫",
                CONF={LBAB,"BAB_Hunter"}}
            },{
                EclipsedMod.enums.Items.TomeDead,
                "死灵巨著",
                "释放受诅的灵魂",
                "{{Collectible634}} 释放炼狱恶鬼#未满充能也能使用#杀死敌人后, 拾取它们的灵魂以获得充能",
                {VIR="外环魂火#无法攻击#熄灭后释放{{Collectible653}}鬼灵爆破",
                ABY="可以触发鬼灵爆破的蝗虫",
                CONF={LBAB,"BAB_Dead"}}
            },{
                EclipsedMod.enums.Items.TetrisDice_full,
                "四维立方体",--存疑
                "??????面骰",
                "满充能后, 在底座道具上轮流展示当前房间道具池的4个道具#使用以重随成你想要的道具",
                {VIR="中环魂火#根据魂火颜色施加随机异常状态效果",
                ABY="退化蝗虫"}
            },{
                EclipsedMod.enums.Items.Ignite,
                "点上花火",
                "燃起来了",
                "发射一环蓝火",
                {VIR="单房间固定魂火#发射蓝火",
                ABY="火系蓝色蝗虫",
                CHAR={EclipsedMod.enums.Characters.Abihu,"AbihuSkill"}}
            },{
                "Muscle Meat",
                "\"肌\"肉",
                "体积上升 + 生命上升 + 鸡肉发达",
                "↑ {{Heart}} 心之容器+1#{{HealingRed}} 回满生命#{{BoneHeart}} 将骨心转化为心之容器#↑ 角色体积+25%#{{Damage}} 拾取该道具时, 每有一个{{Heart}}心之容器或{{BoneHeart}}骨心获得0.33伤害修正({{IGIcon}}该属性不会随后续生命值的变动而变动)"
            },{
                EclipsedMod.enums.Items.HolyRavioli,
                "圣意大利饺",
                "甜蜜的肉体",
                "↑ {{Heart}} 心之容器+1#{{HealingRed}} 回满生命#受到伤害时留下粉色液体#{{Charm}} 碰到粉色液体的敌人会被魅惑5s#魅惑敌人死亡后会同样魅惑附近的其他敌人",
                {ABY="留下魅惑粉色液体的粉色蝗虫"}
            },{
                EclipsedMod.enums.Items.Shroomface,
                "蘑菇脸",
                "全都是孢子",
                "{{Collectible553}} 攻击时每3s放屁, 释放5个{{ColorYellow}}孢子{{CR}}#{{Confusion}} {{ColorYellow}}孢子{{CR}}爆裂会震飞附近的敌人并使其混乱5s#附着在敌人身上的{{ColorYellow}}孢子{{CR}}爆裂后会混乱10s",
                {ABY="会放屁和施加混乱的黄色蝗虫"}
            },{
                EclipsedMod.enums.Items.GlitterInjection,
                "闪光的注射剂",
                "充满惊喜",--想必能给我们带来不少惊喜罢
                "{{Luck}} 3.33%的概率发射一个{{ColorPink}}粉色泪弹{{CR}}#{{ColorPink}}粉色泪弹{{CR}}杀死敌人后将其变为{{ColorRainbow}}彩虹变种{{CR}}, 使其获得{{ColorRainbow}}彩虹变种{{CR}}的亡语和掉落奖励#!!! 死亡后生成的怪物也有可能因此变为{{ColorRainbow}}彩虹变种{{CR}}#{{IGIcon}} 幸运15: 25%",
                {ABY="将杀死的敌人变为彩虹变种的粉色蝗虫"}
            },{
                EclipsedMod.enums.Items.AngryMeal,
                "愤怒的肉块",
                "生命上升 + 怒中反击",
                "↑ {{Heart}} 心之容器+1#{{Collectible704}} 受到致命伤害后进入狂战状态10s, 而后失去该道具",
                {ABY="每有一个敌人靠近获得伤害增幅的蝗虫"}
            },{
                EclipsedMod.enums.Items.BaconPancakes,
                "培根煎饼",
                "煎饼里放一点培根",
                "↑ {{Heart}} 心之容器+1#↑ {{Tears}} 射速修正+0.5#↑ {{Damage}} 伤害修正+0.5#↑ {{Speed}} 移速+0.2#↑ {{Range}} 射程+1.5#↑ {{Shotspeed}} 弹速+0.2#↑ 体型上升#生成{{Coin}}{{Heart}}{{Key}}{{Bomb}}{{Battery}}{{Pill}}{{Card}}{{Rune}}{{Trinket}}各一个",
                {QUA=2}
            },{
                EclipsedMod.enums.Items.BabylonCandle,
                "巴比伦之烛",
                "归于星辰?",
                "!!! 一次性 !!! #生成一个通往本层的{{TreasureRoom}}或{{Planetarium}}的传送门#如果该房间未被探索过, 将房间内的道具重随为{{ItemPoolPlanetarium}}的道具",
                {VIR="极高生命的内环魂火, 不会发射泪弹",
                ABY="可以灼烧敌人的黑色蝗虫"}
            },{
                EclipsedMod.enums.Items.MephistoPact,
                "墨菲斯托的契约",--哎又是墨菲斯托
                "浮士德式交易",
                "{{BrokenHeart}} 获得3碎心#{{Trinket173}} 使下一次恶魔交易免费#{{Card31}} 获得鬼牌",
                {ABY="杀死敌人有概率生成炼狱恶鬼的黑色蝗虫",
                MOD={PAPER=true}}
            },{
                EclipsedMod.enums.Items.Khepri,--Khepri is a reference to the 'Worm' web serial by John C. 'Wildbow' McCrae.
                "凯布利",
                "统管者",
                "{{GoldenHeart}} 获得1金心#在有敌人的房间内每10s生成一个{{ColorYellow}}六边形传送门{{CR}}, 生成1-2个蓝苍蝇, 蝗虫或蓝蜘蛛#{{Collectible687}} 25%的概率生成一个模仿玩家行动的友好怪物#至多可以拥有5个可控怪物",
                {ABY="杀死敌人生成蓝苍蝇, 蝗虫或蓝蜘蛛的金色深渊蝗虫",
                QUA=3}
            },{
                EclipsedMod.enums.Items.Varg,
                "座狼",
                "狼来了",
                "{{SoulHeart}} 获得1魂心#{{Collectible548}} 在角色身后生成狼颔骨#{{Chargeable}} 狼颔骨可以在攻击时蓄力{{ColorBlue}}咬合{{CR}}, 获得更高的咬合范围和伤害#{{Slow}} 狼颔骨攻击范围内的敌人被减速#{{Freezing}} 松开攻击键释放{{ColorBlue}}咬合{{CR}}, 对面前的敌人造成冰系伤害",
                {ABY="冰系蓝色蝗虫",
                MOD={ICE=true}}
            },{
                EclipsedMod.enums.Items.Aurora,
                "极光",
                "愤怒的公主",
                "↑ {{Heart}} 心之容器+1#连续攻击3s额外发射一个{{ColorPink}}心弹{{CR}}并失去{{HalfHeart}}#{{Charm}} {{ColorPink}}心弹{{CR}}命中敌人会魅惑一定范围内的敌人并生成1-3个快速消失的{{HalfHeart}}#命中障碍物则只有一个{{HalfHeart}}#{{Damage}} 魅惑的敌人死亡后在当前房间获得伤害上升, 数值取决于敌人最大生命值, 单个房间最多20点",
                {ABY="魅惑敌人的粉色蝗虫",
                MOD={FEM=true}}
            },{
                EclipsedMod.enums.Items.Sarbokan,
                "三宝柑",--存疑
                "血之强欲",
                "↑ {{Speed}} 移速+0.3#{{Collectible118}} 进入房间环绕血激光环, 持续10s#敌人死亡时可以增加血激光环的持续时间和伤害",
                {ABY="可以施加硫磺诅咒的红色蝗虫",
                QUA=3}
            },{
                EclipsedMod.enums.Items.Tindal,
                "廷德尔",--存疑
                "角与线",
                "{{Trinket144}} 靠近墙体的泪弹获得直角锁头效果#↑ {{ColorOlive}}靠近墙体{{CR}}时获得{{Range}}射程+0.75和{{Damage}}伤害+2#↑ {{ColorOlive}}靠近房间角落{{CR}}时获得{{Range}}射程+1.5和{{Damage}}伤害+4",
                {ABY="蝗虫在角色靠近墙体或墙角时获得伤害提升"}
            },{
                EclipsedMod.enums.Items.Horoles,
                "Horoles",--众所周知翻译家全都是杂家来的不然碰上这些看都看不懂（悲
                "优越之空想",
                "↓ {{Damage}} 伤害-1.0#↑ 每秒获得{{Damage}}+0.04{{ColorOrange}}伤害增益{{CR}}, 最多20#进入新房间后重置{{ColorOrange}}伤害增益{{CR}}",
                {ABY="在当前房间内持续获得伤害上升的大型橙色蝗虫",
                QUA=1}
            },{
                EclipsedMod.enums.Items.SmokeBombs,
                "暗影炸弹",
                "影域爆破 + 5个炸弹",
                "{{Bomb}} +5炸弹#{{Collectible705}} 放置的炸弹{{ColorRed}}瞬爆{{CR}}, 同时角色瞬间触发暗仪刺刀",
            },{
                EclipsedMod.enums.Items.Bufo,
                "蟾蜍",--字体包不兼容的
                "苍蝇之友",
                "{{RottenHeart}} 获得3个填满腐心的心之容器#{{Collectible706}} 拾取后, 立即生成6个{{ColorGreen}}毒系深渊蝗虫{{CR}}",
                {ABY="唯一的区别就是吸了没有心之容器"}
            },{
                EclipsedMod.enums.Items.BlackPlague,
                "黑死病",
                "你个瘟神",
                "{{RottenHeart}} 所有的心被替换为腐心#{{Collectible706}} 获得一个概率在命中敌人后生成死亡蝗虫的{{ColorPurple}}黑色深渊蝗虫{{CR}}#{{Trinket116}} 所有蓝苍蝇被替换为死亡蝗虫",
                {ABY="概率在命中敌人后生成死亡蝗虫的黑色深渊蝗虫"}
            },{
                EclipsedMod.enums.Items.LoadedDice,
                "科技六面骰",--哈哈肯定是想取名过载骰子结果邪魔典纸抢了
                "开挂般的命运",
                "{{Collectible105}} 在空的道具底座上补充道具投影#道具投影离开房间后消失",
                {VIR="发射激光的骰子魂火"},
                {ABY="环绕激光环的蝗虫"},
            },{
                EclipsedMod.enums.Items.AstralDice,
                "星际骰子",
                "飘渺的宿命",--包不兼容的
                "在一个道具底座上展示一个道具魂火#{{Collectible712}} 使用后{{ColorPink}}移除底座道具{{CR}}并获得展示的道具魂火",
                {VIR="道具魂火可以发射追踪泪弹",
                ABY="杀死敌人后生成魂火的紫色蝗虫"}
            },{
                EclipsedMod.enums.Items.Symbiont,
                "共生体",--?
                "暂时性嗜血",
                "{{Damage}} 对角色造成{{HalfHeart}}伤害并获得伤害+0.5#{{Timer}} 6s后返还失去的半红心并失去伤害增幅",
                {VIR="存在6s的中环魂火",
                ABY="施加流血的红色蝗虫"}
            },{
                EclipsedMod.enums.Items.FriedNails,
                "油炸钉子",
                "你不想来点吗? 真不要吗??",
                "{{BlackHeart}} 获得1黑心#获得3个随机属性提升和3个随机属性下降(不包括生命值)",--黄针都能凑针套你几把是个啥
            },{
                EclipsedMod.enums.Items.Commandos,
                "突鸡队",
                "四重火箭发射器",
                "{{Collectible583}} 发射4枚25%伤害的跟踪导弹",
                {VIR="4个绿色魂火",
                ABY="跟踪导弹造成双倍伤害",
                ABY="4个爆炸性绿色蝗虫"}
            },{
                EclipsedMod.enums.Items.Tech800M,
                "科技84O弹",
                "空间扭曲爆破 + 5个炸弹",
                "{{Bomb}} 获得5炸弹#炸弹爆炸前会瞬移至最近的敌人",
                {ABY="高速爆炸性白色蝗虫"}
            },{
                EclipsedMod.enums.Items.Lutos,
                "Lutos",
                "漆黑一片",
                "{{BlackHeart}} 获得1黑心#获得飞行#在角色下方生成一个可以摧毁岩石的{{ColorPurple}}陷阱{{CR}}#靠近角色的敌人会引出陷阱中的{{ColorPurple}}深渊之触{{CR}}攻击#{{ColorPurple}}陷阱{{CR}}在10s后或进入新房间后刷新",
                {ABY="可以生成深渊之触的蝗虫",
                QUA=3}
            },{
                EclipsedMod.enums.Items.Levitan,
                "列维坦",
                "地底破坏者",
                "↑ {{Speed}} 移速+0.2#角色的移动不再受到沟壑的限制#每10s会有{{ColorOlive}}菌陈{{CR}}朝敌人或特殊障碍物发动攻击, 造成40伤害并留下沟壑",
                {ABY="可以填平沟壑的蝗虫"}
            },{
                EclipsedMod.enums.Items.SoulJar,
                "罐装之魂",
                "魂灵泪弹",
                "↑ {{Tears}} 射速+0.4#↓ {{Range}} 射程-1.0#↓ {{Damage}} 伤害-1.0#{{Collectible653}} 泪弹有概率释放鬼灵爆破, 造成{{IGIcon}} {{ColorYellow}}7 + 0.5 x (楼层数-1){{CR}} 伤害",
                {ABY="可以释放鬼灵爆破的蝗虫"}
            },{
                EclipsedMod.enums.Items.InnerDemons,
                "内在魔童",
                "不要喂养它",
                "{{Timer}} 首次使用该道具6分钟内, 角色必须清理24个房间以生成2个{{ItemPoolDevil}}恶魔道具和2{{BlackHeart}}#{{EmptyHeart}} 多次使用将造成一颗心的伤害, 触发{{Collectible611}}声带, 增加需要清理的房间的数量#{{CurseLostSmall}} 没能清理要求的房间将获得3{{BrokenHeart}}",
                {VIR="造成2倍伤害的红色魂火, 这个魂火可以使{{DevilChance}}+6%"}
            },{
                EclipsedMod.enums.Items.Gospel,
                "福音书",
                "神圣传教",
                "用白十字标记所有敌人#{{Collectible374}} 已被标记的敌人会被天降光束轰击#标记的敌人死亡后发射4向红光柱",
                {VIR="熄灭后释放4向光柱的魂火",
                ABY="可以降下圣光的蝗虫, 杀死敌人后发射4向光柱",
                CONF={LBAB,"BAB_Gopsel"}}
            },{
                EclipsedMod.enums.Items.FoolMoon,
                "昧月",
                "狼人杀",
                "{{Timer}} 每30s, 触发{{ColorTransform}}夜幕降临{{CR}}效果5s, 使所有敌人入睡#{{Damage}} 每次{{ColorTransform}}夜幕降临{{CR}}在当前房间获得伤害+1, 上限为+10#{{Bait}} {{ColorTransform}}夜幕降临{{CR}}期间有敌人死亡, 附近的其他敌人会被泼黑水并被集火",
                {ABY="可以使敌人入睡的蝗虫"}
            },{
                EclipsedMod.enums.Items.EchoRoom,
                "回声室",--太棒了是一词多义我们没救了
                "扭曲交界",
                "生成前往3个特殊房间的传送门#{{ColorYellow}}挑战-Eco Portals额外特质{{CR}}: 记录使用时的房间, 在初始房间生成一个通往该房间的传送门",
                {VIR="中环魂火#不同颜色的魂火会施加各异的异常状态"}
            },{
                EclipsedMod.enums.Items.WonderWaffle,
                "超大杯华夫饼",
                "精英的早餐",
                "↑ {{Heart}} 心之容器+1#{{Heart}} 治疗2红心#↑ 杀死变种敌人获得随机属性提升",
                {ABY="对变种敌人造成额外伤害的紫色蝗虫"}
            },{
                EclipsedMod.enums.Items.LittleInferno,
                "火柴棍大小的地狱",
                "保持温度",
                "{{Burning}} 点燃所有敌人#炸毁房间内的所有老虎机, 乞丐, 敌弹和炸弹#持有时, 被烧死的敌人会爆炸(不会伤害角色)",
                {VIR="发射小团火焰的橙色魂火",
                ABY="火系蝗虫"}
            },{
                EclipsedMod.enums.Items.OldToothpaste,
                "旧牙膏",
                "还能挤出最后一点",
                "生成4-6个随机心掉落物{{HalfHeart}}{{HalfSoulHeart}}{{EternalHeart}}"
            },{
                EclipsedMod.enums.Items.Expurgation,
                "廓清",
                "从罪孽中解脱",
                "对角色造成伤害的敌人会被白十字标记#{{Collectible374}} 若该敌人已被标记, 则其会被天降光束轰击#标记的敌人死亡后发射4向光柱",
                {ABY="可以降下圣光的蝗虫, 杀死敌人后发射4向光柱"}
            },{
                EclipsedMod.enums.Items.BloodV,
                "V型血",
                "AUV, 是个吸血鬼",
                "进入房间会生成{{ColorRed}}蝙蝠跟班{{CR}}, 对敌人施加流血效果#{{ColorRed}}蝙蝠跟班{{CR}}会攻击任何靠近你的敌人#受到伤害生成额外的{{ColorRed}}蝙蝠跟班{{CR}}, 持续8s#流血死亡的敌人额外生成{{ColorRed}}蝙蝠跟班{{CR}}",
                {ABY="可以施加流血的蝗虫"}
            },{
                EclipsedMod.enums.Items.BigBertha,
                "大贝沙炮",--存疑
                "攻城炮",
                "{{Collectible583}} 发射威力{{ColorRed}}巨大{{CR}}的炮弹",
                {VIR="中环黑色魂火#造成高额伤害",
                ABY="会爆炸的黑色蝗虫"}
            },{
                EclipsedMod.enums.Items.UnholyCollection,
                "不洁的藏品",
                "干死撒旦-特别版",
                "允许在子宫, 阴间和教堂生成{{TreasureRoom}}{{Shop}}#生成两张塔罗牌"
            },{
                EclipsedMod.enums.Items.Ares,
                "阿瑞斯",
                "你感到盛气凌人",
                "↑ 每有一个敌人靠近角色, 获得{{Damage}}伤害+0.2#{{Bait}} 大多数敌人会无视其他吸引仇恨的效果#{{Damage}} 受到伤害会将临时获得的攻击力变为持续一整层",
                {ABY="每有一个敌人靠近获得伤害增幅的蝗虫"}
            },{
                EclipsedMod.enums.Items.Pizzarang,
                "意式辣味披萨香肠",
                "披萨!",--摆烂
                "举起并朝指定方向投掷回旋弹道的披萨#角色接到披萨将恢复充能#8s后爆裂为8个披萨片, 对命中的敌人施加{{Bait}}集火标记",
                {VIR="具有烂番茄效果的单房间外环魂火",
                ABY="施加集火标记的蝗虫"}
            },{
                "Stone Frog",
                "祖玛",
                "炮塔伙伴",
                "祖玛跟班, 角色攻击时自动朝最近的敌人发射效果各异的弹射泪弹"
            },{
                EclipsedMod.enums.Items.StainedGlass,
                "教堂染色窗",
                "信仰之盾",
                "{{Battery}} 未满充能也能使用#{{Collectible568}} 释放环绕的神圣护盾#{{IGIcon}} 可以跨房间存在, 持续10s",
                {VIR="有概率发射泪盾的白色魂火",
                ABY="可以抵挡敌弹的白色蝗虫",
                MOD={GLASS=true}}
            },{
                EclipsedMod.enums.Items.LilCultist,
                "邪教徒宝宝",
                "小死灵术士",
                "{{Collectible545}} 每7-8个房间, 根据当前房间杀死的敌人生成骨片环绕物和友好的骷髅仔",
                {ABY="杀死敌人后有概率生成骨片的蝗虫",
                BFF="触发效果所需的房间减少至6"}
            },{
                "Magician's Top",
                "魔术礼帽",
                "都看好了!",
                "在未清理的房间, 每30s触发:#{{Card}} 生成一张扑克牌, 每个房间一次#!!! 根据塔罗牌元素触发不同的效果",
                {ABY="杀死敌人后生成卡牌的蝗虫",
                BFF="触发效果所需的时间减少至20s"}
            },{
                EclipsedMod.enums.Items.WitchHat,
                "巫师尖帽",
                "阿布拉肯大瓜",--找不到翻译
                "在未清理的房间内, 每20s触发:#{{Pill}} 生成一个药丸, 每个房间一次#!!! 对所有敌人施加随机异常状态",
                {ABY="有概率施加随机异常状态的黑色蝗虫",
                BFF="触发效果所需的房间减少至15s"}
            },{
                EclipsedMod.enums.Items.MysticNovel,
                "神秘小说",
                "夜之神话",
                "生成2个{{ColorOrange}}蝙蝠跟班{{CR}}攻击敌人#{{ColorOrange}}蝙蝠跟班{{CR}}可以跨房间存在, 但仅持续15s",
                {VIR="内环黑色魂火, 熄灭后生成蝙蝠跟班",
                ABY="施加流血的黑色蝗虫",
                CONF={LBAB,"BAB_Mystic"}}
            },{
                EclipsedMod.enums.Items.Influenza,
                "流行性感冒",--怎么又来重名
                "鼻涕飞溅",
                "松开攻击键释放6-18个{{ColorLime}}鼻涕泪弹{{CR}}#{{Timer}} 冷却时间10s#冷却完毕时角色会留下{{ColorLime}}绿色液体{{CR}}",
                {
                    ABY="留下毒性液体的绿色蝗虫",
                    CONF={
                        {CollectibleType.COLLECTIBLE_SINUS_INFECTION,"SinusInfluenza"},
                        {CollectibleType.COLLECTIBLE_COMMON_COLD,"CommonInfluenza"},
                        {"5.350."..TrinketType.TRINKET_NOSE_GOBLIN,"InfluenzaGoblin"},
                    }
                }
            },{
                EclipsedMod.enums.Items.FooCharm,
                "符箓",--存疑
                "护身符",
                "使用以进行一个小段冲刺, 对靠近的敌人{{ColorLime}}贴符{{CR}}#长按主动键以引爆所有的{{ColorLime}}符咒{{CR}}",
                {VIR="静止的单房间绿色魂火, 熄灭后释放鬼灵爆破",
                ABY="可以触发鬼灵爆破的绿色蝗虫"}
            },{
                EclipsedMod.enums.Items.RulesBook,
                "挑衅之书",
                "定新规",
                "{{Collectible60}} 在当前房间内获得梯子的效果#{{Card44}} 在当前楼层/房间内施加随机的彩蛋种子效果",
                {VIR="白色魂火, 随机改变环绕半径",
                ABY="可以在沟壑间搭桥的蝗虫"}
            },{
                EclipsedMod.enums.Items.ShockTherapy,
                "电休克疗法",
                "专业震慑",
                "↑ {{Speed}} 移速+0.3#角色身后留下电流, 将接触的敌人{{ColorCyan}}导体化{{CR}}2s#{{ColorCyan}}导体化{{CR}}的敌人将陷入{{Confusion}}混乱, 每0.53s受到1伤害, 且每0.5s朝周围的敌人发射电弧, 造成50%的角色伤害",
                {ABY="在身后留下电流的电系蝗虫"}
            },{
                EclipsedMod.enums.Items.DreamTiger,
                "梦老虎",--疑似致敬国外meme
                "我在梦里见过它",
                "{{BlackHeart}} 获得1黑心#每8s生成一个跟随角色的影子, 最多可拥有4个#角色可以通过攻击键操作影子#影子会抓住敌人并将其固定, 而后施加{{Fear}}5s恐惧效果#{{Damage}} 有敌人被影子固定时获得伤害+0.4",
                {ABY="4个会生成暗影藤蔓的蝗虫"}
            },{
                "Loaf of Bread",
                "大块面包",
                "近亲交配的劣质面包!",--(Inbreading 谐音 Inbreeding近亲交配)
                "↑ {{Heart}} 心之容器+1#{{Collectible658}} 生成7个小以撒",
                {ABY="7只造成25%伤害的高移速蝗虫"}
            },{
                EclipsedMod.enums.Items.SuperUnderwear,
                "超级内裤",
                "超级力量!",
                "{{Damage}} 伤害+0.3#{{Damage}} 伤害倍率x1.5#{{Range}} 射程+2.5#{{Speed}} 移速+0.3#↓ 受伤后移除属性增益#进入新楼层后重新获得属性增益",
            },{
                EclipsedMod.enums.Items.Jaudaz,
                "Jaudaz",
                "噪音传染",
                "↑ {{Tears}} 射速+0.2#↑ {{Shotspeed}} 弹速+0.3#泪弹有概率使敌人{{ColorCyan}}导体化{{CR}}3s#{{ColorCyan}}导体化{{CR}}的敌人将陷入{{Confusion}}混乱, 每0.53s受到1伤害, 且每0.5s朝周围的敌人发射电弧, 造成50%的角色伤害",
                {ABY="将敌人导体化的白色电系蝗虫",
                QUA=3}
            },{
                EclipsedMod.enums.Items.PotionMotion,
                "运动药水",
                "玩弄时间",
                "激活后获得{{SpeedSmall}}移速+2.0, 免疫敌弹, 红大便, 伤害液体, 尖刺, 爆炸和火焰; 获得{{Collectible300}}高速免疫碰撞伤害和时间减速效果#{{Battery}} 每层可以持续64s, 无法使用电池充能#取消激活会使时间加速3s",
                {VIR="无法攻击的中环紫色魂火",
                ABY="高移速紫色蝗虫"}
            },{
                EclipsedMod.enums.Items.FalseDeath,
                "伪造证明",
                "愿君不得好死",
                "↑ +1复活次数#每次死亡后触发{{Collectible628}}死亡证明的效果#有概率在生效后失去该道具, 每次生效都会使这个概率+10%#↑ 该设定在挑战\"Die Hard 愿君好死\"中不生效",
                {ABY="施加恐惧的黑色蝗虫"}
            },{
                EclipsedMod.enums.Items.BatterYum,
                "电吃",
                "烤面包味!",
                "{{EmptyHeart}} 获得1空心之容器#{{Heart}} 生成3红心#{{Battery}} 每治疗{{HalfHeart}}获得1充能",
                {ABY="电系红色蝗虫"}
            },{
                EclipsedMod.enums.Items.OnigiriDonut,
                "果酱甜甜圈",--啥？
                "完美的甜甜圈! 我最喜欢果酱馅的了!",
                "↑ {{Heart}} 心之容器+1#{{HealingRed}} 治疗1红心#生成7个{{ColorGreen}}饭滴跟班{{CR}}, 有概率在死亡后掉落随机的半颗心"
            },{
                EclipsedMod.enums.Items.OnigiriGirya,
                "饭团壶铃",
                "335千克饭团(不是千卡.txt)",
                "↑ {{Heart}} 心之容器+1#{{HealingRed}} 治疗1红心#↑ {{Damage}} 伤害修正+1#生成7个{{ColorGreen}}饭团跟班{{CR}}, 有概率在死亡后掉落随机心#{{ColorGreen}}饭团跟班{{CR}}死亡后有75%的概率复活"
            },{
                "Everything Bagel",
                "万物百吉饼",
                "万事万物, 世间各处",
                "使用后, 本局游戏内所有道具将在随机道具间轮换({{IGIcon}} 同时禁用其他轮换效果, 如{{Collectible689}}{{Card81}})#{{GarlinIcon}} !!! 不同于上述提到的其他轮换效果, 这个道具提供的轮换效果为-{{ColorRed}}手 慢 无{{CR}}!#{{QuestionMark}} {{Quality0}}{{Quality4}}道具不可视!",
                {VIR="无法攻击的无敌魂火",
                ABY="可以飞过房间墙壁并从另一侧回来的黑白蝗虫"}
            },{
                EclipsedMod.enums.Items.LDR,
                "L.D.R",
                "来等死",--R押不上（（
                "使用后, 杀死随机敌人或角色, 并恢复1充能#每用24次(充能满)后立即杀死房间内的所有敌人",
                {VIR="持续一个房间的内环绿色骰子魂火",
                ABY="生成触手的绿色蝗虫"}
            },{
                EclipsedMod.enums.Items.BirdsWorld,
                "世界鸟类",--存疑
                "召唤死鸟",
                "{{Collectible117}} 在当前房间召唤7个死鸟跟班",
                {VIR="中环魂火#熄灭时召唤{{Collectible117}}死鸟",
                ABY="跟踪性黑色蝗虫",
                CONF={LBAB,"BAB_BirdWorld"}}
            },{
                "Applied Horticulture",
                "应用园艺学",
                "藤蔓召唤术",
                "将所有敌人用{{ColorGreen}}藤蔓{{CR}}固定5s#被{{ColorGreen}}藤蔓{{CR}}固定的敌人受到双倍伤害, 死亡后有15%的概率生成随机掉落物",
                {VIR="熄灭后将最近的敌人用藤蔓固定的绿色魂火",
                ABY="可以召唤藤蔓的蝗虫",
                CONF={LBAB,'BAB_Horticulture'}}
            },{
                EclipsedMod.enums.Items.OnTentacles,
                "触手的召唤",
                "触手召唤术",
                "对所有敌人释放触手攻击, 秒杀所有非头目敌人",
                {VIR="熄灭后用触手攻击最近敌人的紫色魂火",
                ABY="可以召唤触手的蝗虫",
                CONF={LBAB,"BAB_Tentacle"}}
            },{
                EclipsedMod.enums.Items.BettySweetooth,
                "甜牙蝙蝠",
                "她爱你",
                "尝试靠近角色的跟班, 可以抵挡敌弹#每个房间有概率召唤2-3个蝙蝠跟班攻击敌人",
                {BFF="召唤更多的蝙蝠",
                ABY="可以魅惑敌人的蝗虫"}
            },{
                EclipsedMod.enums.Items.OvercomingArachnophobia,
                "克服蛛形纲恐惧症",--捏他：饥荒
                "蜘蛛!!",
                "{{Collectible377}} 持有时使蜘蛛不再敌对#使用后触发随机的蜘蛛主动道具, 在当前楼层内获得随机的蜘蛛被动道具效果",
                {VIR="中环魂火#减速敌人",
                ABY="减速敌人的白色蝗虫",
                CONF={LBAB,"BAB_Spider"}}
            },{
                EclipsedMod.enums.Items.RetroVirus,
                "复古病毒",--捏他：太空入侵，翻译存疑
                "病毒入侵 + 移速下降",
                "↓ {{Speed}} 移速-0.1#{{Poison}} 触碰敌人施加2s中毒#所有死于中毒的敌人会生成感染细胞#感染细胞在房间内随机游荡, 对触碰的敌人施加中毒",
                {ABY="毒系蝗虫"}
            },{
                EclipsedMod.enums.Items.HolyGuacamole,
                "神圣鳄梨酱",
                "属性翻倍",
                "将下面每行中的其中一个随机值翻倍#{{Blank}} {{Damage}}, {{Speed}}, {{Tears}}, {{Range}}, {{Luck}}; #{{Blank}} {{Heart}}, {{Coin}}, {{Key}}, {{Bomb}}.",
                {ABY="2个绿色蝗虫"}
            },{
                EclipsedMod.enums.Items.MushroomSoup,
                "蘑菇汤",
                "每时每刻, 味道各异",
                "↑ 获得一个随机心{{Heart}}{{SoulHeart}}{{RottenHeart}}{{EternalHeart}}#↑ 随机属性上升#{{FunGuy}} 每拾取一个蘑菇道具重复触发该效果",
                {QUA=1}
            },{
                EclipsedMod.enums.Items.WitchCap,
                "女巫盖蘑菇",
                "诅咒?",--我来感觉了（？
                "10%的概率发射一个{{ColorPurple}}诅咒泪弹{{CR}}#{{ColorPurple}}诅咒泪弹{{CR}}会对命中的敌人施加{{ColorPurple}}诅咒效果{{CR}}#{{ColorPurple}}诅咒效果{{CR}}下的敌人获得减速并受到双倍伤害{{ColorFade}}(这不就原版虚弱效果有的吗还写一个新效果是几个意思){{CR}}#{{Luck}} 幸运13: 75%",
                {ABY="有概率施加诅咒效果的紫色蝗虫",
                MOD={FEM=true}}
            },{
                EclipsedMod.enums.Items.LuxAeterna,
                "永恒之光",
                "充能式圣所",
                "{{Collectible543}} 生成一个持续30s的神圣光环#↑ {{Tears}} 射速+2.5#↑ {{Damage}} 伤害倍率x1.2#追踪泪弹#概率免疫伤害",
                {VIR="中环魂火#发射圣光泪弹",
                ABY="附有神性光环的蝗虫",
                CONF={LBAB,"BAB_Lux"}}
            },{
                EclipsedMod.enums.Items.LittleDiablo,
                "小破坏神椒",
                "热辣滚烫!",
                "进入新房间生成6个环绕角色的火焰#火焰造成(10 + 楼层数 x 0.5)的伤害, 且可以抵挡4次伤害",
                {ABY="6个造成50%伤害的蝗虫"}
            },{
                EclipsedMod.enums.Items.BlueSoup,
                "蓝豆汤",
                "生命上升 + 暂时性射速上升",
                "↑ {{SoulHeart}} 获得3魂心#↑ {{Tears}} 获得3分钟内持续衰减的射速+15.3#杀死敌人以延长射速增益",
                {ABY="移动时留下水迹的蝗虫"}
            }
        }
        local trinkets={
            {
                EclipsedMod.enums.Trinkets.LostFlower,
                "迷失之花",
                "永恒之佑",
                "{{EternalHeart}} -> {{Heart}} 永恒之心拾取后会直接变为心之容器#受到惩罚伤害后失去该饰品",
                {CHAR={
                    {10,"MyLost",false},
                    {31,"MyLost",false}
                }}
            },{
                EclipsedMod.enums.Trinkets.WitchPaper,
                "巫纸",
                "回到过去",
                "!!! 一次性 !!!#{{Collectible422}} 在角色死亡时回溯时间"
            },{
                EclipsedMod.enums.Trinkets.Duotine,
                "多他因",
                "包有副作用的",
                "未来的所有药丸被替换为多他因胶囊"
            },{
                EclipsedMod.enums.Trinkets.TornSpades,
                "撕碎的王牌",
                "缺口",
                "33%的概率在清理房间后生成通往随机房间的传送门#离开房间后消失",
                {GOLD={INFO={findReplace=true},TEXT={"33","66","100"}}}
            },{
                EclipsedMod.enums.Trinkets.RedScissors,
                "红剪刀",
                "切断引线 0.5版",
                "将即爆炸弹变为可投掷炸弹",
                {GOLD={INFO={append=true},TEXT={"生成更多可投掷炸弹","生成更多可投掷炸弹","生成更多可投掷炸弹"}}}
            },{
                EclipsedMod.enums.Trinkets.TeaBag,
                "茶包",
                "香味抹除",
                "免疫中毒#移除角色靠近的毒云和易燃气体",
                {GOLD={INFO={append=true},TEXT={"更大的判定范围","更大的判定范围","更大的判定范围"}}}
            },{
                EclipsedMod.enums.Trinkets.MilkTeeth,
                "乳牙",
                "牙仙之佑",
                "{{Coin}} 敌人死亡后有16%的概率掉落快速消失的硬币",
                {GOLD={INFO={append=true},TEXT={"概率提升","概率提升","概率提升"}}}
            },{
                EclipsedMod.enums.Trinkets.BobTongue,
                "鲍勃的舌头",
                "毒性爆破",
                "{{Collectible446}} 炸弹环绕毒性气场",
                {GOLD={INFO={append=true},TEXT={"毒性气场范围提升","毒性气场范围提升","毒性气场范围提升"}}}
            },{
                EclipsedMod.enums.Trinkets.BinderClip,
                "装订夹",
                "缝合掉落物",
                "{{Collectible203}} 16%的概率将生成的掉落物变为双份",
                {GOLD={INFO={append=true},TEXT={"概率提升","概率提升","概率提升"}},
                CONF={670,"BinderOption"}}
            },{
                EclipsedMod.enums.Trinkets.MemoryFragment,
                "记忆碎片",
                "微弱的回音",
                "进入下一层后生成上一层最后3个使用的副手掉落物",
                {GOLD={INFO={findReplace=true},TEXT={"3","4","5"}}}
            },{
                EclipsedMod.enums.Trinkets.TeaFungus,
                "红茶菌",
                "水漫地下室",
                "所有房间淹水, 阻止水流"
            },{
                "Cartridge?",
                "游戏卡带?",
                "深渊的诅咒",
                "角色死亡后, 一些特定的跟班可以代替角色死亡并使角色复活#当角色生命值危险时, 即将替死的跟班也会闪烁#!!! 一次性, 消耗后生成{{EternalHeart}}",
                {GOLD={INFO={findReplace=true},TEXT={"一次性","50%的概率在效果触发后消耗","50%的概率在效果触发后消耗"}}}
            },{
                EclipsedMod.enums.Trinkets.RubikCubelet,
                "魔方小块",
                "你被诅咒了...",
                "{{Collectible721}} 受伤后有33%的概率将道具重随为错误道具",
                {GOLD={INFO={append=true},TEXT={"概率提升","概率提升","概率提升"}}},
            },{
                EclipsedMod.enums.Trinkets.DeadEgg,
                "死蛋",--都怕我！
                "爆破复仇",
                "{{Collectible117}} 角色的炸弹爆炸后会召唤1只死鸟, 持续8s",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                EclipsedMod.enums.Trinkets.Penance,
                "苦修",
                "改邪归正",
                "进入房间后有16%的概率用红十字标记敌人#标记的敌人死亡后发射4向光柱#{{GarlinIcon}} 神必作者把这个功能注释掉了, 这是个没用的饰品(乐)",
                {GOLD={INFO={append=true},TEXT={"概率提升","概率提升","概率提升"}}},
            },{
                EclipsedMod.enums.Trinkets.Pompom,
                "石榴",
                "尘世之馈",
                "{{HalfHeart}} 每拾取半个红心有50%的概率将其变为1个红色魂火",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                EclipsedMod.enums.Trinkets.XmasLetter,
                "圣诞信",
                "亲爱的撒诞老人...",
                "{{DevilChance}} 恶魔交易的概率上升#{{DevilRoom}} 将这封信丢在恶魔房, 进入下一层就会得到一个{{Collectible515}}神秘礼盒",
                {GOLD={INFO={append=true},TEXT={"概率提升","概率提升","概率提升"}}},
            },{
                EclipsedMod.enums.Trinkets.BlackPepper,
                "黑辣椒",
                "额外辛辣炸弹",
                "{{ColorRed}}可投掷炸弹{{CR}}兼容角色的炸弹特效",
            },{
                EclipsedMod.enums.Trinkets.Cybercutlet,
                "赛博肉片",
                "技术性失误?",
                "自动重随食物道具#{{Heart}} 受到伤害后治疗1红心, 而后失去该饰品",
            },{
                EclipsedMod.enums.Trinkets.GildedFork,
                "镀金叉子",
                "金制甜点",
                "将触碰的红心变为硬币#{{HalfHeart}} -> 2美分#{{Heart}} -> 3美分#{{Heart}} {{Heart}} -> 6美分",
                {GOLD={INFO={append=true},TEXT={"+1美分","+1美分","+2美分"}}},
            },{
                EclipsedMod.enums.Trinkets.BrokenJawbone,
                "碎裂的颌骨",
                "被遗忘的藏宝地",
                "在隐藏房和超级隐藏房生成碎土堆",
                {GOLD={INFO={append=true},TEXT={"碎土堆可以挖出更多的箱子","碎土堆可以挖出更多的箱子","碎土堆可以挖出更多的箱子"}}},
            },{
                EclipsedMod.enums.Trinkets.GoldenSpoon,
                "金勺",
                "继承遗产",
                "丢弃该饰品会将角色所有的钱存入其中#再次拾起该饰品以取钱#存钱可以跨局存在"
            },{
                EclipsedMod.enums.Trinkets.GoldenEgg,
                "金蛋",
                "黄金之触",
                "将接触的掉落物全部变为金色变种{{GoldenHeart}}{{Coin}}{{GoldenKey}}{{GoldenBomb}}{{Pill3}}{{Battery}}{{Trinket}}#67%的概率在生效后移除该饰品",
                {GOLD={INFO={findReplace=true},TEXT={"67","33","0"}}}
            },{
                EclipsedMod.enums.Trinkets.WarHand,
                "战争之手",--欧内的手好战
                "好重的炸弹",
                "{{Bomb}} 16%的概率将炸弹掉落物替换为究极炸弹",
                {GOLD={INFO={findReplace=true},TEXT={"16","32","48"}}}
            },{
                "Void Walker",
                "虚空行者",
                "幽灵数据",
                "{{Collectible584}} 触碰主动道具底座会直接将其变为6个对应的魂火",
                {GOLD={INFO={findReplace=true},TEXT={"6","7","8"}}}
            },{
                EclipsedMod.enums.Trinkets.GiftCertificate,
                "送礼证明",
                '免费代金券',
                "{{Collectible521}} 进行消费时让另1个随机交易免费#!!! 效果仅触发一次",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                EclipsedMod.enums.Trinkets.BlackPearl,
                "黑珍珠",
                "邪恶上升",
                "{{HalfBlackHeart}} 进行血偿交易时获得1个半黑心, 而后移除该饰品",
                {GOLD={INFO={findReplace=true},TEXT={"半黑心","黑心","黑心"}}}
            },{
                EclipsedMod.enums.Trinkets.PhotocopyPHD,
                "药学博士证复印件",
                "坏药丸?",
                "{{Collectible654}} 服用坏药丸时获得增益",
                {GOLD={INFO={append=true},TEXT={"效果翻倍","效果翻倍","效果翻倍"}}},
            },{
                EclipsedMod.enums.Trinkets.IvoryTarget,
                "象牙靶",
                "死亡标记",
                "进入房间后, 8%的概率标记一个敌人#被标记的敌人死亡后生成随机掉落物",
                {GOLD={INFO={findReplace=true},TEXT={"8","16","24"}}}
            },{
                EclipsedMod.enums.Trinkets.FoolHearts,
                "红桃愚者",
                "弄丢的<3",
                "丢弃该饰品同时丢弃角色的红心"
            },{
                EclipsedMod.enums.Trinkets.BloodyHandprint,
                "血手印",
                "残暴",
                "{{Collectible704}} 10%的概率在受伤后触发狂战效果",
                {GOLD={INFO={findReplace=true},TEXT={"10","20","30"}}}
            },{
                "Occult Sign",
                "玄秘符咒",
                "放血仪式",
                "{{BleedingOut}} 进入房间后, 16%的概率对一个随机敌人施加流血和硫磺诅咒",
                {GOLD={INFO={findReplace=true},TEXT={"16","32","48"}}}
            },{
                EclipsedMod.enums.Trinkets.TrinitySet,
                "三位一体槽",
                "神圣的守护者",
                "在当前楼层获得一个随机的天使跟班{{Collectible390}} {{Collectible112}} {{Collectible363}}",
                {GOLD={INFO={findReplace=true},TEXT={"一个随机的","两个随机的","三个"}}}
            },{
                EclipsedMod.enums.Trinkets.CosmicSpot,
                "宇宙的污点",
                "异次元!",
                "传送类卡牌, 药丸和道具的效果改为生成对应的传送门",
            },{
                EclipsedMod.enums.Trinkets.LilacClef,
                "淡紫乐谱",
                "诅咒音符",
                "{{Collectible"..EclipsedMod.enums.Items.WitchCap.."}} 10%的概率发射一个{{ColorPurple}}诅咒泪弹{{CR}}(幸运13: 75%)#{{ColorPurple}}诅咒效果{{CR}}下的敌人获得减速并受到双倍伤害#{{Collectible"..EclipsedMod.enums.Items.Lutos.."}} 16%的概率在受到伤害后生成出售",
                {GOLD={INFO={append=true},TEXT={"概率提升","概率提升","概率提升"}}},
            },{
                EclipsedMod.enums.Trinkets.ExtraGen,
                "额外的基因",
                "念力",
                "{{Collectible522}} 进入房间或受到伤害后触发{{ColorCyan}}念力{{CR}}3s",
                {GOLD={INFO={append=true},TEXT={"效果翻倍","效果翻倍","效果翻倍"}}},
            },{
                EclipsedMod.enums.Trinkets.SoulUnity,
                "灵魂统一体",
                "完成交易",
                "{{Collectible712}} 进入新楼层后将1个被动道具的魂火变为完整的道具",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                EclipsedMod.enums.Trinkets.WildCurse,
                "狂野诅咒",--妈的狂野人生
                "鬼神显灵",
                "↑ {{Damage}} 伤害+3#↓ 其余全属性下降",
                {GOLD={INFO={append=true},TEXT={"效果翻倍","效果翻倍","效果翻倍"}}},
            },{
                EclipsedMod.enums.Trinkets.NirlyCell,
                "尼利的细胞",
                "高牌!",
                "下1张拾取的卡牌会被饰品槽储存#储存的卡牌会同副手的卡牌一起触发#丢弃该饰品放出储存的卡牌",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                EclipsedMod.enums.Trinkets.DimCorrosion,
                "维度腐蚀",--捏他:moonlighter
                "?",
                "进入下一层后, 上一层商店未进行的交易也会被带到下一层#!!! 只能消费其中1个",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                EclipsedMod.enums.Trinkets.VaultKey,
                "宝库钥匙",
                "快去找箱子!",
                "{{ChestRoom}} 宝库中大多数种类的箱子必定包含道具"
            },{
                "Love Token",
                "爱心代币",
                "帮你拍弯币了快说谢谢(故意的)",
                "{{Collectible485}} 清理房间触发掰弯硬币的效果#不会影响到清理房间战利品",
                {GOLD={INFO={append=true},TEXT={"可能将物品复制为3份","可能将物品复制为3份","可能将物品复制为4份"}}},
            }
        }
        local pill={
            {
                EclipsedMod.enums.Pickups.RedPill,
                "多他因胶囊",
                "↑ {{Damage}} 获得持续衰减的伤害+5.4#{{Damage}} 每次使用重置该伤害增幅#{{Collectible582}} 持续期间内获得2层迷幻效果#大药丸效果翻倍"
            }
        }
        function DeliPick(text)
            return text.."#在房间内时会随机变为其他精神错乱掉落物#使用后有33%的概率不消耗, 而是变为其他精神错乱掉落物#只能持有一个精神错乱掉落物"
        end
        local cards={
            --Loop Card
                {
                    EclipsedMod.enums.Pickups.ArsenalCard,
                    "军械库卡",
                    "库存",
                    "{{ChestRoom}} 在合适的位置创造一个宝库"
                },{
                    EclipsedMod.enums.Pickups.BookeryCard,
                    "图书室卡",
                    "书虫",
                    "{{Library}} 在合适的位置创造一个图书馆"
                },{
                    EclipsedMod.enums.Pickups.OutpostCard,
                    "前哨战卡",
                    "露营",
                    "{{IsaacsRoom}} 在合适的位置创造一个卧室"
                },{
                    EclipsedMod.enums.Pickups.OblivionCard,
                    "遗忘皆空卡",
                    "忘却",
                    "朝移动方向丢出后, 清除经过的障碍物, 擦除第一个碰到的敌人(持续一层)#!!! 类似混沌卡, 遗忘皆空也可以杀死大基甸(六分仪: 6)"
                },{
                    EclipsedMod.enums.Pickups.TreasuryCard,
                    "宝库卡",
                    "物资",
                    "{{TreasureRoom}} 在合适的位置创造一个宝箱房"
                },{
                    EclipsedMod.enums.Pickups.BattlefieldCard,
                    "战场卡",
                    "角斗",
                    "{{BossRushRoom}} 在合适的位置创造一个头目挑战房"
                },{
                    EclipsedMod.enums.Pickups.BloodGroveCard,
                    "血魔树林卡",
                    "吞噬",
                    "{{CurseRoom}} 在合适的位置生成一个诅咒房"
                },{
                    EclipsedMod.enums.Pickups.StormTempleCard,
                    "风暴神殿卡",
                    "敬神",
                    "{{AngelRoom}} 在合适的位置生成一个天使房"
                },{
                    EclipsedMod.enums.Pickups.ZeroMilestoneCard,
                    "零之界标卡",
                    "目标",
                    "生成一个在9个道具间轮换的道具底座"
                },{
                    "X_CryptCard",
                    "祖先墓穴卡",
                    "宿命",
                    "{{SacrificeRoom}} 在合适的位置创造一个献祭房"
                },{
                    EclipsedMod.enums.Pickups.MazeMemoryCard,
                    "追忆迷宫卡",
                    "混乱",
                    "在合适的位置创造一个错误房"
                },{
                    EclipsedMod.enums.Pickups.CemeteryCard,
                    "墓园卡",
                    "墓地",
                    "{{SuperSecretRoom}} 在合适的位置创造一个超级隐藏房, 其中必定包含{{Collectible"..EclipsedMod.enums.Items.GardenTrowel.."}}花园泥铲和4个土堆"
                },{
                    EclipsedMod.enums.Pickups.VillageCard,
                    "村庄卡",
                    "村落",
                    "{{ArcadeRoom}} 在合适的位置创造一个赌博房"
                },{
                    EclipsedMod.enums.Pickups.GroveCard,
                    "小树林卡",
                    "挑战",
                    "{{ChallengeRoom}} 在合适的位置创造一个挑战房"
                },{
                    EclipsedMod.enums.Pickups.SpiderCocoonCard,
                    "蜘蛛茧卡",
                    "蔓生",
                    "摧毁房间内的所有大便, 房间内每有一个敌人, 大便和角色生成数个蜘蛛"
                },{
                    EclipsedMod.enums.Pickups.VampireMansionCard,
                    "吸血鬼别墅卡",
                    "嗜杀",
                    "{{SuperSecretRoom}} 在合适的位置创造一个超级隐藏房, 其中必定包含1{{BlackHeart}}和一个{{DemonBeggar}}"
                },{
                    EclipsedMod.enums.Pickups.WheatFieldsCard,
                    "麦田卡",
                    "丰收",
                    "{{ChestRoom}} 在合适的位置创造一个金宝库, 其中必定包含9个金掉落物"
                },{
                    EclipsedMod.enums.Pickups.SwampCard,
                    "沼泽卡",
                    "腐朽",
                    "{{SuperSecretRoom}} 在合适的位置创造一个超级隐藏房, 其中必定包含1{{RottenHeart}}和一个{{RottenBeggar}}"
                },{
                    EclipsedMod.enums.Pickups.RuinsCard,
                    "遗迹卡",
                    "秘密",
                    "{{SecretRoom}} 在合适的位置创造一个隐藏房"
                },{
                    EclipsedMod.enums.Pickups.RoadLanternCard,
                    "路灯卡",
                    "揭示",
                    "{{Collectible337}} 减速时间, 并在清理下一个房间之前获得{{Collectible91}} 探窟帽的效果"
                },{
                    EclipsedMod.enums.Pickups.SmithForgeCard,
                    "铁匠炉卡",
                    "熔炼",
                    "{{ChestRoom}} 在合适的位置创造一个宝库, 其中必定包含3个饰品"
                },{
                    EclipsedMod.enums.Pickups.ChronoCrystalsCard,
                    "时空水晶",
                    "停滞",
                    "{{Collectible337}} 加速时间, 并在清理下一个房间之前获得{{Collectible514}} 损坏的调解器效果"
                },{
                    EclipsedMod.enums.Pickups.WitchHut,
                    "女巫小屋卡",
                    "混杂",
                    "{{SuperSecretRoom}} 在合适的位置创造一个超级隐藏房, 其中必定包含9个{{Pill}}"
                },{
                    EclipsedMod.enums.Pickups.BeaconCard,
                    "灯塔卡",
                    "明路",
                    "{{Shop}} 在合适的位置创造一个商店"
                },{
                    EclipsedMod.enums.Pickups.TemporalBeaconCard,
                    "时空灯塔卡",
                    "监守",
                    "{{Collectible422}} 当前楼层内受到致命伤害将回溯时间"
            },{
                EclipsedMod.enums.Pickups.KingChess,
                "KING-黑棋",
                "要塞",
                "把角色用黑大便围起来"
            },{
                EclipsedMod.enums.Pickups.KingChessW,
                "KING-白棋",
                "要塞",
                "把角色用石大便围起来"
            },{
                EclipsedMod.enums.Pickups.Apocalypse,
                "启示录",
                "大灾变",
                "把整个房间填满黑大便或红大便"
            },{
                EclipsedMod.enums.Pickups.BannedCard,
                "禁卡",
                "这他妈有个屁用",
                "生成两个自己的复制",
            },{
                EclipsedMod.enums.Pickups.Trapezohedron,
                "偏方三八面晶体",
                "???",
                "将房间内的所有饰品变为{{Card78}}红钥匙碎片"
            },{
                EclipsedMod.enums.Pickups.SoulUnbidden,
                "不速之客的魂石",
                "魂火?",
                "{{Collectible712}} 角色获得所有的道具魂火对应的道具#未拥有道具魂火时则随机获得一个"
            },{
                EclipsedMod.enums.Pickups.SoulNadabAbihu,
                "拿答和亚比户的魂石",
                "纵火狂",
                "在当前房间内获得{{Collectible257}} 火焰意志, {{Collectible256}} 炽热炸弹和防火防爆"
            },{--塔
                    EclipsedMod.enums.Pickups.AscenderBane,
                    "进阶之灾",
                    "虚无诅咒",
                    "!!! 移除1{{BrokenHeart}}碎心并获得随机诅咒"
                },{
                    EclipsedMod.enums.Pickups.MultiCast,
                    "多重释放",
                    "激发你的魂火",
                    "{{Collectible584}} 生成3个当前主动道具对应的魂火"
                },{
                    EclipsedMod.enums.Pickups.Wish,
                    "许愿",
                    "??",
                    "{{Collectible515}} 触发神秘礼盒的效果"
                },{
                    EclipsedMod.enums.Pickups.Offering,
                    "祭品",
                    "失去生命以获得",
                    "{{Collectible536}} 触发祭坛的效果"
                },{
                    EclipsedMod.enums.Pickups.InfiniteBlades,
                    "无限刀刃",
                    "刀光剑雨",
                    "生成7把斜向运动的刀子, 造成2倍伤害, 每秒30段判定#刀子具有连续统效果, 存在6s"
                },{
                    EclipsedMod.enums.Pickups.Transmutation,
                    "转化",
                    "全部加入",
                    "将房间内的所有敌人和掉落物重随为随机掉落物"
                },{
                    EclipsedMod.enums.Pickups.RitualDagger,
                    "仪式匕首",
                    "斩杀",
                    "朝最近的敌人投掷匕首#{{Damage}} 匕首初始造成100%伤害#被匕首杀死的敌人会生成这张牌的复制, 并在本局内永久增加50%匕首伤害"
                },{
                    EclipsedMod.enums.Pickups.Fusion,
                    "聚变",
                    "充能球",
                    "{{Collectible512}} 触发黑洞的效果"
                },{
                    EclipsedMod.enums.Pickups.DeuxEx,
                    "机械降神",
                    "奇迹",
                    "↑ {{Luck}} 在当前房间获得幸运+100"
                },{
                    EclipsedMod.enums.Pickups.Adrenaline,
                    "肾上腺素",
                    "力量=恐慌!",
                    "{{Collectible493}} 在当前房间获得肾上腺素#{{Battery}} 将所有的红心变为电池, 不致死"
                },{
                    EclipsedMod.enums.Pickups.Corruption,
                    "腐化",
                    "力量消耗",
                    "!!! 自动触发3次角色持有的主动道具, 而后失去它#不影响副手道具"
                },{
                    EclipsedMod.enums.Pickups.Decay,
                    "腐朽",
                    "不可被打出诅咒",
                    "{{Trinket140}} 在当前房间获得所多玛的苹果#{{RottenHeart}} 角色的红心变为腐心, 每有一个心被转换生成一个瘟疫蝗虫"
            },{
                EclipsedMod.enums.Pickups.Domino16,
                "多米诺骨牌1/6",
                "一切之一",
                "生成同一类型的6个掉落物"
            },{
                EclipsedMod.enums.Pickups.Domino25,
                "多米诺骨牌2/5",
                "七面十面",
                "复活并重随房间内的所有敌人"
            },{
                EclipsedMod.enums.Pickups.Domino34,
                "多米诺骨牌3/4",
                "三点四点",
                "重随本层的所有道具和掉落物"
            },{
                EclipsedMod.enums.Pickups.Domino00,
                "多米诺骨牌0/0",
                "Allin",
                "五五开的概率复制或移除所有道具, 掉落物和敌人"
            },{
                EclipsedMod.enums.Pickups.DeliObjectBattery,
                "精神错乱电池",
                "???",
			    DeliPick("{{Battery}} 为所有主动道具提供1-12随机数量的充能")
            },{
                EclipsedMod.enums.Pickups.DeliObjectBomb,
                "精神错乱炸弹",
                "???",
                DeliPick("{{Bomb}} 生成一个随机效果的炸弹")
            },{
                EclipsedMod.enums.Pickups.DeliObjectCard,
                "精神错乱卡牌",
                "???",
                DeliPick("{{Card}} 随机的卡牌效果")
            },{
                EclipsedMod.enums.Pickups.DeliObjectCell,
                "精神错乱细胞",
                "???",
                DeliPick("{{DeliriumSmall}} 生成一个随机的本层见过的友方敌人")
            },{
                EclipsedMod.enums.Pickups.DeliObjectCoin,
                "精神错乱硬币",
                "???",
			    DeliPick("{{Coin}} 获得一个随机硬币")
            },{
                EclipsedMod.enums.Pickups.DeliObjectHeart,
                "精神错乱心",
                "???",
			    DeliPick("{{UnknownHeart}} 获得一个随机心")
            },{
                EclipsedMod.enums.Pickups.DeliObjectKey,
                "精神错乱钥匙",
                "???",
			    DeliPick("{{Key}} 打开所有上锁的门, 打开能打开的红房间, 打开所有箱子")
            },{
                EclipsedMod.enums.Pickups.DeliObjectPill,
                "精神错乱药丸",
                "???",
			    DeliPick("{{Pill}} 随机的药丸效果")
            },{
                EclipsedMod.enums.Pickups.DeliObjectRune,
                "精神错乱符文",
                "???",
                DeliPick("{{Rune}} 随机的符文效果")
            },{--不管了我要玩抽象了
                EclipsedMod.enums.Pickups.KittenAttack,
                "进击卡",
                "俺要发射激光嘞",
                "{{Collectible49}} 直接开喷",
            },{
                EclipsedMod.enums.Pickups.KittenAttack2,
                "进击卡",
                "哼哼啊啊啊啊啊啊啊啊啊啊",
                "{{Collectible611}} 最大威力的声带"
            },{
                EclipsedMod.enums.Pickups.KittenBomb,
                "爆炸猫",--存疑
                "当你看到这行字的时候请立即用掉这张卡",
                "持有时, 3s后角色自爆#{{Collectible483}} 使用后触发一次强力爆炸"
            },{
                EclipsedMod.enums.Pickups.KittenBomb2,
                "爆炸猫",
                "当你看到这行字的时候请立即用掉这张卡",
                "持有时, 3s后角色自爆#{{Burning}} 使用以点燃所有敌人#炸毁房间内的所有老虎机, 乞丐, 敌弹和炸弹#被烧死的敌人会爆炸(不会伤害角色)"
            },{
                EclipsedMod.enums.Pickups.KittenDefuse,
                "拆弹卡",
                "把你线拔了",
                "{{Trinket63}} 安全拆弹"
            },{
                EclipsedMod.enums.Pickups.KittenDefuse2,
                "拆弹卡",
                "敌弹也是弹",
                "{{Collectible522}} 触发念力"
            },{
                EclipsedMod.enums.Pickups.KittenFavor,
                "喜好卡",
                "到底要选哪个呢",
                "{{Collectible249}} 为当前房间内的所有道具, 掉落物和商店物品额外提供一个选项"
            },{
                EclipsedMod.enums.Pickups.KittenFavor2,
                "喜好卡",
                "好了伙计你现在有5个选择你想成为圣人还是想成为格林其慎重做出你的选择你想成为哪个呢哈?哈?圣人Sainte还是格林其Glunch?",--别问
                "{{Collectible689}} 变成冠批"
            },{
                EclipsedMod.enums.Pickups.KittenFuture,
                "先知卡",
                "听着孩子我没有足够的时间了下一个房间是一个",
                "{{Collectible419}} 金牌传送"
            },{
                EclipsedMod.enums.Pickups.KittenFuture2,
                "先知卡",
                "成为蓝批的下一步",
                "{{Collectible161}} 一个变为蓝神的机会(如果你已经是伟大的蓝门则提供复活)"
            },{
                EclipsedMod.enums.Pickups.KittenNope,
                "不要卡",
                "万物都将走向一个终点: 卡",
                "{{Collectible478}} 憋气时停"
            },{
                EclipsedMod.enums.Pickups.KittenNope2,
                "不要卡",
                "因为太怕痛所以点了个四级道具",
                "{{HolyMantle}} 你无敌了"
            },{
                EclipsedMod.enums.Pickups.KittenSkip,
                "跳过卡",
                "你给陆哒佑",
                "打开所有普通门#无法逃出头目房"
            },{
                EclipsedMod.enums.Pickups.KittenSkip2,
                "跳过卡",
                "你给陆哒佑",
                "{{Collectible660}} 生成通往{{BossRoom}}{{SecretRoom}}{{TreasureRoom}}的传送门"
            },{
                EclipsedMod.enums.Pickups.KittenShuffle,
                "洗牌卡",
                "牌库洗一洗",
                "{{Collectible481}} 稿圣加强"
            },{
                EclipsedMod.enums.Pickups.KittenShuffle2,
                "洗牌卡",
                "自己洗一洗",
                "{{Collectible258}} 脱胎换骨"
            },{
                EclipsedMod.enums.Pickups.GhostGem,
                "幽灵石",
                "灵体锂云母",
                "{{Collectible634}} 释放4个鬼魂"
            },{
                EclipsedMod.enums.Pickups.BloodyGem,
                "血宝石",
                "狂怒锂云母",
                "{{Collectible118}} 持续6s的血激光环"
            },{
                EclipsedMod.enums.Pickups.CrystalGem,
                "月白银",
                "水泡锂云母",
                "用泡泡困住房间内的敌人15s, 使其失去碰撞伤害#泡泡爆裂时会击退周围的敌人"
            },{
                EclipsedMod.enums.Pickups.CursedGem,
                "咒绿石",
                "扭曲锂云母",
                "触发{{Card60}}逆位皇帝且携带{{Collectible697}}消失的胞胎"
            },{
                EclipsedMod.enums.Pickups.GoldenGem,
                "金铜器",
                "财宝锂云母",
                "{{Coin}} 生成1-30硬币"
            },{
                EclipsedMod.enums.Pickups.LovelyGem,
                "恋红石",
                "芳香锂云母",
                "{{Collectible421}} 放魅惑屁, 并获得6个熄灭后魅惑附近敌人的魂火"
            },{
                EclipsedMod.enums.Pickups.ShinyGem,
                "闪金石",
                "好运锂云母",
                "{{Collectible202}} 将整个房间点金#{{IGIcon}} 启用Epiphany时也会将道具点金"
            },{
                EclipsedMod.enums.Pickups.SweetGem,
                "魅宝石",
                "甜蜜锂云母",
                "操控房间内的一个随机敌人#魅惑头目10s"
            }
        }
        local pill={
            {
                EclipsedMod.enums.Pickups.RedPill,
                "多他因胶囊",
                "↑ {{Damage}} 获得衰减性的+5.4伤害增幅#{{Damage}} 额外使用将重置伤害增幅#{{Collectible582}} 施加2层迷幻效果"
            }
        }
        local other={
            {
                EntityType.ENTITY_SLOT, EclipsedMod.enums.Slots.VoidBeggar, 0,
                "虚空乞丐",
                "↓ 它要你的属性#{{Collectible}} 提供道具作为回报(至多3次)#{{Card41}} 送走时触发黑符文#{{Collectible660}} 杀死它打开随机传送门"
            },{
                EntityType.ENTITY_SLOT, EclipsedMod.enums.Slots.BookwormBeggar, 0,
                "魂火术士",
                "{{Coin}} 它要5美分#{{Collectible712}} 提供道具魂火作为回报(至多三次#{{Library}} 送走时生成随机书本"
            },{
                EntityType.ENTITY_SLOT, EclipsedMod.enums.Slots.CandyBeggar, 0, 
                "甜蜜乞丐",
                "{{HalfHeart}} 它要你的血#↑ 提供随机属性提升作为回报#{{ItemPoolUltraSecret}} 送走时生成红色道具#{{Collectible565}} 杀死它会出现嗜血小宠(敌对状态)"
            },{
                EntityType.ENTITY_SLOT, EclipsedMod.enums.Slots.DeliriumBeggar, 0,
                "百变乞丐",
			    "{{Coin}} 它要你的钱#{{Card"..EclipsedMod.enums.Pickups.DeliObjectCell.."}} 生成一个随机的本层见过的友方敌人, 或者一个精神错乱掉落物作为回报#{{Collectible510}} 送走时生成随机精神错乱头目#杀死它获得精神错乱掉落物"
            },{
                EntityType.ENTITY_SLOT, EclipsedMod.enums.Slots.GimpyBeggar, 0, 
                "抖M乞丐",
	    		"{{HalfHeart}} 它要你的灵魂#提供药丸, 心或即爆炸弹作为回报#{{ItemPoolCurse}} 送走时生成诅咒房道具"
            },{
                EntityType.ENTITY_SLOT, EclipsedMod.enums.Slots.MeatBeggar, 0, 
                "食肉乞丐",
			    "{{Coin}} 它要你的钱#{{Heart}} 提供随机红心作为回报#送走时生成随机肉道具或天使房道具"
            },{
                EntityType.ENTITY_SLOT, EclipsedMod.enums.Slots.MongoBeggar, 0, 
                "蒙戈乞丐",
			    "{{Coin}} 它要你的钱#生成随机跟班作为回报#生成3个宝宝跟班将其送走时生成{{Collectible"..EclipsedMod.enums.Items.MongoCells.."}}蒙戈细胞{{Collectible322}}蒙戈宝宝"
            },{
                EntityType.ENTITY_SLOT, EclipsedMod.enums.Slots.NecromanceBeggar, 0, 
                "死灵术士",
			    "{{Coin}} 它要5美分#生成友好骷髅仔, 骨心或骨片环绕物作为回报#送走时生成骨头道具"
            }
        }
        local conditionalList={
            ReLost="在使用该道具的房间也获得{{HolyMantle}}神圣屏障",
            MegaNada="爆炸造成25倍角色伤害",
            NadaBoby="拿答的尸体会持续跟踪敌人, !!!但只会引爆一次, 可能导致更难捡回拿答的尸体进行投掷",
            NaDenotate="可无损引爆拿答的尸体",

            MultiDMS="生成恶鬼的概率额外增加25%",
            Pot404="可能吐出角色未持有的饰品",
            MoreNirly="可以储存10张牌",
            UnlockedGrimoire="影响箱子爆率的效果也可以影响该道具",
            BatterStone="每个房间可以使用6次",
            AbihuSkill="拉回拿答的尸体",
            SinusInfluenza="冷却缩减, 持续留下绿色液体",
            CommonInfluenza="更多的鼻涕泪弹",
            InfluenzaGoblin="鼻涕泪弹获得跟踪效果",
            NadabBone="获得骨头泪弹",
            NadabIce="获得冰冻泪弹, 移动时留下水迹",
            MyLost="拾取永恒之心触发{{HolyMantle}}神圣卡的效果",
            BinderOption="掉落物选一个? 我全都要!",

            MongoFly="33%的概率在清理房间后生成一个{{Collectible693}}虫群苍蝇#",
            MongoBerdly="获得{{Trinket80}}黑色羽毛的效果#",
            MongoHoming="获得跟踪泪弹#",
            MongoLemon="受伤后有33%的概率生成柠檬液体#",
            MongoDump="有33%的概率放屁抵消下一次伤害#",
            BadToTheMongo="受伤后有33%的概率触发{{BlackHeart}}全屏伤害#",
            MongoFart="受伤后有33%的概率放随机效果的屁#",
            MongoBethlehem="受到惩罚伤害后有33%的概率生成圣光大便光圈#",
            MongoKami="受到惩罚伤害后自爆#",
            MongoBleed="受到惩罚伤害后流血#",
            MongoCrash="受到惩罚伤害后释放石刃波#",
            MongoWaterH="受伤后生成圣水液体#",
            MongoEMO="角色留下水迹, 受伤后有33%的概率释放圣光#",
            MongoToma="受伤后有33%的概率生成1-3只蓝蜘蛛#",
            MongoShade="受伤后有33%的概率触发{{Collectible705}}暗仪刺刀的效果#",
            MongoGemini="获得{{Collectible658}}巨细胞的效果#",
            MongoTine="获得飞行#",
            MongoDad="获得{{Collectible377}}爆裂卵囊的效果#",
            MongoFinger="获得{{Collectible391}}背刺的效果#",
            MongoWiz="获得{{Collectible358}}蠢巫帽的效果#",
            MongoFreeze="获得冰冻泪弹{{Freezing}}#",
            MonGost="获得灵体泪弹#",
            MongAbel="获得回旋泪弹{{Collectible5}}#",
            MongoRand="{{ColorRainbow}}获得随机泪弹#",
            MongoBrims="获得{{Collectible118}}硫磺火#",
            MongoCharm="获得魅惑泪弹(!!! 绷带球需要二级以生效)#",
            MongoFear="泪弹施加恐惧{{Fear}}#",
            MongoSissy="间歇性生成蓝蜘蛛#",
            MongoTrail="角色留下水迹#",
            MongoRepeater="获得双发泪弹#",
            MongoShrink="获得缩水泪弹{{Collectible398}}#",
            MongoMaggy="获得{{Collectible7}}殉道者之血#",
            MongoAHA="获得{{Collectible399}}深渊巨口#",
            MongoLoki="获得{{Collectible87}}洛基的角#",
            Monstrgo="获得{{Collectible229}}萌死戳的肺#",
            MongoTar="获得{{Collectible231}}焦油球#",
            MonGoGOGO="获得{{Collectible505}}宝可GO#",
            MongoInf="获得{{Collectible369}}连续统泪弹#",
            MongoPill="获得{{Collectible75}}PHD#",
            MongoCheat="获得{{Collectible665}}嗝屁猫的眼睛#",
            MongoSacred="获得{{Collectible182}}圣心#",
            BombotheMongo="硬币上限变为999#",
            MongoCharge="主动道具获得额外充能条#",
            MongoKing="获得{{Collectible689}}混乱王冠#",--不是你凭啥???
            MongoVision="我能永远看清#",
            MongoBobby="获得{{Collectible368}}溢泪症#",
            MongoTech="获得{{Collectible68}}科技#",
            MongoTech2="获得{{Collectible152}}科技2#",
            MongoRot="获得{{Collectible151}}虫群复击#",
            MongoMark="获得{{Collectible394}}十字准星#",
            MongoShield="获得{{Collectible213}}泪盾#",
            MongoBoil="获得{{Collectible531}}泪血症#",
            MongoBlood="获得{{Collectible411}}血嗜#",
            MongoVampire="获得{{Collectible62}}吸血鬼之魅#",
            GreatMongo="获得{{Trinket141}}失落摇篮曲的效果#",
            MongoLDH="获得{{Trinket188}}冰块的效果#",
            MongoPortal="获得{{Collectible660}}牌意解读#",
            MonGurdy="获得{{Collectible593}}火星#",
            MonGuppy="获得{{Collectible212}}嗝屁猫的项圈#",
            MonGuppyBall="获得{{Collectible134}}嗝屁猫的尾巴#",
            MongoSlow="获得减速泪弹{{Slow}}#",
            ManBo="每有一个敌人靠近获得伤害修正, 敌人会无视其他吸引仇恨的跟班",
            MongoRocking="获得破石泪弹#",
            MongoEye="获得{{Collectible558}}眼瘤#",
            MongoCenser="获得{{Collectible232}}时间减速效果#",
            MongoMilk="获得{{Collectible330}}豆奶#",
            MongoJaw="获得{{Collectible53}}万磁王#",
            MongoRib="获得穿透泪弹#",
            MongOath="获得{{Collectible493}}肾上腺素#",
            MongoSlip="获得{{Collectible449}}金属板#",
            MongoPrism="获得{{Collectible570}}粘土饼干#",
            MongoFrog="获得{{Collectible570}}粘土饼干和{{Collectible221}}橡胶胶水#",
            MongoPlum="进入敌对房间有33%的概率触发{{Collectible650}}甜梅溜溜笛的效果#",
            MongoSpin="进入敌对房间有33%的概率触发{{Collectible77}}彩虹独角兽的效果#",
            MongoWorm="进入敌对房间有33%的概率将所有敌人用藤蔓固定, 使其受到双倍伤害并在死亡后有概率生成掉落物#",

            BAB_Alchemic="15%的概率将掉落物变为道具魂火; 更多的万书之书会进一步提升概率",
            BAB_Ancient="迷彩内裤的效果可以跨房间存在",
            BAB_BirdWorld="召唤更多的死鸟",
            BAB_Blackbook="施加更多的异常状态",
            BAB_Bleeding="当前楼层受伤时有概率生成红心, 类似{{Collectible219}}; 使用的同时受到{{Collectible486}}一次假伤",
            BAB_Spider="根据持有的万书之书的数量额外生成蓝蜘蛛",
            BAB_Lux="扩大光环的范围",
            BAB_Memory="50%的概率不获得碎心",
            BAB_Elder="生成更多卡牌",
            BAB_Forgotton="获得{{BoneHeart}}填满的骨心",
            BAB_Codex="生成更多恶鬼",
            BAB_Red="生成更多的红色掉落物",
            BAB_Encyclopedia="冷却缩减, 至多减半",
            BAB_HolyHeal="将所有碎心变为心之容器",
            BAB_Wizard="每使用过一次该道具, 下层时获得一个随机蝗虫",
            BAB_Ritual="改为获得1{{BlackHeart}}{{EternalHeart}}",
            BAB_Stitch="效果持续一整层",
            BAB_Nirly="15%的概率生成使用的卡牌的复制; 更多的万书之书会进一步提升概率",
            BAB_Locked="如果获得了空气, 有50%的概率回本",
            BAB_Stone="提升鬼灵爆破的范围",
            BAB_Hunter="生成更多的暗影冲刺蝇蛆",
            BAB_Dead="释放更多的炼狱恶鬼",
            BAB_Gopsel="标记敌人的同时即天降光柱",
            BAB_Mystic="召唤更多的蝙蝠",
            BAB_Horticulture="生成掉落物的概率上调至65%",
            BAB_Tentacle="更多的触手会攻击头目敌人",
        }
        mod:AddToConditionalList(conditionalList)
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#{{Collectible"..Isaac.GetItemIdByName("Eclipse").."}} 所属mod: Eclipsed", item[5])
        end
        for _,item in ipairs(trinkets) do
            mod:AddTranslate(350,item[1],item[2],item[3],item[4].."#{{Collectible"..Isaac.GetItemIdByName("Eclipse").."}} 所属mod: Eclipsed", item[5])
        end
        for _, item in ipairs(cards) do
            mod:AddTranslate(300, item[1], item[2], item[3], item[4].."#{{Collectible"..Isaac.GetItemIdByName("Eclipse").."}} 所属mod: Eclipsed", item[5])
        end
        for _, item in ipairs(pill) do
            mod:AddTranslate(70,item[1],item[2],"empty",item[3],item[4])
        end
        for _, item in ipairs(other) do
            mod:AddEntityTransl(item[1],item[2],item[3],item[4],item[5])
        end
        EID:addCharacterInfo(EclipsedMod.enums.Characters.Unbidden,"{{SoulHeart}}魂心角色#!!! 将拾取的非任务道具变为对应的道具魂火#{{Collectible}} 被动道具魂火在进入下一层后变为正常的道具, 主动魂火则会保留, 并在进入下一层获得+6HP#通过魂火的形式储存主动道具, 可以使用Ctrl选择一个主动#{{AngelChance}} 恶魔交易不会影响天使房转换率#{{DevilRoom}} 进行致死的恶魔交易会获得{{HalfSoulHeart}}{{BrokenHeart}}(游魂形态下也是如此!)","不速之客","zh_cn")
        EID:addBirthright(EclipsedMod.enums.Characters.Unbidden,"进入下一层不会移除魂火","不速之客-不屈不挠","zh_cn")
        EID:addCharacterInfo(EclipsedMod.enums.Characters.UnbiddenB,"通过释放脉冲波进行攻击#!!! 无生命值角色, 取而代之的是\"容错率\"机制, 初始为50%#{{Collectible422}} 被命中后有概率回溯时间, 概率取决于容错率#每次触发后减少容错率, 清理房间增加容错率#!!! 类似于表角色, 将拾取的非任务道具变为对应的道具魂火#{{DevilRoom}} 恶魔交易将消耗容错率","不速之客-无垠者","zh_cn")
        EID:addBirthright(EclipsedMod.enums.Characters.UnbiddenB,"拾取后, 恢复{{Collectible"..EclipsedMod.enums.Items.Threshold.."}}临界点的所有充能, 并将容错率变为100%","不速之客-复苏","zh_cn")
        EID:addCharacterInfo(EclipsedMod.enums.Characters.Nadab,"放置炸弹功能替换为消耗1{{Heart}}释放爆炸(注意是先消耗生命而后爆炸, 故爆炸抗性无法阻止该伤害)#{{Bomb}} 拾取炸弹可以用于治疗1红心#!!! 与{{BombBeggar}}炸弹乞丐交易将消耗{{Heart}}","拿答","zh_cn")
        EID:addBirthright(EclipsedMod.enums.Characters.Nadab,"拾取后, 生成3个随机炸弹道具, 只能选择一个#获得爆炸抗性#死亡后释放超级爆炸, 而后失去长子权","拿答-爆破兵","zh_cn")--你他妈什么???
        EID:addCharacterInfo(EclipsedMod.enums.Characters.Abihu,"放置炸弹功能替换为消耗1{{Heart}}引爆拿答的尸体#{{Bomb}} 拾取炸弹可以用于治疗1红心#捡起炸弹需要立即将其投掷出去#{{Burning}} 灼烧碰到的敌人#{{Chargeable}} 蓄力蓝火攻击, 蓄力满后自动释放#!!! 与{{BombBeggar}}炸弹乞丐交易将消耗{{Heart}}","亚比户-亵渎者","zh_cn")
        EID:addBirthright(EclipsedMod.enums.Characters.Abihu,"回满生命, 免疫火焰和火堆#投掷拿答的尸体引发的爆炸不会伤害亚比户","亚比户-纵火狂","zh_cn")
        local CharSyn={--{100/350,道具编号,兼容文本,角色}
            {100,668,"回溯路线中不再将道具变为道具魂火",EclipsedMod.enums.Characters.Unbidden},
            {100,668,"回溯路线中不再将道具变为道具魂火",EclipsedMod.enums.Characters.UnbiddenB},
            {100,622,"创世纪内的道具不受角色特性影响",EclipsedMod.enums.Characters.Unbidden},
            {100,622,"创世纪内的道具不受角色特性影响",EclipsedMod.enums.Characters.UnbiddenB},
            {100,628,"死亡证明内的道具不受角色特性影响",EclipsedMod.enums.Characters.Unbidden},
            {100,628,"死亡证明内的道具不受角色特性影响",EclipsedMod.enums.Characters.UnbiddenB},
            {100,360,"不会兼容脉冲波的攻击方式",EclipsedMod.enums.Characters.UnbiddenB},
            {100,52,"胎儿博士优先, 炸弹会在爆炸前释放脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,168,"史诗胎儿博士优先, 导弹会在爆炸前释放脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,68,"改为释放脉冲粗激光环",EclipsedMod.enums.Characters.UnbiddenB},
            {100,69,"脉冲波可以蓄力, 只影响伤害",EclipsedMod.enums.Characters.UnbiddenB},
            {100,104,"脉冲波命中的敌人也会释放伤害减半的脉冲波, 不会套娃",EclipsedMod.enums.Characters.UnbiddenB},
            {100,462,"脉冲波命中的敌人也会释放伤害翻倍的脉冲波, 不会套娃",EclipsedMod.enums.Characters.UnbiddenB},
            {100,114,"被脉冲波覆盖; 脉冲波需要蓄满力才能释放",EclipsedMod.enums.Characters.UnbiddenB},
            {100,118,"改为蓄力释放脉冲粗激光环",EclipsedMod.enums.Characters.UnbiddenB},
            {100,132,"脉冲波对远处的敌人造成更高的伤害",EclipsedMod.enums.Characters.UnbiddenB},
            {100,261,"脉冲波对近处的敌人造成更高的伤害",EclipsedMod.enums.Characters.UnbiddenB},
            {100,149,"被脉冲波命中的敌人会爆炸(不会伤害角色)",EclipsedMod.enums.Characters.UnbiddenB},
            {100,153,"同时释放数个脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,2,"同时释放数个脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,229,"蓄满力以同时释放数个脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,213,"脉冲波可以摧毁敌弹",EclipsedMod.enums.Characters.UnbiddenB},
            {100,222,"在脉冲波范围内随机位置生成反重力泪弹",EclipsedMod.enums.Characters.UnbiddenB},
            {100,440,"肾结石蓄力期间也能释放脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,531,"脉冲波范围内同时释放数个小脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,579,"连点攻击键可以无视攻击间隔释放脉冲波; 蓄满力释放更高攻击力的脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,224,"在对角线方向同时释放小脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,329,"悬浮科技优先, 悬浮泪弹移动时会持续释放脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,331,"按住攻击键会同时环绕一个神圣立场, 造成持续性伤害(伤害和范围均不受角色攻击力影响)",EclipsedMod.enums.Characters.UnbiddenB},
            {100,494,"额外用电弧攻击脉冲波范围内的敌人",EclipsedMod.enums.Characters.UnbiddenB},
            {100,678,"胎儿也会释放脉冲波",EclipsedMod.enums.Characters.UnbiddenB},
            {100,698,"不会兼容脉冲波的攻击方式",EclipsedMod.enums.Characters.UnbiddenB},
            {100,517,"移速不会低于1.0",EclipsedMod.enums.Characters.Nadab},
            {100,220,"射速+0.35",EclipsedMod.enums.Characters.Nadab},
            {100,106,"爆炸伤害+85, 伤害倍率x1.75",EclipsedMod.enums.Characters.Nadab},
            {100,125,"获得跟踪泪弹",EclipsedMod.enums.Characters.Nadab},
            {100,140,"获得毒性泪弹",EclipsedMod.enums.Characters.Nadab},
            {100,727,"获得灵体泪弹",EclipsedMod.enums.Characters.Nadab},
            {100,583,"发射导弹的效果替换为释放冲刺, 在碰到敌人和障碍后爆炸; 冲刺免疫惩罚伤害",EclipsedMod.enums.Characters.Nadab},
            {350,164,"连续炸两次, 第二次可以伤害拿答",EclipsedMod.enums.Characters.Nadab},--???
            {350,71,"留下绿色液体",EclipsedMod.enums.Characters.Nadab},
            {100,2,"多发火焰",EclipsedMod.enums.Characters.Abihu},
            {100,153,"多发火焰",EclipsedMod.enums.Characters.Abihu},
            {100,245,"多发火焰",EclipsedMod.enums.Characters.Abihu},
            {100,5,"喷吐的火焰会跟踪角色",EclipsedMod.enums.Characters.Abihu},
            {100,118,"蓄力{{ColorYellow}}并释放{{CR}}大串火焰",EclipsedMod.enums.Characters.Abihu},
            {100,229,"蓄力{{ColorYellow}}并释放{{CR}}大片火焰",EclipsedMod.enums.Characters.Abihu},
            {100,149,"会持续爆炸的火焰(无友伤)",EclipsedMod.enums.Characters.Abihu},
            {100,257,"有概率爆炸的火焰(无友伤)",EclipsedMod.enums.Characters.Abihu},
            {100,224,"火焰命中时迸射4向火焰",EclipsedMod.enums.Characters.Abihu},
            {100,329,"可操作的火焰, 具有高频率碰撞伤害且能抵挡敌弹, 但是较难操作",EclipsedMod.enums.Characters.Abihu},
            {100,462,"火焰命中敌人后获得跟踪效果, 允许对单个敌人造成多段伤害",EclipsedMod.enums.Characters.Abihu},
            {100,104,"发射的火焰会分裂",EclipsedMod.enums.Characters.Abihu},
            {100,52,"仅属性变化!!!",EclipsedMod.enums.Characters.Abihu},
            {100,531,"仅属性变化!!!",EclipsedMod.enums.Characters.Abihu},
            {100,261,"仅属性变化",EclipsedMod.enums.Characters.Abihu},
            {100,68,"被火焰攻击覆盖",EclipsedMod.enums.Characters.Abihu},
            {100,69,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,114,"被火焰攻击覆盖",EclipsedMod.enums.Characters.Abihu},
            {100,132,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,168,"被火焰攻击覆盖",EclipsedMod.enums.Characters.Abihu},
            {100,222,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,316,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,395,"被火焰攻击覆盖",EclipsedMod.enums.Characters.Abihu},
            {100,397,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,453,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,494,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,529,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,532,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,533,"被火焰攻击覆盖",EclipsedMod.enums.Characters.Abihu},
            {100,572,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,579,"被火焰攻击覆盖",EclipsedMod.enums.Characters.Abihu},
            {100,597,"无特殊兼容",EclipsedMod.enums.Characters.Abihu},
            {100,678,"被火焰攻击覆盖",EclipsedMod.enums.Characters.Abihu},
        }
        for _, syn in ipairs(CharSyn) do
            EID:addDescriptionModifier("EcliSyn"..syn[2],function(descObj)
                if descObj.ObjType == 5 and descObj.ObjVariant == syn[1] and descObj.ObjSubType == syn[2] and PlayerManager.AnyoneIsPlayerType(syn[4]) then return true end
            end, function(descObj)
                EID:appendToDescription(descObj,"#{{Player"..syn[4].."}} "..syn[3])
                return descObj
            end)
        end
        if ddad then 
            local PDDsyn={
                {5,EclipsedMod.enums.Items.LostMirror},
                {712,EclipsedMod.enums.Items.CosmicJam},
                {EclipsedMod.enums.Items.MongoCells,322},
                {202,EclipsedMod.enums.Items.MidasCurse},
                {EclipsedMod.enums.Items.Limb,EclipsedMod.enums.Items.LostMirror},
                {ddad.item.TaPB.id,EclipsedMod.enums.Items.AbihuFam},
                {EclipsedMod.enums.Items.MewGen,522},
                {545,EclipsedMod.enums.Items.GardenTrowel},
                {497,EclipsedMod.enums.Items.AncientVolume},
                {553,EclipsedMod.enums.Items.Shroomface},
                {EclipsedMod.enums.Items.Khepri,505},
                {Isaac.GetItemIdByName("VVV"),222},
                {ddad.item.NaBo.id,EclipsedMod.enums.Items.Symbiont},
                {EclipsedMod.enums.Items.Tech800M,125},
                {728,EclipsedMod.enums.Items.InnerDemons},
                {EclipsedMod.enums.Items.LittleInferno,EclipsedMod.enums.Items.Ignite},
                {EclipsedMod.enums.Items.BloodV,EclipsedMod.enums.Items.MysticNovel},
                {628,EclipsedMod.enums.Items.FalseDeath},
                {689,Isaac.GetItemIdByName("Everything Bagel")},
                {EclipsedMod.enums.Items.WitchCap,342}
            }
            for _,i in ipairs(PDDsyn) do mod:PDDfakeAddon(i[1],i[2]) end
        end
        local Dflipsyn={
            {5,100,5,5,100,EclipsedMod.enums.Items.LostMirror},
            {5,100,EclipsedMod.enums.Items.BlackKnight,5,100,EclipsedMod.enums.Items.WhiteKnight},
            {5,100,EclipsedMod.enums.Items.StrangeBox,5,100,198},
            {5,100,506,5,100,EclipsedMod.enums.Items.BleedingGrimoire},
            {5,100,EclipsedMod.enums.Items.TetrisDice_full,5,100,258},
            {5,100,636,5,100,EclipsedMod.enums.Items.VHSCassette},
            {5,100,EclipsedMod.enums.Items.MongoCells,5,100,322},
            {5,100,Isaac.GetItemIdByName("Pure Fury"),5,100,EclipsedMod.enums.Items.RedLotus},
            {5,100,Isaac.GetItemIdByName("Bishamonten's Pagota"),5,100,EclipsedMod.enums.Items.MidasCurse},
            {5,100,EclipsedMod.enums.Items.GravityBombs,5,100,512},
            {5,100,EclipsedMod.enums.Items.FrostyBombs,5,100,256},
            {5,100,EclipsedMod.enums.Items.NadabBrain,5,100,EclipsedMod.enums.Items.NadabBody},
            {5,100,Isaac.GetItemIdByName("Eclipse"),5,100,588},
            {5,100,553,5,100,EclipsedMod.enums.Items.Shroomface},
            {5,100,EclipsedMod.enums.Items.SmokeBombs,5,100,705},
            {5,100,728,5,100,EclipsedMod.enums.Items.InnerDemons},
            {5,100,Isaac.GetItemIdByName("Tooth of the Vampire"),5,100,EclipsedMod.enums.Items.OldToothpaste},
            {5,100,Isaac.GetItemIdByName("Magician's Top"),5,100,EclipsedMod.enums.Items.WitchHat},
            {5,100,EclipsedMod.enums.Items.BlueSoup,5,100,621},
            {5,350,EclipsedMod.enums.Trinkets.RedScissors,5,350,63}
        }
        for _,i in ipairs(Dflipsyn) do mod:DFlipPairsAddon(i) end
        local kind={
            BLOOD={EclipsedMod.enums.Items.BloodV,EclipsedMod.enums.Items.Sarbokan,EclipsedMod.enums.Items.Symbiont},
            MUSIC={EclipsedMod.enums.Items.UnholyCollection}
        }
    end
end)
