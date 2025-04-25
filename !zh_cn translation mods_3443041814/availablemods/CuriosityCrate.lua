local mod = CNEIDBabel
local sameDesc="打开它!"
mod:AddModTranslationLoader("ToyBoxMod", "好奇箱",function()
    local items = {
        {
            "Action Box",
            "操作箱",
            "爆炸奖励包",
            "房间内的最后一个敌人死亡后生成{{Collectible106}}大爆弹先生的炸弹#{{IGIcon}} 无法推动这个炸弹",
            {CONF={{140,209,220,256,353,366,367,432,563,614,646,727},"ActionBombs"}}
        },{
            "Astral Bean",
            "星际豆",
            "延时爆破",
            "将时间停止4s, 前3s角色会留下易爆气体, 然后拉出一个火大便#时间恢复流动时, 气体会被迅速引爆#!!! 当然, 爆炸可以伤害玩家",
            {CAR="时停效果和屁的数量翻倍",
            CONF={"5.350.134","GiGaFartSyn","GiGaFartSyn2"},
            }
        },{
            "CD-RW",
            "可复写式光盘机",
            "读写你的敌人",
            "杀死敌人有20%的概率生成光盘: 它们会斜向移动, 弹开坚硬的物体并造成3倍伤害#!!! 光盘在命中敌人3次后会破碎#{{Luck}} 幸运10: 40%",
            {BFF="更大的光盘, 伤害翻倍",
            CONF={
                {"5.350.109","TapedCD"},
                {"5.350.141","CDisPlayingSiren"},
            }}
        },{
            "Jar of Coal",
            "碳罐",
            "传递温暖",
            "{{Slow}} 泪弹有15%的概率变为会留下炭灰的{{ColorGray}}减速碳块泪弹{{CR}}#{{Burning}} 碳块泪弹有20%的概率被点燃, 使被命中的敌人被灼烧并点燃经过的炭灰",
            {CONF={
                {132,"DoubleCoal"},
                {531,"LandingCoal"},
                {168,"EpicCoal"},
                {257,"LitItGo"},
                {{495,616},"PepperCoal"},
                {329,"LidoviCoal"},
                {{118,68},"LazerCoal"},
            }}
        },{
            "Rocket Fuel",
            "火箭燃料",
            "推进式巡航导弹",
            "12%的概率发射一个巡航火箭, 可以造成4倍伤害并在命中后留下减速液体#!!! 火箭爆炸不会摧毁障碍物和门#{{Luck}} 幸运7: 33%",
            {CONF={{118,68,395},"LazeRocket"}}--
        },{
            "Rotten Doll",
            "腐烂布偶",
            "腐爆 + 虫群盟军",
            "在地面上生成一个布偶, 若有敌人靠近会炸成血雾#爆炸会生成10个友方蝇蛆, 击退敌人并生成一片毒云#!!! 爆炸不会摧毁障碍物和门",
            {CAR="毒云持续时间, 击退威力和蝇蛆数量翻倍",
            BFF="毒云的持续时间, 范围和击退威力增强"}
        },{
            "Sawblade Hoop",
            "锯环",
            "飞旋死神",
            "敌人靠近时会在角色身边展开锯片#{{BleedingOut}} 锯片会反弹敌弹, 伤害敌人, 施加流血并留下血迹",
            {CONF={{189,Isaac.GetItemIdByName("Sawblade Hoop")},"ULTIBLADE"}
            }
        },{
            "Snake Oil",
            "蛇油",
            "sss蛇形sss撕裂",
            "{{Chargeable}} 攻击方式改为蓄力发射至多10个同一弹道的穿透灵体{{ColorGreen}}蛇形泪弹{{CR}}, 且泪弹具有{{Trinket10}} 蠕动虫和{{Trinket144}} 脑形虫的效果#蛇形泪弹会减速, 改变方向并继续移动#未蓄满力会发射更少的泪弹",
            {CONF={
                {{330,561,6},"SnakeMilk"},
                {118,"BrimSnake"},
                {395,"Xnake"},
                {114,"Snife"},
                {68,"Technake"},
                {229,"Slung"},
                {168,"EpiSnake"},
                {{52,149},"DrSnake"},
                {316,"CurSnake"},--IsaacGuru维基也写瓢了,不知道是不是故意的(
                {678,"SnakeSection"},
                {533,"TriSnake"},
            }}
        },{
            "Stack of Papers",
            "纸堆",
            "收集舰队",
            "死亡的敌人释放会追击敌人并造成2倍伤害的纸飞机#纸飞机的数量由敌人的最大生命值决定",
            {CONF={
                {{257,103,305,231,596,110},"TearSyn"},
                {{168,52,401},"NineEleven"},--就你小子喜欢玩地狱笑话是吧
                {149,"Iplain"},
            }}
        },{
            "Army Barrel",
            "士兵玩具桶",
            "百分百纯塑料制品且已准备好大杀四方",
            "房间内每有一个敌人, 生成一个玩具士兵或玩具车#玩具士兵会朝敌人开枪, 玩具车会冲锋造成碰撞伤害",
            {BFF="玩具伤害翻倍",
            CAR="玩具数量翻倍",
            CONF={"5.350.141","SirenArmy"}}
        },{
            "Friendship Pendant",
            "友谊吊坠",
            "友谊中的崇拜",
            "{{BlackHeart}} +1黑心#{{ArrowUp}} 角色每有一个跟随角色的跟班获得{{Damage}}+0.66伤害#!!! 不包括蓝苍蝇和蓝蜘蛛",
            {CONF={"5.350.148","DoubleFriend"}}
        },{
            "Monster Meal",
            "怪兽餐",
            "生命上升, 别把奖品吃了!",
            "{{ArrowUp}} +1心之容器#{{Heart}} 治疗1红心#受到伤害有20%的概率将一个空的饰品槽/副手槽提供一个随机的饰品/消耗品#!!! 如果槽位不是空的, 则将槽位内的饰品/消耗品重随",
        },{
            "Surprise Egg",
            "奇趣蛋",
            "双倍玩具礼包",
            '{{Heart}} 治疗2红心#{{Trinket}} 生成2个来自"好奇箱"模组的随机饰品'
        },{
            "Surprisaac",
            '艾"吓"克',
            "双倍玩具礼...不是啥?!",
            '{{Heart}} 治疗2红心#{{IsaacSmall}} 生成4个迷你以撒#{{Trinket}} 生成2个来自"好奇箱"模组的随机饰品'
        },{
            "Heart of Gold",
            "黄金之心",
            "生命=金钱",
            "{{Heart}} 治疗所有红心#{{GoldenHeart}} 将角色的所有心变为金心#{{Coin}} 角色的硬币数量翻倍#如果角色没有{{Heart}}心之容器或{{Player22}}没有流失的红心, 所有 {{Heart}} 红心掉落物会变为随机 {{Coin}} 硬币"
        },{
            "Bound Spirit",
            "受缚之灵",
            "鬼影回响",
            "{{BlackHeart}} +1黑心#{{ArrowUp}} {{Speed}}+0.24移速#杀死敌人有33%的概率在当前房间生成一个{{Collectible584}}随机恶魔道具产生的魂火"
        },{
            "Blind Faith",
            "盲目的信仰",
            "视恶若无",
            '{{SoulHeart}} +3魂心#{{TreasureRoom}} 宝箱房额外提供一个血偿交易{{ItemPoolAngel}}道具作为选择, 只有一个道具可以被拾取#{{DevilRoom}} 所有恶魔房只会有一个{{ItemPoolAngel}}道具, 拾取后将需要与一个{{ColorRed}}堕化天使{{CR}}战斗#!!! 该道具生成的天使道具只能看见剪影',
            {CONF={
                {{215,292},"UltiDevil"},
                {260,"NOBlind"},
                {{33,601},"UltiAngel"},
            }}
        },{
            "Chocolate Bar",
            "巧克力棒",
            "最后一餐",
            "{{ArrowUp}} +2心之容器#{{Heart}} 治疗所有红心#生成{{Trinket25}} 神秘糖果#!!! 剩余的游戏时间内, 所有的基础加血道具(例如{{Collectible25}} {{Collectible346}} 等)被重随为{{ItemPoolBoss}}随机道具"
        },{
            "Shape Box LV3",
            "造型盒",--那么这个三角形的方块可以从哪里放进去呢?
            "对咯它可以放进方形的洞里",
            "!!! 使用后吞噬最近的一个掉落物, 吞噬3个后根据吞噬的掉落物品质发生如下事件#{{Trinket}} 4~12个蓝苍蝇#{{Trinket}} 2个普通掉落物的复制#{{Trinket}} 一个特殊{{PoopPickup}} 大便#{{Collectible}} 2个稀有掉落物的复制#{{Collectible}} 3个随机的{{Chest}}#{{Collectible}} 2个饰品#{{TreasureRoomChanceSmall}} {{Room}} 当前房间道具池的道具#{{TreasureRoomChanceSmall}} 生成{{Card31}}鬼牌和2个{{BlackHeart}}黑心#{{TreasureRoomChanceSmall}} {{ArrowUp}} 4个随机属性提升",
            {CAR="奖励翻倍",
            CONF={{73,652},"ThisIsSquare"}}
        },{
            "Shape Box LV2",
            "造型盒",
            "对咯它可以放进方形的洞里",
            "!!! 使用后吞噬最近的一个掉落物, 吞噬3个后根据吞噬的掉落物品质发生如下事件#{{Trinket}} 4~12个蓝苍蝇#{{Trinket}} 2个普通掉落物的复制#{{Trinket}} 一个特殊{{PoopPickup}} 大便#{{Collectible}} 2个稀有掉落物的复制#{{Collectible}} 3个随机的{{Chest}}#{{Collectible}} 2个饰品#{{TreasureRoomChanceSmall}} {{Room}} 当前房间道具池的道具#{{TreasureRoomChanceSmall}} 生成{{Card31}}鬼牌和2个{{BlackHeart}}黑心#{{TreasureRoomChanceSmall}} {{ArrowUp}} 4个随机属性提升",
            {CAR="奖励翻倍",
            CONF={{73,652},"ThisIsSquare"}}
        },{
            "Shape Box LV1",
            "造型盒",
            "对咯它可以放进方形的洞里",
            "!!! 使用后吞噬最近的一个掉落物, 吞噬3个后根据吞噬的掉落物品质发生如下事件#{{Trinket}} 4~12个蓝苍蝇#{{Trinket}} 2个普通掉落物的复制#{{Trinket}} 一个特殊{{PoopPickup}} 大便#{{Collectible}} 2个稀有掉落物的复制#{{Collectible}} 3个随机的{{Chest}}#{{Collectible}} 2个饰品#{{TreasureRoomChanceSmall}} {{Room}} 当前房间道具池的道具#{{TreasureRoomChanceSmall}} 生成{{Card31}}鬼牌和2个{{BlackHeart}}黑心#{{TreasureRoomChanceSmall}} {{ArrowUp}} 4个随机属性提升",
            {CAR="奖励翻倍",
            CONF={{73,652},"ThisIsSquare"}}
        },{
            "Shape Box",
            "造型盒",
            "对咯它可以放进方形的洞里",
            "!!! 使用后吞噬最近的一个掉落物, 吞噬3个后根据吞噬的掉落物品质发生如下事件#{{Trinket}} 4~12个蓝苍蝇#{{Trinket}} 2个普通掉落物的复制#{{Trinket}} 一个特殊{{PoopPickup}} 大便#{{Collectible}} 2个稀有掉落物的复制#{{Collectible}} 3个随机的{{Chest}}#{{Collectible}} 2个饰品#{{TreasureRoomChanceSmall}} {{Room}} 当前房间道具池的道具#{{TreasureRoomChanceSmall}} 生成{{Card31}}鬼牌和2个{{BlackHeart}}黑心#{{TreasureRoomChanceSmall}} {{ArrowUp}} 4个随机属性提升",
            {CAR="奖励翻倍",
            CONF={{73,652},"ThisIsSquare"}}
        },{
            "Soft Dice",
            "软骰子",
            "重随你的玩具",
            "{{Trinket}} 重随房间内的所有饰品, 玩具和玩具包",
            {CAR="有25%的概率复制被重随的玩具和玩具包/将饰品镀金"}
        }
    }
    local trinkets={
        {
            "Brain Sapper",
            "脑控仪",
            "大脑能量下降",
            "敌人有15%的概率变得行踪古怪, 攻击会朝反方向#{{Luck}} 每一点幸运使概率+1%",
            {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率加倍"}}}
        },{
            "Fresh Pucks",
            "新鲜出炉的冰球",
            "好滑",--存疑
            "当房间内存在敌人时, 所有的{{Heart}} {{Coin}} {{Bomb}} {{Key}} 变成可以被推动的冰球#移动的掉落物冰球可以对敌人造成基于其移动速度的碰撞伤害#{{IGIcon}} 如果需要治疗, 角色也可以拾起冰球状态的心",
        },{
            "Handcuffs",
            "手铐",
            "不准动手!",
            "{{ColorRed}}妈妈的手{{CR}}和{{ColorGray}}妈妈的死手{{CR}}会变成2~4只蓝苍蝇或蓝蜘蛛",
            {GOLD={INFO={append=true},TEXT={"更多的蓝苍蝇或蓝蜘蛛","更多的蓝苍蝇或蓝蜘蛛","更多的蓝苍蝇或蓝蜘蛛"}}}
        },{
            "Mandrake",
            "曼德拉草",
            "难搞的伙伴",
            "{{ArrowUp}} {{Tears}}+1射速#{{Confusion}} 进入未清理的房间会使敌人会被眩晕2s#!!! 受到伤害后, 曼德拉草会试图逃跑, 及时把它打下来!",
            {GOLD={INFO={append=true},TEXT={"射速上升, 眩晕更久","射速上升, 眩晕更久","射速上升, 眩晕更久"}}}
        },{
            "Margarine",
            "人造黄油",
            "惊了这东西竟然不是黄油",
            "受到伤害会让角色丢掉一个道具#!!! 每次掉落道具都有概率摧毁该饰品",
            {GOLD={INFO={append=true},TEXT={"减少该饰品被摧毁的概率","减少该饰品被摧毁的概率","减少该饰品被摧毁的概率"}}}
        },{
            "Mini Scoop",
            "迷你勺",
            "挖得一点也不剩",
            "角色发射的泪弹, 激光和刀子也可以抓取掉落物",
        },{
            "Nested Bomb",
            "筑巢炸弹",
            "把它们放到正确的位置",
            "如果角色拥有至少3个{{Bomb}}, 进入一个有标记石头, 暗门石头或通往未探索隐藏房的门的房间时, 自动在那里放一个炸弹#!!! 未持有{{GoldenBomb}}将会消耗角色的炸弹",
            {GOLD={INFO={append=true},TEXT={"始终不消耗炸弹","始终不消耗炸弹","始终不消耗炸弹"}}}
        },{
            "Nested Bomb <3",
            "筑巢炸弹 <3",
            "她爱你",
            "如果角色拥有至少3个{{Bomb}}, 进入一个有标记石头, 暗门石头或通往未探索隐藏房的门的房间时, 自动在那里放一个炸弹#{{Charm}} 爆炸会魅惑敌人4s#!!! 未持有{{GoldenBomb}}将会消耗角色的炸弹",
            {GOLD={INFO={append=true},TEXT={"始终不消耗炸弹","始终不消耗炸弹","始终不消耗炸弹"}}}
        },{
            "Plywood",
            "夹板",
            "筑桥?",
            "首次进入房间后, 坑洞有33%的概率被填平",
            {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率加倍"}}}
        },{
            "Ring of Flies",
            "苍蝇戒指",
            "虫群的力量",
            "{{ArrowUp}} 房间内每有一个苍蝇获得{{Speed}}+0.1移速和{{Tears}}+0.1射速"
        },{
            "Seven Shaped Clover",
            "七叶草",
            "失败乃成功之母",--存疑
            "{{ArrowUp}} 如果{{Beggar}} {{ArcadeRoom}} {{Slotmachine}} {{FortuneTeller}} {{CraneGame}}没提供奖励, 每次{{Luck}}+0.25幸运#!!! 在它们提供奖励后重置#{{Luck}} 重置后有概率获得1幸运币(基于被重置的幸运值, 幸运7: 25%)"
        },{
            "Silencer",
            "消音器",
            "抑制射击",
            "所有的石像头失效, 且可以被爆炸摧毁#摧毁它们有20%的概率生成标记石头的战利品",
            {GOLD={INFO={append=true},TEXT={"摧毁后生成奖励的概率翻倍","摧毁后生成奖励的概率翻倍","摧毁后生成奖励的概率翻倍"}}}
        },{
            "Sliced Grenade",
            "切片手雷",
            "拿去分享",
            "跟班的泪弹有25%的概率{{ColorGreen}}会爆炸{{CR}}#爆炸对特定距离内的敌人造成1.25倍伤害, 并生成1~4片弹片",
            {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率加倍"}}}
        },{
            "Classic Set",
            "乐高经典款",
            "民用反步兵地雷",--300pcs 个人感觉不太适合所以换了(
            "进入房间后在随机位置生成小积木和{{ColorFade}}积木人{{CR}}, 对踩上去的敌人造成伤害#踩到积木人的敌人可能会被施加随机状态效果",
        }
    }
    local cards={
        {
            "CMonster",
            "方块怪兽",
            sameDesc,
            "生成2只爬行者, 它们会追击敌人并自爆#爬行者可以被带出房间",
            {CONF={___,"ActionBombs"}}
        },{
            "CPickaxe",
            "方块镐子",
            sameDesc,
            "暂时获得{{Collectible147}} 残损铁镐的效果",
        },{
            "CTNT",
            "方块炸药",
            sameDesc,
            "生成3个可推动迷你炸药块, 其中一个靠近角色, 另外两个靠近角色#炸药可以被带出房间, 但是位置随机",
        },{
            "WAlien",
            "摇摆的外星人",
            sameDesc,
            "对房间内的所有敌人使用{{Trinket"..Isaac.GetTrinketIdByName("Brain Sapper").."}}脑控仪, 持续10s",
        },{
            "ACraft",
            "外星飞船",
            sameDesc,
            "召唤一个外星飞船绑架至多3个非头目敌人, 每个敌人生成一个掉落物#!!! 无法带走诸如{{ColorFade}}圆头虫{{CR}}这类固定敌人",
        },{
            "BHole",
            "黑洞",
            sameDesc,
            "触发{{Collectible512}} 黑洞的效果",
        },{
            "JFrisbee",
            "快乐飞盘",
            sameDesc,
            "{{Confusion}} 生成4个可以击晕敌人的小飞盘",
        },{
            "DFrisbee",
            "恶龙飞盘",
            sameDesc,
            "{{Bait}} 生成1个可以破坏障碍物并施加{{Collectible618}} 标记效果的大飞盘",
        },{
            "MLegoChars",
            "积木角色包",
            sameDesc,
            "在角色身边生成数个随机的积木人, 对踩上去的敌人造成伤害#踩到积木人的敌人可能会被施加随机状态效果"
        },{
            "MLego",
            "积木包",
            sameDesc,
            "在角色身边生成数个随机的小积木, 对踩上去的敌人造成伤害"
        },{
            "MSoldiers",
            "玩具士兵包",
            sameDesc,
            "生成4个随机的玩具士兵",
        },{
            "MVehicles",
            "玩具载具包",
            sameDesc,
            "生成2个随机的玩具载具",
        },{
            "HWCar",
            "炽热战车",
            sameDesc,
            "{{Burning}} 生成一个玩具车, 追击敌人并施加燃烧效果"
        },{
            "BCar",
            "可爱战车",
            sameDesc,
            "{{Charm}} 生成一个玩具车, 追击敌人并施加魅惑效果",
        }
    }
    local conditionalList={
        ActionBombs="兼容炸弹特效",
        GiGaFartSyn="增大气体范围",
        GiGaFartSyn2="可以增大星际豆的气体范围",
        TapedCD="光盘会留在原地",
        CDisPlayingSiren="光盘飞行速度增加",
        DoubleCoal="碳块泪弹命中后留下大片炭灰",
        LandingCoal="碳块泪弹落地后留下大片炭灰",
        EpicCoal="导弹落地后释放X形炭灰, 有概率将炭灰点燃",
        LitItGo="点燃的概率翻倍",
        PepperCoal="点燃的炭灰造成更高的伤害",
        LidoviCoal="泪弹持续留下炭灰, 有概率将其点燃",
        LazerCoal="激光可以留下碳块或将其点燃",
        LazeRocket="火箭以激光为后坐力",
        ULTIBLADE='更多的"锯片"可以增加25%的范围和伤害',
        SnakeMilk="自动发射蓄力攻击",
        BrimSnake="由血球组成的蛇, 蛇头命中会发射血激光柱",
        Xnake="由激光环组成的蛇, 激光环大小受蓄力时间影响",
        Snife="由刀片组成的蛇, 造成更高的伤害",
        Technake="由激光球组成的蛇, 蛇头命中会发射激光",
        Slung="朝数个方向发射蛇形泪弹",
        EpiSnake="导弹落地后释放4个蛇形泪弹",
        DrSnake="一触即爆的泪弹",
        CurSnake="更蛇的长形泪弹",
        SnakeSection="会追踪敌人的蛇形胎儿",
        TriSnake="蛇形泪弹具有更高的判定频率",
        TearSyn="纸飞机兼容泪弹特效",
        NineEleven="会爆炸的纸飞机",
        Iplain="仅施加中毒效果的纸飞机, 不会爆炸",
        SirenArmy="翻倍玩具的攻速或移速",
        DoubleFriend="每获得一个跟班, 生成1{{BlackHeart}}",
        UltiDevil="恶魔房中的{{ItemPoolAngel}}道具改为{{ItemPoolDevil}}",
        NOBlind="可以看到完整的道具",
        UltiAngel="堕化天使变为{{ColorCyan}}普通天使{{CR}}, 击败可以获得钥匙碎片",
        ThisIsSquare="对咯它可以放进方形的洞里, 然后你可以少吞噬1个掉落物",
    }
    mod:AddToConditionalList(conditionalList)
    local other={
        {
            6,Isaac.GetEntityVariantByName("Toy Vending Machine"),0,
            "{{Slotmachine}} 玩具售货机",
            "{{Coin}} 花费5美分#{{Trinket}} 生成一个随机的玩具包或一个饰品",
        }
    }
    for _, item in ipairs(other) do
        mod:AddEntityTransl(item[1],item[2],item[3],item[4],item[5])
    end
    for _, item in ipairs(items) do
        mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#{{Collectible"..Isaac.GetItemIdByName("Army Barrel").."}} 所属mod: Curiosity Crate", item[5])
    end
    for _, item in ipairs(trinkets) do
        mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#{{Collectible"..Isaac.GetItemIdByName("Army Barrel").."}} 所属mod: Curiosity Crate", item[5])
    end
    for _, item in ipairs(cards) do
        mod:AddTranslate(300, item[1], item[2], item[3], item[4].."#{{Collectible"..Isaac.GetItemIdByName("Army Barrel").."}} 所属mod: Curiosity Crate", item[5])
    end    
end)
