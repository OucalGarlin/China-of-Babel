local mod = CNEIDBabel
function modname()
    local text="邪魔典纸 (Fiend Folio)"
    text=text.."\n     * 更好的道具品质 加工中"
    if  mod.Setting.FancySyn then text=text.."\n     * 自定义道具兼容 已生效" end
    return text.."\n     * 我想要做的, 前人们都做过了\n     * 前人们做的, 某个人都偷走了"
end
mod:AddModTranslationLoader("FiendFolio",modname(),function()
    if FiendFolio then
        function RockTrinket(val1,val2)
            Type={[1]="{{CR}}石头饰品",[2]="{{ColorRed}}晶洞饰品, 可以在持有其他晶洞时获得如下增益{{CR}}#",[3]="{{ColorYellow}}化石饰品, 具有各异的粉碎效果{{CR}}#{{ffCrush}} {{ColorOrange}}粉碎后{{CR}}:#"}
            Quality={[1]="{{ColorFade}}不可自然生成的{{CR}}",[2]="常见的",[3]="{{ColorBlue}}稀有的",[4]="{{ColorTransform}}魔见魔爱的",[5]="{{ColorGold}}你自以为这个稀有度肯定会有好货的",[6]="{{ColorRed}}特别稀有的"}
            return "#"..Quality[val1]..Type[val2]
        end
        local MULT_P3="5.350."..FiendFolio.ITEM.ROCK.HENGE_ROCK
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
                {CAR="投掷2个二面骰",
                ACR="可投掷的重随硬币的泪弹"},
                "轮滚慢慢"
            },{
                FiendFolio.ITEM.COLLECTIBLE.STORE_WHISTLE,
                "商店召唤哨",
                "便携式开店",
                "{{Shop}} 在角色附近生成商店箱子",
                {ABY="灰色蝗虫, 有小概率生成随机交易",
                ACR="生成商店箱子",
                QUA=2},--区区高配店长盒
                "{{CR}}{{Key}} 童叟! {{Bomb}}#{{Blank}} 99c 无欺! 70c"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DICE_BAG,
                "玻璃骰子袋",
                "给予骰子",
                "每清理8个房间掉落玻璃骰子#玻璃骰子可以视作一次性的骰子主动道具#玻璃四面骰和玻璃一百面骰无法重随该道具",
                {BFF="清理4个房间掉落玻璃骰子",
                ACR="清理房间提供副手骰子物品"},
            },{
                FiendFolio.ITEM.COLLECTIBLE.LIL_FIEND,
                "邪祟魔宝宝",
                "你的专属孽种",
                "沿房间对角线飞行的跟班#接触到敌人或敌弹时有概率生成{{ColorFade}}空心邪鬼{{CR}}追击敌人",
                {BFF="增加判定体积和生成空心邪鬼的概率",
                ACR="斜向飞行跟班, 可生成小弟攻击"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BABY_CRATER,
                "弹坑脸宝宝",
                "螺旋射手",
                "角色射击时发射并积蓄泪弹, 构筑一道泪弹环#角色停止射击时螺旋状释放所有泪弹",
                {BFF="伤害翻倍",
                ACR="积蓄螺旋泪弹的跟班"}
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
                ACR="可踢飞的蜗牛跟班",
                CONF={{357,FiendFolio.ITEM.COLLECTIBLE.RANDY_THE_SNAI},"MultiRandy"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.CORN_KERNEL,
                "玉米粒",
                "草翻所有玉米吧! ",--????
                "等级1: 波浪形旋转的环绕物#等级2: 抛射爆炸玉米粒的环绕物(爆炸范围和伤害较小, 不会伤害角色)#等级3: 传送并追逐敌人的跟班#等级4: 传送并向敌人抛射爆炸玉米粒的跟班",
                {BFF="碰撞伤害翻倍",
                ACR="收集更多玉米粒以强化的跟班",
                ABY="玉米外观的蝗虫"},
                "你解锁了 操蛋模式 !"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GMO_CORN,
                "转基因玉米",
                "恶魔洗礼",
                "{{Pill}} 拾取后固定在原地并强制使用7枚随机药丸#↑ {{Heart}} +1心之容器#↑ {{Damage}} +1伤害",
                {CONF={252,"BaggyCorn","blank"},
                ACR="生命上升 + 伤害上升 + 强制服药"},
                "Telepills!#{{Blank}} {{ColorGray}}I AM ERROR"
            },{
                FiendFolio.ITEM.COLLECTIBLE.COOL_SUNGLASSES,
                "炫酷太阳镜",
                "淘金热",
                "{{Coin}} +6硬币#↑ {{Speed}} 靠近硬币时获得移速提升#↑ 拾取硬币对本房间所有敌人造成伤害#!!! 进入未清理的房间时损失3枚硬币, 损失的硬币将撒落在房间的任意位置",
                {ACR="靠近钱加速 + 捡钱全屏伤害 + 随时掉钱",
                CONF={
                    {203,"HumbleingCool"},
                    {424,"SackGlass"}
                },MOD={GOLD=true}},"饥肠辘辘的感恩节, 我们仍有值得感恩的事物: 煮皮鞋!"
            },{
                FiendFolio.ITEM.COLLECTIBLE.FIENDS_HORN,
                "邪祟魔的角",
                "每个人的心中都存在的邪念",
                "敌人死后有5%的概率生成{{ColorFade}}空心邪鬼{{CR}}追击敌人#{{Luck}} 幸运14: 20%#{{ffImmoralHeart}} 持有邪念之心时额外增加概率",
                {ACR="杀敌概率生成小弟"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.RISKS_REWARD,
                "虎穴挑战",
                "超能力重随术! 品质上升",
                "{{TreasureRoom}} 只能在宝箱房内获得充能#使用后, 摧毁房间内的道具底座, 打开一道特殊传送门, 进入后传送到特殊空间#击败该空间的特殊头目“幽隐魔鬼”获得一个道具品质更高的道具",
                {ABY="心灵妖魔外观的蝗虫",
                CAR="无效果",
                CONF={{477,"5.300.48"},"CopyRisk"},
                ACR="宝箱房重随, 但是你想要得自己去打"},
                "如果你想要, 就自己过来拿, 这规矩你知道的(大排档塑料椅)"
            },{
                FiendFolio.ITEM.COLLECTIBLE.SPARE_RIBS,
                "肋排骨",
                "物归原主",
                "↑ {{EmptyBoneHeart}} +1骨心#受伤后, 如果场上没有肋骨则发射肋骨#肋骨绕角色圆周运动#运动一段时间后回到角色身上#可消除敌弹#!!! 肋骨只在回归到角色时消失, 若还未归于角色将一直存在并持续追逐角色",
                {CONF={FiendFolio.ITEM.COLLECTIBLE.SPARE_RIBS,"MultiRib"},
                ACR="受伤释放螺旋肋骨弹",
                QUA=1}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BACON_GREASE,
                "培根油脂",
                "空卡路里",
                "↑ {{EmptyHeart}} +1空心之容器#↑ {{Shotspeed}} +0.15弹速#!!! {{Heart}} 清空1格红心(不致死)",
                {ABY="20%移动速度的棕色大号蝗虫",
                ACR="+1空心之容器, 红心下降"},
                "那我缺的营养这块谁给我补啊"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DEVILS_UMBRELLA,--这真的不是套吗
                "恶魔之伞",
                "难以清理",
                "{{HalfSoulHeart}} 获得半魂心#攻击时偶尔喷射一连串低伤害黄色泪弹, 落地后留下一滩黄色水迹",
                {ABY="留下黄色液体的粉色蝗虫",
                ACR="偶尔溅射尿弹"},
                "这难道他妈的不是套吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.NUGGET_BOMBS,
                "粪块炸弹",
                "寄生伙伴 + 5个炸弹",
                "{{Bomb}} +5炸弹#{{Collectible504}} 炸弹爆炸后原地生成狙击蝇跟班",
                {BFF="仅视觉效果",
                ACR="炸弹爆炸生成狙击蝇 + 5个炸弹",
                CONF={{140,256,367,220,209,432,125,366,517,646},"NuggetSyn"}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BEE_SKIN,
                "蜂皮",
                "嗡嗡嗡",
                "射击时, 额外发射3颗伤害较低的泪弹#额外泪弹从3个等距分散开的角度发射#每发射1颗泪弹, 3颗额外泪弹的发射角度顺时针旋转",
                {ABY="蜜蜂外观的蝗虫, 飞行时迅速旋转发射小型泪弹",
                ACR="额外发射三向泪弹",
                QUA=2,
                CHAR={16,"NoEffect",true},
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
                {ABY="阿尔法币外观的蝗虫",
                ACR="在不同情况下触发不同效果"},
                "I'M WITH YOU#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY#{{Blank}} {{ColorGray}}EVERY STEP OF THE WAY"
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
                "{{Trinket}} 拾起时, 生成一个石头饰品#{{Trinket}} 使用后, 将目前持有的饰品研磨成石头饰品",
                {VIR="生成发射石头的石块魂火, 伤害同{{Collectible592}}地球一般上下浮动",
                ACR="将持有的饰品变成石头饰品",
                MOD={STONE=true},
                QUA=2}
            },{
                FiendFolio.ITEM.COLLECTIBLE.PINHEAD,
                "缝线头",
                "缝纫泪弹",
                "有概率发射穿透的缝纫针#{{ffSew}} 被缝纫针泪弹击中的敌人获得缝线状态#{{ffSew}} 攻击1个带有缝线状态的敌人会对所有带有该状态的敌人造成伤害#{{Luck}} 幸运6: 100%",
                {ABY="有概率施加缝线状态的蝗虫",
                ACR="概率发射铁索连环泪弹"},
                "并非玩5致"
            },{
                FiendFolio.ITEM.COLLECTIBLE.LIL_LAMB,
                "羔羊宝宝",
                "假装很喜欢你",
                "{{Collectible149}} 蓄力抛射爆破泪弹的跟班#角色受伤后有概率落地并自动追逐敌人",
                {BFF="伤害翻倍",
                QUA=2,
                ACR="蓄力爆破泪弹, 受伤后概率分\"头\"行动"},
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
                ACR="镜像行动跟班, 伸手抓住敌人",
                ABY="抓取者外观的蝗虫"},
                "以防你没听说过这个捏他源, 邪魔典纸把捏他的游戏塞在模组文件夹里面了"
            },{
                FiendFolio.ITEM.COLLECTIBLE.IMP_SODA,
                "小鬼苏打",
                "暴击泪弹",
                "有概率发射造成5倍伤害的{{ColorPink}}暴击泪弹{{CR}}#{{Luck}} 幸运11: 33%",
                {ACR="概率发射暴击泪弹"},
                "打击感这一块"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DADS_WALLET,
                "爸爸的钱包",
                "伤害欠款",
                "{{Card43}} 拾取后, 生成信用卡#允许欠债购买商店货品↓ {{Damage}} 欠债减少攻击倍率",
                {ACR="欠债式消费, 但是伤害下降"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.BEGINNERS_LUCK,
                "新手保护",
                "随时间贬值",
                "↑ {{Luck}} +5幸运增幅#↓ {{Luck}} 进入下一层后失去0.5幸运增幅, 至少+0.5",
                {ACR="幸运上升, 随时间贬值",
                QUA=0},
            },{
                FiendFolio.ITEM.COLLECTIBLE.DICHROMATIC_BUTTERFLY,
                "二色莲花蝶",
                "判定点变小 + 擦弹奖励 + 追踪符纸",
                "角色显示判定点#{{Collectible598}} 判定体积-80%#↑ {{Damage}} 在当前房间内擦弹+0.2伤害, 至多+3#{{Luck}} 有概率发射1.25倍伤害的{{ColorCyan}}追踪泪弹{{CR}}#{{Luck}} 幸运7: 63.33%",
                {ACR="判定点变小 + 擦弹获得暂时性伤害上升 + 概率发射追踪泪弹",
                CONF={"5.350."..TrinketType.TRINKET_YIN_YANG_ORB,"ReimuRei"},
                MOD={FEM=true}},
                "只要没打到判定点就能活.png"
            },{
                FiendFolio.ITEM.COLLECTIBLE.SLIPPYS_GUTS,
                "脚滑蛙的内脏",
                "保持距离",
                "{{Collectible447}} 敌人死后有概率产生毒云, 概率与敌人的最大生命值成比例#{{Bomb}} 炸弹爆炸后留下毒云",
                {ACR="杀敌生成毒云"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SLIPPYS_HEART,
                "脚滑蛙的心脏",
                "保持亲密",
                "靠近敌人有概率放随机屁, 概率基于运气",
                {ACR="靠近敌人概率放屁",
                QUA=0}
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
                ACR="获得魂心 + 伤害上升 + 进入房间暂时冻结",
                QUA=3,MOD={ICE=true}},
                "这是幻想乡第一大杀手, 你敢和她对视9s并拿下9个琪露诺奶吗?"
            },{
                FiendFolio.ITEM.COLLECTIBLE.GOLEMS_ORB,
                "石像鬼的宝珠",
                "失物找回...",
                "{{SoulHeart}} 获得2魂心#↑ {{Speed}} 移速+0.2#{{Shotspeed}} 弹速+0.23#{{Luck}} 幸运+1",
                {ABY="青蓝色大型蝗虫, 具有2倍移速",
                ACR="获得魂心, 移速 + 弹速 + 幸运上升",
                QUA=2,MOD={STONE=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.LEFTOVER_TAKEOUT,
                "隔夜外卖",
                "全属性上升 + 预言上升",
                "↑ {{Speed}} +0.3移速#↑ {{Tears}} +10%射速倍率#↑ {{Damage}} +50%伤害倍率#↑ {{Range}} +1.5射程#↑ {{Luck}} +1幸运#有概率发射{{Trinket"..FiendFolio.ITEM.TRINKET.FORTUNE_WORM.."}}幸运虫泪弹#{{Luck}} 幸运2: 33%",
                {ABY="幸运饼干外观的蝗虫, 造成5.25伤害, 具有2倍移速, 有概率在命中敌人后预言",
                ACR="全属性上升 + 概率发射预言泪弹"},
                "先不管属性给的大不大方你这打一会儿一个废话挡我视野你真觉得你够4级是吧"
            },{
                FiendFolio.ITEM.COLLECTIBLE.MODERN_OUROBOROS,
                "现代衔尾蛇",
                "魔音贯耳",
                "泪弹落地后产生油液#{{Burning}} 角色经过油液会将其引燃#油液靠近火堆或已经点燃的油液也会燃烧",
                {ABY="命中后立即产生点燃的油液的蝗虫",
                ACR="油液泪弹, 火烧连营"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD,
                "金蛙首",
                "响屁不臭",
                "使用后定在原地#角色变身为巨型金蛙#松开主动键后放屁#按住主动键越久, 放的屁威力越大",
                {ABY="青蛙外观的蝗虫",
                ACR="静止蓄力放屁"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.SANGUINE_HOOK,
                "染血弯钩",
                "这不属于你",
                "使用后按下方向键丢出#勾住掉落物(包括底座道具)时将掉落物扯向角色#{{ffBruise}} 勾住敌人时赋予敌人易伤状态#勾住敌人后松开主动键释放敌人#{{ffHemorrhage}} 释放敌人后赋予其大出血状态, 朝被释放的方向喷出大量血泪",
                {VIR="勾中敌人生成4个黑色内圈魂火, 敌人脱钩或死亡时熄灭",
                BEL="勾中敌人获得暂时性伤害上升",
                ACR="投掷弯钩, 勾中的敌人易伤, 拔出弯钩以大出血",
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
                {ABY="造成10%伤害的蝗虫, 石化敌人2s",
                ACR="凝视敌人将其石化的跟班",
                MOD={STONE=true}}
            },{
                FiendFolio.ITEM.COLLECTIBLE.FIDDLE_CUBE,
                "解压方块",
                "游手好闲者定将惹祸上身",
                "↑ 使用该道具将逐渐获得{{Damage}}伤害和{{Tears}}射速加成, 有上限#每次使用的加成都会在一段时间后消失",
                {ACR="解压获得暂时性DPS上升",
                VIR="0.1HP的魂火, 造成1.1伤害, 会和属性加成一起消失",
                BEL="伤害加成翻倍",
                CAR="效果翻倍, 但仍无法突破上限",
                QUA=2},
                "腱鞘炎!"
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
                {BFF="伤害翻倍",
                ACR="追击敌人的毒蛇跟班"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.CETUS,
                "鲸鱼座",
                "换气控反击",
                "受伤后喷射大量泪弹#泪弹落地后留下一滩水迹",
                {ACR="受伤后溅射泪弹并留下水迹"}
                ,"没有鲸爆, 不嘻嘻"
            },{
                FiendFolio.ITEM.COLLECTIBLE.DEIMOS,
                "火卫二",
                "伴你终生",
                "投掷{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.SANGUINE_HOOK.."}}染血弯钩的跟班#{{ffBruise}} 弯钩勾中敌人或掉落物时静止在原地, 赋予敌人易伤状态#{{ffHemorrhage}} 释放敌人后赋予其大出血状态, 朝被释放的方向喷出大量血泪",
                {ACR="投掷染血弯钩的跟班"}
            },{
                FiendFolio.ITEM.COLLECTIBLE.MALICE,
                "恶念聚散",
                "集中你的怨念",
                "变为恶念球并进入冲刺状态#冲刺对敌人造成基于楼层数的接触伤害",
                {ACR="怨念冲刺, 大片减速液体",
                QUA=2}
            },{
                CollectibleType.COLLECTIBLE_MALICE_REFORM,
                "恶念聚散",
                "集中你的怨念",
                "重组为完整的邪祟魔",
                {ACR="重组"}
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
                {ACR="全是神秘礼盒!"},
                "{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}{{Collectible36}}"
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
                "易伤泪弹",--淤青泪弹 字体不兼容
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
                {CONF={{FiendFolio.ITEM.COLLECTIBLE.IMP_SODA,"5.350."..FiendFolio.ITEM.ROCK.SODALITE_GEODE},"ImpSculp"},
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
                {GOLD={INFO={append=true},TEXT={"概率上升#{{ColorGold}}获得的饰品也有概率变为金饰品","概率上升","概率上升#{{ColorGold}}获得的饰品也有概率变为金饰品"}}},
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
            },{
                FiendFolio.ITEM.TRINKET.FAULTY_FUSE,
                "故障保险丝",
                "尝起来像烧断的铜丝",
                "提升铜炸弹生成概率",
                {GOLD={INFO={append=true},TEXT={"效果增强","效果增强","效果增强"}}}
            },{
                FiendFolio.ITEM.TRINKET.CURSED_URN,
                "诅咒之瓮",
                "脆弱复活",
                "↑ {{Tears}} x75%射速延迟#{{Player"..FiendFolio.PLAYER.CHINA.."}} 受到致命伤害时复活为瓷制鬼, 并失去6{{BrokenHeart}}碎心#!!! 请尊重瓷器",
                {GOLD={INFO={append=true},TEXT={"属性增幅强化","属性增幅强化","属性增幅强化"}},
                CHAR={FiendFolio.PLAYER.CHINA,"ChinaRevive",false}}
            },{
                FiendFolio.ITEM.TRINKET.SHATTERED_CURSED_URN,
                "破碎的诅咒之瓮",
                "残存的脆弱复活术",
                "↑ {{Tears}} x90%射速延迟",
                {GOLD={INFO={append=true},TEXT={"属性增幅强化","属性增幅强化#{{Player"..FiendFolio.PLAYER.CHINA.."}} {{ColorGold}}受到致命伤害时复活为瓷制鬼, 并失去6{{BrokenHeart}}碎心","属性增幅强化#{{Player"..FiendFolio.PLAYER.CHINA.."}} {{ColorGold}}受到致命伤害时复活为瓷制鬼, 并失去6{{BrokenHeart}}碎心"}},
                CHAR={FiendFolio.PLAYER.CHINA,"ChinaRevive",false}}
            },{
                FiendFolio.ITEM.TRINKET.CONJOINED_CARD,
                "连体卡牌",
                "小皇帝",
                "{{MiniBoss}} 每层额外生成一个小头目房",
                {GOLD={INFO={findReplace=true},TEXT={"一个","两个","三个"}}}
            },{
                FiendFolio.ITEM.TRINKET.ENERGY_SEARCHER,
                "能量搜索器",
                "抽能量卡",
                "提升{{ColorBlue}}能量卡{{CR}}的生成概率#{{ColorBlue}}能量卡{{CR}}有几率在使用后再生成一张",
                {GOLD={INFO={append=true},TEXT={"效果增强","效果增强","效果增强"}}}
            },{
                FiendFolio.ITEM.TRINKET.BROKEN_RECORD,
                "破损唱片",
                "卡在同一个重复片段了",
                "30%的概率将新生成的底座道具替换为已经持有的道具",
                {GOLD={INFO={findReplace=true},TEXT={"30","60","90"}}}
            },{
                FiendFolio.ITEM.TRINKET.FUZZY_PICKLE,
                "绒毛腌黄瓜",
                "捏他上升!",
                "↑ {{Damage}} 每拥有1个致敬/有出处可考的道具或饰品, +0.1伤害修正#↑ 主动道具提供的伤害为五倍#致敬要素相对不那么明显的道具只提供一半的伤害",
                {GOLD={INFO={findReplace=true},TEXT={"0.1","0.2","0.3"}}}
            },{
                FiendFolio.ITEM.TRINKET.FUSHIGI,
                "不可思议",
                "让它浮起来!",
                "5%的概率发射双倍射程和伤害的金属泪弹#{{Collectible572}} 飞行中可控制方向#{{Luck}} 幸运9: 50%",
                {GOLD={INFO={findReplace=true},TEXT={"5%","15%","25%"}}}
            },{
                FiendFolio.ITEM.TRINKET.NESTING_DOLL,
                "套娃",
                "里面还有东西",
                "炸掉乞丐时, 80%的概率在原位置重新生成1只随机乞丐, 上限为8次"
            },{
                FiendFolio.ITEM.TRINKET.EGG_PENNY,
                "卵胞硬币",
                "财富即子孙",
                "拾取硬币时概率生成脆弱波比",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}},
            },{
                FiendFolio.ITEM.TRINKET.LEFTOVERS,
                "剩菜",
                "留着晚点继续吃",
                "拾取红心时, 治疗量溢出的部分转为掉落物生成",
                {CHAR={14,"NoEffect",true},
                CONF={312,"MaggyTakeover"}}
            },{
                FiendFolio.ITEM.TRINKET.DUDS_FLOWER,
                "哑弹之花",
                "哑弹",
                "放置的炸弹变为铜炸弹",
            },{
                FiendFolio.ITEM.TRINKET.BOMB_TOKEN,
                "爆破代币",
                "爆炸威力上升",
                "放置的炸弹伤害+100",
                {CONF={52,"DrToken"}}
            },{
                FiendFolio.ITEM.ROCK.DIRT_CLUMP,
                "泥土块",
                "免费研磨材料",
                "{{ffGrind}} 可以被免费研磨"..RockTrinket(6,1)
            },{
                FiendFolio.ITEM.ROCK.ROLLING_ROCK,
                "滚石",
                "移速上升, 不要停下来啊",
                "↑ {{Speed}} 无伤清理房间后+0.05移速, 最高+0.15#受伤后进入新房间时重置"..RockTrinket(6,1),
                {GOLD={INFO={findReplace=true},TEXT={"+0.15","+0.3","+0.45"}},
                CONF={MULT_P3,"M3_RolRock"}}
            },{
                FiendFolio.ITEM.ROCK.POCKET_SAND,
                "便携沙子",
                "无效果",
                "无效果"..RockTrinket(1,1),
                {CONF={"5.350."..FiendFolio.ITEM.ROCK.OBSIDIAN_GRINDSTONE,"NoEffect"}}
            },{
                FiendFolio.ITEM.ROCK.ROUGH_ROCK,
                "粗糙的岩石",
                "研磨一下!",
                "{{Trinket}} 保证磨成更稀有的岩石饰品"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"必定研磨出金饰品","无效果","必定研磨出金饰品"}}},
            },{
                FiendFolio.ITEM.ROCK.BLOODY_ROCK,
                "沾血的岩石",
                "更痛的攻击",
                "角色发射的每4颗眼泪变为具有双倍伤害的血泪"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"每4颗","每2颗","每颗"}}}
            },{
                FiendFolio.ITEM.ROCK.SPIKED_ROCK,
                "尖刺岩石",
                "痛一下就过了, 尖刺也就不疼了",
                "{{HalfHeart}} 第一次拾起时对角色造成半颗心的伤害(不致死)#免疫尖刺和尖刺箱子的伤害"..RockTrinket(2,1)
            },{
                FiendFolio.ITEM.ROCK.SLIPPY_ROCK,
                "滑岩石",
                "移速上升, 摩擦力下降",
                "↑ {{Speed}} +0.15移速#摩擦力下降"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"+0.15","+0.3","+0.45"}},
                CONF={MULT_P3,"M3_SliRock"}}
            },{
                FiendFolio.ITEM.ROCK.ARCANE_ROCK,
                "奥术岩石",
                "概率跟踪术, 跟踪伤害上升",
                "{{Collectible3}} 眼泪有概率变为跟踪眼泪#↑ 跟踪眼泪+2伤害修正#{{Luck}} 幸运7.5: 20%"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}},
            },{
                FiendFolio.ITEM.ROCK.MINERAL_ROCK,
                "矿物岩石",
                "贴膜 = 全属性上升",
                "↑ 主动撞向石头障碍物时全属性上升"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"效果增强","效果增强","效果增强"}}}
            },{
                FiendFolio.ITEM.ROCK.THORNY_ROCK,
                "荆棘岩石",
                "受击冲击波",
                "受伤时生成环形裂地波#!!! 吞掉后可能导致触发概率下降#!!! 在已清理的房间内和自伤无效"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"裂地波范围增加","裂地波范围增加","裂地波范围增加"}},
                CONF={MULT_P3,"M3_ThrRock"}}
            },{
                FiendFolio.ITEM.ROCK.TIME_LOST_DIAMOND,
                "时损钻石",
                "受伤后回溯时间",
                "在一个房间内第一次受击时, 触发{{Collectible422}}发光沙漏#!!! 吞掉后可能导致触发概率下降"..RockTrinket(4,1)
            },{
                FiendFolio.ITEM.ROCK.OBSIDIAN_GRINDSTONE,
                "黑曜石磨石",
                "力量上升, 磨石工具",
                "↑ {{Damage}} +2.5伤害修正#↑ {{Tears}} +0.13射速#↑持有另一个石头饰品时该属性增益翻倍#{{Trinket}} 每10发眼泪都会重置另一个持有的饰品为岩石饰品#!!! 有15%的概率重随成口袋沙子, 不会提供属性增益(每层至多2次)#!!! 吞掉后可能导致效果削弱"..RockTrinket(4,1)
            },{
                FiendFolio.ITEM.ROCK.GODS_MARBLE,
                "神之大理石",
                "便携式圣所",
                "{{Collectible160}} 有概率发射一个灵体泪弹, 落地或命中后在地板生成持续1.5s的光环, 当敌人触摸时会产生圣光#!!! 圣光可以伤害角色#{{Luck}} 幸运37: 40%"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}},
            },{
                FiendFolio.ITEM.ROCK.TWENTY_SIDED_EMERALD,
                "二十面绿宝石",
                "近距离重随",
                "站在一个掉落物旁边时, 每三秒都会将其重置#单个掉落物最多只能重置3次, 且不会影响箱子或变出箱子#!!! 吞掉后可能导致只能重随1次"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"3","4","5"}}}
            },{
                FiendFolio.ITEM.ROCK.TECHNOLOGICAL_RUBY_2,
                "科技红宝石2.0",
                "额外安全保护, 全部都可以低价给你...",
                "在角色的位置生成两个激光环#外环造成10%伤害#内环造成25%伤害#!!! 吞掉后可能导致只生成内环激光环"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"额外生成一个更大的激光环, 造成5%伤害","额外生成一个更大的激光环, 造成5%伤害","额外生成一个更大的激光环, 造成5%伤害"}}},
            },{
                FiendFolio.ITEM.ROCK.LEAKY_ROCK,
                "漏水的石头",
                "你在漏水",
                "行走时留下一条静止眼泪轨迹#伤害基于角色{{Damage}}伤害#频率基于角色{{Tears}}射速"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"频率上升","频率上升","频率上升"}},
                CONF={MULT_P3,"M3_LeaRock"}},
            },{
                FiendFolio.ITEM.ROCK.TWIN_TUFFS,
                "双子灰岩",
                "双重奖励",
                "(25 + 2.5x{{Luck}})%的几率将掉落物变为它们的双倍等价物# (15 + 1.5x{{Luck}})%的几率翻倍房间掉落物"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}},
            },{
                FiendFolio.ITEM.ROCK.WETSTONE,
                "湿岩石",
                "咕噜",--啵 字体不兼容
                "在进入未清理的房间和受到伤害时释放7个泡泡, 抵挡敌弹并造成伤害#!!! 吞掉后可能导致生成更少的泡泡"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"7","8","9"}}}
            },{
                FiendFolio.ITEM.ROCK.STROMATOLITE,
                "叠层岩",
                "生机盎岩",
                "{{HalfHeart}} 石头破坏后有2.5%几率生成半红心#{{HalfSoulHeart}} 标记石头和秘密石头有25%概率额外掉落半魂心"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}},
            },{
                FiendFolio.ITEM.ROCK.RIBBED_ROCK,
                "棱纹岩",
                "为得佳人笑",
                "{{EmptyBoneHeart}} 第一次拾取时给予1颗骨心#{{BoneHeart}} 血上限道具给予骨心而不是心之容器"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"骨心","两个骨心","两个骨心"}}}
            },{
                FiendFolio.ITEM.ROCK.FIENDISH_AMETHYST,
                "邪魔紫水晶",
                "邪鬼云集!",
                "进入未清理的房间后, 生成4个{{ColorPurple}}紫水晶邪鬼{{CR}}#!!! 吞掉后可能导致生成更少的{{ColorPurple}}紫水晶邪鬼{{CR}}"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"4","6","8"}},
                CONF={FiendFolio.ITEM.ROCK.FRIENDLY_RAPID_FIRE_OPAL,"ReFiendish"}}
            },{
                FiendFolio.ITEM.ROCK.STURDY_ROCK,
                "坚固岩石",
                "起点的生命",
                "{{SoulHeart}} 每层开始时, 获得一颗魂心#!!! 吞掉后可能导致仅获得半魂心"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"1","2","2"}}}
            },{
                FiendFolio.ITEM.ROCK.BRICK_ROCK,
                "砖石",
                "丢!",
                "按下攻击键丢出该饰品, 造成15伤害并施加{{Confusion}}混乱"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","无效果","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}},
            },{
                FiendFolio.ITEM.ROCK.SAPPHIC_SAPPHIRE,
                "女同蓝宝石",
                "石雄蓝",--存疑
                "魅惑雌性怪物#{{Freezing}} 概率发射冰冻眼泪#{{Luck}} 幸运7.5: 33.33%"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={"5.350."..FiendFolio.ITEM.ROCK.HOMOEROTIC_RUBY,"ImGay"}},
            },{
                FiendFolio.ITEM.ROCK.BLOOD_DIAMOND,
                "血钻石",
                "流血泪弹",
                "{{BleedingOut}} 概率发射使敌人流血的泪弹#{{Luck}} 幸运7.5: 40%"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.SCENTED_ROCK,
                "香氛岩",
                "魅力气场",
                "{{Charm}} 离开角色一小段距离内的怪物被魅惑"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"范围上升, 魅惑持续时间上升","范围上升, 魅惑持续时间上升","范围上升, 魅惑持续时间上升"}},
                CONF={MULT_P3,"M3_SceRock"}},
            },{
                FiendFolio.ITEM.ROCK.ARCADE_ROCK,
                "赌博岩",
                "机器故障",
                "(25 + 2.5x{{Luck}})%的概率使大部分收钱的机器回本",
                {GOLD={INFO={findReplace=true},TEXT={"25","35","45"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.TINTED_HEART,
                "标记石之心",
                "心中的灵魂",
                "{{Heart}} 受伤时有几率掉落红心#被爆炸伤害后改为掉落{{SoulHeart}}魂心, 并伴随一个{{Key}}钥匙、{{Bomb}}炸弹或{{Chest}}箱子#!!! 吞掉后可能导致效果削弱"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.ROSE_QUARTZ,
                "玫红石英",
                "弹幕护盾",
                "受伤后获得一个持续5.67s的护盾, 可以抵挡敌弹"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"5.67","11.34","17.01"}},
                CONF={MULT_P3,"M3_RosRock"}}
            },{
                FiendFolio.ITEM.ROCK.HAILSTONE,
                "冰雹石",
                "寒颤气场",
                "{{Freezing}} 靠近角色的敌人会减速, 并在死后冻结"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"范围上升","范围上升","范围上升"}},
                CONF={MULT_P3,"M3_Range"}},
            },{
                FiendFolio.ITEM.ROCK.RAMBLIN_OPAL,
                "漫步蛋白石",
                "晶体孢子",
                "在未清理的房间中偶尔生成孢子, 落地后生成友方香菇(Shiitake), 最多3个#!!! 吞掉后可能导致最多只有2个香菇"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"香菇生命上升, 存在上限+1","香菇生命上升, 存在上限+1","香菇生命上升, 存在上限+2"}}}
            },{
                FiendFolio.ITEM.ROCK.SAND_DOLLAR,
                "沙币",
                "在商店进行货币兑换",
                "{{Coin}} 在{{Shop}}商店中将该饰品丢弃会交换为10-20钱币"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"改为生成3-5个金硬币","无效果","改为生成3-5个金硬币"}}}
            },{
                FiendFolio.ITEM.ROCK.HENGE_ROCK,
                "巨石阵岩石",
                "岩石强化器",
                "所有石头饰品的饰品强化等级+0.3#!!! 吞服后只能获得+0.099"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"0.3","0.6","0.9"}}}
            },{
                FiendFolio.ITEM.ROCK.SALT_LAMP,
                "盐灯",
                "电池供电的气场",
                "驱逐近距离的敌人和敌弹, 但会在2分钟后失效, 可以被电池充能"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"2分钟","4分钟","6分钟"}},
                CONF={MULT_P3,"M3_SalRock"}}
            },{
                FiendFolio.ITEM.ROCK.MOLTEN_SLAG,
                "熔渣",
                "熔炼之重随",
                "{{Burning}} 偶尔点燃周围敌人#{{ffGrind}} 被研磨后, {{Collectible479}}吞下另一个持有的饰品"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"增加点燃敌人的概率, 灼烧持续时间和生效范围","增加点燃敌人的概率, 灼烧持续时间和生效范围","增加点燃敌人的概率, 灼烧持续时间和生效范围"}},
                CONF={MULT_P3,"M3_MolRock"}}
            },{
                FiendFolio.ITEM.ROCK.THUNDER_EGG,
                "霹雳蛋",
                "孵出一个结石",
                "↓ {{Speed}} -0.1移速#每个房间有几率破开并生成{{ColorBlue}}稀有{{CR}}或{{ColorPurple}}魔见魔爱{{CR}}石头饰品"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"孵化几率上升, 高概率出现高品质饰品","孵化几率上升, 高概率出现高品质饰品","孵化几率上升, 必定出现魔见魔爱饰品"}},CONF={MULT_P3,"M3_ThuRock"}}
            },{
                FiendFolio.ITEM.ROCK.UNOBTAINIUM,
                "无法获取岩",
                "你怎么拿到的?",
                RockTrinket(1,1)
            },{
                FiendFolio.ITEM.ROCK.SANDSTONE,
                "砂岩",
                "易于风化",
                "{{Confusion}} 有机会发射造成混乱的高伤害岩石, {{Collectible261}}会随时间变小#{{Luck}} 幸运26.67: 100%#{{Trinket".. FiendFolio.ITEM.ROCK.POCKET_SAND.."}} 受到爆炸伤害后变为便携沙子"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={
                    {MULT_P3,"M3_Chance"},
                    {{114,118,52,68,168,152,395,705},"SandAttack"}
                }}
            },{
                FiendFolio.ITEM.ROCK.FAKE_ROCK,
                "假石头",
                "钥匙就藏在门锁附近",
                "{{Key}} 拾取时生成一把钥匙#{{Key}} 如果有上锁的门, 本房间内第一个被破坏的石头会掉落一把钥匙"..RockTrinket(2,1),
            },{
                FiendFolio.ITEM.ROCK.CITRINE_PULP,
                "柠檬黄浆",
                "短程果汁泪弹",
                "有小概率发射短射程的一簇黄色眼泪#当敌人靠近时, 小几率生成水迹池#{{Luck}} 幸运15: 50%"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"发射短程泪弹的概率上升, 泪弹数量增加","发射短程泪弹的概率上升, 泪弹数量增加","发射短程泪弹的概率上升, 泪弹数量增加"}},
                CONF={MULT_P3,"M3_CitRock"}}
            },{
                FiendFolio.ITEM.ROCK.BLOODSTONE,
                "血石",
                "苦痛带来力量",
                "↑ 敌人死亡时{{Damage}}+0.2伤害# 角色受伤时{{Damage}}+1伤害#{{Timer}} 这些伤害增幅会随着时间衰减"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"效果翻倍","效果翻倍","效果翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.EMETIC_ANTIMONY,
                "催吐锑",
                "定时呕吐",
                "{{Collectible149}} 每隔15s获得一次吐根攻击"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"15","13.33","11.67"}},
                CONF={MULT_P3,"M3_EmeRock"}}
            },{
                FiendFolio.ITEM.ROCK.DOUBLE_RUBBLE,
                "双碎石",
                "研磨 x 2",
                "{{ffGrind}} 研磨成为两个普通或{{ColorBlue}}稀有{{CR}}石头饰品"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"必定研磨出金饰品","无效果","必定研磨出金饰品"}}}
            },{
                FiendFolio.ITEM.ROCK.ROCK_FROM_AN_ABYSS,
                "深渊魔岩",
                "毁灭目光",
                "{{ffDoom}} 进入房间时有20%概率对三个怪物施加毁灭效果"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"20","40","60"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.HECTOR,
                "赫克托",
                "善变之友",
                "↑ {{Damage}} 伤害和{{Tears}}射速上升#↓ {{Speed}} 移速-0.1#在受到伤害时被强行扔下#吞下的赫克托在受伤后额外朝上发射数发泪弹#!!! {{ffGrind}}不可被研磨"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"属性增幅翻倍","属性增幅翻倍","属性增幅翻倍"}},
                CONF={
                    {MULT_P3,"M3_HecRock"},
                    {416,"DeepHector"}
                }}
            },{
                FiendFolio.ITEM.ROCK.VESSEL_ROCK,
                "容器岩",
                "石制心之容器",
                "{{BoneHeart}} 储存一颗额外的红心#{{DevilChance}} 不会掉恶魔房概率#为空时受到伤害会碎掉"..RockTrinket(3,1),
            },{
                FiendFolio.ITEM.ROCK.HALF_VESSEL_ROCK,
                "容器岩",
                "石制心之容器",
                "{{BoneHeart}} 储存一颗额外的红心#{{DevilChance}} 不会掉恶魔房概率#为空时受到伤害会碎掉"..RockTrinket(3,1),
            },{
                FiendFolio.ITEM.ROCK.FULL_VESSEL_ROCK,
                "容器岩",
                "石制心之容器",
                "{{BoneHeart}} 储存一颗额外的红心#{{DevilChance}} 不会掉恶魔房概率#为空时受到伤害会碎掉"..RockTrinket(3,1),
            },{
                FiendFolio.ITEM.ROCK.CONSTANT_ROCK_SHOOTER,
                "连发石像射手",
                "保持攻击!",
                "↑ {{Tears}} 射速+0.77#玩家永不停止射击#!!! 对某些蓄力攻击和角色攻击不适用"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"0.77","1.54","2.31"}},
                CONF={MULT_P3,"M3_HecRock"}}
            },{
                FiendFolio.ITEM.ROCK.ROBOT_ROCK,
                "机器岩",
                "哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔哔",
                "给予角色2条会造成随机状态效果的旋转激光#!!! 吞掉后可能导致只获得1条激光"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"2","3","4"}}}
            },{
                FiendFolio.ITEM.ROCK.ROCK_CANDY,
                "石头糖果",
                "糖味水晶",
                "有几率发射造成1.5倍伤害并{{Charm}}魅惑的水晶眼泪({{Luck}} 幸运31.67: 100%)#{{HalfHeart}} 敌人有小概率掉落水晶外观的半红心, 一段时间后消失({{Luck}} 幸运25: 40%)"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"概率上升, 半红心持续时间略微增加","概率上升, 半红心持续时间略微增加","概率上升, 半红心持续时间略微增加"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.KEYSTONE,
                "钥石",
                "开锁增益",
                "↑ {{Key}} 角色使用钥匙时, 在本层内获得{{Tears}}射速+0.09和{{Speed}}移速+0.1#!!! {{GoldenKey}}金钥匙不提供属性"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"属性增幅翻倍","属性增幅翻倍","属性增幅翻倍"}},
                CONF={MULT_P3,"M3_HecRock"}}
            },{
                FiendFolio.ITEM.ROCK.SILVER_TONGUE,
                "银舌",
                "研磨打折",
                "{{ffGrind}} 挖掘机花费减少{{Coin}}1钱币#!!! 吞掉后可能导致仅概率触发效果"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"花费减少{{Coin}}1钱币","花费减少{{Coin}}2钱币","免费!"}}}
            },{
                FiendFolio.ITEM.ROCK.MEAT_SLAB,
                "肉板岩",
                "汗流浃背!",
                "玩家不断出汗, 发射出抛物线泪弹#{{EmptyHeart}} 出汗频率取决于玩家空心之容器的数量"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"泪弹伤害翻倍","泪弹伤害翻倍","泪弹伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.SHEEP_ROCK,
                "数羊岩",
                "睡觉泪弹",
                "{{Collectible529}} 有几率发射不停减速, 停在一个位置的催眠眼泪, {{ffSleeping}}使得命中的敌人昏睡#{{Luck}} 幸运46.5: 100%"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.REBELLION_ROCK,
                "叛乱岩",
                "击溃汝敌",
                "受伤时对周围的所有敌人造成少量伤害, 将其击退, 并且造成{{ffBruise}}易伤效果"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"伤害上升","伤害上升","伤害上升"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.DADS_LEGENDARY_GOLDEN_ROCK,
                "你爹的传奇品质黄金石头饰品",
                "太棒了, 是镀金研磨",
                "{{ColorGold}}自带镀金效果!{{CR}}#{{ffGrind}} 研磨时, 总会给予一个金色的非常见岩石饰品!"..RockTrinket(4,1)
            },{
                FiendFolio.ITEM.ROCK.BEDROCK,
                "基岩",
                "等于床岩(Bed Rock)",--原文为zzzz，此处改为双关解释
                "{{IsaacsRoom}} 每层开始时有1/3的几率生成一张床"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.SHEETROCK,
                "床单岩",
                "优质睡眠",
                "{{Heart}} 每层开始时治疗2红心#{{SoulHeart}} 在床上睡觉时额外获得2颗魂心"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"2","4",'6'}},
                CONF={
                    {MULT_P3,"M3_SheRock"},
                    {"5.350."..FiendFolio.ITEM.ROCK.BEDROCK,"RestfulSleep"}
                }}
            },{
                FiendFolio.ITEM.ROCK.FETAL_STONE,
                "胎儿石",
                "史前伙伴",
                "{{Confusion}} 获得一个岩石跟班, 发射会混乱敌人的石头子弹"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"岩石跟班的射速和伤害加强","岩石跟班的射速和伤害加强","岩石跟班的射速和伤害加强"}},
                CONF={MULT_P3,"M3_FetRock"}}
            },{
                FiendFolio.ITEM.ROCK.FOCUS_CRYSTAL,
                "聚焦水晶",
                "对靠近的敌人造成额外伤害",
                "对在一定范围内的敌人造成的伤害提高20%"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"20%","40%","60%"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.ODDLY_SMOOTH_STONE,
                "意外平滑的石头",
                "更好的心掉落物",
                "每种心掉落物的治疗量+50%"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"50%","100%","150%"}}}
            },{
                FiendFolio.ITEM.ROCK.MOONSTONE,
                "月之石",
                "注意月亮",
                "↑ 进入{{SecretRoom}}隐藏房后获得下述增益之一:#{{Luck}} +1运气#{{Tears}} +0.13射速#{{Shotspeed}} +0.3弹速#{{Range}} +0.38射程"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"之一","中的两个","中的三个"}}}
            },{
                FiendFolio.ITEM.ROCK.LIMESTONE,
                "石灰岩",
                "酸橙石",
                "留下造成50%伤害的绿色水迹#{{Charm}} 永久魅惑所有柠檬相关的敌人#再来点酸橙吗?#{{ColorGray}}(lime的意思有石灰、青绿色、酸橙){{CR}}"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"水迹伤害上升, 更多酸橙?","水迹伤害上升, 更多酸橙?","水迹伤害上升, 更多酸橙?"}},
                CONF={MULT_P3,"M3_LimRock"}}
            },{
                FiendFolio.ITEM.ROCK.CARNAL_CARNELIAN,
                "肉欲玛瑙",
                "近战增益",
                "↑ 根据角色与敌人的距离获得{{Damage}}伤害和{{Speed}}移速上升"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"属性变化加强, 需要的距离加长","属性变化加强, 需要的距离加长","属性变化加强, 需要的距离加长"}},
                CONF={MULT_P3,"M3_CarRock"}}
            },{
                FiendFolio.ITEM.ROCK.REBAR_ROCK,
                "钢筋岩",
                "强化红心",
                "{{Heart}} 25%概率阻挡红心伤害#{{HalfHeart}} 红心伤害永远只有半颗心#!!! 不影响{{ColorRed}}第四章后的伤害翻倍{{CR}}和{{SacrificeRoom}}献祭房"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"25%","50%","50%"}},
                CONF={
                    {MULT_P3,"M3_Chance"},
                    {569,"RebarOath"}
                }}
            },{
                FiendFolio.ITEM.ROCK.DOGROCK_ROCK,
                "狗石像仔",
                "它喜欢你!",
                "{{Luck}} -100幸运(丢弃饰品也不会失效)#扭曲BGM, 黑化障碍物#{{Slow}} 减速靠近的敌人"..RockTrinket(1,1)
            },{
                FiendFolio.ITEM.ROCK.STALACTITE,
                "钟乳石",
                "穹顶坍塌",
                "爆炸会导致随机从天而降石头, 造成2倍伤害#掉落的石头敌弹变为友方"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"更多的石头从天而降","更多的石头从天而降","更多的石头从天而降"}},
                CONF={MULT_P3,"M3_StaRock"}}
            },{
                FiendFolio.ITEM.ROCK.CAST_GEM,
                "投射宝石",
                "水晶伙伴",
                "给予一块可以在攻击时投掷的跟踪宝石, 并粘在敌人身上, 造成伤害和{{ffBruise}}易伤#{{ffBruise}} 易伤的敌人会根据累积的数量增加受到的伤害"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"一","二","三"}},
                CONF={
                    {FiendFolio.ITEM.COLLECTIBLE.NYX,"MultiNyx"},
                    {{305,446},"PoisNyx"},
                    {{309,637,"5.350.77"},"KnockNyx"},
                    {213,"ShieldNyx"},
                    {{597,309},"WaterNyx"},
                    {{FiendFolio.ITEM.COLLECTIBLE.TOY_PIANO,FiendFolio.ITEM.COLLECTIBLE.PRANK_COOKIE,593},"DoomNyx"},
                    {{68,152,494,244,395},"TechNyx"},
                    {FiendFolio.ITEM.COLLECTIBLE.IMP_SODA,"CritNyx"}
                }}
            },{
                FiendFolio.ITEM.ROCK.SHARD_OF_GOLGOTHA,
                "各各他的碎片",
                "锁住你的敌人",
                "{{Collectible722}} 每个房间都会锁住生命值最高的一个敌人6.67s"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"6.67","13.34","20.01"}},
                CONF={
                    {MULT_P3,"M3_GolRock"},
                    {722,"AnimaGolgo"}
                }}
            },{
                FiendFolio.ITEM.ROCK.SMOKY_QUARTZ,
                "烟雾石英",
                "受击下烟",
                "↑ 受伤后获得衰减的{{Speed}}移速提升, 并释放烟雾使附近的敌人{{Confusion}}混乱"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"烟雾范围增大","烟雾范围增大","烟雾范围增大"}},
                CONF={MULT_P3,"M3_Range"}}
            },{
                FiendFolio.ITEM.ROCK.TWINKLING_ROCK,
                "闪烁的岩石",
                "晶洞研磨",
                "{{ffGrind}} 可被研磨为普通或{{ColorBlue}}稀有{{CR}}的{{ColorCyan}}晶洞{{CR}}"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"必定研磨出金饰品","无效果","必定研磨出金饰品"}}},
            },{
                FiendFolio.ITEM.ROCK.ROCK_CAKE,
                "岩石蛋糕",
                "治愈研磨",
                "{{ffGrind}} 研磨时治疗{{HalfHeart}}半颗心"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"{{HalfHeart}}半颗心","{{Heart}}一颗心","{{Heart}}1.5颗心"}}}
            },{
                FiendFolio.ITEM.ROCK.CHARCOAL,
                "木炭",
                "坎普斯的礼物仿制品",
                "{{Collectible132}} 有几率发射极慢的泪弹, 会随着时间推移逐渐变大, 伤害变高#{{Luck}} 幸运17.5: 50%"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.ACHILLES_ROCK,
                "阿喀琉斯的岩石",
                "定向弱点",
                "敌人获得一个随机的弱点#从该方向进行攻击可造成1.5倍伤害"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"1.5","2","2.5"}}}
            },{
                FiendFolio.ITEM.ROCK.ELECTRUM,
                "琥珀金",
                "主动放电",
                "使用主动道具电击周围敌人, 伤害基于充能数和{{Damage}}角色伤害"..RockTrinket(3,1),
                {GOLD={INFO={apend=true},TEXT={"伤害上升","伤害上升#杀死的敌人有概率生成饰品","伤害上升"}},
                CONF={
                    {MULT_P3,"M3_BriRock"},
                    {{640,FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_B,FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_R,FiendFolio.ITEM.COLLECTIBLE.ANGELIC_LYRE_Y},"NoEffect"},
                    {{33,160},"ElecHoly"},{{34,83},"ElecEvel"},{35,"ElecNecro"},{36,"ElecPoop"},
                    {37,"ElecBomb"},{38,"ElecTammy"},{39,"ElecBra"},{40,"ElecKaze"},
                    {41,"ElecPad"},{42,"ElecBob"},{{44,419},"ElecTele"},{45,"ElecHeart"},
                    {47,"ElecDrRm"},{49,"ElecSHWB"},{56,"ElecLemo"},{{58,298},"ElecShad"},
                    {65,"ElecAAA"},{66,"ElecHoGl"},{{77,93},"ElecCorn"},{78,"ElecReve"},
                    {{85,286},"ElecCard"},{86,"ElecStro"},{97,"Elec7"},{{102,348},"ElecPill"},
                    {{105,609},"ElecD6"},{107,"ElecPink"},{111,"ElecBean"},{123,"ElecMons"},
                    {126,"ElecRazo"},{130,"ElecPony"},{133,"ElecPaw"},{135,"ElecIV"},
                    {136,"ElecFrien"},{137,"ElecDeto"},{145,"ElecGuppy"},{146,"ElecPray"},
                    {158,"ElecCrys"},{166,"ElecD20"},{{171,288},"ElecSpid"},{175,"ElecKey"},
                    {177,"ElecSlot"},{181,"ElecConq"},{186,"ElecRight"},{263,"ElecRune"},
                    {{282,709},"ElecJump"},{283,"ElecD100"},{284,"ElecD4"},{{285,FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D10},ElecD10},
                    {290,"ElecJar"},{292,"ElecSatan"},{293,"ElecRampus"},{294,"ElecButter"},
                    {295,"ElecIV"},{296,"ElecConv"},{323,"ElecTear"},{325,"ElecScis"},
                    {338,"ElecBmra"},{349,"ElecNick"},{351,"ElecMeBe"},{357,"ElecBoFr"},
                    {382,"ElecPoke"},{383,"ElecTeDe"},{396,"ElecPort"},{406,"ElecD8"},
                    {{386,FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12,FiendFolio.ITEM.COLLECTIBLE.ETERNAL_D12_ALT},"ElecD12"},
                    {421,"ElecKind"},{422,"ElecRewind"},{427,"ElecTNT"},{434,"ElecJaFl"},
                    {477,"ElecVoid"},{478,"ElecPause"},{479,"ElecSmel"},{480,"ElecComp"},
                    {484,"ElecWhat"},{485,"Elec5050"},{487,"ElecPotato"},{489,"ElecDInf"},
                    {504,"ElecNugg"},{507,"ElecHeal"},{512,"ElecHole"},{515,"ElecGift"},
                    {516,"ElecSprin"},{545,"ElecBone"},{550,"ElecMom"},{555,"ElecGold"},
                    {556,"ElecBrim"},{557,"ElecFort"},{577,"Elecles"},{578,"ElecLemo"},
                    {580,"ElecRed"},{582,"ElecWavy"},{{584,685},"ElecWisp"},{605,"Elecooper"},
                    {623,"ElecKey2"},{635,"Electitch"},{638,"Elerazer"},{639,"ElecYuck"},
                    {642,"ElecSkin"},{{650,FiendFolio.ITEM.COLLECTIBLE.GOLDEN_PLUM_FLUTE},"ElecPlum"},
                    {653,"ElecVade"},{655,"ElecSpin"},{687,"ElecFind"},{706,"ElecAbyss"},
                    {712,"ElecLemen"},{715,"ElecHold"},{722,"ElecSola"},{728,"ElecHead"},
                    {FiendFolio.ITEM.COLLECTIBLE.D2,"ElecD2"},{FiendFolio.ITEM.COLLECTIBLE.GRAPPLING_HOOK,"ElecHook"},
                    {FiendFolio.ITEM.COLLECTIBLE.FROG_HEAD,"ElecFrog"},{FiendFolio.ITEM.COLLECTIBLE.SANGUINE_HOOK,"ElecSang"},
                    {FiendFolio.ITEM.COLLECTIBLE.FIDDLE_CUBE,"ElecFidd"},{FiendFolio.ITEM.COLLECTIBLE.AVGM,"ElecAVGM"},
                    {FiendFolio.ITEM.COLLECTIBLE.MALICE,"ElecMali"},{FiendFolio.ITEM.COLLECTIBLE.BEDTIME_STORY,"ElecBedt"},
                    {FiendFolio.ITEM.COLLECTIBLE.PURPLE_PUTTY,"ElecPurple"},{FiendFolio.ITEM.COLLECTIBLE.FIEND_MIX,"ElecMix"},
                    {FiendFolio.ITEM.COLLECTIBLE.WHITE_PEPPER,"ElecWhite"},{FiendFolio.ITEM.COLLECTIBLE.TOY_CAMERA,"EleCamera"},
                    {FiendFolio.ITEM.COLLECTIBLE.SNOW_GLOBE,"ElecGlobe"},{FiendFolio.ITEM.COLLECTIBLE.CHERRY_BOMB,"EleCherry"},
                    {FiendFolio.ITEM.COLLECTIBLE.ASTROPULVIS,"ElecAstr"},{FiendFolio.ITEM.COLLECTIBLE.AZURITE_SPINDOWN,"EleZurite"},
                    {FiendFolio.ITEM.COLLECTIBLE.KING_WORM,"ElecKing"},{FiendFolio.ITEM.COLLECTIBLE.DAZZLING_SLOT,"ElecDazz"},
                    {FiendFolio.ITEM.COLLECTIBLE.KALUS_HEAD,"ElecKalu"},{FiendFolio.ITEM.COLLECTIBLE.HORSE_PASTE,"ElecHorse"},
                    {FiendFolio.ITEM.COLLECTIBLE.LEMON_MISHUH,"ElecLemo"},{FiendFolio.ITEM.COLLECTIBLE.YICK_HEART,"ElecYick"},
                    {{FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_1,FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_2,FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_3,FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_4,FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_5,FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_6,FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_8,FiendFolio.ITEM.COLLECTIBLE.PERFECTLY_GENERIC_OBJECT_12},"EB"}
                }}
            },{
                FiendFolio.ITEM.ROCK.PURE_QUARTZ,
                "纯净石英",
                "魂心耗尽后提供护盾",
                "{{SoulHeart}} 失去所有魂心后获得一层{{Mantle}}神圣屏障, 并{{Collectible58}}无敌10s(不免死)"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"10","20","30"}}}
            },{
                FiendFolio.ITEM.ROCK.AMAZONITE,
                "亚马逊石",
                "请等待发货",
                "{{Coin}} 每层需要购买的第一个掉落物免费#下一层开始时才发货"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"第一个","前两个","前三个"}},
                CONF={{64,586,FiendFolio.ITEM.COLLECTIBLE.DADS_WALLET},"Overridden","Override"}}
            },{
                FiendFolio.ITEM.ROCK.STAR_SAPPHIRE,
                "星辰蓝宝石",
                "动作侦测者",
                "给予一个摇晃的跟班, 会面向最近的敌人或敌弹#阻挡敌弹并造成接触伤害"..RockTrinket(3,1)
            },{
                FiendFolio.ITEM.ROCK.GRAVESTONE,
                "碑石",
                "骇人的污神者",
                "受伤时生成一个{{Collectible634}}炼狱恶鬼或{{Collectible684}}饥饿幽魂的灵魂#破坏的石头障碍物也有几率生成灵魂"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"饥饿游魂持续时间延长, 炼狱恶鬼更多, 破坏石头障碍物更容易生成灵魂","饥饿游魂持续时间延长, 炼狱恶鬼更多, 破坏石头障碍物更容易生成灵魂","饥饿游魂持续时间延长, 炼狱恶鬼更多, 破坏石头障碍物更容易生成灵魂"}},
                CONF={MULT_P3,"M3_Grave"}}
            },{
                FiendFolio.ITEM.ROCK.SAND_CASTLE,
                "沙堡",
                "脆弱的碉堡",
                "每层抵挡三次伤害#抵挡三次后变为{{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}便携沙子"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"可额外抵挡一次伤害","无效果","可额外抵挡一次伤害"}}}
            },{
                FiendFolio.ITEM.ROCK.DAMAGED_SAND_CASTLE,
                "沙堡",
                "脆弱的碉堡",
                "每层抵挡三次伤害#抵挡三次后变为{{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}便携沙子"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"可额外抵挡一次伤害","无效果","可额外抵挡一次伤害"}}}
            },{
                FiendFolio.ITEM.ROCK.BROKEN_SAND_CASTLE,
                "沙堡",
                "脆弱的碉堡",
                "每层抵挡三次伤害#抵挡三次后变为{{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}便携沙子"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"可额外抵挡一次伤害","无效果","可额外抵挡一次伤害"}}}
            },{
                FiendFolio.ITEM.ROCK.GUARDED_GARNET,
                "守御石榴石",
                "受伤触发护盾",
                "受伤后有几率本房间内获得护盾, 能够抵御一次伤害#抵挡后击退周围敌人#{{Luck}} 幸运35: 100%"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.SHAMROCK,
                "三叶草石",
                "脆弱的幸运",
                "↑ {{Luck}} +5运气#↓ 受伤时, 在本层内{{Luck}}-1运气增幅"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"受伤时","受伤两次时","受伤三次时"}}}
            },{
                FiendFolio.ITEM.ROCK.GAS_POCKET,
                "气孔石",
                "有毒石体",
                "石头障碍物偶尔漏毒气#石头被破坏后有概率生成一大团毒气#{{Luck}} 幸运40: 75%"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升, 毒气持续时间上升","概率上升, 毒气持续时间上升","概率上升, 毒气持续时间上升"}},
                CONF={MULT_P3,"N3_GasRock"}}
            },{
                FiendFolio.ITEM.ROCK.SOAP_STONE,
                "肥皂石",
                "清理房间擦除敌弹",
                "受伤或房间清理完毕后清除所有敌弹#受伤后生成一些泡泡"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"更多泡泡","更多泡泡","更多泡泡"}},
                CONF={MULT_P3,"M3_SoaRock"}}
            },{
                FiendFolio.ITEM.ROCK.SPIRIT_URN,
                "精神石瓮",
                "遭遇危机时获得魂火",
                "进入{{BossRoom}}头目房或{{MiniBoss}}小头目房后生成3个魂火#开始挑战房后生成3个魂火"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"3","4","5"}},
                CONF={MULT_P3,"M3_UrnRock"}}
            },{
                FiendFolio.ITEM.ROCK.SUN_SHARD,
                "太阳丛碎片",
                "独属于你的太阳系",
                "每个房间给予一个不同的“太阳”(The SUN)环绕物, 阻挡敌弹后具有特殊效果"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"一个不同的","两个不同的","三个"}},
                CONF={MULT_P3,"M3_SunRock"}}
            },{
                FiendFolio.ITEM.ROCK.STEADFAST_STONE,
                "坚定之石",
                "最终防线粉碎者",
                "受到致命伤害时, 改为摧毁你目前拥有的{{Trinket}}饰品并将其变为{{SoulHeart}}魂心#优先摧毁另一个"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"魂心","2魂心","3魂心"}},
                CONF={{475,577,"5.300.46"},"NoEffect"}}
            },{
                FiendFolio.ITEM.ROCK.INSATIABLE_APATITE,
                "贪婪磷灰石",
                "生命吞噬者",
                "↑ {{Heart}} 拾取心后获得短暂{{Damage}}伤害提升#{{Heart}} 满心时仍可拾取心, 并获得双倍{{Damage}}伤害提升#一些心具有特殊效果"..RockTrinket(4,1)
            },{
                FiendFolio.ITEM.ROCK.RAI_STONE,
                "雅浦岛石币",
                "财神到",
                "{{Coin}} 敌人死后有15%的几率掉落会快速消失的石币(1美分)"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"15%","30%","45%"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.ORE_PENNY,
                "矿石硬币",
                "财富即石头",
                "{{Coin}} 捡起硬币时有50%的概率再获得一枚钱币#有几率将石头障碍物替换为愚人金"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.HEAVY_METAL,
                "重金属",
                "移速下降, 坦度上升",
                "↓  {{Speed}}-0.15移速#↑ {{Damage}} 每-0.15移速, 伤害+0.22#有概率在受伤后不扣血, 角色越慢概率越高"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"伤害和概率上升","伤害和概率上升","伤害和概率上升"}},
                CONF={MULT_P3,"M3_HeavNet"}}
            },{
                FiendFolio.ITEM.ROCK.GROSSULAR,
                "钙铝榴石",
                "恶心的波动",
                "在未清理房间内周期性发射会恐惧、中毒或混乱周围敌人的波动"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"一次施加更多的异常状态","一次施加更多的异常状态","一次施加更多的异常状态"}},
                CONF={MULT_P3,"M3_GroRock"}}
            },{
                FiendFolio.ITEM.ROCK.SULFUR_CRYSTAL,
                "硫晶体",
                "周期性魔力",
                "每四个房间获得硫磺火的效果#!!! 吞下饰品可能导致需要的房间增多"..RockTrinket(3,1),
                {GOLD={INFO={findReplace=true},TEXT={"四","三","两"}},
                CONF={MULT_P3,"M3_SulRock"}}
            },{
                FiendFolio.ITEM.ROCK.TROLLITE,
                "一点小整蛊岩",
                "就一点",
                RockTrinket(6,1)
            },{
                FiendFolio.ITEM.ROCK.THROWLOMITE,
                "抛石",
                "抛掷石头",
                "周期性向短距离内最近的敌人投掷石块"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"攻击频率上升","攻击频率上升","攻击频率上升"}},
                CONF={MULT_P3,"M3_ThRowck"}}
            },{
                FiendFolio.ITEM.ROCK.HEARTHSTONE,
                "炉石",
                "随机卡牌效果",
                "{{Card}} 使用卡牌后触发一个随机的正面效果"..RockTrinket(2,1),
                {CONF={286,"NoEffect"}}
            },{
                FiendFolio.ITEM.ROCK.MAGNETIC_SAND,
                "磁力沙",
                "射速上升 + 磁性泪弹",
                "↑ {{Tears}} +0.45射速#↓ {{Damage}} -0.35伤害#{{Magnetize}} 有概率发射使敌人磁化的眼泪#{{Luck}} 幸运20: 50%"..RockTrinket(2,1),
                {GOLD={INFO={apend=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.POWER_ROCK,
                "电力石",
                "碎石充能",
                "{{Battery}} 摧毁石头障碍物有几率回复主动充能#{{Luck}} 幸运20: 25%"..RockTrinket(3,1),
                {GOLD={INFO={apend=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.TIGERS_EYE,
                "虎眼石",
                "石中凝视者",
                "在房间内反弹的跟班, 造成接触伤害并阻挡敌弹#总会向最近的敌人移动"..RockTrinket(3,1)
            },{
                FiendFolio.ITEM.ROCK.SMALLER_ROCK,
                "更小的石头",
                "找到它的近亲",
                "炸毁标记石头后获得:#↓ {{Speed}} -0.06移速#↑ {{Damage}} +0.33伤害"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"获得的属性翻倍","获得的属性翻倍","获得的属性翻倍"}}}
            },{
                FiendFolio.ITEM.ROCK.NITRO_CRYSTAL,
                "硝基晶体",
                "金钱带来强化",
                "↑ {{Coin}} 拾取钱币后会暂时提升{{Speed}}移速和{{Tears}}射速"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"获得的属性翻倍","获得的属性翻倍","获得的属性翻倍"}}}
            },{
                FiendFolio.ITEM.ROCK.SHARD_OF_GOLEM,
                "石像鬼碎片",
                "石像鬼的报答",
                "{{Heart}} 过量治疗会为一个额外血条充能#↑ 额外血条中的每颗使角色{{Damage}}+0.45伤害#{{Collectible479}} 所有心被填满后, 吞下所有持有的饰品#被吞下后不再提供额外血条, 并获得永久的最大伤害增益"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"0.45","0.9","1.35"}},
                CONF={
                    {MULT_P3,"M3_BriRock"},
                    {"5.350."..TrinketType.TRINKET_SHARD_OF_CHINA,"Override","Overridden"},
                    {FiendFolio.ITEM.COLLECTIBLE.HEART_OF_CHINA,"Overridden","Override"}
                }}
            },{
                FiendFolio.ITEM.ROCK.ROCK_WORM,
                "岩石虫",
                "哇嘎八嘎",
                "↑ {{Tears}} +0.4射速修正#↑ {{Damage}} +0.2伤害修正#每层获得随机的蠕虫特效"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"获得的属性翻倍, 获得更多蠕虫特效","获得的属性翻倍, 获得更多蠕虫特效","获得的属性翻倍, 获得更多蠕虫特效"}},
                CONF={MULT_P3,"M3_WorRock"}}
            },{
                FiendFolio.ITEM.ROCK.FOOLS_UNOBTAINIUM,
                "愚者的无法获取岩",
                "现在去找真正的无法获取岩",
                RockTrinket(1,1)
            },{
                FiendFolio.ITEM.ROCK.MINICHIBISIDIAN,
                "Q版岩",
                "替补骷髅仔",
                "每4s有10%的概率用骷髅仔替换随机敌人, 并具有相同的血量"..RockTrinket(5,1),
                {GOLD={INFO={findReplace=true},TEXT={"10%","20%","30%"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.FRIENDLY_RAPID_FIRE_OPAL,
                "友军速射蛋白石",
                "全自动火力全开",
                "进入房间后配备一支12发弹药的突击步枪, 具备{{Tears}}双倍射速, {{Range}}射程+6.25, {{Shotspeed}}弹速+1"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"12","24","36"}},
                CONF={
                    {MULT_P3,"M3_FRFRock"},
                    {FiendFolio.ITEM.COLLECTIBLE.RUBBER_BULLETS,"RubberM90"}
                }}
            },{
                FiendFolio.ITEM.ROCK.HIDDENITE,
                "翠绿锂辉石",
                "视线",
                "第一次从敌人的视线中进入并离开时, 将其混乱一段时间"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"混乱时间翻倍","混乱时间翻倍","混乱时间翻倍"}},
                CONF={MULT_P3,"M3_SalRock"}}
            },{
                FiendFolio.ITEM.ROCK.LOST_ARTIFACT,
                "失落石造物",
                "天喵精灵",
                "清理房间后，生成随机数量的“精灵苍蝇”跟班#能造成接触伤害，一定次数后死亡#有三种不同类型#小型：周期性发射眼泪#圆型：死亡后产生眼泪环#大型：死亡后产生超大爆炸和大型眼泪环#产生眼泪类型与玩家攻击方式相同"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"更多更好的精灵苍蝇","更多更好的精灵苍蝇","更多更好的精灵苍蝇"}},
                CONF={248,"HiveArtif"}}
            },{
                FiendFolio.ITEM.ROCK.ATLAS_BURDEN,
                "巨人之负石",
                "把它交给其他人",
                "↓ 速度{{Speed}}-0.15#对敌人造成伤害时, 有概率在其头顶悬起巨石, {{Slow}}使目标敌人减速, 每帧有概率被石头碾碎, 而后释放8向石头子弹#{{Luck}} 幸运2.5: 50%"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"巨石更容易碾碎目标","巨石更容易碾碎目标","巨石更容易碾碎目标"}}}
            },{
                FiendFolio.ITEM.ROCK.POCKET_ROCKIT,
                "口袋火箭石",
                "火焰石验",
                "概率发射弹速更慢的追踪火箭弹#火箭弹靠近敌人时发射低伤害泪弹#命中敌人时产生弹幕, 不同颜色产生不同弹幕#{{Luck}} 幸运10: 25%"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={
                    {MULT_P3,"M3_Chance"},
                    {52,"DrRocket"},
                    {{168,579},"NoEffect"},
                    {494,"LazerRocket"},
                    {524,"ZeRocket"},
                    {678,"Overridden","Override"}
                },CHAR={16,"NoEffect",true}}
            },{
                FiendFolio.ITEM.ROCK.WORMHOLE_ROCK,
                "虫洞石",
                "哦, 虫洞?",
                "在房间随机位置生成2个虫洞#一端吸入眼泪, 敌弹或炸弹, 另一端喷出#喷出的敌弹自动瞄准敌人, 变为友方并造成+50%的伤害#喷出的眼泪自动瞄准敌人, 有概率获得额外效果#喷出的炸弹造成+50%的伤害, 有概率获得一个随机炸弹特效#虫洞有概率爆裂, 产生一大片眼泪或者其他效果, 并改变位置"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"一大片眼泪","大片高伤害眼泪","大片高伤害眼泪"}}}
            },{
                FiendFolio.ITEM.ROCK.RIDICULOUS_METAL,
                "荒谬重金属",
                "节奏报偿",
                "进入未清理房间时, 产生节奏小游戏#在正确时机发射眼泪，对所有敌人造成伤害, 时机由谱面指示#↑ 取得连击数越多, 每次造成的伤害越高#!!! 尽量达成全连试试!"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"造成的伤害上升","造成的伤害上升","造成的伤害上升"}},
                CONF={MULT_P3,"M3_BriRock"}},
                "首先是犯下电吉他之罪的Ridiculon"
            },{
                FiendFolio.ITEM.ROCK.TOP_ROCK,
                "谷顶石",
                "全属性上升! 只能往下爬",
                "↑ 全属性上升#!!! 之后无法再提升属性#丢弃该饰品时还原属性"
            },{
                FiendFolio.ITEM.ROCK.ARACHNITE,
                "蛛形石",
                "在石头内蠕动",
                "蓝蜘蛛替换为友好石头蜘蛛#有概率替换为友好标记石头蜘蛛或火炭蜘蛛"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"替换的石头蜘蛛伤害上升","替换的石头蜘蛛伤害上升","替换的石头蜘蛛伤害上升"}}}
            },{
                FiendFolio.ITEM.ROCK.HOMOEROTIC_RUBY,
                "同性恋红宝石",
                "永远都很烧, 宝贝!",
                "{{Burning}} 概率发射火焰眼泪#{{Luck}} 幸运35: 50%#{{ffBerserk}} 雌性敌人每隔一段时间有概率狂暴"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={"5.350."..FiendFolio.ITEM.ROCK.GAY_GARNET,"GayHomo"}}
            },{
                FiendFolio.ITEM.ROCK.GAY_GARNET,
                "基佬石榴石",
                "爱情的结晶",
                "{{Freezing}} 概率发射带冰冻效果的火焰#{{Luck}} 幸运30: 50%#{{ffBerserk}} 雌性敌人每隔一段时间有概率狂暴#{{Charm}} 雌性敌人初始被魅惑"..RockTrinket(1,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.LITHOPEDIAN,
                "石胎",
                "独属于你的石像仔",
                "生成友好石头裂口尸#可推动敌人并阻挡敌弹"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"可造成接触伤害","可造成接触伤害","可造成接触伤害"}}}
            },{
                FiendFolio.ITEM.ROCK.JESUS_ROCK,
                "耶稣石",
                "起死回生",
                "{{BlendedHeart}} 死亡后, 在当前房间以6颗心重生"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"回满红心并无敌数秒","回满红心并无敌数秒","回满红心并无敌数秒"}},
                CONF={MULT_P3,"M3_JesRock"}}
            },{--先帝创业未办而转行, 于是我来剽窃了（？？？？？
                FiendFolio.ITEM.ROCK.CHUNK_OF_GALLIUM,
                "镓矿块",
                "减速液迹",
                "15%的概率发射一个灰色泪弹, 留下灰色减速液体#{{Luck}} 幸运20: 45%"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.ONION_ROCK,
                "洋葱石",
                "可投掷伙伴",
                "首次拾取/每清理四个房间, 生成一个随机的{{ColorPink}}砖块仔{{CR}}跟班, 会在角色攻击时发射自己#每层至多4个{{ColorPink}}砖块仔{{CR}}#不同的{{ColorPink}}砖块仔{{CR}}有不同的行为模式"..RockTrinket(4,1),
                {GOLD={INFO={findReplace=true},TEXT={"4","5","6"}},
                CONF={655,"Spikmin"}},
                "pikmin叫做皮克敏, 那么brickmin是不是可以叫...瑞克敏?"
            },{--好了先帝回来了
                FiendFolio.ITEM.ROCK.KNIFE_PEBBLE,
                "利刃卵石",
                "伤害上升",
                "↑ {{Damage}} +1.25伤害"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"+1.25","+2.5","+3.75"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.TEARDROP_PEBBLE,
                "泪滴卵石",
                "射速上升",
                "↑ {{Tears}} +0.72射速"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"+0.72","+1.44","+2.16"}},
                CONF={MULT_P3,"M3_TearsUp"}}
            },{
                FiendFolio.ITEM.ROCK.ARROW_PEBBLE,
                "箭矢卵石",
                "射程 + 弹速上升",
                "↑ {{Range}} +1.25射程#↑ {{Shotspeed}} +0.3弹速"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"属性增幅翻倍","属性增幅翻倍","属性增幅翻倍"}},
                CONF={MULT_P3,"M3_HecRock"}}
            },{
                FiendFolio.ITEM.ROCK.CLOVER_PEBBLE,
                "苜蓿卵石",
                "幸运上升",
                "↑ {{Luck}} +2运气"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"+2","+4","+6"}},
                CONF={MULT_P3,"M3_LuckUp"}}
            },{
                FiendFolio.ITEM.ROCK.SHOE_PEBBLE,
                "足靴卵石",
                "移速上升",
                "↑ {{Speed}} +0.3移速"..RockTrinket(2,1),
                {GOLD={INFO={findReplace=true},TEXT={"+0.3","+0.6","+0.9"}},
                CONF={MULT_P3,"M3_SpeedUp"}}
            },{
                FiendFolio.ITEM.ROCK.FRUITY_PEBBLE,
                "果香卵石",
                "全属性上升",
                "↑ {{Speed}} +0.15移速#↑ {{Tears}} +0.15射速#↑ {{Damage}} +0.3伤害#↑ {{Range}} +0.75射程#↑ {{Shotspeed}} +0.18弹速#↑ {{Luck}} +1幸运"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"属性增幅翻倍","属性增幅翻倍","属性增幅翻倍"}},
                CONF={MULT_P3,"M3_HecRock"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK1,
                "石像仔",
                "石像头伙伴",
                "向周围敌人发射眼泪, 在地上时仍生效"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK2,
                "吐根石像仔",
                "丢炸弹伙伴",
                "向周围敌人发射抛物线爆炸泪弹, 在地上时仍生效"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK3,
                "湿岩石像仔",
                "吹泡泡伙伴",
                "被动地生成泡泡, 造成伤害并阻挡子弹, 在地上时仍生效"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"攻击频率上升","攻击频率上升","攻击频率上升"}},
                CONF={MULT_P3,"M3_ThRowck"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK4,
                "连发石像仔",
                "瞄直线伙伴",
                "持续向随机方向发射眼泪, 在地上时仍生效"..RockTrinket(2,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK5,
                "碎裂大嘴石像仔",
                "吸敌人伙伴",--保持阵容
                "周期性开始吸引周围敌人, 在地上时仍生效"..RockTrinket(3,1),
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK6,
                "硫磺石像仔",
                "发硫磺火伴",
                "周期性向随机方向发射硫磺火光束, 在地上时仍生效"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK7,
                "十字石像仔",
                "走十字伙伴",
                "持续以十字或叉字的形状发射眼泪, 在地上时仍生效"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK8,
                "眼睛石像仔",
                "发激光伙伴",
                "持续发射旋转激光, 在地上时仍生效"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK9,
                "坩埚石像仔",
                "克隆术伙伴",
                "周期性生成房间内一个怪物的友方复制, 在地上时仍生效"..RockTrinket(4,1),
                {GOLD={INFO={append=true},TEXT={"生成的友方怪物生命翻倍","生成的友方怪物生命翻倍","生成的友方怪物生命翻倍"}},
                CONF={MULT_P3,"M3_GriRoc9"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK10,
                "大嘴石像仔",
                "吸物品伙伴",
                "周期性吸引掉落物, 在地上时仍生效"..RockTrinket(2,1),
                nil,"这是Gaplin Grimace, 你也可以叫他Garlin...才怪!"
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK11,
                "三眼石像仔",
                "三只眼伙伴",
                "向周围敌人发射三发眼泪, 在地上时仍生效"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.GRIMACE_ROCK12,
                "感应石像仔",
                "读指令伙伴",
                "角色向它朝向的方向移动时, 发射眼泪, 在地上时仍生效"..RockTrinket(3,1),
                {GOLD={INFO={append=true},TEXT={"伤害翻倍","伤害翻倍","伤害翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.BREAKFAST_FOSSIL,
                "早餐化石",
                "生命上升 + 粉碎效果",
                RockTrinket(1,3).."{{Heart}} +1心之容器",
                nil,"这你也能过空?!"
            },{
                FiendFolio.ITEM.ROCK.SACK_FOSSIL,
                "福袋化石",
                "更多福袋 + 粉碎效果",
                "10%概率将掉落物重置为福袋"..RockTrinket(2,3).."{{GrabBag}} 生成一个福袋",
                {GOLD={INFO={findReplace=true},TEXT={"10%","20%","30%"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.COPROLITE_FOSSIL,
                "粪化石",
                "屎尿屁文化 + 粉碎效果",
                "每个房间生成一只蓝苍蝇"..RockTrinket(2,3).."生成12只蓝苍蝇",
                {GOLD={INFO={findReplace=true},TEXT={"一","两","三"}}}
            },{
                FiendFolio.ITEM.ROCK.BEETER_FOSSIL,
                "狙击蜂化石",
                "甜蜜琥珀 + 粉碎效果",
                "发射眼泪后再发射一颗30%伤害的眼泪#每次发射角度都会转动"..RockTrinket(3,3).."生成一只友方狙击蜂(Beeter)",
                {GOLD={INFO={findReplace=true},TEXT={"一颗","两颗","三颗"}}}
            },{
                FiendFolio.ITEM.ROCK.FLY_FOSSIL,
                "苍蝇化石",
                "好朋友一辈子 + 粉碎效果",
                "{{Trinket115}} 每个房间生成一只饥荒蝗虫"..RockTrinket(3,3).."获得一个漂亮苍蝇",
                {GOLD={INFO={findReplace=true},TEXT={"一","两","三"}}}
            },{
                FiendFolio.ITEM.ROCK.GMO_FOSSIL,
                "转基因化石",
                "头目产药 + 粉碎效果",
                "{{Pill}} 击败头目后吃下2颗药丸"..RockTrinket(3,3).."{{Pill}} 吃下3颗随机药丸",
                {GOLD={INFO={findReplace=true},TEXT={"2","4","6"}}}
            },{
                FiendFolio.ITEM.ROCK.SWORD_FOSSIL,
                "利剑化石",
                "小属性提升 + 粉碎效果",
                "↑ {{Tears}} +0.27射速#↑ {{Damage}} +1伤害#{{Range}} +0.75射程#↑ {{Shotspeed}} +0.2弹速"..RockTrinket(3,3).."永久获得上述属性的50%",
                {GOLD={INFO={append=true},TEXT={"属性增幅强化","属性增幅强化","属性增幅强化"}}}
            },{
                FiendFolio.ITEM.ROCK.FORTUNE_WORM_FOSSIL,
                "幸运虫化石",
                "过去的预言 + 粉碎效果",
                "↑ {{Shotspeed}} +0.2弹速#↑ {{Luck}} +2运气#有小概率发射幸运饼干泪弹, 造成105%伤害并在命中后显示一条预言"..RockTrinket(3,3).."{{SoulHeart}} 生成一颗额外的魂心，并且显示三条随机预言",
                {GOLD={INFO={append=true},TEXT={"属性变化加强, 概率上升","属性变化加强, 概率上升","属性变化加强, 概率上升"}},
                CONF={FiendFolio.ITEM.COLLECTIBLE.LEFTOVER_TAKEOUT,"M3_Chance"},}
            },{
                FiendFolio.ITEM.ROCK.PRIMORDIAL_FOSSIL,
                "始生化石",
                "初始套装 + 粉碎效果",
                "有1/15的概率改为发射一大团{{Collectible317}}神秘液体眼泪"..RockTrinket(3,3).."{{Player"..FiendFolio.PLAYER.GOLEM.."}} 获得石像鬼的两个初始饰品({{Trinket"..FiendFolio.ITEM.ROCK.DIRT_CLUMP.."}} + {{Trinket"..FiendFolio.ITEM.ROCK.ROLLING_ROCK.."}})",
                {GOLD={INFO={findReplace=true},TEXT={"1/15","2/15","1/5"}}}
            },{
                FiendFolio.ITEM.ROCK.REROLLIGAN_FOSSIL,
                "重置化石",
                "重置泪弹 + 粉碎效果",
                "{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.DUSTY_D10.."}} 泪弹有几率重置怪物#{{Luck}} 幸运7.5: 40%"..RockTrinket(3,3).."生成玻璃骰子",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.FOSSILIZED_FOSSIL,
                "石化化石",
                "化石复制 + 粉碎效果",
                "{{ffCrush}} 其他化石的摧毁时效果触发两次"..RockTrinket(2,3).."{{ffCrush}} 触发另一个持有的化石的粉碎效果",
                {GOLD={INFO={findReplace=true},TEXT={"两","三","四"}},
                CONF={"5.350."..FiendFolio.ITEM.ROCK.FOSSILIZED_FOSSIL,"NoEffect"}}
            },{
                FiendFolio.ITEM.ROCK.FISH_FOSSIL,
                "鱼化石",
                "废土之王 + 粉碎效果",
                "受伤后生成1-4个蓝苍蝇"..RockTrinket(2,3).."生成一个友方传送门",
                {GOLD={INFO={findReplace=true},TEXT={"4","5","6"}}},
                "8月24号之后的鱼类be like"
            },{
                FiendFolio.ITEM.ROCK.RUNIC_FOSSIL,
                "符文化石",
                "脆弱的符文 + 粉碎效果",
                "{{Trinket}}饰品总是会被重置为{{Rune}}符文#使用{{Rune}}符文会掉落一个{{Card55}}符文碎片"..RockTrinket(2,3).."{{Card55}} 生成4个符文碎片",
                {GOLD={INFO={findReplace=true},TEXT={"一个","两个","三个"}}}
            },{
                FiendFolio.ITEM.ROCK.CANNED_FOSSIL,
                "罐头化石",
                "豆制品力量 + 粉碎效果",
                "角色受伤时放屁"..RockTrinket(2,3).."{{Charm}} 生成一个友方的魅惑垃圾虫(Charmed Litter Bug)",
                {GOLD={INFO={append=true},TEXT={"屁的范围增大","屁的范围增大","屁的范围增大"}}}
            },{
                FiendFolio.ITEM.ROCK.BALANCED_FOSSIL,
                "平衡化石",
                "均衡战利品 + 粉碎效果",
                "如果玩家缺少{{Heart}}心/{{Coin}}钱币/{{Bomb}}炸弹/{{Key}}钥匙, 50%的几率将房间奖励替换为这些"..RockTrinket(2,3).."获得3个数量最少的掉落物",
                {GOLD={INFO={append=true},TEXT={"缺少掉落物的判定上升","缺少掉落物的判定上升","缺少掉落物的判定上升"}}}
            },{
                FiendFolio.ITEM.ROCK.BURIED_FOSSIL,
                "埋藏化石",
                "瞧瞧挖出来了什么! + 粉碎效果",
                "每层都有一个{{ColorFade}}被标记的点{{CR}}, 炸开或挖开会生成化石饰品#允许炸弹炸开土堆"..RockTrinket(3,3).."{{Trinket}} 生成随机化石饰品",
                {GOLD={INFO={findReplace=true},TEXT={"一个","两个","三个"}}}
            },{
                FiendFolio.ITEM.ROCK.TRIPPY_FOSSIL,
                "迷糊化石",
                "啊吧啊啥? 哦是粉碎效果",
                "{{Collectible398}} 有几率发射缩水泪弹#{{Luck}} 幸运43.5: 100%"..RockTrinket(3,3).."↓ 缩小角色",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.MAXS_FOSSIL,
                "马克斯的化石",
                "狗嚎 + 粉碎效果",
                "临近{{SecretRoom}}隐藏房时嗥叫"..RockTrinket(3,3).."{{Trinket62}} 角色遇到的下一个标记石头会被揭示",
                nil,"你在狗叫什么"
            },{
                FiendFolio.ITEM.ROCK.BOMB_SACK_FOSSIL,
                "炸弹袋化石",
                "岩制炸弹 + 粉碎效果",
                "{{Bomb}} 角色的炸弹会生成一圈裂地波"..RockTrinket(3,3).."{{Bomb}} 生成5个炸弹"
            },{
                FiendFolio.ITEM.ROCK.DEATH_CAP_FOSSIL,
                "死亡菇化石",
                "毒性还很强 + 粉碎效果",
                "↓ 每个房间积累全属性下降"..RockTrinket(3,3).."↑ 将积累的全属性下降逆转为66%的全属性上升",
                {GOLD={INFO={append=true},TEXT={"属性增幅翻倍","属性增幅翻倍","属性增幅翻倍"}}}
            },{
                FiendFolio.ITEM.ROCK.EXPLOSIVE_FOSSIL,
                "爆炸化石",
                "更多炸弹 + 粉碎效果",
                "{{Bomb}} 房间清理后有概率额外生成一枚炸弹#石头有几率被替换为炸弹石头"..RockTrinket(3,3).."{{Collectible483}} 在接下来的3个房间内引起巨型爆炸",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.COLOSSAL_FOSSIL,
                "巨大化石",
                "多重粉碎效果",
                "{{Tearsize}} 角色的眼泪大小翻倍"..RockTrinket(3,3).."{{QuestionMark}} 触发3个随机化石的粉碎效果",
                {GOLD={INFO={findReplace=true},TEXT={"3","4","5"}}}--存疑
            },{
                FiendFolio.ITEM.ROCK.SKUZZ_FOSSIL,
                "跳蛛化石",
                "好朋友一辈子 + 粉碎效果",
                "{{Trinket"..TrinketType.TRINKET_FLEA_POLLUTION.."}} 房间开始时生成2-3个污染之跳蚤"..RockTrinket(3,3).."生成5-7个蓝跳蛛",
                {GOLD={INFO={findReplace=true},TEXT={"2-3","3-4","4-5"}}}
            },{
                FiendFolio.ITEM.ROCK.FOSSILIZED_BLESSING,
                "石化祝福",
                "伊甸园之礼 + 粉碎效果",
                "↑ {{Tears}} +0.4射速"..RockTrinket(3,3).."{{Trinket}} 下一局游戏生成一个随机的岩石饰品",
                {GOLD={INFO={findReplace=true},TEXT={"0.4","0.8","1.2"}},
                CONF={MULT_P3,"M3_TearsUp"}}
            },{
                FiendFolio.ITEM.ROCK.PETRIFIED_SOCK,
                "石化袜子",
                "跟石头一样硬 + 粉碎效果",
                "概率发射石化眼泪#{{Luck}} 幸运45: 100%"..RockTrinket(3,3).."{{Card92}} 获得一个随机宝宝",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.MOLTEN_FOSSIL,
                "熔化化石",
                "熔化力量 + 粉碎效果",
                "{{Collectible479}} 所有吞下的石头饰品的饰品强化等级+0.15"..RockTrinket(3,3).."{{Collectible479}} 给予一个随机的常见石头饰品并将其吞下",
                {GOLD={INFO={findReplace=true},TEXT={"0.15","0.3","0.45"}}}
            },{
                FiendFolio.ITEM.ROCK.VALUE_FOSSIL,
                "价值化石",
                "商店打折 + 粉碎效果",
                "{{Shop}} 商店货物价格减少{{Coin}} 1美分"..RockTrinket(2,3).."{{Coin}} 生成三个钱币",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}},
                CONF={MULT_P3,"M3_ValFoss"}}
            },{
                FiendFolio.ITEM.ROCK.CORAL_FOSSIL,
                "珊瑚化石",
                "你感到沉溺 + 粉碎效果",
                "有几率以叉字形发射眼泪#{{Luck}} 幸运75: 100%#{{Heart}} 拾起时治疗一颗心"..RockTrinket(2,3).."{{Heart}} 治疗一颗心, 并生成3个友方的{{ColorYellow}}溺水冲刺蝇蛆{{CR}}",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={516,"Sprincoral"}}
            },{
                FiendFolio.ITEM.ROCK.NECROMANTIC_FOSSIL,
                "死灵化石",
                "死者苏生 + 粉碎效果",
                "敌人死后有几率生成一个骨头环绕物#{{Luck}} 幸运20: 40%"..RockTrinket(3,3).."生成在本局游戏中被摧毁过的随机化石",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.BRAIN_FOSSIL,
                "脑子化石",
                "暂时性跟踪 + 粉碎效果",
                "发射跟踪眼泪, 一段时间后失去跟踪效果(受射程影响)"..RockTrinket(3,3).."{{Card2}} 生成一张魔术师",
                {GOLD={INFO={append=true},TEXT={"跟踪效果持续时间更久","跟踪效果持续时间更久","跟踪效果持续时间更久"}},
                CONF={MULT_P3,"M3_BraFoss"}}
            },{
                FiendFolio.ITEM.ROCK.REFUND_FOSSIL,
                "取款化石",
                "沙子免费 + 粉碎效果",
                "{{ffCrush}} 摧毁其他化石后生成{{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}}便携沙子#{{ffGrind}} 便携沙子可以被免费研磨"..RockTrinket(4,3).."{{Trinket"..FiendFolio.ITEM.ROCK.POCKET_SAND.."}} 生成2个便携沙子",
            },{
                FiendFolio.ITEM.ROCK.LEFT_FOSSIL,
                "左断手",
                "化石路者得黑暗 + 粉碎效果",
                "{{RedChest}} 所有箱子替换为红箱子"..RockTrinket(2,3).."{{RedChest}} 生成一个红箱子",
            },{
                FiendFolio.ITEM.ROCK.THANK_YOU_FOSSIL,
                "感谢化石",
                "慷慨的乞丐 + 粉碎效果",
                "乞丐会提供资源两次"..RockTrinket(2,3).."{{Card21}}生成一张审判卡",
                {GOLD={INFO={findReplace=true},TEXT={"两","三","四"}}}
            },{
                "Hollow Fossil",
                "空洞化石",
                "黑暗内含 + 粉碎效果",
                "↑ {{Damage}} +1.35伤害"..RockTrinket(4,3).."{{AngelDevilChance}} 清理头目后保证开启恶魔/天使房#{{ffCrush}} 生成1黑心",
                {GOLD={INFO={findReplace=true},TEXT={"1.35","2.7","4.05"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.CURVED_GEODE,
                "弯角晶洞",
                "伤害上升 + 晶洞强化",
                "↑ {{Damage}} +1伤害修正"..RockTrinket(2,2).."↑ {{Damage}} +0.5伤害修正",
                {GOLD={INFO={append=true},TEXT={"伤害加成翻倍","伤害加成翻倍","伤害加成翻倍"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.HAUNTED_GEODE,
                "幽灵晶洞",
                "鬼灵攻击 + 晶洞强化",
                "有20%几率发射灵体+穿透泪弹#{{Luck}} 幸运40: 100%"..RockTrinket(2,2).."↑ 概率x1.5",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.HEALTH_GEODE,
                "生命晶洞",
                "重振雄风 + 晶洞强化",
                "{{Heart}} 如果角色的红心降到1心或以下, 治疗所有红心并失去该饰品"..RockTrinket(2,2).."{{SoulHeart}} 效果触发时还会获得1魂心",
                {GOLD={INFO={findReplace=true},TEXT={"1魂心","2魂心","2魂心"}}}
            },{
                FiendFolio.ITEM.ROCK.LITTLE_GEODE,
                "小型晶洞",
                "体型下降 + 晶洞强化",
                "↓ 碰撞体积-10%"..RockTrinket(2,2).."↓ 碰撞体积-10%",
                {GOLD={INFO={findReplace=true},TEXT={"10%","20%","30%"}},
                CONF={MULT_P3,"M3_LilGeog"}}
            },{
                FiendFolio.ITEM.ROCK.QUICK_GEODE,
                "快速晶洞",
                "加速赶路 + 晶洞强化",
                "{{Speed}} 在已清理的房间内移速下限改为1.75#!!! 吞掉后可能导致移速下限改为1.2"..RockTrinket(2,2).."{{Speed}} 始终获得移速+0.1",
                {GOLD={INFO={findReplace=true},TEXT={"1.75","1.85","1.85"}}}
            },{
                FiendFolio.ITEM.ROCK.WEBBY_GEODE,
                "蛛网晶洞",
                "减速泪弹 + 晶洞强化",
                "{{Slow}} 有概率发射减速泪弹#{{Luck}} 幸运40: 100%"..RockTrinket(2,2).."{{Slow}} 减速泪弹命中会留下大片减速液体",
                {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率翻倍"}},
                CONF={{89,231,"5.350.130"},"WebbySlow"}}
            },{
                FiendFolio.ITEM.ROCK.LUCKY_GEODE,
                "幸运晶洞",
                "幸运上升 + 晶洞强化",
                "↑ {{Luck}} +1幸运"..RockTrinket(3,2).."{{Luck}} +2幸运",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                FiendFolio.ITEM.ROCK.PHLEGMY_GEODE,
                "浓痰晶洞",
                "鼻屎泪弹 + 晶洞强化",
                "{{Collectible459}} 10%概率发射鼻屎泪弹#{{Luck}} 幸运90: 100%"..RockTrinket(3,2).."{{Slow}} 鼻屎泪弹会减速被附着的敌人",
                {GOLD={INFO={findReplace=true},TEXT={"10%","20%","30%"}},
                CONF={{459,"5.350.98"},"NoseMagic"}}
            },{
                FiendFolio.ITEM.ROCK.LOB_GEODE,
                "高抛晶洞",
                "高抛泪弹 + 晶洞强化",
                "↑ {{Range}} +1射程#抛物线弹道"..RockTrinket(2,2).."{{Range}} +0.5射程",
                {GOLD={INFO={findReplace=true},TEXT={"1","2","3"}}}
            },{
                FiendFolio.ITEM.ROCK.SODALITE_GEODE,
                "方钠晶洞",
                "甜到发病的矿物水 + 晶洞强化",
                "{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.IMP_SODA.."}} 有概率发射五倍伤害的暴击眼泪#{{Luck}} 幸运22%: 33.33%"..RockTrinket(3,2).."↑ 概率x1.5",
                {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率翻倍"}},
                CONF={FiendFolio.ITEM.COLLECTIBLE.IMP_SODA,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.PLACEBEODE,
                "安慰晶",
                "永久晶洞强化处方",
                "{{ColorTransform}}魔见魔爱的{{ColorRed}}晶洞饰品, 本身无效果#↑ 即使吞服本饰品也可以加强其他持有的晶洞饰品"
            },{
                FiendFolio.ITEM.ROCK.WARM_GEODE,
                "温暖晶洞",
                "温暖力量 + 晶洞强化",
                "↑ 靠近火焰时{{Damage}}伤害+3, {{Shotspeed}}弹速+0.2#{{ColorOrange}}暖楼层{{CR}}给予被动属性提升"..RockTrinket(2,2).."{{Burning}} 靠近火焰时获得更高的伤害, 且泪弹有概率灼烧敌人",
                {GOLD={INFO={append=true},TEXT={"属性增幅强化","属性增幅强化","属性增幅强化"}},
                CONF={MULT_P3,"M3_HecRock"}}
            },{
                FiendFolio.ITEM.ROCK.CHAIN_GEODE,
                "连锁晶洞",
                "连锁拆迁 + 晶洞强化",
                "被摧毁的石头有40%的几率摧毁周围的石头"..RockTrinket(2,2).."↑ 周围的石头有70%的概率被摧毁, 并有20%的几率填上深坑",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.RUSTY_GEODE,
                "锈蚀晶洞",
                "失去光泽 + 晶洞强化",
                "↑ {{Damage}} +8伤害, 会随时间衰减"..RockTrinket(2,2).."{{Timer}} 伤害衰减的速率减缓",
                {GOLD={INFO={findReplace=true},TEXT={"8","16","24"}}}
            },{
                FiendFolio.ITEM.ROCK.FRAGMENTED_ONYX_GEODE,
                "片段玛瑙晶洞",
                "恐惧泪弹 + 晶洞强化",
                "{{Fear}} 10%的概率发射恐惧泪弹#{{Luck}} 幸运26: 100%"..RockTrinket(3,2).."{{DevilChance}} 概率上升, 且被恐惧的敌人会基于本层的恶魔房概率受到额外伤害",
                {GOLD={INFO={append=true},TEXT={"概率上升, 额外伤害上升","概率上升, 额外伤害上升","概率上升, 额外伤害上升"}}}
            },{
                FiendFolio.ITEM.ROCK.QUANTUM_GEODE,
                "量子晶洞",
                "纠缠态泪弹 + 晶洞强化",
                "发射三发泪弹, 只有一发能命中敌人#!!! 不适用于非泪弹攻击方式"..RockTrinket(3,2).."↑ 有两发泪弹可以命中敌人"
            },{
                FiendFolio.ITEM.ROCK.TECHNOLOGICAL_GEODE,
                "科技晶洞",
                "科技影响 + 晶洞强化",
                "{{Collectible152}} 攻击时发射短射程激光, 造成30%的伤害"..RockTrinket(3,2).."↑ 同时发射两道激光",
                {GOLD={INFO={append=true},TEXT={"激光射程上升, 伤害上升","激光射程上升, 伤害上升","激光射程上升, 伤害上升"}}}
            },{
                FiendFolio.ITEM.ROCK.RUBBER_GEODE,
                "橡胶晶洞",
                "橡胶泪弹 + 晶洞强化",
                "有几率发射弹跳的网球, 造成{{ffBruise}}易伤和击退#{{Luck}} 幸运17.5: 50%"..RockTrinket(2,2).."↑ 概率+15%, 击退加强",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.CALZONE_GEODE,
                "馅饼晶洞",
                "蝇蛆泪弹 + 晶洞强化",
                "{{Bait}} 5%的概率发射回旋冲锋蛆, 标记命中的敌人#{{Luck}} 幸运9: 50%"..RockTrinket(3,2).."↑ 概率+10%, 可突破上限",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.TOUGH_GEODE,
                "坚韧晶洞",
                "抗压 + 晶洞强化",
                "摧毁岩石饰品时有20%几率不将其消耗"..RockTrinket(3,2).."↑ 概率+20%",
            },{
                FiendFolio.ITEM.ROCK.TIPSY_GEODE,
                "醉酒晶洞",
                "加入冰晶 + 晶洞强化",--on the rock似乎也有在酒里加冰的意思
                "↑ {{Damage}} +2伤害#!!! 角色的移动会摇晃"..RockTrinket(3,2).."↑ 更高的伤害, 更猛的醉酒",
                {GOLD={INFO={findReplace=true},TEXT={"2","4","6"}},
                CONF={MULT_P3,"M3_BriRock"}}
            },{
                FiendFolio.ITEM.ROCK.VINYL_GEODE_A,
                "唱片A面晶洞",
                "双面加成 + 晶洞强化",
                "↑ {{Damage}} 伤害+1#{{Shotspeed}} 弹速+0.24#在奇数层翻面"..RockTrinket(3,2).."↑ {{Speed}} 移速+0.07#↑ {{Tears}} 射速+0.2",
                {GOLD={INFO={append=true},TEXT={"属性增幅翻倍","属性增幅翻倍","属性增幅翻倍"}},
                CONF={MULT_P3,"M3_HecRock"}}
            },{
                FiendFolio.ITEM.ROCK.VINYL_GEODE_B,
                "唱片B面晶洞",
                "双面加成 + 晶洞强化",
                "↑ {{Speed}} 移速+0.2#↑ {{Tears}} 射速+0.66#在偶数层翻面"..RockTrinket(1,2).."↑ {{Damage}} 伤害+0.3#{{Shotspeed}} 弹速+0.08",
                {GOLD={INFO={append=true},TEXT={"属性增幅翻倍","属性增幅翻倍","属性增幅翻倍"}},
                CONF={MULT_P3,"M3_HecRock"}}
            },{
                FiendFolio.ITEM.ROCK.PRISMATIC_GEODE,
                "棱镜晶洞",
                "棱镜之力 + 晶洞强化",
                "敌人死亡后有12%几率掉落{{ColorRainbow}}棱镜碎片{{CR}}, 能在10s内提升属性#房间清理后有25%几率掉落额外棱镜碎片"..RockTrinket(4,2).."{{Timer}} 属性提升时间+5s",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.FRACTAL_GEODE,
                "分形晶洞",
                "不要看得太深 + 晶洞强化",
                "{{ffSleeping}} 15%几率发射能够造成昏睡的螺旋泪弹#{{Luck}} 幸运20: 45%"..RockTrinket(3,2).."{{ffSleeping}} 概率+20%, 昏睡泪弹有1/3概率使敌人立刻入睡",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}}}
            },{
                FiendFolio.ITEM.ROCK.GMO_GEODE,
                "转基因晶洞",
                "强效药 + 晶洞强化",
                "{{Pill}} 吃下药丸后会吃下另一颗随机药丸"..RockTrinket(4,2).."{{Pill}} 额外吃下一颗正面药丸",
                {GOLD={INFO={findReplace=true},TEXT={"另一颗","另两颗","另三颗"}}}
            },{
                FiendFolio.ITEM.ROCK.SWALLOWED_GEODE,
                "被吞下的金洞",
                "咕噜 + 晶洞强化",
                "{{Coin}} 受伤时掉落一颗钱币"..RockTrinket(2,2).."{{Coin}} 33%几率生成双钱币",
                {GOLD={INFO={append=true},TEXT={"+25%概率生成双硬币","+25%概率生成双硬币","+50%概率生成双硬币"}}}
            },{
                FiendFolio.ITEM.ROCK.VOODOO_GEODE,
                "巫毒晶洞",
                "诅咒带来力量 + 晶洞强化",
                "↑ {{Damage}} 本层具有诅咒时+1.5伤害#{{CurseRoom}} 进入诅咒房获得本层内伤害+0.35"..RockTrinket(2,2).."{{Damage}} 伤害增幅x1.5",
                {GOLD={INFO={append=true},TEXT={"伤害加成翻倍","伤害加成翻倍","伤害加成翻倍"}}}
            },{
                FiendFolio.ITEM.ROCK.UMBILICAL_GEODE,
                "脐带晶洞",
                "保护胎儿 + 晶洞强化",
                "{{Collectible318}} 受伤时有20%几率生成双子座跟班#{{Collectible50}} 在低于或等于{{HalfHeart}}半红心时进入房间, 会在本房间内生成小史蒂文跟班"..RockTrinket(2,2).."↑ 30%概率生成双子座, 小于等于{{Heart}}一颗心时生成小史蒂文",
                {GOLD={INFO={append=true},TEXT={"概率上升","概率上升","概率上升"}},
                CONF={MULT_P3,"M3_Chance"}}
            },{
                FiendFolio.ITEM.ROCK.GEODE_FOSSIL,
                "晶洞化石",
                "两全其美 + 晶洞强化 + 粉碎效果",
                "↑ {{Range}} +1.5射程#{{ColorTransform}}魔见魔爱的{{ColorRainbow}}晶洞化石, {{ColorRed}}可以在持有其他晶洞时获得如下增益{{CR}}#{{Range}} 射程+0.75#{{ffCrush}} {{ColorOrange}}粉碎后{{CR}}:#生成一个常见或{{ColorBlue}}稀有的{{CR}}晶洞饰品#{{ffCrush}} {{ColorRainbow}}在持有其他晶洞时粉碎后{{CR}}:#改为生成两个晶洞饰品",
                {GOLD={INFO={append=true},TEXT={"射程上升","射程上升","射程上升"}},
                CONF={MULT_P3,"M3_Range"}}
            }
        }
        local cards={
            {
                FiendFolio.ITEM.CARD.PLUS_3_FIREBALLS,
                "+3火球",
                "瞄准并部署",
                "{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.PYROMANCY.."}} 生成3个火球"
            },{
                FiendFolio.ITEM.CARD.REVERSE_3_FIREBALLS,
                "+3火球?",
                "恶念已部署",
                "{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.MALICE.."}} 变为在房间内反弹的恶念球"
            },{
                FiendFolio.ITEM.CARD.IMPLOSION,
                "小鬼爆破",
                "召唤盟友, 造成伤害",
                "发射3向火球, 击中时召唤空心邪鬼"
            },{
                FiendFolio.ITEM.CARD.CALLING_CARD,
                "犯罪名片",
                "666-S8N",
                "召唤一个友方的猎灵魔(Psi Hunter)"
            },{
                FiendFolio.ITEM.CARD.GROTTO_BEAST,
                "石窟野兽",
                "每个牌库里都有个稀有款!",
                "召唤一个友方的邪魔典纸怪物"
            },{
                FiendFolio.ITEM.CARD.DOWNLOAD_FAILURE,
                "下载失败",
                "对面的行为逻辑看起来好怪",
                "{{Collectible"..FiendFolio.ITEM.COLLECTIBLE.NIL_PASTA.."}} 使所有敌人偶尔错误地调用便便人(Poople)的AI行为逻辑"
            },{
                FiendFolio.ITEM.CARD.PLAGUE_OF_DECAY,
                "衰竭瘟疫",
                "枯萎使者",
                "{{RottenHeart}} 获得五颗腐心"
            },{
                FiendFolio.ITEM.CARD.DEFUSE,
                "拆弹卡",
                "炸弹消失术",
                "{{Bomb}} 炸弹石头和即爆炸弹变为炸弹掉落物#将爆炸怪物变为它们的普通版本"
            },{
                FiendFolio.ITEM.CARD.SMALL_CONTRABAND,
                "S型走私货",--S M L
                "一手交货",
                "#!!! 我听说下层有个可疑人物正等着收货呢...#!!! 也最好不要让它离开你的视线"
            },{
                FiendFolio.ITEM.CARD.SKIP_CARD,
                "跳过卡",
                "哒咩!",
                "清除本房间的所有障碍物、敌人和掉落物#该房间不会增加充能, 也不会掉落奖励#可以跳过头目房, 但不会掉落道具"
            },{
                FiendFolio.ITEM.CARD.POT_OF_GREED,
                "强欲之壶",
                "抽2张牌",
                "{{Card}} 生成两张卡牌"
            },{
                FiendFolio.ITEM.CARD.CARDJITSU_SOCCER,
                "足球",
                "也有些地方翻译叫橄榄球",--指football可能在某些地区叫橄榄球, 虽然这卡叫soccer
                "在当前房间生成一个足球, 可以被踢走对敌人造成伤害"
            },{
                FiendFolio.ITEM.CARD.CARDJITSU_FLOORING_UPGRADE,
                "地板翻新",
                "为你推荐勃艮第风",
                "用随机的水迹填满本房间的地板"
            },{
                FiendFolio.ITEM.CARD.CARDJITSU_AC_3000,
                "空调3000",
                "保持凉爽",
                "{{Slow}} 减速本房间所有敌人#{{Freezing}} 它们在死后冻结"
            },{
                FiendFolio.ITEM.CARD.GIFT_CARD,
                "礼物卡",
                "把它们包起来吧",
                "将本房间内的道具重置为{{Collectible515}}神秘礼物"
            },{
                FiendFolio.ITEM.CARD.THREE_OF_CLUBS,
                "梅花3",
                "物品自助餐",
                "{{Bomb}} 生成3个随机的炸弹掉落物"
            },{
                FiendFolio.ITEM.CARD.JACK_OF_CLUBS,
                "梅花J",
                "爆破, 但代价是什么?",
                "生成2-3个铜炸弹#将本房间内的所有炸弹变为铜炸弹"
            },{
                FiendFolio.ITEM.CARD.QUEEN_OF_CLUBS,
                "梅花Q",
                "ó",
                "{{Collectible52}} 在本房间内获得胎儿博士的效果"
            },{
                FiendFolio.ITEM.CARD.KING_OF_CLUBS,
                "梅花K",
                "爆!",
                "生成一个究极炸弹掉落物"
            },{
                FiendFolio.ITEM.CARD.THREE_OF_DIAMONDS,
                "方片3",
                "物品自助餐",
                "{{Coin}} 生成3个随机的钱币掉落物"
            },{
                FiendFolio.ITEM.CARD.JACK_OF_DIAMONDS,
                "方片J",
                "财富, 但代价是什么?",
                "生成2-4个诅咒硬币#将本房间内的所有硬币变为诅咒硬币"
            },{
                FiendFolio.ITEM.CARD.QUEEN_OF_DIAMONDS,
                "方片Q",
                "石=金",
                "{{Coin}} 将本房间的所有石头和大便变为钱币#!!! 这些钱币一段时间后消失"
            },{
                FiendFolio.ITEM.CARD.KING_OF_DIAMONDS,
                "方片K",
                "金!",
                "{{Coin}} 点金本房间内的所有敌人#将本房间内的一些石头变为愚人金"
            },{
                FiendFolio.ITEM.CARD.THREE_OF_SPADES,
                "黑桃3",
                "物品自助餐",
                "{{Key}} 生成3个随机的钥匙掉落物"
            },{
                FiendFolio.ITEM.CARD.JACK_OF_SPADES,
                "黑桃J",
                "答案, 但代价是什么?",
                "生成1-2个烫钥匙#将本房间内的所有钥匙变为烫钥匙"
            },{
                FiendFolio.ITEM.CARD.QUEEN_OF_SPADES,
                "黑桃Q",
                "0-^^",
                "{{Key}} 生成1-10把钥匙",
            },{
                FiendFolio.ITEM.CARD.KING_OF_SPADES,
                "黑桃K",
                "开!",
                "{{Key}} +1钥匙#{{Collectible623}} 本房间内, 角色的眼泪被替换为尖锐钥匙#!!! 会消耗钥匙, 没有钥匙则不替换"
            },{
                FiendFolio.ITEM.CARD.THREE_OF_HEARTS,
                "红桃3",
                "物品自助餐",
                "{{Heart}} 生成3个随机的心掉落物"
            },{
                FiendFolio.ITEM.CARD.JACK_OF_HEARTS,
                "红桃J",
                "健康, 但代价是什么?",
                "将你的所有{{SoulHeart}}魂心/{{BlackHeart}}黑心变为{{ffImmoralHeart}}邪心#!!! 如果没有任何{{SoulHeart}}魂心/{{BlackHeart}}黑心, 生成一个{{ffImmoralHeart}}邪心"
            },{
                FiendFolio.ITEM.CARD.MISPRINTED_JOKER,
                "印错的鬼牌",
                "极善或是极恶",
                "将本房间的道具重置为来自{{DevilRoom}}恶魔/{{AngelRoom}}天使房的道具#!!! 有小概率将道具变为{{AngelRoom}}神圣/{{DevilRoom}}邪恶主题的{{Heart}}心/{{Chest}}箱子"
            },{
                FiendFolio.ITEM.CARD.MISPRINTED_JACK_OF_CLUBS,
                "印错的梅花J",
                "爆破, 但代价是什么?",
                "生成一枚金即爆炸弹#将本间内的所有炸弹变为即爆炸弹"
            },{
                FiendFolio.ITEM.CARD.MISPRINTED_TWO_OF_CLUBS,
                "印错的梅花2",
                "=金物品复",
                "{{Bomb}} 所持炸弹数量翻倍#将所持炸弹全部转化为铜炸弹"
            },{
                FiendFolio.ITEM.CARD.THIRTEEN_OF_STARS,
                "星星13",
                "搞什么!",
                "{{Collectible721}} 生成一个错误道具"
            },{
                FiendFolio.ITEM.CARD.ACE_OF_WANDS,
                "权杖王牌",
                "全部转换",
                "{{Battery}} 将所有掉落物, 箱子和非头目敌人变为电池#!!! 这些电池会在一段时间后消失",
                nil,"攥紧权杖的手, 火元素的号角, 满载热情的能源--此谓不可被束缚的自由"
            },{
                FiendFolio.ITEM.CARD.ACE_OF_PENTACLES,
                "星币王牌",
                "全部转换",
                "{{Trinket}} 将所有掉落物, 箱子和非头目敌人变为饰品",
                nil,"高举星币的手, 土元素的锦旗, 满载福祉的馈赠--此谓务实者的财富"
            },{
                FiendFolio.ITEM.CARD.ACE_OF_SWORDS,
                "宝剑王牌",
                "全部转换",
                "{{LordoftheFlies}} 将所有掉落物, 箱子和非头目敌人变为蓝苍蝇, 蓝蜘蛛和蓝跳蛛",
                nil,"紧握宝剑的手, 风元素的冠冕, 刺穿物质的风暴--此谓洞察世界的决心"
            },{
                FiendFolio.ITEM.CARD.ACE_OF_CUPS,
                "圣杯王牌",
                "全部转换",
                "{{Pill}} 将所有掉落物, 箱子和非头目敌人变为药丸",
                nil,"捧住圣杯的手, 水元素的圣餐, 生机盎然的水塘--此谓健康繁盛之伟业"
            },{
                FiendFolio.ITEM.CARD.TWO_OF_WANDS,
                "权杖2",
                "物品翻倍",
                "{{Battery}} 翻倍角色主动道具的充能#没有充能时+1充能",
                nil,"领主站在城墙之上, 手扶权杖, 俯视着帝国的领土--欲戴王冠, 必承其重"
            },{
                FiendFolio.ITEM.CARD.TWO_OF_PENTACLES,
                "星币2",
                "物品翻倍",
                "{{Trinket}} 生成角色持有的所有饰品的复制#{{Trinket}} 没有饰品时生成一个饰品#!!! 不生成吞下的饰品",
                nil,"杂耍艺人耍弄他的金钱, 亦或是表演他的体力或才华, 以便在那些他必须去做和他所想的事之间找到一个平衡点--万事万物, 均应慎重权衡"
            },{
                FiendFolio.ITEM.CARD.TWO_OF_SWORDS,
                "宝剑2",
                "物品翻倍",
                "{{LordoftheFlies}} 生成所有粪滴跟班, 蓝苍蝇, 蓝蜘蛛和蓝跳蛛的复制#{{Collectible357}} 在本房间内生成角色的所有永久跟班的复制",
                nil,"女人背对着波涛, 双手持剑交叉, 将自己的双眼蒙蔽--静观其变, 暂且忽视当下的风暴又何尝不可"
            },{
                FiendFolio.ITEM.CARD.TWO_OF_CUPS,
                "圣杯2",
                "物品翻倍",
                "{{Pill}} 生成该房间内和角色身上的每一个药丸的复制#{{Pill}} 如果房间内不存在并且角色身上没有药丸, 生成2个",
                nil,"一男一女面对面, 手中各持一个圣杯, 形成合作的关系--心灵的契合, 可以让你找到一些单打独斗所找不到的"
            },{
                FiendFolio.ITEM.CARD.THREE_OF_WANDS,
                "权杖3",
                "物品自助餐",
                "{{Battery}} 生成三个随机电池#!!! 这些电池会在3秒后消失",
                nil,"商人遥望出海的船只, 一边探索人生的机会, 一边掌控既有的成就--时刻考虑自身的情况, 脚踏实地, 令每个计划付诸实行"
            },{
                FiendFolio.ITEM.CARD.THREE_OF_CUPS,
                "圣杯3",
                "物品自助餐",
                "{{Pill}} 生成3个随机药丸#有50%的几率成为大药丸",
                nil,"三个女人围在一起, 高举圣杯, 庆祝丰收的喜悦--敢于通过重重阻碍,努力就会产生成果, 工作就能得到饱尝"
            },{
                FiendFolio.ITEM.CARD.THREE_OF_SWORDS,
                "宝剑3",
                "物品自助餐",
                "{{Damage}} 生成三个随机蓝苍蝇, 蝗虫, 蓝蜘蛛, 蓝跳蛛, 跳蚤或粪滴跟班",
                nil,"三把剑刺穿了红心, 背景则是风暴肆虐, 一片灰暗--如果你接受不了赤裸的血腥, 保持逃避, 你就永远只能是个胆小怕事的废物"
            },{
                FiendFolio.ITEM.CARD.THREE_OF_PENTACLES,
                "星币3",
                "物品自助餐",
                "{{Trinket}} 随机生成3个饰品, 包括石头饰品#有50%的概率是{{ColorGold}}金色{{CR}}的",
                nil,"修道院之中的雕刻家专心雕琢, 两位修女与之交谈, 星币的图案就纹在上方--罗马不少一天建成的, 一切成功都不是偶然的, 时刻积累量变才能带来质变"
            },{
                FiendFolio.ITEM.CARD.KING_OF_WANDS,
                "权杖国王",
                "电池升级",
                "{{Battery}} 将本房间内的电池升级"
            },{
                FiendFolio.ITEM.CARD.KING_OF_CUPS,
                "圣杯国王",
                "药丸升级",
                "{{Pill}} 将本房间内和角色持有的药丸全部变为大药丸"
            },{
                FiendFolio.ITEM.CARD.KING_OF_SWORDS,
                "宝剑国王",
                "随从升级",
                "{{Collectible247}} 本层的剩余时间内, 获得好朋友一辈子!的效果"
            },{
                FiendFolio.ITEM.CARD.KING_OF_PENTACLES,
                "星币国王",
                "饰品升级",
                "{{Trinket}} 将本房间内和角色持有的饰品全部{{ColorGold}}镀金{{CR}}"
            },{
                FiendFolio.ITEM.CARD.REVERSE_KING_OF_CLUBS,
                "黑桃K?",
                "你妈炸了",
                "使一个巨型炸弹在角色头上爆炸并杀死角色"
            },{
                FiendFolio.ITEM.CARD.ENERGY_GRASS,
                "草能量",
                "毒属性抽卡",
                "{{Poison}} 使本房间内的所有敌人中毒"
            },{
                FiendFolio.ITEM.CARD.ENERGY_FIRE,
                "火能量",
                "火属性抽卡",
                "{{Burning}} 使本房间内的所有敌人燃烧"
            },{
                FiendFolio.ITEM.CARD.ENERGY_WATER,
                "水能量",
                "泪属性抽卡",
                "{{Collectible323}} 使本房间内的所有敌人周期性发射眼泪"
            },{
                FiendFolio.ITEM.CARD.ENERGY_LIGHTNING,
                "电能量",
                "电属性抽卡",
                "{{Collectible494}} 使本房间内的所有敌人周期性放电"
            },{
                FiendFolio.ITEM.CARD.ENERGY_FIGHTING,
                "格斗能量",
                "温属性抽卡",
                "{{ffBerserk}} 使本房间内的所有敌人狂暴#{{ffBerserk}} 狂暴的敌人会周期性切换目标(包括敌人), 受到额外伤害, 移动更快, 并在期间不会死亡"
            },{
                FiendFolio.ITEM.CARD.ENERGY_PSYCHIC,
                "超能能量",
                "乱属性抽卡",
                "{{Confusion}} 使本房间内的所有敌人混乱"
            },{
                FiendFolio.ITEM.CARD.ENERGY_COLORLESS,
                "无色能量",
                "血属性抽卡",
                "{{ffHemorrhage}} 使本房间内的所有敌人大出血#{{ffHemorrhage}} 大出血的敌人周期性受到伤害, 随机喷射血泪, 并且留下会伤害敌人的血迹"
            },{
                FiendFolio.ITEM.CARD.ENERGY_DARKNESS,
                "恶能量",
                "惧属性抽卡",
                "{{Fear}} 使本房间内的所有敌人恐惧"
            },{
                FiendFolio.ITEM.CARD.ENERGY_METAL,
                "钢能量",
                "伤属性抽卡",
                "{{ffBruise}} 使本房间内的所有敌人易伤#{{ffBruise}} 易伤的敌人受到的伤害增加, 累积越多伤害越高"
            },{
                FiendFolio.ITEM.CARD.ENERGY_FAIRY,
                "妖精能量",
                "魅属性抽卡",
                "{{Charm}} 魅惑本房间内的所有敌人"
            },{
                FiendFolio.ITEM.CARD.ENERGY_DRAGON,
                "龙能量",
                "能量卡抽卡",
                "{{Trinket"..FiendFolio.ITEM.TRINKET.ENERGY_SEARCHER.."}} 随机触发一个能量卡效果"
            },{
                FiendFolio.ITEM.CARD.RUNE_ANSUS,
                "猪神符文",
                "史野",
                "所在层揭示全图",
                nil,"逗逗你的呀"
            },{
                FiendFolio.ITEM.CARD.SOUL_OF_FIEND,
                "邪祟魔的魂石",
                "人多势众",
                "生成5-8个空心邪鬼和0-2个黑心邪鬼"
            },{
                FiendFolio.ITEM.CARD.SOUL_OF_GOLEM,
                "石像鬼的魂石",
                "石在必得",--原为为rock on=石头/摇滚的双关? 我摆烂了
                "生成三个{{Player"..FiendFolio.PLAYER.GOLEM.."}}石头饰品"
            },{
                FiendFolio.ITEM.CARD.SOUL_OF_RANDOM,
                "随机数魂石",
                "我是谁?",
                "随机触发一个魂石效果"
            },{
                FiendFolio.ITEM.CARD.PUZZLE_PIECE,
                "拼图片",
                "完成谜题",
                "完成预言谜题的1/3#!!! 完成预言谜题后生成奖励"
            },{
                FiendFolio.ITEM.CARD.GREEN_HOUSE,
                "绿屋",
                "逐出家门",
                "清除本房间内所有敌人和掉落物#它们会在下个房间出现"
            },{
                FiendFolio.ITEM.CARD.BRICK_SEPERATOR,
                "乐高分离器",
                "拆分它们",--考虑到还有拆分乐高积木的效果故进行了修改
                "{{Collectible631}} 将所有敌人变为两个40%血量的小型复制#在本房间内获得穿透眼泪"
            },{
                FiendFolio.ITEM.CARD.COOL_PHOTO,
                "炫酷靓照",
                "可以卖个好价钱!",
                "{{Coin}} 生成1-2个钱币"
            },{
                FiendFolio.ITEM.CARD.TREASURE_DISC,
                "宝箱光盘",
                "一分钟试用期",
                "获得来自{{ItemPoolTreasure}}{{ItemPoolGreedTreasure}}宝箱房道具池的3-5个道具的效果, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.SHOP_DISC,
                "商店光盘",
                "一分钟试用期",
                "获得来自{{ItemPoolShop}}{{ItemPoolGreedShop}}商店道具池的3-5个道具的效果, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.BOSS_DISC,
                "头目光盘",
                "一分钟试用期",
                "获得来自{{ItemPoolBoss}}{{ItemPoolGreedBoss}}头目道具池的3-5个道具的效果, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.SECRET_DISC,
                "隐藏光盘",
                "一分钟试用期",
                "获得来自{{ItemPoolSecret}}{{ItemPoolGreedSecret}}隐藏房道具池的3-5个道具的效果, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.DEVIL_DISC,
                "恶魔光盘",
                "一分钟试用期",
                "获得来自{{ItemPoolDevil}}{{ItemPoolGreedDevil}}恶魔房道具池的3-5个道具的效果, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.ANGEL_DISC,
                "天使光盘",
                "一分钟试用期",
                "获得来自{{ItemPoolAngel}}{{ItemPoolGreedAngel}}天使房道具池的3-5个道具的效果, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.PLANETARIUM_DISC,
                "星象光盘",
                "一分钟试用期",
                "获得来自{{ItemPoolPlanetarium}}星象房道具池的3-5个道具的效果, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.CHAOS_DISC,
                "混沌光盘",
                "一分钟试用期",
                "获得来自{{Collectible402}}随机道具池的3-5个道具的效果, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.BROKEN_DISC,
                "破损光盘",
                "一分钟试试试试试试试试试试试试试试试试试试试试试试试试",
                "获得来自{{Blank}}随机道具池的道具的效果3-5个, 持续60秒"
            },{
                FiendFolio.ITEM.CARD.BLANK_LETTER_TILE,
                "空键帽",
                "选一个键位",--根据效果进行了改动
                "↑ 你下一个按下的按键会被记录, 按住时会一直有属性上升, 持续一层"
            },{
                FiendFolio.ITEM.CARD.HORSE_PUSHPOP,
                "强力胶棒",
                "把自己拼回去",
                "{{BrokenHeart}} 治疗一颗碎心"
            },{
                FiendFolio.ITEM.CARD.TOP_HAT,
                "高顶礼帽",
                "动一下资本的蛋糕",
                "生成一个打开的便携商店箱子"
            },{
                FiendFolio.ITEM.CARD.CHRISTMAS_CRACKER,
                "圣诞拉炮",
                "拉!",
                "生成随机口袋物品#显示1条笑话#产生小型爆炸(无伤害)"
            },{
                FiendFolio.ITEM.CARD.STUD,
                "乐高钉扣",
                "小心脚下",
                "生成1枚钉扣硬币#钉扣硬币价值1硬币, 对经过的敌人造成伤害#{{Collectible486}} 拾取时角色受伤但不掉血",
            },{
                FiendFolio.ITEM.CARD.STUD_2,
                "2枚乐高钉扣",
                "小心脚下",
                "生成1枚钉扣硬币#钉扣硬币价值1硬币, 对经过的敌人造成伤害#{{Collectible486}} 拾取时角色受伤但不掉血",
                {CONF={FiendFolio.ITEM.CARD.BRICK_SEPERATOR,"blank","Seperatable"}}
            },{
                FiendFolio.ITEM.CARD.STUD_3,
                "3枚乐高钉扣",
                "小心脚下",
                "生成1枚钉扣硬币#钉扣硬币价值1硬币, 对经过的敌人造成伤害#{{Collectible486}} 拾取时角色受伤但不掉血",
                {CONF={FiendFolio.ITEM.CARD.BRICK_SEPERATOR,"blank","Seperatable"}}
            },{
                FiendFolio.ITEM.CARD.STUD_4,
                "4枚乐高钉扣",
                "小心脚下",
                "生成1枚钉扣硬币#钉扣硬币价值1硬币, 对经过的敌人造成伤害#{{Collectible486}} 拾取时角色受伤但不掉血",
                {CONF={FiendFolio.ITEM.CARD.BRICK_SEPERATOR,"blank","Seperatable"}}
            },{
                FiendFolio.ITEM.CARD.STUD_5,
                "5枚乐高钉扣",
                "小心脚下",
                "生成1枚钉扣硬币#钉扣硬币价值1硬币, 对经过的敌人造成伤害#{{Collectible486}} 拾取时角色受伤但不掉血",
                {CONF={FiendFolio.ITEM.CARD.BRICK_SEPERATOR,"blank","Seperatable"}}
            },{
                FiendFolio.ITEM.CARD.STUD_6,
                "6枚乐高钉扣",
                "小心脚下",
                "生成1枚钉扣硬币#钉扣硬币价值1硬币, 对经过的敌人造成伤害#{{Collectible486}} 拾取时角色受伤但不掉血",
                {CONF={FiendFolio.ITEM.CARD.BRICK_SEPERATOR,"blank","Seperatable"}}
            },{
                FiendFolio.ITEM.CARD.GLASS_D6,
                "玻璃六面骰",
                "重置你的命运",
                "重置房间中的底座道具"
            },{
                FiendFolio.ITEM.CARD.GLASS_D4,
                "玻璃四面骰",
                "重置自己",
                "重置所有角色持有的被动道具"
            },{
                FiendFolio.ITEM.CARD.GLASS_D8,
                "玻璃八面骰",
                "重置属性",
                "角色的伤害, 射速, 射程, 移速属性的修正x0.5-x2#修正在每次使用后重置"
            },{
                FiendFolio.ITEM.CARD.GLASS_D100,
                "玻璃一百面骰",
                "重置一切!",
                "复制房间中的1掉落物#重置角色的移速, 射速, 伤害, 射程和被动道具#重置房间中的所有底座道具, 掉落物和石头#重新开始当前房间, 重生所有敌人并降级"
            },{
                FiendFolio.ITEM.CARD.GLASS_D10,
                "玻璃十面骰",
                "重置敌人",
                "使房间中所有敌人降级"
            },{
                FiendFolio.ITEM.CARD.GLASS_D20,
                "玻璃二十面骰",
                "重置掉落物",
                "重置房间中的所有掉落物"
            },{
                FiendFolio.ITEM.CARD.GLASS_D12,
                "玻璃十二面骰",
                "重置岩石",
                "将障碍物重置为其他随机类型的障碍物"
            },{
                FiendFolio.ITEM.CARD.GLASS_SPINDOWN,
                "玻璃计数骰",
                "-1",
                "将房间中所有道具重置为内部ID减1的道具"
            },{
                FiendFolio.ITEM.CARD.GLASS_AZURITE_SPINDOWN,
                "玻璃蓝铜计数骰",
                "-1",
                "将房间内所有饰品的编号减少1"
            },{
                FiendFolio.ITEM.CARD.GLASS_D2,
                "玻璃二面骰",
                "重随泪弹",
                "使用后可朝指定方向投掷{{ColorPurple}}二面骰{{CR}}#投掷后在地上短暂旋转#{{QuestionMark}} 重随在旋转时接触到的敌人, 泪弹及掉落物"
            },{
                FiendFolio.ITEM.CARD.STORAGE_BATTERY_0,
                "储能电池",
                "给它充电",
                "使用以从你的主动道具处储存充能#再次使用后充能你的主动道具#{{Card" .. FiendFolio.ITEM.CARD.CORRODED_BATTERY_0 .. "}} 进入下一层时腐蚀"
            },{
                FiendFolio.ITEM.CARD.STORAGE_BATTERY_1,
                "储能电池",
                "给它充电",
                "使用以从你的主动道具处储存充能#再次使用后充能你的主动道具#{{Card" .. FiendFolio.ITEM.CARD.CORRODED_BATTERY_1 .. "}} 进入下一层时腐蚀"
            },{
                FiendFolio.ITEM.CARD.STORAGE_BATTERY_2,
                "储能电池",
                "给它充电",
                "使用以从你的主动道具处储存充能#再次使用后充能你的主动道具#{{Card" .. FiendFolio.ITEM.CARD.CORRODED_BATTERY_2 .. "}} 进入下一层时腐蚀"
            },{
                FiendFolio.ITEM.CARD.STORAGE_BATTERY_3,
                "储能电池",
                "给它充电",
                "使用以从你的主动道具处储存充能#再次使用后充能你的主动道具#{{Card" .. FiendFolio.ITEM.CARD.CORRODED_BATTERY_3 .. "}} 进入下一层时腐蚀"
            },{
                FiendFolio.ITEM.CARD.CORRODED_BATTERY_0,
                "腐蚀的电池",
                "它快炸了",
                "使用以从你的主动道具处储存充能#再次使用后充能你的主动道具#{{Collectible63}} 可以过量充能主动道具#!!! 给主动道具充能一段时间后会失效"
            }
        }
        local pill={
            {
                FiendFolio.ITEM.PILL.CYANIDE,
                "氰化物药丸",
                "↑ 给予大量属性上升#{{Pill}} 清理房间后有高概率生成药丸#!!! 60秒后杀死角色#{{Pill}} 吃下其他药丸后可以结束该效果"
            },{
                FiendFolio.ITEM.PILL.MELATONIN,
                "褪黑素",
                "{{ffSleeping}} 催眠所有怪物"
            },{
                FiendFolio.ITEM.PILL.HOLY_SHIT,
                "厚礼泄",
                "生成一个神圣大便"
            },{
                FiendFolio.ITEM.PILL.HAEMORRHOIDS,
                "痔疮",
                "生成一个红色大便"
            },{
                FiendFolio.ITEM.PILL.FISH_OIL,
                "鱼油",
                "{{Tearsize}} 增加眼泪大小"
            },{
                FiendFolio.ITEM.PILL.LEMON_JUICE,
                "柠檬汁",
                "{{Tearsize}} 减少眼泪大小"
            },{
                FiendFolio.ITEM.PILL.EPIDERMOLYSIS,
                "表皮松懈",
                "{{ffBruise}} 在本房间内缩短角色无敌时间"
            },{
                FiendFolio.ITEM.PILL.CLAIRVOYANCE,
                "千里眼",
                "移除本层诅咒"
            },{
                FiendFolio.ITEM.PILL.SPIDER_UNBOXING,
                "蜘蛛拆包",
                "生成一大团友方蜘蛛"
            }
        }
        local other={
            {6,1020,0,"矿机","{{Coin}} 消耗3美分#{{ffGrind}} 研磨并重随饰品"},
            {6,1021,0,"铋矿乞丐","{{ffCrush}} 粉碎饰品并返还1 - 1.5 魂心#{{Bomb}} 摧毁后有概率生成随机硬币或石头饰品"},
            {6,1022,0,"牢骚石匠","{{SoulHeart}} 消耗1.5魂心#{{Trinket}} 将饰品熔炼至道具栏#{{Bomb}} 摧毁后有概率生成随机硬币或石头饰品"},
            {6,1023,0,"未完成的石像鬼","{{Bomb}} 摧毁后生成随机石头饰品"},
            {6,1024,0,"晶洞石像鬼","{{Trinket}} 粉碎饰品并返还2个随机{{ColorRed}}晶洞{{CR}}#!!! 粉碎{{ColorRed}}晶洞{{CR}}饰品会返还该{{ColorRed}}晶洞{{CR}}饰品的两个复制#!!! 仅生效一次#{{Bomb}} 摧毁后生成随机{{ColorRed}}晶洞{{CR}}饰品"},
            {6,1025,0,"巴布信徒","{{Heart}} 提供1-3个血偿交易石头饰品, 只能拾取其中一个#!!! 必定为{{ColorBlue}}稀有{{CR}}及以上品质, 其中一个必定为{{ColorTransform}}魔见魔爱{{CR}}及以上品质#{{AngelChance}} 不会影响天使出现率#{{Bomb}} {{ColorFade}}不可摧毁"},
            {6,1026,0,"点金石像鬼","{{Coin}} 消耗10美分#{{ColorGold}}将饰品镀金{{CR}}, 而后有概率睡着并失效#{{Bomb}} {{ColorFade}}不可摧毁"},
            {6,1027,0,"巧舌如猪","!!! 一次性#将饰品重随为{{ColorYellow}}化石{{CR}}#如果给予{{ColorYellow}}化石{{CR}}, 则触发其粉碎效果3次"}
        }
        local conditionalList={
            blank="{{Blank}}",
            Stackable="可叠加",

            MultiPyro="最多可拥有更多的火球",
            MultiRandy="多个蜗牛兰迪之间也可以互相碰撞",
            MultiRib="发射更多肋骨",
            MultiBee="+1额外发射的泪弹, 总上限为8",
            MultiNyx="额外获得3个跟踪宝石",

            M3_LilGeog="进一步减少碰撞体积",
            M3_BraFoss="跟踪效果持续时间更久",
            M3_ValFoss="价格额外-1",
            M3_GriRoc9="生成的友方怪物生命上升",
            M3_SpeedUp="移速上升",
            M3_LuckUp="幸运上升",
            M3_TearsUp="射速上升",
            M3_JesRock="回满红心(需要饰品等级>1.5)",
            M3_FRFRock="更多的弹药",
            M3_WorRock="获得的属性翻倍, 获得更多蠕虫特效",
            M3_ThRowck="攻击频率上升",
            M3_SulRock="需要的房间减少",
            M3_GroRock="一次施加更多的异常状态",
            M3_HeavNet="伤害和概率上升",
            M3_SunRock="更多环绕物",
            M3_UrnRock="更多魂火",
            M3_SoaRock="更多泡泡",
            N3_GasRock="概率上升, 毒气持续时间上升",
            M3_Grave="饥饿游魂持续时间延长, 炼狱恶鬼更多, 破坏石头障碍物更容易生成灵魂",
            M3_GolRock="锁住敌人的时间更久",
            M3_StaRock="更多的石头从天而降",
            M3_CarRock="属性变化加强, 需要的距离加长",
            M3_LimRock="水迹伤害上升, 更多酸橙?",
            M3_FetRock="岩石跟班的射速和伤害加强",
            M3_SheRock="可能获得更多心",
            M3_HecRock="属性变化加强",
            M3_EmeRock="间隔时间缩短",
            M3_CitRock="发射短程泪弹的概率上升, 泪弹数量增加",
            M3_ThuRock="孵化几率上升, 高概率出现高品质饰品",
            M3_MolRock="增加点燃敌人的概率, 灼烧持续时间和生效范围",
            M3_SalRock="持续时间上升",
            M3_RolRock="更多的移速加成和移速上限",
            M3_SliRock="移速上升",
            M3_Chance="概率上升",
            M3_ThrRock="裂地波范围增加",
            M3_LeaRock="频率上升",
            M3_BriRock="伤害上升",
            M3_SceRock="范围上升, 魅惑持续时间上升",
            M3_RosRock="增加护盾持续时间",
            M3_Range="范围上升",

            ElecYick="杀死的敌人有概率掉落{{ffMorbidHeart}}病态之心",
            ElecHorse="碎心越多, 电击伤害越高",
            ElecKalu="效果结束后电击周围3名敌人",
            ElecDazz="额外电击一个敌人并将其变成黄金抽奖机",
            ElecKing="电弧兼容弹道特效",
            EleZurite="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_AZURITE_SPINDOWN.."}}玻璃蓝铜计数骰",
            ElecAstr="鬼灵爆破会电击周围的敌人",
            EleCherry="炸弹爆炸后电击周围的敌人",
            ElecGlobe="障碍物会电击周围的敌人",
            EleCamera="被拍照的敌人电击周围的敌人",
            EB="杀死的敌人有概率生成随机副手物品",
            ElecWhite="杀死的敌人留下蓝火",
            ElecMix="杀死的敌人生成随机邪鬼",
            ElecPurple="杀死的敌人有概率生成{{ffImmoralHeart}}半邪心",
            ElecBedt="命中的敌人立刻昏睡且持续时间翻倍",
            ElecMali="邪念球状态下持续电击周围敌人",
            ElecAVGM="生成奖励时电击周围的敌人",
            ElecFidd="根据积攒的增益造成更多的电击伤害",
            ElecSang="拔出的弯钩电击周围的敌人",
            ElecFrog="电击伤害随蓄力时间变化",
            ElecHook="在钩子的落点处电击周围的敌人",
            ElecD2="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_D2.."}}玻璃二面骰",
            ElecHead="丢头和收回头时电击周围敌人",
            ElecSola="命中的敌人也被锁住",
            ElecHold="储存或投掷大便时电击周围敌人",
            ElecLemen="杀死的敌人有概率生成额外的道具魂火",
            ElecAbyss="当前房间内每个蝗虫回到角色身边时电击周围敌人",
            ElecFind="生成的友好怪物会持续电击周围敌人4s",
            ElecSpin="使用时环绕物会电击周围敌人",
            ElecVade="鬼灵爆破会电击周围的敌人",
            ElecPlum="甜梅宝宝的攻击改为激光",
            ElecSkin="至多电击6个敌人, {{BrokenHeart}}碎心越多, 电击伤害越高",
            ElecYuck="杀死的敌人有概率生成{{RottenHeart}}",
            Elerazer="同时擦除电击命中的敌人",
            Electitch="使用后, 角色和织布魔偶电击周围的敌人",
            ElecKey2="杀死的敌人有概率掉落{{Key}}",
            Elecooper="眼珠与角色有激光连接",
            ElecWisp="杀死的敌人有概率生成魂火",
            ElecWavy="迷幻效果越强, 电击伤害越高",
            ElecRed="红色门框电击周围的敌人, 杀死的敌人有概率掉落{{Card78}}",
            Elecles="命中的敌人受到等于最大HP的伤害(对头目无效)",
            ElecFort="杀死的敌人触发幸运饼干效果",
            ElecBrim="电弧改为血激光柱",
            ElecGold="硬币越多, 电击伤害越高",
            ElecMom,"命中的敌人被{{Mom}}践踏",
            ElecBone="杀死的敌人变为友好骷髅仔",
            ElecSprin="洒水器持续电击周围敌人",
            ElecGift="必定生成部分电池/科技相关道具",
            ElecHole="黑洞不断朝外发射激光",
            ElecHear="命中的敌人有概率治疗{{HalfHeart}}",
            ElecNugg="狙击蝇跟班改为发射激光",
            ElecDInf="杀死的敌人有概率掉落随机玻璃骰子",
            ElecPotato="根据获得的肉块造成额外伤害",
            Elec5050="命中的敌人可能受到等于最大HP的伤害, 可能会满血",
            ElecWhat="命中的敌人放击退屁",
            ElecComp="命中的敌人生成蓝苍蝇或蓝蜘蛛",
            ElecSmel="杀死的敌人有概率掉落{{Trinket}}饰品",
            ElecPause="命中的敌人被石化",
            ElecVoid="杀死的敌人有概率生成友好传送门",
            ElecJaFl="消耗所有储存的苍蝇电击周围的敌人, 杀死的敌人生成蓝苍蝇",
            ElecTNT="生成的炸药桶爆炸时电击周围的敌人",
            ElecRewind="命中的敌人被{{Slow}}减速10s(仅适用于回溯次数用光后的沙漏)",
            ElecKind="命中的敌人被{{Charm}}魅惑4s",
            ElecD8="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_D8.."}}玻璃八面骰",
            ElecPort="从传送门中出来时电击周围敌人",
            ElecD12="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_D12.."}}玻璃十二面骰",
            ElecTeDe="每个泪弹电击周围的敌人",
            ElecPoke="释放的友好敌人短时间内迅速释放电击",
            ElecBoFr="每个跟班额外电击一个敌人",
            ElecMeBe="被命中的敌人放毒屁",
            ElecNick="仅50%的概率电击敌人, 杀死的敌人掉落{{Coin}}",
            ElecBmra="投掷和返回时电击周围敌人",
            ElecScis="头会持续电击周围的敌人",
            ElecTear="额外发射8向激光",
            ElecConv="杀死的敌人掉落{{Heart}}",
            ElecButter="额外电击附近的两个敌弹并将其销毁",
            ElecRampus="电弧与血激光柱持续时间相同, 位置固定",
            ElecSatan="根据当前的{{DevilChance}}造成额外伤害",
            ElecJar="消耗所有储存的心电击周围敌人, 杀死的敌人有概率治疗{{HalfHeart}}",
            ElecD10="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_D10.."}}玻璃十面骰",
            ElecD4="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_D4.."}}玻璃四面骰",
            ElecD100="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_D100.."}}玻璃百面骰",
            ElecJump="落地后电击周围的敌人",
            ElecRune="杀死的敌人触发{{Card55}}符文碎片",
            ElecRight="电击至多2名敌人, 杀死的敌人发射6向血泪",
            ElecConq="冲刺撞墙后电击周围敌人, 被命中的敌人还会被圣光轰击",
            ElecSlot="随机伤害和射程的电击",
            ElecKey="钥匙越多, 电击伤害越高",
            ElecSpid="被命中的敌人生成蓝蜘蛛",
            ElecD20="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_D20.."}}玻璃二十面骰",
            ElecCrys="杀死的敌人有概率生成{{SoulHeart}}或{{Card}}",
            ElecPray="杀死的敌人有概率使生命条内的{{EternalHeart}}变为心之容器",
            ElecGuppy="蓝苍蝇优先攻击被命中的敌人",
            ElecDeto="炸弹引爆后电击周围的敌人",
            ElecFrien="布偶持续电击周围的敌人",
            ElecIV="杀死的敌人有概率生成{{Coin}}硬币",
            ElecPaw="杀死的敌人生成{{HalfSoulHeart}}",
            ElecPony="冲刺撞墙后电击周围敌人",
            ElecRazo="心之容器越多, 电击伤害越高",
            ElecMons="杀死的敌人生成脆弱波比",
            ElecBean="被命中的敌人中毒",
            ElecPink="身体将会持续电击周围的敌人",
            ElecD6="杀死的敌人有概率掉落{{Card"..FiendFolio.ITEM.CARD.GLASS_D6.."}}玻璃六面骰",
            ElecPill="杀死的敌人有概率触发随机药丸效果",
            Elec7="杀死的敌人有概率掉落随机掉落物",
            ElecStro="萌死戳落地会电击周围的敌人",
            ElecCard="杀死的敌人有概率生成卡片",
            ElecReve="杀死的敌人生成随机天启蝗虫",
            ElecCorn="无敌期间杀死的敌人会电击周围敌人",
            ElecAAA="生成的炸弹爆炸会电击周围的敌人",
            ElecShad="无敌期间电击碰撞的敌人",
            ElecLemo="被命中的敌人生成液体",
            ElecHoly="被命中的敌人还会被圣光轰击",
            ElecEvel="根据命中的敌人数量造成额外伤害",
            ElecNecro="杀死的敌人生成骨片",
            ElecPoop="命中生成的大便还会电击其附近的敌人",
            ElecBomb="爆炸后电击3个附近的敌人",
            ElecTammy="同时释放10向激光",
            ElecBra="被命中的敌人石化更久",
            ElecKaze="同时围绕角色生成一个激光环",
            ElecPad="被命中的敌人恐惧更久",
            ElecBob="炸弹落地后也会电击周围敌人并使其中毒",
            ElecTele="传送后电击周围敌人并将其传送至随机位置",
            ElecHeart="杀死的敌人有概率生成{{HalfHeart}}",
            ElecDrRm="导弹落地后也会电击周围",
            ElecSHWB="电击伤害更高",
            ElecHoGl="被命中的敌人减速更久",

            NoseMagic="概率上升; 这些鼻屎泪弹也可以受到晶洞的加成施加减速效果",
            WebbySlow="概率上升; 这些减速泪弹也可以受到晶洞的加成生成减速液体",
            Sprincoral="洒水器发射泪弹时有概率让角色发射额外泪弹(大概率是bug)",
            Spikmin="砖块仔可以造成接触伤害",
            GayHomo="进一步增加敌人狂暴的概率",
            ZeRocket="!!! 该兼容具有漏洞, 闪电链也可能导致发射火箭弹并引发无限",
            LazerRocket="!!! 该兼容具有漏洞, 火箭弹发射的激光可能具有友伤",
            DrRocket="!!! 该兼容具有漏洞, 火箭弹可能会提前与角色发射的炸弹碰撞",
            AnimaGolgo="提前释放被锁住的敌人",
            RebarOath="血誓造成的红心伤害可能会更少, 相应能得到的增益也会略微减少",
            RestfulSleep="睡觉时额外获得2{{SoulHeart}}和1{{Mantle}}",
            DeepHector="受伤后不会被丢弃",
            SandAttack="概率造成两倍伤害并施加混乱",
            AltarPyro="火球无法被献祭",
            ImGay="合体",
            ReFiendish="额外生成1-2个紫水晶邪鬼",
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
            LostAche="增加3碎心, 意味着游魂允许受到3次伤害并存活",
            ChinaRevive="复活后移除所有的碎心",
            MaggyTakeover="对{{HalfHeart}}半红心的额外治疗不生效--不然刷起来也太简单了",
            DrToken="伤害修正x1.5",
            Seperatable="可拆分",
            HiveArtif="精灵体型和伤害翻倍",
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
        if mod.Setting.FancySyn then
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
                {FiendFolio.ITEM.COLLECTIBLE.ERRORS_CRAZY_SLOTS,FiendFolio.ITEM.COLLECTIBLE.CRAZY_JACKPOT},
                {ddad.item.UsOp.id,FiendFolio.ITEM.COLLECTIBLE.TOO_MANY_OPTIONS},
                {FiendFolio.ITEM.COLLECTIBLE.FIENDS_HORN,FiendFolio.ITEM.COLLECTIBLE.LIL_FIEND},
                {FiendFolio.ITEM.COLLECTIBLE.MUSCA,FiendFolio.ITEM.COLLECTIBLE.NUGGET_BOMBS},
                {ddad.item.ExLk.id,FiendFolio.ITEM.COLLECTIBLE.BEGINNERS_LUCK},
                {393,FiendFolio.ITEM.COLLECTIBLE.OPHIUCHUS}
            }
            for _,i in ipairs(PDDsyn) do mod:PDDfakeAddon(i[1],i[2]) end end
            local Dflipsyn={
                {5,100,FiendFolio.ITEM.COLLECTIBLE.SANGUINE_HOOK,5,100,FiendFolio.ITEM.COLLECTIBLE.DEIMOS},
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
            for _,i in ipairs(Dflipsyn) do mod:DFlipPairsAddon(i) end
        end
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
        }
        FiendFolio.PuzzlePieceParts.Fortunes={
            [1] = {"一个宠物", "你", "你的恐惧", "一个陌生人", "你最喜欢的食物"},
            [2] = {"将会害了", "将会帮助", "将要带走", "将会保护"},
            [3] = {"你", "你的生命", "你的灵魂", "你的敌人"}    
        } end        
    end
end)
