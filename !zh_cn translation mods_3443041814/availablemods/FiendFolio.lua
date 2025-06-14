local mod = CNEIDBabel--
mod:AddModTranslationLoader("FiendFolio","邪魔典纸\n* 我想要做的, 前人们都做过了\n* 前人们做的, 某个人都偷走了",function()
    if FiendFolio then
        local items={
            {
                FiendFolio.ITEM.COLLECTIBLE.PYROMANCY,
                "火球术",
                "双击发射火球",
                "{{Timer}} 周期性产生环绕在角色身边的{{ColorOrange}}火球{{CR}}#最多可拥有3个{{ColorOrange}}火球{{CR}}#双击射击键发射{{ColorOrange}}火球{{CR}}#{{Burning}} {{ColorOrange}}火球{{CR}}飞出后留下火焰, 接触到敌人后爆炸",
                {BFF="无效果",
                ABY="3个火球外观的蝗虫, 造成33%伤害",
                CONF={
                    {536,"AltarPyro"},
                    {FiendFolio.ITEM.COLLECTIBLE.PYROMANCY,"MultiPyro"}
                },CHAR={FiendFolio.PLAYER.FIEND,"MultiPyro",false}},
                "毒火焰"
            },{
                FiendFolio.ITEM.COLLECTIBLE.FIEND_FOLIO,
                "邪魔典纸",
                "邪魔诡友召唤术",
                "在当前房间随机召唤一只{{ColorPink}}邪魔典纸模组{{CR}}的友方Boss释放的特殊攻击",
                {CAR="召唤两波不同的攻势"},
                "我玩邪魔典纸是因为我欣赏艺术吗不是因为我是个M"
            },{
                FiendFolio.ITEM.COLLECTIBLE.D2,
                "二面骰",
                "掷硬币式重随",
                "使用后可朝指定方向投掷{{ColorPurple}}二面骰{{CR}}#投掷后在地上短暂旋转#{{QuestionMark}} 重随在旋转时接触到的敌人, 泪弹及掉落物",
                {CAR="投掷2个二面骰"},
                "轮滚慢慢"
            },{
                FiendFolio.ITEM.COLLECTIBLE.STORE_WHISTLE,
                "商店召唤哨",
                "便携式开店",
                "{{Shop}} 在角色附近生成商店箱子",
                {ABY="灰色蝗虫, 有小概率生成随机交易"},
                "{{CR}}{{Key}} 童叟! {{Bomb}}#{{Blank}} 99c 无欺! 70c"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DICE_BAG,
                "玻璃骰子袋",
                "给予骰子",
                "每清理8个房间掉落玻璃骰子#玻璃骰子可以视作一次性的骰子主动道具#玻璃四面骰和玻璃一百面骰无法重随该道具",
                {BFF="清理4个房间掉落玻璃骰子",
                ABY="3个造成33#伤害的骰子外观蝗虫"},
            },{
                FiendFolio.ITEM.COLLECTIBLE.LIL_FIEND,
                "邪祟魔宝宝",
                "你的专属孽种",
                "沿房间对角线飞行的跟班#接触到敌人或敌弹时有概率生成{{ColorFade}}空心邪鬼{{CR}}追击敌人",
                {BFF="增加判定体积和生成空心邪鬼的概率",
                ABY="粉色外观的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BABY_CRATER,
                "弹坑脸宝宝",
                "螺旋射手",
                "角色射击时发射并积蓄泪弹, 构筑一道泪弹环#角色停止射击时螺旋状释放所有泪弹",
                {BFF="伤害翻倍",
                ABY="棕色外观的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.MAMA_SPOOTER,
                "狙击蛛女士",
                "炮塔形猎人",
                "会追逐敌人的蓝色狙击蛛, 周期性朝敌人发射泪弹",
                {BFF="无效果(可能未来会修复? 反正维基这么写的)",
                MOD={FEM=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.RANDY_THE_SNAIL,
                "蜗牛兰迪",
                "弹跳伙伴",
                "缓慢移动的蜗牛跟班#接触到弹幕后缩回壳中并快速运动, 碰到障碍物反弹#在弹射过程中再次接触到弹幕则会连锁反弹",
                {BFF="碰撞体积增加, 伤害翻倍",
                CONF={{357,FiendFolio.ITEM.COLLECTIBLE.RANDY_THE_SNAI},"MultiRandy"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.CORN_KERNEL,
                "玉米粒",
                "草翻所有玉米吧! ",--????
                "等级1: 波浪形旋转的环绕物#等级2: 抛射爆炸玉米粒的环绕物(爆炸范围和伤害较小, 不会伤害角色)#等级3: 传送并追逐敌人的跟班#等级4: 传送并向敌人抛射爆炸玉米粒的跟班",
                {BFF="碰撞伤害翻倍",
                ABY="玉米外观的蝗虫"},
                "你解锁了 操蛋模式 !"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GMO_CORN,
                "转基因玉米",
                "恶魔洗礼",
                "{{Pill}} 拾取后固定在原地并强制使用7枚随机药丸#↑ {{Heart}} +1心之容器#↑ {{Damage}} +1伤害",
                {CONF={252,"BaggyCorn","blank"}},
                "Telepills!#{{Blank}} {{ColorGray}}I AM ERROR"
            },{
                FiendFolio.ITEM.COLLECTIBLE.COOL_SUNGLASSES,
                "炫酷太阳镜",
                "淘金热",
                "{{Coin}} +6硬币#↑ {{Speed}} 靠近硬币时获得移速提升#↑ 拾取硬币对本房间所有敌人造成伤害#!!! 进入未清理的房间时损失3枚硬币, 损失的硬币将撒落在房间的任意位置",
                {CONF={
                    {203,"HumbleingCool"},
                    {424,"SackGlass"}
                },MOD={GOLD=true}},"饥肠辘辘的感恩节, 我们仍有值得感恩的事物: 煮皮鞋!"
            },{
                FiendFolio.ITEM.COLLECTIBLE.FIENDS_HORN,
                "邪祟魔的角",
                "每个人的心中都存在的邪念",
                "敌人死后有5%的概率生成{{ColorFade}}空心邪鬼{{CR}}追击敌人#{{Luck}} 幸运14: 20%#{{ffImmoralHeart}} 持有邪念之心时额外增加概率",
                {ABY="粉色外观的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.RISKS_REWARD,
                "虎穴挑战",
                "超能力重随术! 品质上升",
                "{{TreasureRoom}} 只能在宝箱房内获得充能#使用后, 摧毁房间内的道具底座, 打开一道特殊传送门, 进入后传送到特殊空间#击败该空间的特殊头目“幽隐魔鬼”获得一个道具品质更高的道具",
                {ABY="心灵妖魔外观的蝗虫",
                CAR="无效果",
                CONF={{477,"5.300.48"},"CopyRisk"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SPARE_RIBS,
                "肋排骨",
                "物归原主",
                "↑ {{EmptyBoneHeart}} +1骨心#受伤后, 如果场上没有肋骨则发射肋骨#肋骨绕角色圆周运动#运动一段时间后回到角色身上#可消除敌弹#!!! 肋骨只在回归到角色时消失, 若还未归于角色将一直存在并持续追逐角色",
                {CONF={FiendFolio.ITEM.COLLECTIBLE.SPARE_RIBS,"MultiRib"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BACON_GREASE,
                "培根油脂",
                "空卡路里",
                "↑ {{EmptyHeart}} +1空心之容器#↑ {{Shotspeed}} +0.15弹速#!!! {{Heart}} 清空1格红心(不致死)",
                {ABY="20%移动速度的棕色大号蝗虫"},
                "那我缺的营养这块谁给我补啊"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DEVILS_UMBRELLA,--这真的不是套吗
                "恶魔之伞",
                "难以清理",
                "发射眼泪时偶尔喷射一连串低伤害黄色泪弹, 落地后留下一滩黄色水迹",
                {ABY="留下黄色液体的粉色蝗虫"},
                "这难道他妈的不是套吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.NUGGET_BOMBS,
                "粪块炸弹",
                "寄生伙伴 + 5个炸弹",
                "{{Bomb}} +5炸弹#{{Collectible504}} 炸弹爆炸后原地生成狙击蝇跟班",
                {BFF="仅视觉效果",
                CONF={{140,256,367,220,209,432,125,366,517,646},"NuggetSyn"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BEE_SKIN,
                "蜂皮",
                "嗡嗡嗡",
                "射击时, 额外发射3颗伤害较低的泪弹#额外泪弹从3个等距分散开的角度发射#每发射1颗泪弹, 3颗额外泪弹的发射角度顺时针旋转",
                {ABY="蜜蜂外观的蝗虫, 飞行时迅速旋转发射小型泪弹",
                CONF={
                    {FiendFolio.ITEM.COLLECTIBLE.BEE_SKIN,"MultiBee"},
                    {114,"KnifeBee"},
                    {118,"BeeTears"},
                    {52,"DrBee"},
                    {{168,329,579},"NoEffect"},
                    {395,"LudoBee"},
                    {399,"BeeofVoid"}
                }},"什么bee不能高空飞行?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.ALPHA_COIN,
                "阿尔法币",
                "学到你玩明白这道具为之",
                "{{Coin}} 25%概率生成1枚硬币#25%概率生成1张{{Card}}卡牌或1枚{{Pill}}药丸#基于当前房间类型和探索程度触发各种不同效果",
                {ABY="阿尔法币外观的蝗虫"},"I'M WITH YOU#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PLANET_BADGE,
                "邪魔勋章-星球",
                "欢迎来到太阳系!",
                "+0.1伤害修正",
                {ABY="闪光蝗虫, 造成0.35伤害"},
                "此致: 来自混沌的使徒, 用一把碎屑摧毁世间的光明火种之人; 你成功摧毁了一切生灵的起点--这就是你想要的, 对吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.HAUNTED_BADGE,
                "邪魔勋章-噬灵",
                "现在拿下大力丸!",
                "+0.1伤害修正",
                {ABY="闪光蝗虫, 造成0.35伤害"},
                "此致: 来自迷宫的食客, 用虹色的勇气消除虚无恐惧之人; 你成功凌驾于一切生灵之上--这就是你想要的, 对吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.BABY_BADGE,
                "邪魔勋章-幼崽",
                "悉心照料蝙蝠崽!",
                "+0.1伤害修正",
                {ABY="闪光蝗虫, 造成0.35伤害"},
                "此致: 来自异界的驯兽师, 用邪恶的法典引来自相残杀之闹剧之人; 你成功坐在了观战席, 看着苍生为自我之利益至死方休--这就是你想要的, 对吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.COMMISSIONED_BADGE,
                "邪魔勋章-神风",
                "五十美元直接干!",
                "+0.1伤害修正",
                {ABY="闪光蝗虫, 造成0.35伤害"},
                "此致: 来自外界的排雷兵, 用无上的规则瓦解了洗脑式袭击之人; 你成功击垮了敌军, 让你所信奉的所谓真理正义成为神谕--这就是你想要的, 对吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DRIPPING_BADGE,
                "邪魔勋章-流水",
                "这下汗流浃背了!",
                "+0.1伤害修正",
                {ABY="闪光蝗虫, 造成0.35伤害"},
                "此致: 来自东方的旅者, 用诡妙的文化引诱大批愚昧信徒之人; 你成功宣传了不一样的世界, 使众生认知中的两个世界进一步拉大差距--这就是你想要的, 对吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.MYSTERY_BADGE,
                "邪魔勋章-锦囊",
                "里面会是什么呢!",
                "+0.1伤害修正",
                {ABY="闪光蝗虫, 造成0.35伤害"},
                "此致: 来自农田的神使, 用血缘的利刃斩断了长者之上理念之人; 你成功杀死了你所熟悉的那个人, 怒斥着阿谀奉承之下的伪神--这就是你想要的, 对吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.SPATULA_BADGE,
                "邪魔勋章-焦炉",
                "大烤大烤焦焦焦!",
                "+0.1伤害修正",
                {ABY="闪光蝗虫, 造成0.35伤害"},
                "此致: 来自市井的过客, 在万物始终如一的芸芸众生中闷头苦干谋生之人; 你成功度过了又一个平静的日子, 享受着熟悉的一成不变的美好生活--这就是你想要的, 对吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.MARIAS_IPAD,
                "iPad",
                "请...",
                "使用后, 将本房间敌人及部分实体移动到房间底部#!!! 整活道具别想了",
                {VIR="黑色魂火, 发射的泪弹可以将敌人移动到房间底部",
                ABY="将敌人传送至房间底部的黑色蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.YOUR_ETERNAL_REWARD,
                "永恒报偿",
                "收服所有勋章了!",
                "+0.1伤害修正",
                {ABY="闪光蝗虫, 造成0.35伤害"},
                "你已经来到了这一步, 可这一切又有什么意义呢? 为了证明你的强大?#{{Blank}} {{ColorGray}}{{ColorFade}}你是否真的认为这一切努力值得? 在你通关后, 这些努力都将会化为泡影, 化为虚无的历史, 而你得到的, 也只有须臾的欢愉...这, 是否真的值得?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GOLEMS_ROCK,
                "石像鬼的石板",
                "研磨饰品",
                "{{Trinket}} 拾起时, 生成一个石头饰品##{{Trinket}} 使用后, 将目前持有的饰品研磨成石头饰品",
                {VIR="生成发射石头的石块魂火, 伤害同{{Collectible592}}地球一般上下浮动",
                ABY="石头外观的大蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.PINHEAD,
                "缝线头",
                "缝纫泪弹",
                "有概率发射穿透的缝纫针#{{ffSew}} 被缝纫针泪弹击中的敌人获得缝线状态#{{ffSew}} 攻击1个带有缝线状态的敌人会对所有带有该状态的敌人造成伤害#{{Luck}} 幸运6: 100%",
                {ABY="有概率施加缝线状态的蝗虫"},
                "并非玩5致"
            },{
                FiendFolio.ITEM.COLLECTIBLE.LIL_LAMB,
                "羔羊宝宝",
                "假装很喜欢你",
                "{{Collectible149}} 蓄力抛射爆破泪弹的跟班#角色受伤后有概率落地并自动追逐敌人",
                {BFF="伤害翻倍"},
                "吐根什么德性不用我说了吧"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GRAPPLING_HOOK,
                "爪钩",
                "飞跃险境",
                "使用后按下方向键丢出#持续按住方向键可延长爪钩的飞行距离#松开方向键后爪钩落地, 将角色扯向其落点位置#可利用爪钩攀岩#!!! 若爪钩的落点是坑洞, 角色将会跌入洞中并受到伤害",
                {VIR="生成一个窥视眼外观的魂火",
                ABY="灰色蝗虫",
                MOD={STEEL=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.GRABBER,
                "抓取者",
                "回来吧我心爱的手",
                "{{Collectible188}} 与角色镜像移动#抓取所有位于其面前的物体",
                {BFF="增加碰撞体积和伤害",
                ABY="抓取者外观的蝗虫"},
                "以防你没听说过这个捏他源, 邪魔典纸把捏他的游戏塞在模组文件夹里面了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.IMP_SODA,
                "小鬼苏打",
                "暴击泪弹",
                "有概率发射造成5倍伤害的{{ColorPink}}暴击泪弹{{CR}}#{{Luck}} 幸运11: 33%",
            },{
                FiendFolio.ITEM.COLLECTIBLE.DADS_WALLET,
                "爸爸的钱包",
                "伤害欠款",
                "{{Card43}} 拾取后, 生成信用卡#允许欠债购买商店货品↓ {{Damage}} 欠债减少攻击倍率"
            },{
                FiendFolio.ITEM.COLLECTIBLE.BEGINNERS_LUCK,
                "新手保护",
                "随时间贬值",
                "↑ {{Luck}} +5幸运增幅#↓ {{Luck}} 进入下一层后失去0.5幸运增幅, 至少+0.5",
                {ABY="四叶草外观的蝗虫"},
            },{
                FiendFolio.ITEM.COLLECTIBLE.DICHROMATIC_BUTTERFLY,
                "二色莲花蝶",
                "判定点变小 + 擦弹奖励 + 追踪符纸",
                "角色显示判定点#{{Collectible598}} 判定体积-80%#↑ {{Damage}} 在当前房间内擦弹+0.2伤害, 至多+3#{{Luck}} 有概率发射1.25倍伤害的{{ColorCyan}}追踪泪弹{{CR}}#{{Luck}} 幸运7: 63.33%",
                {ABY="蝴蝶外观的蝗虫",
                CONF={"5.350."..TrinketType.TRINKET_YIN_YANG_ORB,"ReimuRei"}},
                "只要没打到判定点就能活.png"
            },{
                FiendFolio.ITEM.COLLECTIBLE.SLIPPYS_GUTS,
                "脚滑蛙的内脏",
                "保持距离",
                "{{Collectible447}} 敌人死后有概率产生毒云, 概率与敌人的最大生命值成比例#{{Bomb}} 炸弹爆炸后留下毒云",
                {ABY="青蛙外观的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SLIPPYS_HEART,
                "脚滑蛙的心脏",
                "保持亲密",
                "靠近敌人有概率放随机屁, 概率基于运气",
                {ABY="青蛙外观的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.COMMUNITY_ACHIEVEMENT,
                "社区成就",
                "计数大师",
                "↑ {{Damage}} 伤害上升#上升的数值取决于邪魔典纸社区Discord中计数频道的最新记录",
                {ABY="徽章外观的蝗虫, 造成2倍伤害"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.CHIRUMIRU,
                "琪露诺奶",
                "生命 + 伤害上升, 完美冷冻",
                "{{SoulHeart}} 获得1魂心#↑ {{Damage}} +0.9伤害修正#进入新房间时石化所有敌人0.9秒",
                {ABY="青蓝色蝗虫, 造成109%伤害, 有18%的概率石化敌人",
                QUA=3,MOD={ICE=true}},
                "这是幻想乡第一大杀手, 你敢和她对视9s并拿下9个琪露诺奶吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GOLEMS_ORB,
                "石像鬼的宝珠",
                "失物找回...",
                "{{SoulHeart}} 获得2魂心#↑ {{Speed}} 移速+0.2#{{Shotspeed}} 弹速+0.23#{{Luck}} 幸运+1",
                {ABY="青蓝色大型蝗虫, 具有2倍移速"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.LEFTOVER_TAKEOUT,
                "隔夜外卖",
                "全属性上升 + 预言上升",
                "↑ {{Speed}} +0.3移速#↑ {{Tears}} +10%射速倍率#↑ {{Damage}} +50%伤害倍率#↑ {{Range}} +1.5射程#↑ {{Luck}} +1幸运#有概率发射{{Trinket"..FiendFolio.ITEM.TRINKET.FORTUNE_WORM.."}}幸运虫泪弹#{{Luck}} 幸运2: 33%",
                {ABY="幸运饼干外观的蝗虫, 造成5.25伤害, 具有2倍移速, 有概率在命中敌人后预言"},
                "先不管属性给的大不大方你这打一会儿一个废话挡我视野你真觉得你够4级是吧"
            },{
                FiendFolio.ITEM.COLLECTIBLE.MODERN_OUROBOROS,
                "现代衔尾蛇",
                "魔音贯耳",
                "泪弹落地后产生油液#{{Burning}} 角色经过油液会将其引燃#油液靠近火堆或已经点燃的油液也会燃烧",
                {ABY="命中后立即产生点燃的油液的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD,
                "金蛙首",
                "响屁不臭",
                "使用后定在原地#角色变身为巨型金蛙#松开主动键后放屁#按住主动键越久, 放的屁威力越大",
                {ABY="青蛙外观的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SANGUINE_HOOK,
                "染血弯钩",
                "这不属于你",
                "使用后按下方向键丢出#勾住掉落物(包括底座道具)时将掉落物扯向角色#{{ffBruise}} 勾住敌人时赋予敌人易伤状态#勾住敌人后松开主动键释放敌人#{{ffHemorrhage}} 释放敌人后赋予其大出血状态, 朝被释放的方向喷出大量血泪",
                {VIR="勾中敌人生成4个黑色内圈魂火, 敌人脱钩或死亡时熄灭",
                BEL="勾中敌人获得暂时性伤害上升",
                MOD={STEEL=true,BLOOD=true}},
                "染赤弯钩"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PEACH_CREEP,
                "桃心蛛宝宝",
                "爬墙伙伴",
                "行为模式类似爬墙蛛的跟班",
                {BFF="伤害翻倍",
                CONF={"5.350.141","SirenCreep"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.GORGON,
                "戈尔贡石像",
                "它很害羞",
                "静止不动的石像跟班#持续凝视房间内的敌人, 使其石化",
                {ABY="造成10%伤害的蝗虫, 石化敌人2s"},
            },{
                FiendFolio.ITEM.COLLECTIBLE.FIDDLE_CUBE,
                "解压方块",
                "游手好闲者定将惹祸上身",
                "↑ 使用该道具将逐渐获得{{Damage}}伤害和{{Tears}}射速加成, 有上限#每次使用的加成都会在一段时间后消失",
                {ABY="白色方块状蝗虫",
                VIR="0.1HP的魂火, 造成1.1伤害, 会和属性加成一起消失",
                BEL="伤害加成翻倍",
                CAR="效果翻倍, 但仍无法突破上限"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.AVGM,
                "A.V.G.M",
                "玩爽了",
                "使用后调节当前房间的亮度(开关灯)#{{Coin}} 不停使用则有概率给予硬币#有极低概率给予其他掉落物#请善待键盘/手柄",
                {VIR="生成硬币时获得硬币魂火, 生成道具时获得道具魂火",
                BEL="生成奖励时获得伤害上升",
                ABY="生成一个黑白蝗虫, 在命中敌人后切换自身形态并触发效果"},
                "在10212, 22450, 49148和107175次使用后生成道具, 但是谁他妈这么闲啊"
            },{
                FiendFolio.ITEM.COLLECTIBLE.OPHIUCHUS,
                "蛇夫座",
                "驯蛇者",
                "不停扭动的蛇跟班#{{Poison}} 追逐敌人, 造成接触伤害并赋予中毒效果#优先追逐未被赋予中毒效果的敌人",
                {BFF="伤害翻倍"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.CETUS,
                "鲸鱼座",
                "换气控反击",
                "受伤后喷射大量泪弹#泪弹落地后留下一滩水迹",
                nil,"没有鲸爆, 不嘻嘻"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DEIMOS,
                "火卫二",
                "伴你终生",
                "投掷{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.SANGUINE_HOOK.."}}染血弯钩的跟班#{{ffBruise}} 弯钩勾中敌人或掉落物时静止在原地, 赋予敌人易伤状态#{{ffHemorrhage}} 释放敌人后赋予其大出血状态, 朝被释放的方向喷出大量血泪"
            },{
                FiendFolio.ITEM.COLLECTIBLE.MALICE,
                "恶念聚散",
                "集中你的怨念",
                "变为恶念球并进入冲刺状态#冲刺对敌人造成基于楼层数的接触伤害"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PET_ROCK,
                "宠物石头",
                "可移动垫脚石",
                "可以被推动的小石跟班#能够阻挡敌弹#被推向坑洞后将该坑洞填补, 每个房间限一次",
                {BFF="体积增加",
                ABY="3倍体积的蝗虫, 具有10%移速, 飞行时可以抵挡敌弹",
                MOD={STONE=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BIRTHDAY_GIFT,
                "生日礼物",
                "小心你许下的愿望",
                "{{Collectible515}} 所有{{ColorYellow}}非任务{{CR}}道具和被替换为神秘礼盒#不影响神秘礼盒中获得的道具, 但仍可重随使其变回神秘礼盒",
                nil,"{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}"
            },{
                FiendFolio.ITEM.COLLECTIBLE.CONTRABAND,
                "走私货",
                "一手交货, 一手交钱",
                "!!! 一次性#使用后触发8次{{Collectible582}}迷幻效果和好兴奋!!#!!! 我听说下层有个可疑人物正等着收货呢...#!!! 也最好不要让它离开你的视线",
                {ABY="灰色蝗虫, 具有90%移速"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BLACK_LANTERN,
                "暗黑灯笼",
                "银线诅咒",
                "{{BlackHeart}} 获得1黑心#!!! 每层都必定受诅咒#以暗含加成的一系列特殊诅咒替换原本的诅咒:#{{ffCurseImp}}{{ffCurseStone}}{{ffCurseSun}}{{ffCurseSwine}}{{ffCurseGhost}}{{ffCurseScythe}}{{ffCurseMaster}}"
            },{
                FiendFolio.ITEM.COLLECTIBLE.CLEAR_CASE,
                "透明手提箱",
                "利用好副手空间",
                "下一个拾取的主动道具将被装进副手槽位#!!! 会将原有的副手主动道具丢在地上",
                {ABY="白色蝗虫",
                MOD={GLASS=true}},
                "一个死亡证明拿三个道具的含金量有没有懂的!"
            },{
                FiendFolio.ITEM.COLLECTIBLE.CRUCIFIX,
                "耶稣受难像",
                "因为你的罪, 苍生注定一死",
                "被角色杀死的敌人将留下{{ColorCyan}}灵魂{{CR}}, 四周带有光圈#{{ColorCyan}}灵魂{{CR}}存在一小段时间后消失#↑ {{Collectible651}} 站在{{ColorCyan}}光圈{{CR}}中获得小幅度的{{Damage}}伤害、{{Tears}}射速提升和追踪泪弹#{{Collectible596}} 可以无视敌人的亡语, 也不会触发击杀相关的效果",
                {ABY="将杀死的敌人留下灵魂的青色蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BEDTIME_STORY,
                "睡前故事",
                "好上床了",
                "{{ffSleeping}} 对所有敌人施加昏睡状态#{{ffSleeping}} 敌人的速度会越来越慢, 最终静止#{{ffSleeping}} 静止的敌人受到双倍伤害, 但受击后立即苏醒",
                {VIR="生成暗蓝色魂火, 熄灭后使接触到的敌人昏睡",
                ABY="生成3个ZZZ蝗虫, 造成33%的伤害, 有概率施加昏睡状态(受幸运影响)"},
                "浮梦繁华(3/15): 睡觉"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PRANK_COOKIE,
                "恶作剧饼干",
                "尝起来像玉米",
                "泪弹获得多重色彩, 可以施加{{ColorRainbow}}邪魔典纸的专属异常状态{{CR}}"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DEVILS_HARVEST,
                "恶魔洗礼",
                "基因改造复活术",
                "{{Player"..FiendFolio.PLAYER.FIEND.."}} 死亡后以邪祟魔重生",
                {CHAR={FiendFolio.PLAYER.BIEND,"BiendRevive",false}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12,
                "永恒十二面骰",
                "???",
                "在两种模式间切换#2充能时, 高概率重随所有障碍物, 低概率清除所有障碍物#1充能时, 低概率重随所有障碍物, 高概率清除所有障碍物",
                {VIR="白色骰子魂火, 泪弹有概率重随障碍物",
                ABY="白色骰子外观蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12_ALT,
                "永恒十二面骰",
                "???",
                "在两种模式间切换#2充能时, 高概率重随所有障碍物, 低概率清除所有障碍物#1充能时, 低概率重随所有障碍物, 高概率清除所有障碍物",
                {VIR="白色骰子魂火, 泪弹有概率重随障碍物",
                ABY="白色骰子外观蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.RUBBER_BULLETS,
                "橡胶子弹",
                "淤青泪弹",
                "{{ffBruise}} 有概率发射{{ColorPurple}}橡胶子弹{{CR}}, 赋予敌人{{ColorPurple}}易伤状态{{CR}}#{{ffBruise}} 处于{{ColorPurple}}易伤状态{{CR}}的敌人受到的伤害量增加, 不论伤害来源#{{ffBruise}} 堆叠的{{ColorPurple}}易伤状态{{CR}}越多, 增伤值越高#{{Luck}} 幸运12.5: 50%",
                {ABY="有概率施加易伤状态的紫色蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.THE_DELUXE,
                "豪华汉堡",
                "各种食材都有",
                "↑ {{GoldenHeart}} +1金心#↑ {{EmptyBoneHeart}} +1骨心#↑ {{EternalHeart}} +1永恒之心#↑ {{ffMorbidHeart}} +1病态之心",
                {CONF={
                    {FiendFolio.ITEM.COLLECTIBLE.BACON_GREASE,"Delux1"},
                    {193,"Delux2"},
                    {456,"Delux3"},
                    {1,"Delux4"},
                    {618,"Delux5"}
                }}
            },{
                FiendFolio.ITEM.COLLECTIBLE.LIL_MINX,
                "轻佻恐吓者",
                "双击附身",
                "行为方式类似恐吓者(Menace)的跟班, 偶尔朝敌人冲刺一段距离#{{ffBerserk}} 双击射击键附身敌人, 赋予敌人狂暴状态; 再次双击射击键脱离并发射一串幽灵泪弹#{{ffBerserk}} 处于狂暴状态的敌人会周期性切换目标(有可能倒戈相向)、受到额外伤害且移速增加#!!! 处于狂暴状态的敌人在持续时间内不会死亡",
                {BFF="伤害翻倍",
                MOD={FEM=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.PURPLE_PUTTY,
                "紫色油灰",
                "可重复基因改造",
                "{{ffImmoralHeart}} 使用后，+1邪念之心",
                {VIR="4%概率发射5倍伤害暴击泪弹的邪祟魔魂火, 熄灭后生成空心邪鬼",
                ABY="粉色蝗虫",
                QUA=3},
                "邪魔典纸的傻逼血量API"
            },{
                FiendFolio.ITEM.COLLECTIBLE.FETAL_FIEND,
                "胎生邪祟魔",
                "丰收",
                "↑ {{Damage}} 伤害+1.5#拾取后，将所有{{SoulHeart}}魂心和{{BlackHeart}}黑心转化为{{ffImmoralHeart}}邪念之心#以2:1比例将所有{{Heart}}红心转化为{{ffImmoralHeart}}邪念之心",
                {ABY="粉色蝗虫",
                QUA=2}
            },{
                FiendFolio.ITEM.COLLECTIBLE.FIEND_MIX,
                "邪祟魔混合物",
                "建造伙伴",
                "使用后，将一半血量转化为邪鬼, 它们会在清理房间后变回血量掉落物",
                {VIR="不发射泪弹的邪祟魔魂火, 而是生成空心邪鬼",
                ABY="3个造成33%伤害的粉色蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SECRET_STASH,
                "辉夜公主的秘密藏品",
                "...没错, 它们还没消失呢!",
                "拾取后, 掉落1个{{Coin}}硬币、1个{{Bomb}}炸弹、1把{{Key}}钥匙和1个随机{{Card}}卡牌/{{Pill}}药丸/{{Rune}}符文#下一局开始时, 生成{{Coin}}硬币、{{Key}}钥匙、{{Bomb}}炸弹,数量为本局结束时持有数的10%(向下取整)#下一局开始时, 生成本局结束时持有的{{Card}}卡牌/{{Pill}}药丸/{{Rune}}符文"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GLIZZY,
                "热狗肠",
                "饥饿下降",
                "↑ {{HalfHeart}} +1半红心#↑ {{Speed}} +0.1移速#↑ {{Tears}} +0.1射速修正#↑ {{Damage}} +0.1伤害修正#↑ {{Range}} +0.1射程#↑ {{Shotspeed}} +0.1弹速#↑ {{Luck}} +0.1运气",
                {ABY="香肠魂火, 拥有1.1倍移速, 伤害和体积",
                QUA=1},
            },{
                FiendFolio.ITEM.COLLECTIBLE.FIEND_HEART,
                ">:3",
                "生命上升?",
                "↑ {{ffImmoralHeart}} +3邪念之心",
                {QUA=1}
            },{
                FiendFolio.ITEM.COLLECTIBLE.DEVILLED_EGG,
                "魔化蛋",
                "射速上升 + 你感到邪恶",
                "↑ {{ffImmoralHeart}} +2邪念之心#↑ {{Tears}} +0.3射速修正"
            },{
                FiendFolio.ITEM.COLLECTIBLE.TEA,
                "茶",
                "生命上升",
                "↑ {{Heart}} +1心之容器#{{HealingRed}} 治疗1红心",
                {EAT="↑ {{Range}} +1.5射程#↑ {{Luck}} +1.0运气#↓ {{Speed}} -0.03移速"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.FRAUDULENT_FUNGUS,
                "假魔法蘑菇",
                "某些属性提升",
                "↑ {{RottenHeart}} +1填充腐心的心之容器#↑ {{Speed}} +0.2移速#↑ {{Damage}} +0.3伤害#↑ {{Range}} +0.38射程",
                {ABY="造成1.2倍伤害和1.1倍速度的腐心蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SMALL_PIPE,
                "小水管",
                "恭喜你有这么大的管子",
                "↑ {{Speed}} +0.2移速#↑ {{Tears}} +0.2射速修正#↑ {{Damage}} +0.2伤害#↑ {{Shotspeed}} +0.2弹速",
                {ABY="造成1.1倍伤害和1.1倍速度的灰色蝗虫"},
                "细说管子"
            },{
                FiendFolio.ITEM.COLLECTIBLE.SMALL_WOOD,
                "小木板",
                "射速上升",
                "#↑ {{Tears}} +1射速修正#↑ {{Damage}} +0.2伤害#↓ {{Shotspeed}} -0.2弹速",
                {ABY="造成1.2倍伤害和0.9倍速度的棕色蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.WHITE_PEPPER,
                "白胡椒",
                "环形毒火焰",
                "{{Collectible495}} 使用后, 向角色周围一圈发射5个蓝色火焰",
                {VIR="5个蓝蜡烛魂火",
                ABY="5个造成20%伤害的火系蝗虫"},
                "大烤大烤焦焦焦...?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PEPPERMINT,
                "胡椒薄荷",
                "好辣! 哦, 好吧没有...",
                "{{Burning}} 有概率发射{{ColorCyan}}青蓝色火焰{{CR}}#{{Freezing}} {{ColorCyan}}青蓝色火焰{{CR}}减速并对敌人造成接触伤害，冻结其杀死的敌人#{{Luck}} 幸运11: 100%#!!! 不同于其他辣椒, 火焰的大小不会因属性而改变, 但是可以兼容多发",
                {ABY="33%概率施加减速的冰系蝗虫",
                MOD={ICE=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BLACK_MOON,
                "黑月",
                "万物归寂",
                "敌人死后生成持续3s的{{ColorRed}}血色十字{{CR}}#处于{{ColorRed}}血色十字{{CR}}范围内的敌人持续受到伤害#被{{ColorRed}}血色十字{{CR}}杀死的敌人不会再次生成{{ColorRed}}血色十字{{CR}}",
                {ABY="杀死敌人生成血色十字的红色蝗虫",
                MOD={BLOOD=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_1,
                "完美通用物",
                "物品模仿者",
                "拾取后, 生成随机副手物品#使用后触发持有的非卡牌, 符文, 药丸副手物品",
                {VIR="熄灭后生成随机副手物品的魂火, 魂火的泪弹杀死敌人后有15%的概率生成随机副手物品"},
                "当你意识到邪魔典纸为了写这一个道具的多个充能版本写了一大堆同名道具时你就该意识到现在已经是大忏悔龙的时代了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_2,
                "完美通用物",
                "物品模仿者",
                "拾取后, 生成随机副手物品#使用后触发持有的非卡牌, 符文, 药丸副手物品",
                {VIR="熄灭后生成随机副手物品的魂火, 魂火的泪弹杀死敌人后有15%的概率生成随机副手物品"},
                "当你意识到邪魔典纸为了写这一个道具的多个充能版本写了一大堆同名道具时你就该意识到现在已经是大忏悔龙的时代了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_3,
                "完美通用物",
                "物品模仿者",
                "拾取后, 生成随机副手物品#使用后触发持有的非卡牌, 符文, 药丸副手物品",
                {VIR="熄灭后生成随机副手物品的魂火, 魂火的泪弹杀死敌人后有15%的概率生成随机副手物品"},
                "当你意识到邪魔典纸为了写这一个道具的多个充能版本写了一大堆同名道具时你就该意识到现在已经是大忏悔龙的时代了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_4,
                "完美通用物",
                "物品模仿者",
                "拾取后, 生成随机副手物品#使用后触发持有的非卡牌, 符文, 药丸副手物品",
                {VIR="熄灭后生成随机副手物品的魂火, 魂火的泪弹杀死敌人后有15%的概率生成随机副手物品"},
                "当你意识到邪魔典纸为了写这一个道具的多个充能版本写了一大堆同名道具时你就该意识到现在已经是大忏悔龙的时代了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_5,
                "完美通用物",
                "物品模仿者",
                "拾取后, 生成随机副手物品#使用后触发持有的非卡牌, 符文, 药丸副手物品",
                {VIR="熄灭后生成随机副手物品的魂火, 魂火的泪弹杀死敌人后有15%的概率生成随机副手物品"},
                "当你意识到邪魔典纸为了写这一个道具的多个充能版本写了一大堆同名道具时你就该意识到现在已经是大忏悔龙的时代了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_6,
                "完美通用物",
                "物品模仿者",
                "拾取后, 生成随机副手物品#使用后触发持有的非卡牌, 符文, 药丸副手物品",
                {VIR="熄灭后生成随机副手物品的魂火, 魂火的泪弹杀死敌人后有15%的概率生成随机副手物品"},
                "当你意识到邪魔典纸为了写这一个道具的多个充能版本写了一大堆同名道具时你就该意识到现在已经是大忏悔龙的时代了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_8,
                "完美通用物",
                "物品模仿者",
                "拾取后, 生成随机副手物品#使用后触发持有的非卡牌, 符文, 药丸副手物品",
                {VIR="熄灭后生成随机副手物品的魂火, 魂火的泪弹杀死敌人后有15%的概率生成随机副手物品"},
                "当你意识到邪魔典纸为了写这一个道具的多个充能版本写了一大堆同名道具时你就该意识到现在已经是大忏悔龙的时代了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_12,
                "完美通用物",
                "物品模仿者",
                "拾取后, 生成随机副手物品#使用后触发持有的非卡牌, 符文, 药丸副手物品",
                {VIR="熄灭后生成随机副手物品的魂火, 魂火的泪弹杀死敌人后有15%的概率生成随机副手物品"},
                "当你意识到邪魔典纸为了写这一个道具的多个充能版本写了一大堆同名道具时你就该意识到现在已经是大忏悔龙的时代了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PAGE_OF_VIRTUES,
                "美德残页",
                "你的信仰始终真诚",
                "角色未拥有该道具生成的魂火时, 则生成一个随机主动道具的魂火",
                {MOD={PAPER=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BRIDGE_BOMBS,
                "桥梁炸弹",
                "填坑爆破 + 5个炸弹",
                "{{Bomb}} +5炸弹#炸弹爆炸后填补周围的坑洞",
            },{
                FiendFolio.ITEM.COLLECTIBLE.LAWN_DARTS,
                "草地飞镖",
                "大出血泪弹",
                "{{ffHemorrhage}} 有概率发射{{ColorOrange}}飞镖泪弹{{CR}}, 使敌人{{ColorOrange}}大出血{{CR}}#{{ffHemorrhage}} {{ColorOrange}}大出血{{CR}}的敌人周期性受到伤害、向四周喷射血泪并留下血迹#血迹可伤害其他敌人#{{Luck}} 幸运15: 100%",
                {ABY="有概率施加大出血的滴血蝗虫"},
                "因为多次致人死亡的犯罪史而被禁止...就和因为用一本书砸死了人要求禁止那本书出版一样荒谬, 不是吗"
            },{
                FiendFolio.ITEM.COLLECTIBLE.TOY_PIANO,
                "玩具钢琴",
                "钢琴住了几个妖",
                "{{ffDoom}} 泪弹有概率赋予敌人{{ColorMaroon}}毁灭状态{{CR}}#{{ffDoom}} 身中{{ColorMaroon}}毁灭状态{{CR}}的敌人头顶出现{{ColorMaroon}}计数器{{CR}}#{{ffDoom}} 每受到1次伤害{{ColorMaroon}}计数器{{CR}}减少1点#{{ffDoom}} 减至0点后对敌人造成大量伤害, 移除{{ColorMaroon}}计数器{{CR}}及{{ColorMaroon}}毁灭状态{{CR}}#{{Luck}} 幸运34: 100%",
                {ABY="有概率施加毁灭状态的黑色蝗虫",
                MOD={MUSIC=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.HYPNO_RING,
                "催眠指环",
                "昏睡泪弹",
                "{{ffSleeping}} 有概率发射{{ColorBlue}}昏睡泪弹{{CR}}, 使得命中的敌人昏睡#{{ffSleeping}} 敌人的速度会越来越慢, 最终静止#{{ffSleeping}} 静止的敌人受到双倍伤害, 但受击后立即苏醒#{{Luck}} 幸运10: 33%",
                {ABY="有概率施加昏睡状态的深蓝色蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.MUSCA,
                "苍蝇座",
                "蝗虫爆破 + 捕虫高手",
                "{{Bomb}} +3炸弹#{{Card94}} 炸弹爆炸后生成3只随机蝗虫#{{Card94}} 敌人死后有概率生成1只随机蝗虫#{{Luck}} 幸运113: 100%",
                {CONF={52,"DrMusca"}},
                "能想到这么填幸运数值的也是神人了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.MODEL_ROCKET,
                "模型火箭",
                "加速度泪弹",
                "↑ {{Shotspeed}} 弹速倍率x2#↑ {{Range}} +1.5射程#泪弹在运动过程中将逐渐从0加速至正常弹速#泪弹基于当前速度造成额外伤害",
                {ABY="蝗虫的初始速度为10%, 并逐渐提速; 不会根据速度造成额外伤害"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SIBLING_SYL,
                "希尔兄弟",
                "好朋友一辈子",
                "发射通常泪弹的跟班#泪弹造成4.75伤害",
                {BFF="伤害翻倍",
                ABY="造成105%伤害的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.WRONG_WARP,
                "错误曲间",
                "乱序",
                "!!! 一次性#使用后，传送到随机层",
                {ABY="行动方向随机偏移的故障蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.GREG_THE_EGG,
                "蛋头格雷",
                "惊喜彩蛋",
                "在房间内四处乱走的蛋跟班#清理房间后有概率给予随机掉落物#可阻挡敌弹, 有概率在阻挡敌弹时碎裂并生成{{ItemPoolBabyShop}}一个跟班道具, 而后失去蛋头格雷",
                {ABY="可以抵挡敌弹的蛋形蝗虫, 33%的速度",
                CONF={655,"Spin2WinDMGing"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.FAMILIAR_FLY,
                "跟班大美蝇",
                "万人敬仰",
                "离角色较远的大美蝇环绕物#{{Charm}} 能魅惑敌人#!!! 接触敌人一定时间后将爆炸并爆出泪弹",
                {BFF="碰撞伤害和爆出的泪弹伤害翻倍",
                ABY="10%概率魅惑敌人的大号橘色蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.MONAS_HIEROGLYPHICA,
                "莫纳象形文字",
                "集中宇宙之力",
                "{{Planetarium}} 下层时给予随机星象房道具效果",
                {QUA=2},
                "你要不要想想为什么黄道十二宫也才1级"
            },{
                FiendFolio.ITEM.COLLECTIBLE.CYANIDE_DEADLY_DOSE,
                "致死量用药",
                "强力药丸, 致命成瘾症",
                "{{Pill960}} 拾取后掉落{{ColorPurple}}氰化物药丸{{CR}}#↑ 使用后, 大幅度提升所有属性#!!! 60秒后杀死角色(在此期间使用1枚其他{{Pill}}药丸可避免死亡)",
                {CONF={{75,654},"NoEffect"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.GOLDEN_PLUM_FLUTE,
                "金梅溜溜笛",
                "游戏时间!",
                "使用后在所在房间召唤{{ColorYellow}}金梅宝宝{{CR}}, 持续10秒",
                {BFF="伤害翻倍"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.DOGBOARD,
                "狗溜板",
                "出来遛狗!",
                "上了这个滑板就别想停下来了!#使用后进行一次炫酷的带板跳跃!#!!! 整活道具别想了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DADS_POSTICHE,
                "爸爸的假胡须",
                "恶心的感觉",
                "射击时随机产生蓝跳蛛, 上限10个#{{ffMorbidHeart}} 提升病态之心的出现概率",
                {BFF="上限翻倍"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.EXCELSIOR,
                "烟火核心",
                "爆炸性主动",
                "使用主动道具后发射追踪烟花(兼容大部分炸弹特效和一部分泪弹特效)#烟花数量取决于主动道具的充能数#如果启用了{{ColorYellow}}Excelsior音乐模组{{CR}}还会进一步增加烟花数量!",
                {CONF={
                    {118,"Excelstone"},
                    {453,"Excelbone"},
                    {68,"Techselsior"},
                    {395,"Xcelsior"},
                    {533,"Triselsior"},
                    {"5.350.138","ExcelM"}
                }},"烟斗不代言了是吧"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GRIDDLED_CORN,
                "焦烧玉米",
                "伤害上升 + 燃起来了",
                "{{BlackHeart}} 获得1黑心#↑ {{Damage}} +0.3伤害#{{Key}} 拾取后生成1个烫手钥匙和3个友好火炭蜘蛛",
                {ABY="有10%概率施加灼烧的烫手钥匙外观蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D10,
                "永恒十面骰",
                "???",
                "使用后重随本房间的所有敌人#有概率使敌人消失",
                {VIR="白色骰子魂火, 有10%的概率重随命中的敌人"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.TOY_CAMERA,
                "玩具相机",
                "拍照大师!",
                "使用后在角色射击方向生成取景框#取景框不可移动、不可缩放, 一小段时间后拍照#拍照会消除取景框内所有敌弹, 眩晕框内所有敌人#{{Tears}} 拍到角色时提升临时射速#{{Card"..FiendFolio.ITEM.CARD.COOL_PHOTO.."}} 拍下的敌人数量足够多时，生成一张炫酷靓照",
                {BEL="拍照会对敌人造成伤害, 取决于角色面板和取景框内的敌人数",
                CAR="同时生成更多取景框"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.HAPPYHEAD_AXE,
                "迦勒底之斧",
                "砍倒它们!",
                "周期性朝离角色最近的敌人发射斧子#{{Collectible338}} 斧子自带穿透, 飞出一小段时间后瞄准角色飞出屏幕"
            },{
                FiendFolio.ITEM.COLLECTIBLE.THE_BROWN_HORN,
                "棕色号角",
                "让它们肠道一松",
                "{{Collectible680}} 使用后, 本房间所有敌人腹泻#{{Collectible576}} 腹泻的敌人会远离角色并产生友好粪滴",
                {CAR="敌人腹泻的持续时间增加3s"},
                "你的肛门比较松弛, 但是你的痔疮呢弥补了这一部分"
            },{
                FiendFolio.ITEM.COLLECTIBLE.PENNY_ROLL,
                "一卷硬币",
                "每月津贴",
                "{{Coin}} 拾取后, 生成1个{{Trinket}}硬币饰品、1个金硬币和4个随机硬币",
                {ABY="5个造成20%伤害的硬币外观蝗虫",
                QUA=1}
            },{
                FiendFolio.ITEM.COLLECTIBLE.EVIL_STICKER,
                "邪念贴纸",
                "高风险掉落物",
                "拾取后生成6个诅咒硬币#!!! 增加{{ffImmoralHeart}}邪念之心、诅咒硬币、烫手钥匙、铜炸弹和恐怖箱子的生成概率"
            },{
                FiendFolio.ITEM.COLLECTIBLE.WIMPY_BRO,
                "怯击者伙伴",
                "伊! 哈!",
                "行为方式类似怯击者(Wimpy)的跟班, 会瞄准房间内的敌人大跳",
                {BFF="伤害翻倍"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.ETERNAL_CLICKER,
                "永恒遥控器",
                "???",
                "{{Collectible482}} 使用后, 50%概率将角色转换为其他角色, 并损失1件被动道具#!!! 50%概率彻底锁死游戏#!!! 无道具池道具(你在期待什么?)"
            },{
                FiendFolio.ITEM.COLLECTIBLE.ROBOBABY3,
                "科技宝宝3",
                "当下最尖端的科技",
                "对角线移动的跟班#角色不移动时保持静止#对敌人造成接触伤害或抵挡敌弹, 并发射8向激光",
                {BFF="碰撞伤害和激光伤害翻倍"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SNOW_GLOBE,
                "雪景球",
                "甩飞石头",
                "使用后, 在当前房间产生地震, 将房间内大部分障碍物摇晃至随机位置",
                {VIR="33.33%的概率在石头因地震被摧毁时生成一个静止的魂火",
                BEL="每有一个被震飞的障碍物, 获得流失性伤害增幅",
                MOD={ICE=true,STONE=true}},
            },{
                FiendFolio.ITEM.COLLECTIBLE.NYX,
                "小行星3908",
                "释放",
                "获得3个跟踪宝石#射击时沿射击方向发射宝石#{{ffBruise}} 宝石会固定在敌人身上并将其易伤#{{ffBruise}} 固定在一个敌人上的宝石越多, 堆叠的易伤层数也越多#未击中敌人或持续时间结束宝石掉落, 可通过拾取将其归位",
                {CONF={
                    {FiendFolio.ITEM.COLLECTIBLE.NYX,"MultiNyx"},
                    {{305,446},"PoisNyx"},
                    {{309,637,"5.350.77"},"KnockNyx"},
                    {213,"ShieldNyx"},
                    {{597,309},"WaterNyx"},
                    {{FiendFolio.ITEM.COLLECTIBLE.TOY_PIANO,FiendFolio.ITEM.COLLECTIBLE.PRANK_COOKIE,593},"DoomNyx"},
                    {{68,152,494,244,395},"TechNyx"},
                    {FiendFolio.ITEM.COLLECTIBLE.IMP_SODA,"CritNyx"}
                },MOD={STONE=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.TELEBOMBS,
                "传送炸弹",
                "移炸换弹 + 5个炸弹",
                "{{Bomb}} +5炸弹#在角色身后产生一道标记#标记跟随角色移动, 但具有延迟#放下炸弹时, 炸弹立即爆炸, 并将角色传送至标记处#!!! 角色仍可能受到爆炸伤害"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DICE_GOBLIN,
                "骰子哥布林",
                "物品囤积者",
                "拾取后, 生成3个随机副手物品#下层时, 在初始房间生成1个随机副手物品"
            },{
                FiendFolio.ITEM.COLLECTIBLE.CHERRY_BOMB,
                "樱桃炸弹",
                "宝宝炸弹",
                "使用后，举起一枚小小的红色炸弹#按下射击键投掷#爆炸造成22点真实伤害#爆炸伤害随角色面板伤害的增加而增加#爆炸不会伤害角色, 也不会摧毁石头#兼容大部分炸弹特效",
                {VIR="生成红色小炸弹魂火, 与樱桃炸弹同时爆炸, 不会伤害角色",
                CAR="原地生成一个红色炸弹",
                BEL="红色炸弹会释放鬼灵爆破",
                CONF={517,"FastCherry"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.ASTROPULVIS,
                "星尘魂石",
                "超新星",
                "{{Collectible653}} 使用后, 将距离角色最近的石头转化为大型红色鬼魂#再次使用引爆本房间内所有大型鬼魂",
                {VIR="引爆大型鬼魂后生成外圈魂火, 下次引爆鬼魂时该魂火也会一同爆炸",
                BEL="更强大的鬼灵爆破"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SPINDLE,
                "光盘架",
                "更多光盘!",
                "拾取后, 掉落3张随机光盘#使用光盘获得其对应道具池的3-5个被动道具效果, 持续60秒#进入Boss房时, 掉落1张随机光盘",
                {MOD={MUSIC=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.AZURITE_SPINDOWN,
                "蓝铜计数骰",
                "-1",
                "{{Trinket}} 拾取后, 掉落1个随机饰品#{{Trinket}} 使用后, 将房间内所有饰品的编号减少1"
            },{
                FiendFolio.ITEM.COLLECTIBLE.KING_WORM,
                "国王虫",
                "暂时性蠕虫力量",
                "{{Trinket64}} 使用后, 在当前房间获得随机虫饰品的效果"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DEVILS_DAGGER,
                "恶魔匕首",
                "欲速则不达",
                "射击时发射方向不定的匕首#杀死敌人后掉落红宝石#拾取红宝石可在当前楼层强化匕首#!!! 若不拾取，一段时间后红宝石将消失"
            },{
                FiendFolio.ITEM.COLLECTIBLE.STRANGE_RED_OBJECT,
                "看着很几把怪的红色物件",
                "散发着人畜无害的气息",
                "↑  {{Heart}}+1心之容器#↑  {{Speed}}+0.05移速#↑  {{Damage}}+0.3伤害#↑  {{Luck}}+2运气#:)",
                {ABY="1.05倍移速, 造成1.3倍伤害的亮红色蝗虫"},
                "没错, 它的能力就是让你的游戏变成两格像素宽!"
            },{
                FiendFolio.ITEM.COLLECTIBLE.D3,
                "三面骰",
                "重随泪弹",
                "波浪形旋转的环绕物, 重随其接触到的泪弹"
            },{
                FiendFolio.ITEM.COLLECTIBLE.EMOJI_GLASSES,
                "表情符眼镜",
                "眼前一亮",
                "攻击方式改为发射表情符号泪弹#不同的表情符号有不同的效果#在随机3个表情符号之间循环切换, 每2s重随可能出现的表情符号",
            },{
                FiendFolio.ITEM.COLLECTIBLE.SACK_OF_SPICY,
                "钥匙袋?",
                "感觉好烫...",
                "{{Key}} 给予烫手钥匙的袋子跟班",
                {BFF="改为给予超烫手钥匙",
                ABY="有10%概率施加灼烧的烫手钥匙外观蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.HEART_OF_CHINA,
                "瓷制鬼的心",
                "易碎品",
                "拾取溢出的血量可填充特殊血量槽#↑ {{EmptyHeart}} 特殊血量槽完全填充后给予1空心之容器#特殊血量槽的槽位数与当前持有的心之容器总数有关"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DEVILS_ABACUS,
                "恶魔的算盘",
                "学数数!",
                "发射泪弹时计数，在角色头顶显示数字#↑ 发射泪弹总数与计数相等时，{{Tears}}射速与{{Damage}}伤害上升#↓ 总数超过计数时加成消失，计数归零#发射对应数量的泪弹后立即停止发射一段时间可增加计数#!!! 大部分蓄力攻击方式都将无法增加计数"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DAZZLING_SLOT,
                "便携式闪金老虎机",
                "唤出内心的贪欲",
                "{{Coin}} 每次使用消耗5个硬币#将1个敌人转化为黄金抽奖机#黄金抽奖机随机抽奖, 抽到后立即消失",
                {VIR="即使没有敌人可以被转化也能生成魂火(?)",
                MOD={GOLD=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.KALUS_HEAD,
                "卡鲁的断头",
                "骇人之面",
                "使用后，产生一道紫色视野#视野的方向由角色的射击方向决定#在持续时间内, 眩晕并石化视野范围内的敌人#敌人在石化时死亡会爆出8向泪弹",
                {CAR="持续时间和伤害翻倍",
                VIR="没有效果",
                ABY="10%伤害的蝗虫, 石化敌人"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.X10KACHING,
                "哐啷!",
                "10硬币",
                "↑ {{Coin}} +10硬币",
                {ABY="10个硬币蝗虫, 造成10%伤害并有10%的概率施加点金"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.X10CHOMPCHOMP,
                "嚼嚼!",
                "10热狗肠",
                "↑ {{Collectible"..FiendFolio.ITEM.COLLECTIBLE.GLIZZY.."}} +10热狗肠",
                {ABY="10个香肠蝗虫, 造成20%伤害, 拥有1.1倍移速和体积"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.X10BATOOMKLING,
                "咔哒!",
                "10钥匙",
                "↑ {{Key}} +10钥匙",
                {ABY="10个硬币蝗虫, 造成10%伤害并有10%的概率施加流血"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.X10BADUMP,
                "咂咂!",
                "10红心",
                "{{HealingRed}} 回复10红心",
                {ABY="10个硬币蝗虫, 造成10%伤害并有10%的概率施加魅惑"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.X10BZZT,
                "滋滋滋!",
                "10充能",
                "↑ {{Battery}} +10格充能",
                {ABY="10个硬币蝗虫, 造成10%伤害并有10%的概率施加混乱"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.INFINITY_VOLT,
                "无限伏特",
                "双击发射电线",
                "双击射击键发射插头#{{Collectible494}} 被插头命中的敌人被魅惑并持续放电#再次双击收回插头#放电一段时间后敌人将会爆炸",
                {ABY="橙色蝗虫, 移动时与角色连接10%伤害的激光"},
            },{
                FiendFolio.ITEM.COLLECTIBLE.HORNCOB,
                "长角玉米棒",
                "种米得米",
                "{{Pill}} 杀死敌人后有概率强制服用随机药丸#{{Luck}} 幸运15: 100",
                {ABY="杀死敌人后有概率强制服药的药丸蝗虫"},
                "我寻思我也没带诅咒眼啊"
            },{
                FiendFolio.ITEM.COLLECTIBLE.RAT_POISON,
                "老鼠药",
                "跳过TA的房间们",
                "如果当前房间是邪魔典纸的房间, 跳过当前房间#本局内不会再遇见同一个邪魔典纸作者设计的房间",
                {ABY="毒系发光骷髅蝗虫, 由1%的概率擦除命中的敌人"},
                "那些老鼠藏在Vermin的房间里!"
            },{
                FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_B,
                "天使七弦琴",
                "演奏不同的曲调",
                "使用后改变当前的{{ColorCyan}}曲调{{CR}}#{{ColorCyan}}当前{{CR}}: 以1-3-0的顺序发射眼泪",
                {CAR="没有效果",
                ABY="三只蝗虫, 分别为: {{ColorCyan}}33%伤害和正常速度{{CR}}, {{ColorRed}}100%伤害和25%速度{{CR}}, {{ColorYellow}}12.5%伤害和200%速度",
                MOD={MUSIC=true},
                CONF={
                    {{114,118,168,395},"LireLess"},
                    {68,"NoBR"}
                }}
            },{
                FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_R,
                "天使七弦琴",
                "演奏不同的曲调",
                "使用后改变当前的{{ColorRed}}曲调{{CR}}#{{ColorRed}}当前{{CR}}: 缓慢发射4颗灵体泪弹",
                {CAR="没有效果",
                ABY="三只蝗虫, 分别为: {{ColorCyan}}33%伤害和正常速度{{CR}}, {{ColorRed}}100%伤害和25%速度{{CR}}, {{ColorYellow}}12.5%伤害和200%速度",
                MOD={MUSIC=true},
                CONF={
                    {{114,118,168,395},"LireLess"},
                    {68,"NoBR"}
                }}
            },{
                FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_Y,
                "天使七弦琴",
                "演奏不同的曲调",
                "使用后改变当前的{{ColorYellow}}曲调{{CR}}#{{ColorYellow}}当前{{CR}}: 一次性发射10颗跟踪眼泪, 然后冷却",
                {CAR="没有效果",
                MOD={MUSIC=true},
                ABY="三只蝗虫, 分别为: {{ColorCyan}}33%伤害和正常速度{{CR}}, {{ColorRed}}100%伤害和25%速度{{CR}}, {{ColorYellow}}12.5%伤害和200%速度",
                CONF={
                    {{114,118,168,395},"LireLess"},
                    {68,"NoBR"}
                }}
            },{
                FiendFolio.ITEM.COLLECTIBLE.HORSE_PASTE,
                "强力胶",
                "粘在一起",
                "{{BrokenHeart}} 治疗一颗碎心"
            },{
                FiendFolio.ITEM.COLLECTIBLE.LEMON_MISHUH,
                "啥事柠檬???",
                "远程烦事",
                "{{Throwable}} 可投掷的{{Collectible56}}烦事柠檬",
                {VIR="高射速低射程的魂火, 偶尔滴落黄色水迹",
                ABY="1.35倍伤害的黄色蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.MIME_DEGREE,
                "哑剧学位证书",
                "。",--沉默是金
                "在房间中生成敌人无法通过的方块#与角色触碰后会移动到其他位置",
                {ABY="生成一个你的肉眼看不见的蝗虫, 你也无法感受到它造成伤害, 但是它确实存在并会推开敌人和摧毁敌弹, 但无论如何, 你看不到它, 也感觉不到它的存在, 你甚至不知道你有没有把它射出去#啊等等影子穿帮了啊喂!"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.CRAZY_JACKPOT,
                "疯狂大奖",
                "报复性开赌",
                "受伤时, 角色摇老虎机#三个图标均相同时触发对应效果, 这个概率受幸运影响#{{Luck}} 幸运100: 100%",
                {ABY="3个7蝗虫, 造成33%伤害"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.NIL_PASTA,
                "空值意面",
                "代码比面条还乱",
                "使用意面绳抓住敌人, 并将它们定在原地#拔回意面绳时删除部分代码, 使敌人偶尔错误地调用便便人(Poople)的AI行为逻辑",
                {ABY="3.33%概率删除敌人代码的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.CLUTCHS_CURSE,
                "附身邪鬼的诅咒",
                "如果它是紫色的呢?",
                "时不时附身角色的跟班#{{Collectible149}} 附身后, 角色下一次攻击发射跟踪爆破泪弹#!!! 石头偶尔发出紫光, 摧毁后产生火焰",
                {BFF="碰撞伤害和泪弹伤害翻倍",
                ABY="紫色跟踪蝗虫"},
            },{
                FiendFolio.ITEM.COLLECTIBLE.PET_PEEVE,
                "心头刺",
                "双击恼人攻击",
                "刺块跟班, 双击射击键使其冲刺",
                {BFF="碰撞伤害翻倍"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.MOMS_STOCKINGS,
                "妈妈的长筒袜",
                "射程上升",
                "↑ {{Range}} +1.5射程#生成数只蓝跳蛛"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GOLDEN_POPSICLE,
                "黄金棒冰",
                "幸运上升",
                "{{SoulHeart}} 获得1魂心#↑ {{Luck}} +2运气#生成随机黄金掉落物",
                {MOD={GOLD=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.TIME_ITSELF,
                "时间本身",
                "多维泪弹",
                "有概率发射{{ColorFade}}史蒂文泪弹{{CR}}, 击中敌人后使其{{ColorFade}}镜像化{{CR}}#{{Collectible431}} 泪弹经过{{ColorFade}}镜像化{{CR}}敌人时会分成2个#{{Luck}} 幸运15: 100%",
                {ABY="有概率施加镜像化的蝗虫"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.EMPTY_BOOK,
                "空白书本",
                "写下你自己的故事!",
                "自定义一本书道具#选择的词条不同效果也不同#第一词条为该道具的充能, 第二及第三词条为该道具的使用后效果#使用第二本空白书本不会影响之前定义的书道具"
            },{
                FiendFolio.ITEM.COLLECTIBLE.HOST_ON_TOAST,
                "寄生物盖面包",
                "伤害 + 射程上升",
                "↑ {{Damage}} +0.5伤害#↑ {{Range}} +0.38射程"
            },{
                FiendFolio.ITEM.COLLECTIBLE.BAG_OF_BOBBIES,
                "波比袋",
                "给予波比",
                "清理房间后有概率给予脆弱波比#{{Collectible8}} 脆弱波比与波比兄弟完全一致，但是会受伤并死亡",
                {BFF="伤害翻倍, 生成跟班的概率翻倍",
                ABY="3个波比蝗虫, 造成33%伤害",
                CONF={536,"AltarBag"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BOX_TOP,
                "盒子盖",
                "幸运上升 + 奖品兑换",
                "↑ {{Luck}} +2运气#拾取后, 掉落1枚拼图片",
                {MOD={PAPER=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.KINDA_EGG,
                "可达奇趣蛋",
                "生命上升. 别把赠品吞了!",
                "↑  {{Heart}} +1心之容器#{{HealingRed}} 治疗1红心#拾取后, 掉落1个随机副手物品"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DADS_DIP,
                "爸爸的药膏",
                "生命上升",
                "↑ {{ffMorbidHeart}} +1填充病态之心的心之容器"
            },{
                FiendFolio.ITEM.COLLECTIBLE.YICK_HEART,
                "恶心的心",
                "充能型病态恶化",
                "#{{ffMorbidHeart}} 使用后+1病态之心",
                {QUA=3,
                CHAR={19,"YickBug",false},
                MOD={ILL=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SMASH_TROPHY,
                "Maria的大乱斗奖杯",
                "TA就是赢家!",
                "↑ {{Damage}} +1伤害#敌人血量越少越容易被击退",
                {ABY="基于敌人生命造成击退效果的蝗虫",
                MOD={GOLD=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BOTTLE_OF_WATER,
                "一瓶水",
                "吞服!",
                "{{SoulHeart}} 获得2魂心#{{Collectible479}} 吞下持有的饰品#{{Pill}} 生成一颗药丸"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GAMMA_GLOVES,
                "伽马拳套",
                "浩克般的力量",
                "产生小范围冲击波推开敌人",
                {CAR="推力翻倍",
                VIR="中环绿色低生命魂火, 无法攻击且仅持续1s",
                BEL="冲击波推开的敌人撞到障碍物会受到伤害"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SHREDDER,
                "碎纸机",
                "道具回收利用",
                "将道具拆解成掉落物#可能产生卡牌、饰品及符文",
                {VIR="泪弹螺旋升天的魂火"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.FISTFUL_OF_ASH,
                "一把烟灰",
                "它们藏的可太明显了",
                "↑ {{Bomb}} +3炸弹#改变标记石头的外观#标记石头变得更多#炸毁标记石头时额外掉落{{HalfHeart}}半红心并临时提升{{Damage}}伤害#炸毁标记石头时50%概率消除{{BrokenHeart}}碎心#!!! 下层时+1{{BrokenHeart}}碎心",
                {CHAR={14,"KeeperAsh",true},
                MOD={ILL=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.FIENDS_THIRD_LEG,
                "邪祟魔的第三条\"腿\"",
                "大不大",
                "↑ {{Damage}} x333%伤害#↑ {{Tears}} x2射速修正#追踪眼泪#眼泪留下伤害水迹#眼泪命中时会生成邪鬼#!!! 整活道具别想了",
                nil,"我正等着你陪我玩几把呢"
            },{
                FiendFolio.ITEM.COLLECTIBLE.LOADED_D6,
                "灌铅六面骰",
                "重复你的命运",
                "重置所在房间的底座道具为已持有道具#优先产生能够叠加的道具"
            },{
                FiendFolio.ITEM.COLLECTIBLE.ISAAC_DOT_CHR,
                "Isaac.chr",
                "备份角色文档",
                "获得一条额外生命#{{Collectible721}} 复活后, 以错误道具替换部分已持有道具"
            },{
                FiendFolio.ITEM.COLLECTIBLE.WORM_INSIGNIA,
                "勋章-绦虫",
                "早起虫儿有...等下...",
                "↑ {{Speed}} +0.02移速",
                nil,"并非邪魔勋章"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DADS_BATTERY,
                "爸爸的电池",
                "充能欠款",
                "充能不足也能使用主动道具#不足部分转为{{ColorRed}}负值{{CR}}#最多积攒12点{{ColorRed}}负充能{{CR}}#↓ 持有{{ColorRed}}负充能{{CR}}会减少{{Speed}}速度和{{Shotspeed}}弹速#!!! 切换主动道具会将{{ColorRed}}负充能{{CR}}继承到新的主动道具上",
                {CONF={{720,703,FiendFolio.ITEM.COLLECTIBLE.KALUS_HEAD,FiendFolio.ITEM.COLLECTIBLE.ASTROPULVIS},"NoEffect"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.TORTURE_COOKIE,
                "刀语饼",
                "可重复苦痛预言",
                "{{HalfHeart}} 对角色造成半颗红心的伤害#有概率生成:#恶语纸条#{{BlackHeart}} 黑心#{{Card}} 逆位塔罗牌#{{DevilChance}} 邪恶主题饰品"
            },{
                FiendFolio.ITEM.COLLECTIBLE.ISAACD_EULOGY,
                "以撒骰之悼词",
                "死亡一掷",
                "敌人死亡后，有概率在当前房间触发随机骰子效果#{{Luck}} 幸运36: 100%",
            },{
                FiendFolio.ITEM.COLLECTIBLE.BRICK_FIGURE,
                "乐高小人",
                "挑一块积木",
                "生成{{Card"..FiendFolio.ITEM.CARD.BRICK_SEPERATOR.."}}乐高分离器和4个乐高钉扣#20%概率将硬币转化为钉扣"
            },{
                "Moonbeam",
                "月光",
                "吾将召唤月光于此",
                "在地面生成一个白色标记, 通过攻击键操控, 一段时间后降下月光造成伤害#!!! ?????",
            },{
                FiendFolio.ITEM.COLLECTIBLE.GOLDSHI_LUNCH,
                "黄金城便当",
                "生命上升, 快马加鞭!",
                "↑ +1{{Heart}}心之容器#↑ +0.1{{Speed}}移速#↑ +0.2{{Shotspeed}}弹速#↑ 在清理的房间内改为+0.85{{Speed}}移速并+0.4{{Shotspeed}}弹速"
            },{
                FiendFolio.ITEM.COLLECTIBLE.TWINKLE_OF_CONTAGION,
                "闪烁传染病",
                "针住机会",
                "进入房间时，敌人有概率闪烁#看向闪烁敌人一段时间后，闪烁会传递到角色身上#↑ 处于闪烁状态时，属性提升#一段时间后闪烁转移至其他敌人上"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DUSTY_D10,
                "落灰十面骰",
                "老东西你的效果最没用了",
                "重置房间内的所有敌人#重置出的敌人类型随机#更可能产生最大生命值接近原敌人的其他敌人",
                {VIR="2HP的魂火, 泪弹有10%的概率重随敌人"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.TOKEN_BAG,
                "筹码袋",
                "提供筹码",
                "每10个房间生成一个筹码, 复制你上一个捡到的基础掉落",
                {BFF="所需房间数-2"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.GREEN_ORANGE,
                "绿橘子",
                "愿君得到启蒙",
                "↑ +0.7{{Damage}}伤害#↑ +0.5{{Tears}}射速修正#{{SoulHeart}} 拾取后生成1魂心",
                {QUA=2},
                "我确实得到了启蒙: 邪魔典纸傻逼道具评级"
            },{
                FiendFolio.ITEM.COLLECTIBLE.REHEATED_PIZZA,
                "重新加热的披萨",
                "每日膳食",
                "↑ +1{{Heart}}心之容器#{{HealingRed}} 治疗1红心#每层开始时，生成一颗随机心掉落物",
            },{
                FiendFolio.ITEM.COLLECTIBLE.HEDONISTS_COOKBOOK,
                "享乐主义者食谱",
                "天上掉馅饼",--存疑
                "使用后, 使本房间内所有血量最低的非头目敌人爆炸并喷射一串白色泪弹(你最好只是泪弹)",
                nil,"抽烟: 价格昂贵, 味道难受, 有损健康#{{Blank}} {{ColorGray}}迪克: 免费, 好吃, 可能还有意外收获"
            },{
                FiendFolio.ITEM.COLLECTIBLE.ERRORS_CRAZY_SLOTS,
                "错误的疯狂赌博机",
                "为你的命运开赌",
                "!!! 一次性#在角色头上显示3位数字#再次使用, 锁定1位数字#3位数都锁定后获得ID等于该数字的道具#ID不存在则传送到错误房",
                nil,"说得好, 但我为什么不拿死亡证明呢?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.SPELLING_BEE,
                "拼字蜂",
                "专业拼写",
                "根据种子为角色提供加成或减益#如果种子内有字母来自属性单词(如DAMAGE), 加成这些属性#对基础掉落也有效#数字会造成小幅度全属性下降#{{HardMode}}困难模式(HARD)也会被检测到!"
            },{
                FiendFolio.ITEM.COLLECTIBLE.SCULPTED_PEPPER,
                "雕刻胡椒",
                "自恋之力",
                "使用后, 生成一个石块#攻击石块会将其雕刻#完全雕刻的石块会生成一个光环, 给予敌人状态效果, 并增强角色",
                {CONF={FiendFolio.ITEM.COLLECTIBLE.IMP_SODA,"ImpSculp"},
                QUA=2}
            },{
                FiendFolio.ITEM.COLLECTIBLE.TOO_MANY_OPTIONS,
                "太多选择",
                "选不过来了!",
                "特殊房间的房门在三个随机特殊房间房门类型中循环, 直到玩家开锁或进入"
            }
        }
        local trinkets={
            {
                TrinketType.TRINKET_SHARD_OF_CHINA,
                "瓷制鬼碎片",
                "把自己拼回去",
                "{{Heart}} 过量的治疗会为一个特殊的生命条充能#↑ {{Damage}} 填充此生命条会累积伤害上升, 每颗填充的心+0.5伤害修正#{{Collectible479}} 生命条完全填满后吞下该饰品, 伤害增幅变为永久#!!! 提前吞下可以立即获得最多的伤害增幅",
                {GOLD={INFO={findReplace=true},TEXT={"0.5","1","1.5"}},
                CONF={
                    {FiendFolio.ITEM.COLLECTIBLE.HEART_OF_CHINA,"Overridden","Override"},
                    {{671,413},"NoEffect"}
                }}
            },{
                TrinketType.TRINKET_BIFURCATED_STARS,
                "撕开的星辰",
                "速通头目, 收获奖励",
                "{{BossRoom}} 在地图上显示头目房#{{TreasureRoom}} 清理头目后, 出口变为通往宝箱房的门"
            },{
                TrinketType.TRINKET_FORTUNE_WORM,
                "幸运虫",
                "我宣布个事",
                "↑ {{Shotspeed}} +0.2弹速#↑ {{Luck}} +2运气#有概率发射幸运饼干泪弹, 造成105%伤害并在命中后显示一条预言#{{Luck}} 幸运18: 1/3",
                {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率翻倍"}}}
            },{
                TrinketType.TRINKET_FOOLS_GOLD,
                "愚人金",
                "概率获得更多金钱?",
                "诅咒硬币会在房间清理后出现, 并更容易替换普通硬币",
                {GOLD={INFO={append=true},TEXT={"替换清理房间战利品的概率上升","替换清理房间战利品的概率上升","替换清理房间战利品的概率上升"}}},
                "诺顿你这颗愚人金!"
            },{
                TrinketType.TRINKET_EXTRA_VESSEL,
                "额外容器",
                "生命上升",
                "{{Heart}} 储存一颗额外的红心(对无法获取心之容器的角色也有效, 除了{{Player14}})#{{DevilChance}} 不会掉恶魔房概率#!!! 提前吞下可以立即获得一个心之容器"
            },{
                TrinketType.TRINKET_HALF_VESSEL,
                "额外容器",
                "生命上升",
                "{{Heart}} 储存一颗额外的红心(对无法获取心之容器的角色也有效, 除了{{Player14}})#{{DevilChance}} 不会掉恶魔房概率#!!! 提前吞下可以立即获得一个心之容器"
            },{
                TrinketType.TRINKET_FULL_VESSEL,
                "额外容器",
                "生命上升",
                "{{Heart}} 储存一颗额外的红心(对无法获取心之容器的角色也有效, 除了{{Player14}})#{{DevilChance}} 不会掉恶魔房概率#!!! 提前吞下可以立即获得一个心之容器"
            },{
                TrinketType.TRINKET_CHILI_POWDER,
                "胡椒粉",
                "老干妈牌钥匙串",--存疑
                "!!! 将{{Key}}钥匙替换为烫手钥匙",
                {GOLD={INFO={append=true},TEXT={"更高级的烫手钥匙!","更高级的烫手钥匙!","更高级的烫手钥匙!"}}},
            },{
                TrinketType.TRINKET_GMO_PENNY,
                "转基因硬币",
                "财富即防腐",
                "{{Coin}} 拾取硬币时有概率吃下一颗{{Pill}}药丸#{{Luck}} 幸运452: 100%",
                {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率翻倍"}},
                CONF={654,"NoEffect"}},
                "不喜欢填数值你可以给概率至少写个上限"
            },{
                TrinketType.TRINKET_MOLTEN_PENNY,
                "熔化硬币",
                "财富即劳作",
                "{{Coin}} 拾取硬币时有概率{{Collectible479}}吞下持有的饰品#{{Luck}} 幸运196: 100%",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}},
                "不喜欢填数值你可以给概率至少写个上限"
            },{
                TrinketType.TRINKET_BLOODY_SANDPAPER,
                "沾血的砂纸",
                "寸止!",
                "角色不再有移动惯性",
                nil,"尸体在漂移?!"
            },{
                TrinketType.TRINKET_RIGHT_HAND,
                "右断手",
                "行正路者得善报",
                "{{Chest}}{{GoldenChest}} 箱子有1/3的概率变为永恒箱子",
                {GOLD={INFO={findReplace=true},TEXT={"3","2","2"}}},
                "你想给它找对象吗?"
            },{
                TrinketType.TRINKET_RED_RIBBON,
                "红缎带",
                "双倍的永恒",
                "{{EternalHeart}} 半永恒之心会变为满永恒之心",
                {GOLD={INFO={findReplace=true},TEXT={"满永恒之心","双满永恒之心","双满永恒之心"}}},
            },{
                TrinketType.TRINKET_FLEA_MELTDOWN,
                "熔毁之跳蚤",
                "我带来熔毁",
                "进入房间后生成一个熔毁跳蛛#{{Burning}} 该跳蛛会点燃怪物",
                {GOLD={INFO={findReplace=true},TEXT={"一个","两个","三个"}}},
                "我就观看, 看见一匹褐马, 骑在马上的手持一个仪器, 并有最可怕之武器赐给他, 他于是带来灰烬, 带来熔毁"
            },{
                TrinketType.TRINKET_FLEA_DELUGE,
                "洪灾之跳蚤",
                "我带来洪灾",
                "进入房间后生成一个青色的跳蛛#{{Shotspeed}} 该跳蛛会释放8向泪弹",
                {GOLD={INFO={findReplace=true},TEXT={"一个","两个","三个"}}},
                "就另有一匹马出来, 是红色的, 有钓钩赐给了那骑马的, 要从海中夺去生灵, 使自然向陆地索求更多, 他又接受了一座熔化的冰川"
            },{
                TrinketType.TRINKET_FLEA_POLLUTION,
                "污染之跳蚤",
                "我带来污染",
                "进入房间后生成一个紫色的跳蛛#{{Slow}} 该跳蛛会减速敌人",
                {GOLD={INFO={findReplace=true},TEXT={"一个","两个","三个"}}},
                [[看见一匹乌马, 骑在马上的, 手里拿着染黑的钢管; 我听见在四个活物中似乎有声音说:" 一个银币买一把扳手, 一个银币买三只皮鞋, 烟枪和蒸汽机也万万不可糟蹋!"]]--部分捏他自卓别林
            },{
                TrinketType.TRINKET_FLEA_PROPAGANDA,
                "传教之跳蚤",
                "我带来传教",
                "进入房间后生成一个米色的跳蛛#{{Charm}} 该跳蛛会魅惑敌人",
                {GOLD={INFO={findReplace=true},TEXT={"一个","两个","三个"}}},
                "我就观看, 看见一匹血马, 骑在马上的, 不知其姓名, 他那紧随的狂信徒自然会为其准备一串高大上的名号"
            },{
                TrinketType.TRINKET_FUZZY_PENNY,
                "绒毛硬币",
                "财富即毛绒",
                "{{Coin}} 拾取钱币时生成一个蓝跳蛛",
                {GOLD={INFO={findReplace=true},TEXT={"一个","两个","三个"}}},
            },{
                TrinketType.TRINKET_FORTUNE_GRUB,
                "幸运幼虫",
                "交互中的低语",
                "↑ {{Luck}} +1运气#所有乞丐和机器都会在回报时显示一条预言",
                {GOLD={INFO={findReplace=true},TEXT={"+1","+2","+3"}}},
            },{
                TrinketType.TRINKET_CHUNK_OF_TAR,
                "焦油块",
                "肮脏伙伴",
                "进入房间后生成3个友方的焦油滴(Blot)",
                {GOLD={INFO={findReplace=true},TEXT={"3个","5个","7个"}}},
            },{
                TrinketType.TRINKET_YIN_YANG_ORB,
                "阴阳玉",
                "追踪符纸",
                "{{Luck}} 有概率发射1.25倍伤害的{{ColorCyan}}追踪泪弹{{CR}}#{{Luck}} 幸运7: 63.33%",
                {GOLD={INFO={append=true},TEXT={"追踪泪弹伤害+0.5","追踪泪弹伤害+0.5","追踪泪弹伤害+1"}}},
            },{
                TrinketType.TRINKET_SWALLOWED_M90,
                "被吃下的M90",
                "砰!",
                "受伤时拿出巴雷特, 让你的下一发成为高弹速穿透3.5倍伤害的子弹(效果不叠加)#具有后坐力",
                {GOLD={INFO={findReplace=true},TEXT={"3.5","7","10.5"}},
                CONF={FiendFolio.ITEM.COLLECTIBLE.RUBBER_BULLETS,"RubberM90"}},
            },{
                TrinketType.TRINKET_TRINITY_WORM,
                "三位一体虫",
                "喔喔喔",
                "眼泪以三位一体的形状移动#↑ {{Tears}} +0.4射速#↑ {{Range}} +12.5射程#灵体泪弹",
                {GOLD={INFO={append=true},TEXT={"属性提升","属性提升","属性提升"}},
                CONF={{114,118,52},"NoEffect"}},
            },{
                TrinketType.TRINKET_JIGSAW_PUZZLE_BOX,
                "拼图谜题箱",
                "老是有一块找不到的",
                "下一层开始时生成一个拼图片, 仅限一次#提升拼图片的出现概率",
                {GOLD={INFO={append=true},TEXT={"效果翻倍","效果翻倍","效果翻倍"}}},
            },{
                TrinketType.TRINKET_IOU,
                "欠条",
                "晚点把这个饰品还你",
                "{{Trinket}} 提升在清理房间后或箱子中获得饰品的概率#{{Trinket}} 如果在游戏结束时持有, 下一局开始时生成一个随机饰品",
                {GOLD={INFO={append=true},TEXT={"概率上升#{{ColorGold}}获得的饰品也有概率变为金饰品{{CR}}","概率上升","概率上升#获得的饰品也有概率变为金饰品"}}},
            },{
                TrinketType.TRINKET_AUTOPSY_KIT,
                '尸检套装',
                "器官猎取",
                "被炸毁的店主不掉落{{Coin}}钱币, 改为掉落{{Heart}}心或{{EmptyBoneHeart}}骨心#被替换的钱币质量越高, 出现高级心的概率越高",
                {GOLD={INFO={append=true},TEXT={"更容易获得骨心","更容易获得骨心","更容易获得骨心"}}},
            },{
                FiendFolio.ITEM.TRINKET.SPIRE_GROWTH,
                "塔内增生组织",
                "力量尽在卡牌中",
                "↑ {{Damage}} 使用{{Card}}卡牌后获得一段时间的伤害上升#{{Card}} 卡牌上的数字越高, 伤害越高",
                {GOLD={INFO={append=true},TEXT={"效果翻倍","效果翻倍","效果翻倍"}}},
            },{
                FiendFolio.ITEM.TRINKET.FLEA_CIRCUS,
                "跳蚤马戏团",
                "寄生",
                "敌人被杀死时有20%的概率生成随机跳蛛",
                {GOLD={INFO={findReplace=true},TEXT={"20","40","60"}}},
            },{
                TrinketType.TRINKET_JEVILSTAIL,
                "小丑魔的尾巴",
                "我无所不能!",
                "每个房间触发随机特效#特效可能针对敌人, 也可能针对自己",
                {GOLD={INFO={append=true},TEXT={"一个额外的效果?!","一个额外的效果?!","一个额外的效果?!"}}},
                "我他妈没长尾巴!!"
            },{
                TrinketType.TRINKET_DEALMAKERS,
                "成交神器",
                "特别交易",
                "{{Coin}} 随机商品货物价格#{{Coin}} 一些商品的价格将不断变化#{{DevilRoom}} 可影响恶魔交易#!!! 丢弃该饰品无法重置随机的商品价格",
                {GOLD={INFO={append=true},TEXT={"价格变化的概率上升, 速度变快","价格变化的概率上升, 速度变快","价格变化的概率上升, 速度变快"}}},
                "我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别#{{Blank}} {{ColorGray}}我会变的特别",
            },{
                TrinketType.TRINKET_SOLEMN_VOW,
                "神圣誓言",
                "请勿伤害",
                "{{Collectible403}} 玩家可以看到敌人血量",
            },{
                FiendFolio.TRINKETS.MASSIVE_AMETHYST,
                "大型紫水晶",
                "晶体化的店主",
                "{{SecretRoom}} 隐藏房中的店主被替换为大块符文#炸毁大块符文会使其掉落:# - 最多三个{{Card55}}符文碎片# - 最多两个{{Rune}}符文",
                {GOLD={INFO={findReplace=true},TEXT={"三","四","五"}},
                CONF={TrinketType.TRINKET_AUTOPSY_KIT,"NoEffect"}},
            },{
                FiendFolio.ITEM.TRINKET.LOST_FLOWER_CROWN, 
                "丢失的花环",
                "遗失的记忆",
                "{{Collectible638}} 每层一次, 擦除一个随机敌人"
            },{
                FiendFolio.ITEM.TRINKET.SHARP_PENNY,
                "锋利硬币",
                "财富即痛苦",
                "{{Coin}} 拾起硬币时有几率触发受伤时效果"
            },{
                FiendFolio.ITEM.TRINKET.ANGRY_FAIC,
                "气歪的脸",
                "更硬的头目",
                "{{BossRoom}} 头目和小头目拥有更多血量, 但也会掉落更多{{Heart}}心",
                {GOLD={INFO={append=true},TEXT={"效果增强","效果增强","效果增强"}},
                CONF={697,"AngryTwin"}},
                "以防你没见过Flash版本的头目血条icon"
            },{
                TrinketType.TRINKET_ETERNAL_CAR_BATTERY,
                "永恒车载电池",
                "???",
                "主动道具会触发4-6次, 但使用后有1/2的概率消失",
                {CONF={
                    {356,"Stackable"},
                    {282,"ECarJump"},
                    {127,"EcarForMeN"},
                    {638,"EcarErase"},
                    {{577,703,622,483,515,FiendFolio.ITEM.COLLECTIBLE.EMPTY_BOOK,FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12,FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12_ALT,FiendFolio.ITEM.COLLECTIBLE.DUSTY_D10},"NoEffect"}
                }}
            },{
                FiendFolio.ITEM.TRINKET.POCKET_DICE,
                "袖珍骰子",
                "层层爆骰, 好运连连",
                "每层开始时掉落2个随机玻璃骰子和一个{{Coin}}钱币"
            },{
                FiendFolio.ITEM.TRINKET.LOCKED_SHACKLE,
                "上锁的镣铐",
                "全属性上升, 但找不到钥匙了",
                "↑ 全属性上升#无法丢弃#{{Key}} 拾取钥匙时有25%的几率摧毁该饰品, 并使用一把钥匙",
                {GOLD={INFO={append=true},TEXT={"属性增幅翻倍, 销毁饰品的概率翻倍","属性增幅翻倍, 销毁饰品的概率翻倍","属性增幅翻倍, 销毁饰品的概率翻倍"}},
                CONF={
                    {"5.350.19","LockPickKing"},
                    {"5.350.150","BlueLock"},
                    {"5.350.170","CrystLock"},
                    {"5.350.159","GildLock"},
                    {"5.350.36","RustLock"},
                    {"5.350.83","StoreLoc"},
                    {"5.350.175","StrangeLock"},
                    {"5.350."..FiendFolio.ITEM.TRINKET.WACKEY,"WackLock"}
                }},
            },{
                TrinketType.TRINKET_PETRIFIED_GEL,
                "硬化凝胶",
                "尝起来很幸运?",
                "大便有几率被替换为洗发水大便#洗发水大便拥有更好的掉落",
                {GOLD={INFO={append=true},TEXT={"效果增强","效果增强","效果增强"}},
                CONF={36,"Shampoo"}}
            },{
                FiendFolio.ITEM.TRINKET.HATRED,
                "怨念",
                "双击发射聚散恶念",
                "模仿角色移动和攻击的跟班(35%伤害)#{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.MALICE.."}} 可以通过双击像穿透子弹一样冲刺#击中障碍物后, 需要几秒钟的时间回到角色身边#按下丢弃键后会保持在原地",
                {BFF="伤害翻倍",
                GOLD={INFO={findReplace=true},TEXT={"模仿角色移动和攻击的跟班","两个模仿角色移动和攻击的跟班","三个模仿角色移动和攻击的跟班"}},
                CONF={{"5.350.141","5.350.127"},"NoEffect"}}
            },{
                FiendFolio.ITEM.TRINKET.FROG_PUPPET,
                "青蛙手偶",
                "另一面更绿",
                "!!! 一次性#{{Player"..FiendFolio.PLAYER.SLIPPY.."}} 受到致命伤害后复活为脚滑蛙",
                {GOLD={INFO={append=true},TEXT={"生效后失去镀金效果而非该饰品","有概率被替换为破烂的青蛙手偶而非失去该饰品","生效后失去镀金效果而非该饰品"}}},
            },{
                FiendFolio.ITEM.TRINKET.TATTERED_FROG_PUPPET,
                "破烂的青蛙手偶",
                "你对它来兴绿了",
                "!!! 一次性#{{Player"..FiendFolio.PLAYER.SLIPPY.."}} 受到致命伤害后复活为脚滑蛙",
            },{
                FiendFolio.ITEM.TRINKET.WACKEY,
                "奇匙",
                "更奇特的钥匙掉落",
                "{{Key}} 钥匙掉落物有等量的概率变为任意一种钥匙类型",
                {GOLD={INFO={append=true},TEXT={"不会变成普通钥匙和烫手钥匙","不会变成普通钥匙和烫手钥匙","不会变成普通钥匙, 烫手钥匙及其变种"}}},
            },{
                FiendFolio.ITEM.TRINKET.HEARTACHE,
                "心痛",
                "内在的伤痛",
                "{{BrokenHeart}} 所有受到的伤害改为增加一颗碎心",
                {GOLD={INFO={findReplace=true},TEXT={"一颗","两颗","三颗"}},--????????????
                CHAR={10,"LostAche",true}}
            },{
                FiendFolio.ITEM.TRINKET.REDHAND,
                "抓取者的敌人",
                "抓到你啦!",
                "在房间内穿行的抓取者跟班, 会抓取角色, 掉落物和敌人",
                {BFF="对抓取的敌人造成伤害翻倍",
                GOLD={INFO={findReplace=true},TEXT={"在房间内穿行的抓取者跟班","两个在房间内穿行的抓取者跟班","三个在房间内穿行的抓取者跟班"}}}
            },{
                FiendFolio.ITEM.TRINKET.MIDDLE_HAND,
                "中断手",
                "行惧路者得中指",
                "{{Chest}}{{GoldenChest}}箱子有高概率被替换为恐怖箱子",
                {GOLD={INFO={findReplace=true},TEXT={"有高概率","必定","必定"}}}
            },{
                FiendFolio.ITEM.TRINKET.RAINBOW_BEAN,
                "彩虹豆",
                "亲密的屁",
                "站在敌人旁边时有几率放屁#{{Luck}} 幸运48: 100%",
                {GOLD={INFO={findReplace=true},TEXT={"站在敌人旁边","靠近敌人","靠近敌人"}}}
            }
        }
        local cards={}
        local pill={}
        local other={}
        local conditionalList={
            blank="{{Blank}}",
            Stackable="可叠加",

            MultiPyro="最多可拥有更多的火球",
            MultiRandy="多个蜗牛兰迪之间也可以互相碰撞",
            MultiRib="发射更多肋骨",
            MultiBee="+1额外发射的泪弹, 总上限为8",
            MultiNyx="额外获得3个跟踪宝石",

            AltarPyro="火球无法被献祭",
            BaggyCorn="强制使用10枚随机药丸",
            HumbleingCool="损失6枚硬币, 洒落3个双硬币",
            SackGlass="洒落的硬币可能被替换为福袋",
            CopyRisk="只有条件符合时才能正确触发效果",
            NuggetSyn="狙击蝇跟班可以获得对应炸弹特效的泪弹特效",
            KnifeBee="朝数个固定的方向额外投掷飞到",
            BeeTears="仍旧发射泪弹",
            DrBee="投掷的炸弹有1/7的概率额外投掷炸弹",
            NoEffect="无兼容",
            LudoBee="无兼容, 除非控制悬浮激光环",
            BeeofVoid="释放血激光环时, 发射一大串长时间环绕的大号骨头泪弹",
            ReimuRei="更容易发射跟踪泪弹",
            SirenCreep="连续发射的泪弹数量翻倍",
            BiendRevive="仅复活",
            Delux1="回满生命",
            Delux2="伤害+0.3",
            Delux3="+1心之容器",
            Delux4="射速延迟-10%, 可突破射速上限",
            Delux5="概率上升",
            DrMusca="抛掷的炸弹只能生成1个蝗虫, 上限为5个",
            Spin2WinDMGing="允许蛋跟班造成碰撞伤害",
            Excelstone="烟花爆炸时释放十字硫磺火",
            Excelbone="烟花爆炸时有概率生成{{Collectible683}}骨片",
            Techselsior="烟花爆炸时在落点与角色位置连接激光",
            Xcelsior="烟花爆炸时生成小型激光环",
            Triselsior="烟花爆炸时释放8向光束弹, 不兼容泪弹特效",
            ExcelM="烟花数量视作使用一次性主动",
            PoisNyx="宝石命中后生成毒云",
            KnockNyx="宝石命中后释放冲击波击退范围敌人",
            ShieldNyx="发射宝石时生成护盾反弹敌弹",
            WaterNyx="宝石命中后对附近敌人造成20%溅射伤害",
            DoomNyx="宝石命中后11%的概率施加毁灭范围圈, 对范围内的敌人叠加毁灭效果",
            TechNyx="宝石会有激光连接",
            CritNyx="宝石命中后10%的概率造成暴击",
            FastCherry="缩减冷却, 可与9伏特叠加",
            LireLess="无法兼容多发和黄色曲调的攻击延迟",
            NoBR="无法兼容多发",
            AltarBag="脆弱波比会变为硬币",
            YickBug="{{ColorError}}无论谁使用, 只有雅阁会得到病态之心, 疑似是漏洞",
            KeeperAsh="不会增加碎心",
            ImpSculp="邪祟魔雕像的光环还会增加发射暴击泪弹的概率",
            RubberM90="发射的子弹必定施加易伤",
            AngryTwin="对新生成的头目无效#!!! 先杀死新生成的头目以保证能正确获得更多心掉落物!",
            ECarJump="装逼我让你飞起来",
            EcarForMeN="回到一层重新开始",
            EcarErase="在丢出前就擦除房间内的所有敌人(不消耗充能, 但是举起和放下均可能会判定消失!)",
            LockPickKing="可以取下上锁的镣铐",
            BlueLock="立即销毁上锁的镣铐, 保留全属性提升并将其减半#魅惑蓝房间内的所有蓝色敌人",
            CrystLock="立即销毁上锁的镣铐, 保留全属性提升并将其减半#立即打开当前房间和接下来两个房间的所有相邻红房间",
            GildLock="立即销毁上锁的镣铐, 保留全属性提升并将其减半#立即生成2个{{GoldenChest}}金箱子",
            RustLock="立即销毁上锁的镣铐, 保留全属性提升并将其翻倍",
            StoreLoc="立即销毁上锁的镣铐, 保留全属性提升并将其减半#生成5美分",
            StrangeLock="立即销毁上锁的镣铐, 保留全属性提升并将其减半#触发潘多拉魔盒的效果",
            WackLock="立即销毁上锁的镣铐, 保留全属性提升并将其翻1.3倍#生成3个随机钥匙",
            Shampoo="30%的概率生成洗发水大便",
            LostAche="增加3碎心, 意味着游魂允许受到3次伤害并存活"
        }
        mod:AddToConditionalList(conditionalList)
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#{{Player"..FiendFolio.PLAYER.FIEND.."}} 所属mod: 邪魔典纸", item[5])
            if ExpInD then ExpInD:AppendToExpInD("items",item[1],{zh_cn=item[6]}) end
        end
        for _, item in ipairs(trinkets) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#{{Player"..FiendFolio.PLAYER.FIEND.."}} 所属mod: 邪魔典纸", item[5])
            if ExpInD then ExpInD:AppendToExpInD("trinkets",item[1],{zh_cn=item[6]}) end
        end
        for _, item in ipairs(cards) do
            mod:AddTranslate(300, item[1], item[2], item[3], item[4].."#{{Player"..FiendFolio.PLAYER.FIEND.."}} 所属mod: 邪魔典纸", item[5])
        end
        for _, item in ipairs(pill) do
            mod:AddTranslate(70,item[1],item[2],"empty",item[3].."#{{Player"..FiendFolio.PLAYER.FIEND.."}} 所属mod: 邪魔典纸",item[4])
        end
        for _, item in ipairs(other) do
            mod:AddEntityTransl(item[1],item[2],item[3],item[4],item[5])
        end
        EID:addCharacterInfo(FiendFolio.PLAYER.FIEND,"{{BlackHeart}} 无法获得生命上限, 取而代之的是黑心#{{ffImmoralHeart}} 只能遇见邪念之心和黑心#{{ffImmoralHeart}} 受到伤害时, 所有相连的邪心和黑心都会化作{{ColorPurple}}邪鬼{{CR}}追杀敌人, 在清理房间后变回心掉落物#{{Collectible463}} {{ColorFade}}启用Imp Baby Mode后, 失去上述效果, 获得硫酸泪弹#{{Burning}} 造成一定伤害后产生环绕在角色身边的{{ColorOrange}}火球{{CR}}#双击射击键发射{{ColorOrange}}火球{{CR}}#{{Burning}} {{ColorOrange}}火球{{CR}}飞出后留下火焰, 接触到敌人后爆炸#{{ffImmoralHeart}} 被{{ColorOrange}}火球{{CR}}杀死的敌人有概率掉落快速消失的半邪心","邪祟魔","zh_cn")
        EID:addBirthright(FiendFolio.PLAYER.FIEND,"火球获得{{ColorPink}}跟踪{{CR}}, 且爆炸后有几率生成空心邪鬼","邪祟魔-魔系火球术","zh_cn")
        EID:addCharacterInfo(FiendFolio.PLAYER.BIEND,"{{BlackHeart}} 无法获得生命上限, 取而代之的是黑心#!!! 生命上限最大值为6#{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.MALICE.."}} 恶念聚散冲刺杀死敌人时有概率掉落{{HalfBlackHeart}}半黑心#恶念聚散命中墙体后会分散为数个{{ColorYellow}}可操控{{CR}}邪鬼","邪祟魔-卑劣者","zh_cn")
        EID:addBirthright(FiendFolio.PLAYER.BIEND,"{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.MALICE.."}} 增加使用恶念聚散的冲刺攻击杀敌掉落{{HalfBlackHeart}}半黑心的概率#邪鬼在生成时随机分配装扮, 每一个都给予其穿戴者不同的{{Damage}}伤害、{{Tears}}射速、{{Luck}}运气和{{Tearsize}}泪弹体积变化","邪祟魔-恶毒疗法+个性上升")
        EID:addCharacterInfo(FiendFolio.PLAYER.GOLEM,"双持饰品#专属的石头饰品机制!#首次进入{{SecretRoom}}隐藏房或击败{{BossRoom}}头目都会获得一个石头饰品#每层都会有一个石器枢纽连接各个特殊房间和初始房间, 其中包含各种可以加工石头饰品的可交互实体","石像鬼","zh_cn")
        EID:addBirthright(FiendFolio.PLAYER.GOLEM,"↑ {{Luck}} +2运气#{{Trinket}} 标记石头改为掉落石头饰品而非{{SoulHeart}}魂心","石像鬼-坚如标记石头+幸运上升")
        EID:addCharacterInfo(FiendFolio.PLAYER.SLIPPY,"发射三重泪弹#!!! 无法停止移动","脚滑蛙","zh_cn")
        EID:addBirthright(FiendFolio.PLAYER.SLIPPY,"{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD.."}} 金蛙首放屁后留下滞留毒雾","脚滑蛙-刺鼻气体","zh_cn")
        EID:addCharacterInfo(FiendFolio.PLAYER.CHINA,"{{BrokenHeart}} 碰到墙体或障碍物将会受到伤害!#清理房间有概率获得强力胶棒","瓷制鬼","zh_cn")
        EID:addBirthright(FiendFolio.PLAYER.CHINA,"{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.HORSE_PASTE.."}} 获得副手道具强力胶","瓷制鬼-强力胶")
        if ddad then local PDDsyn={
            {FiendFolio.ITEM.COLLECTIBLE.LEFTOVER_TAKEOUT,ddad.item.CpTw.id},
            {FiendFolio.ITEM.COLLECTIBLE.DICE_BAG,FiendFolio.ITEM.COLLECTIBLE.DICE_GOBLIN},
            {ddad.item.Albe.id,FiendFolio.ITEM.COLLECTIBLE.KING_WORM},
            {FiendFolio.ITEM.COLLECTIBLE.DAZZLING_SLOT,177},
            {74,FiendFolio.ITEM.COLLECTIBLE.X10KACHING},
            {FiendFolio.ITEM.COLLECTIBLE.X10CHOMPCHOMP,FiendFolio.ITEM.COLLECTIBLE.GLIZZY},
            {17,FiendFolio.ITEM.COLLECTIBLE.X10BATOOMKLING},
            {FiendFolio.ITEM.COLLECTIBLE.LIL_MINX,FiendFolio.ITEM.COLLECTIBLE.CLUTCHS_CURSE},
            {557,FiendFolio.ITEM.COLLECTIBLE.TORTURE_COOKIE},
            {FiendFolio.ITEM.COLLECTIBLE.TOKEN_BAG,94},
            {FiendFolio.ITEM.COLLECTIBLE.ERRORS_CRAZY_SLOTS,FiendFolio.ITEM.COLLECTIBLE.CRAZY_JACKPOT}
        }
        for _,i in ipairs(PDDsyn) do table.insert(mod.PddSynList,i) end end
        local Dflipsyn={
            {5,100,FiendFolio.ITEM.COLLECTIBLE.GRAPPLING_HOOK,5,100,FiendFolio.ITEM.COLLECTIBLE.OPHIUCHUS},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.FIEND_HEART,5,100,15},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.DADS_POSTICHE,5,100,217},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.GRIDDLED_CORN,5,100,354},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.TOY_CAMERA,5,100,Isaac.GetItemIdByName("Tengu Camera")},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.SNOW_GLOBE,5,100,Isaac.GetItemIdByName("Keystone")},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.DICE_BAG,5,100,FiendFolio.ITEM.COLLECTIBLE.DICE_GOBLIN},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.DAZZLING_SLOT,5,100,177},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.X10CHOMPCHOMP,5,100,FiendFolio.ITEM.COLLECTIBLE.GLIZZY},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.HORNCOB,5,100,FiendFolio.ITEM.COLLECTIBLE.GMO_CORN},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.NIL_PASTA,5,100,Isaac.GetItemIdByName("Byte String")},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.LIL_MINX,5,100,FiendFolio.ITEM.COLLECTIBLE.CLUTCHS_CURSE},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.DEVILS_HARVEST,5,100,FiendFolio.ITEM.COLLECTIBLE.FETAL_FIEND},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.SHREDDER,5,100,Isaac.GetItemIdByName("Portable Copier")},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.ISAAC_DOT_CHR,5,100,FiendFolio.ITEM.COLLECTIBLE.ISAACD_EULOGY},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.ERRORS_CRAZY_SLOTS,5,100,FiendFolio.ITEM.COLLECTIBLE.CRAZY_JACKPOT},
            {5,350,TrinketType.TRINKET_EXTRA_VESSEL,5,350,TrinketType.TRINKET_FULL_VESSEL},
            {5,350,TrinketType.TRINKET_RIGHT_HAND,5,350,61},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.DICHROMATIC_BUTTERFLY,5,350,TrinketType.TRINKET_YIN_YANG_ORB},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.RUBBER_BULLETS,5,350,TrinketType.TRINKET_SWALLOWED_M90},
            {5,350,TrinketType.TRINKET_FORTUNE_GRUB,5,350,TrinketType.TRINKET_FORTUNE_WORM},
            {5,350,TrinketType.TRINKET_JIGSAW_PUZZLE_BOX,5,100,FiendFolio.ITEM.COLLECTIBLE.BOX_TOP},
            {5,100,FiendFolio.ITEM.COLLECTIBLE.MALICE,5,350,FiendFolio.ITEM.TRINKET.HATRED}
        }
        for _,i in ipairs(Dflipsyn) do table.insert(mod.DflipSynList,i) end
        if Options.Language=="zh" then FiendFolio.JevilText = {
            {Main = "什么啊!",Sub = "只不过是效果音而已!"},
            {Main = "你的敌人放松了意志",Sub = "它们的防御下降了!"},
            {Main = "这下惨了!",Sub = "敌人的攻击变得更疼!"},
            {Main = "一片寂静!",Sub = "舞步保护着你!"},
            {Main = "什么啊!",Sub = "只不过是个没用的苍蝇!"},
            {Main = "温暖!",Sub = "你感到有些舒适!"},
            {Main = "天旋地转!",Sub = "所有人的HP被重新分配了!...但是只有一个人?"},
            {Main = "小心了!",Sub = "敌人的攻击威力提升!"},
            {Main = "邪魔典纸送喜!",Sub = "完美的十分!"},
        } end        
    end
end)
