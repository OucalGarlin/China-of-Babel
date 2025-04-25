local mod = CNEIDBabel
mod:AddModTranslationLoader("MalwareHorseman","病毒骑士(Malware and Spam)",function()
    local item={
        {
            "Digital Pony",
            "数字宝马",
            "飞行 + 网上\"冲\"浪",
            "持有时:#{{Speed}} 设置移速至少为1.5#飞行#使用后, 向角色移动方向冲刺, 并沿途留下炸裂弹窗#炸裂弹窗造成4x{{Damage}}+40的伤害, 且兼容炸弹特效"
        }
    }
    local trinket={
        {
            "Locust of Malware",
            "病毒蝗虫",
            "我带来恶意病毒",
            "进入有敌人的房间时, 生成1只病毒蝗虫#蝗虫造成2x角色伤害, 并短暂暂停敌人"
        },{
            "Flea of Malware",
            "病毒跳蚤",
            "我带来恶意病毒",
            "进入有敌人的房间时, 生成1只病毒跳蚤#跳蚤会短暂暂停敌人"
        }
    }
    for _, item in ipairs(item) do
        mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#所属mod: Malware and Spam", item[5])
    end
    for _, item in ipairs(trinket) do
        mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#所属mod: Malware and Spam", item[5])
    end
end)
mod:AddModTranslationLoader("BlessingsBushel","一束祝福之瑰",function()
    local item={
        {
            "Isaac's Blessing",
            "以撒的祝福",
            "你的未来触手可得",
            "{{Card81}} 每次进入新房间触发以撒的魂石效果#{{ColorYellow}}下一局的第一个道具变为二选一"
        },{
            "Maggy's Blessing",
            "抹大拉的祝福",
            "你的未来福禄双全",
            "↑ {{Heart}} 心之容器+1#↑ {{Heart}} {{ColorYellow}}下一局获得心之容器+1"
        },{
            "Cain's Blessing",
            "该隐的祝福",
            "你的未来鸿运当头",
            "↑ {{Luck}} 幸运+2#↑ {{Luck}} {{ColorYellow}}下一局获得幸运+2"
        },{
            "Judas' Blessing",
            "犹大的祝福",
            "你的未来阴谋遍布",
            "↑ {{Damage}} 伤害+2#↑ {{Damage}} {{ColorYellow}}下一局获得伤害+2"
        },{
            "???'s Blessing",
            "???的祝福",
            "你的未来一片恶臭",
            "获得12个蓝苍蝇和一个苍蝇环绕物#{{ColorYellow}}下一局获得12个蓝苍蝇和一个苍蝇环绕物"
        },{
            "Eve's Blessing",
            "夏娃的祝福",
            "你的未来遭到玷污",
            "↑ {{BlackHeart}} 黑心+1#{{ItemPoolDevil}} {{ColorYellow}}下一局获得一个随机的恶魔道具"
        },{
            "Samson's Blessing",
            "参孙的祝福",
            "你的未来充满暴力",
            "{{Collectible704}} 拾取后/每层开始时/{{ColorYellow}}下一局开始时{{CR}}, 触发狂战效果"
        },{
            "Azazel's Blessing",
            "阿撒泄勒的祝福",
            "你的未来转瞬即逝",
            "↑ {{BlackHeart}} 黑心+1#↑ {{Speed}} 移速+0.3#↑ {{Speed}} {{ColorYellow}}下一局开始时获得移速+0.3"
        },{
            "Lazarus' Blessing",
            "拉撒路的祝福",
            "你的未来摇摆不定",
            "{{Trinket}} 生成2个随机饰品#{{ColorYellow}}下一局开始时生成2个饰品"
        },{
            "The Lost's Blessing",
            "游魂的祝福",
            "你的未来轻盈飘渺",
            "获得飞行和永久的{{HolyMantle}}神圣屏障#{{HolyMantle}} {{ColorYellow}}下一局获得一次性的神圣屏障"
        },{
            "Lilith's Blessing",
            "莉莉丝的祝福",
            "你的未来幸福美满",
            "获得一个随机跟班#{{ColorYellow}} 下一局获得另一个随机跟班"
        },{
            "Keeper's Blessing",
            "店主的祝福",
            "你的未来有利可图...?",
            "{{Coin}} 获得10美分#{{Coin}} {{ColorYellow}}下一局开始时获得10美分#33%的概率再获得一个店主的祝福"
        },{
            "Apollyon's Blessing",
            "亚玻仑的祝福",
            "你的未来多灾多难",
            "生成每种{{Trinket113}}蝗虫各一个, 并触发{{Collectible78}}启示录的效果#{{Collectible78}} {{ColorYellow}}下一局开始时触发启示录的效果"
        },{
            "The Forgotten's Blessing",
            "遗骸的祝福",
            "你的未来空洞无物",
            "↑ {{EmptyBoneHeart}} 骨心+1#↑ {{EmptyBoneHeart}} {{ColorYellow}}下一局获得骨心+1"
        },{
            "Bethany's Blessing",
            "伯大尼的祝福",
            "你的未来圣洁无比",
            "获得8个魂火#{{ColorYellow}} 下一局获得8个魂火"
        },{
            "Jacob and Esau's Blessing",
            "雅阁和以扫的祝福",
            "你的未来出现重影",
            "获得一个角色持有的随机道具的复制#{{ColorYellow}} 下一局获得同一个道具的复制"
        }
    }
    for _, item in ipairs(item) do
        mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#所属mod: A Bushel of Blessing", item[5])
    end
end)
mod:AddModTranslationLoader("BurdensBushel","枯萎的祝福",function()
    local item={
        {
            "The Broken's Burden",
            "神伤者的包袱",
            "毁灭自己, 巩固后世",
            "{{BrokenHeart}} {{ColorRed}}碎心+5{{CR}}#每层开始时, 移除1碎心并获得{{Damage}} 伤害+0.5#{{ColorYellow}}伤害增幅可以继承到下一局"
        },{
            "The Dauntless's Burden",
            "无畏者的包袱",
            "挑战自己, 救济后世",
            "{{ColorRed}}敌人的变种率+20%#{{ColorYellow}}下一局获得一个随机的{{ItemPoolBoss}}头目房道具"
        },{
            "The Hoarder's Burden",
            "囤积者的包袱",
            "秘藏自己, 赠予后世",
            "{{ColorRed}}掉落物改为提供属性增益{{CR}}#{{Coin}} -> {{Luck}} +0.05#{{Bomb}} -> {{Damage}} +0.1#{{Key}} -> {{Speed}}+0.03#{{ColorYellow}}属性增幅可以继承到下一局, 但第二层层减半, 第三层剩余10%"
        },{
            "The Deceiver's Burden",
            "背叛者的包袱",
            "诅咒自己, 诅咒后世",
            "{{BlackHeart}} 将所有红心变为黑心并获得+2黑心#{{IGIcon}} {{ColorRed}}在满心之容器的情况下可能致死#{{ColorYellow}}下一局开始时重复该效果"
        },{
            "The Soiled's Burden",
            "污秽者的包袱",
            "玷污自己, 糟蹋后世",
            "{{Collectible}} {{ColorRed}}道具有20%的概率被替换为{{Collectible36}}{{CR}}#每次拾取大便都会将其消耗, 并替换为全属性提升#{{ColorYellow}}下一局获得其中一个被替换的道具的复制"
        },{
            "The Curdled's Burden",
            "血凝者的包袱",
            "摧毁自己, 塑造后世",
            "{{Heart}} {{ColorRed}}心掉落物被替换为对应的血团#{{IGIcon}} {{ColorYellow}}下一局获得4个血团"
        },{
            "The Savage's Burden",
            "残暴者的包袱",
            "信任自己, 委托后世",--存疑
            "↑ {{Damage}} 伤害x2#{{ColorRed}}角色受到的伤害翻倍#{{ColorYellow}}下一局获得被动特质: {{Damage}}角色满血时获得伤害+2"
        },{
            "The Benighted's Burden",
            "堕落者的包袱",
            "击落自己, 刺激后世",
            "每个房间的中心生成一个暗影石像#{{ColorRed}}朝十字方向发射血激光柱, 并吸引角色和任何子弹#{{IGIcon}} {{ColorYellow}}下一层开始触发{{Collectible441}}超级喷射的效果"
        },{
            "The Enigma's Burden",
            "迷离者的包袱",
            "警惕自己, 预兆后世",
            "敌人有20%的概率持有卡牌, 在他们死亡后可以获得随机卡牌; {{ColorRed}}否则6s后他们将会使用卡牌的效果#{{ColorYellow}}下一局生成21个随机卡牌和符文#{{Card14}} 造成{{Heart}}伤害#{{Card16}} 生成一个{{ColorRed}}受生恶魔#{{Card17}} 生成一堆即爆炸弹#{{Card7}} 生成大量自己的复制, 使其总生命值为100HP#{{Card22}} 施加随机诅咒#{{Card3}} 触发逆位女祭司的效果#{{Card5}} 变为巨大变种"
        },{
            "Eden's Burden",
            "伊甸的包袱",--你谁?
            "兆后世741重随自",
            "{{ColorRed}}每个房间将角色持有的一个随机道具重随#{{ColorYellow}}游戏结束时, 从当前持有的道具中随机选择一个继承给下一局"
        },{
            "The Baleful's Burden",
            "受难者的包袱",
            "抛弃自己, 造福后世",
            "{{ColorRed}}任何来源的伤害都会将角色变为{{Player10}}游魂#{{ColorYellow}}下一局获得一个随机{{ItemPoolAngel}}天使道具"
        },{
            "The Harlot's Burden",
            "浪荡者的包袱",
            "抉择自己, 接纳后世",
            "{{ColorRed}}拾取后/每次进入新的楼层, 将持有的随机道具替换为跟班#{{DevilRoom}} {{ColorYellow}}下一局立即传送至恶魔房#{{IGIcon}} {{Player18}}伯大尼和玛莎(其他模组角色)会被送至{{AngelRoom}}"
        },{
            "The Miser's Burden",
            "吝财者的包袱",
            "撤换自己, 资助后世",
            "{{ColorRed}}角色无法在商店购买{{Collectible}}道具#拥有99美分时, 生成2个随机道具, 并移除所有硬币和吝财者的包袱#{{Shop}} {{ColorYellow}}钱币会被继承至下一局, 下一局立即传送至商店"
        },{
            "The Empty's Burden",
            "空虚者的包袱",
            "掏空自己, 引诱后世",
            "{{ColorRed}}进入新房间有50%的概率自动使用{{Collectible706}}#{{ColorYellow}}下一局获得3个{{Collectible706}}深渊蝗虫"
        },{
            "The Fettered's Burden",
            "受缚者的包袱",
            "复制自己, 饱享后世",
            "{{ColorRed}}高概率遇见已持有的道具(除了这个道具)#{{IGIcon}} {{ColorYellow}}下一局获得一个{{EternalHeart}}"
        },{
            "The Zealot's Burden",
            "狂信者的包袱",
            "献出自己, 阉割后世",
            "{{ColorRed}}每当角色使用其主动道具时, 失去1心之容器, 并完全恢复充能#{{ColorYellow}}失去的心之容器转移至下一局"
        },{
            "The Deserter's Burden",
            "流亡者的包袱",
            "断子绝孙",
            "{{ColorRed}}非头目敌人有50%的概率获得一个影子复制, 杀死影子复制有50%的概率生成掉落物#{{ColorYellow}}下一局的第一个道具生成一个影子复制"
        }
    }
    for _, item in ipairs(item) do
        mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#所属mod: A Bushel of Burdens", item[5])
    end
end)
mod:AddModTranslationLoader("_FOKS_BOOSTER_PACK_MOD","Foks 补充包",function()
    if _FOKS_BOOSTER_PACK_MOD then
        fox=_FOKS_BOOSTER_PACK_MOD
        local items={
            {
                fox.Collectible.TOY_SOLDIER,
                "玩具士兵",
                "前线护盾",--直译为“你的前线”
                "{{Shield}} 获得一个每层抵挡一次伤害的护盾#{{DevilRoom}} 护盾也可以被用于交易#{{Warning}} 同样会影响{{AngelChance}}天使房出现率"
            },{
                fox.Collectible.EPHEMERAL_TORCH,
                "瞬息之炬",
                "将其点燃",
                "{{ArrowUp}} {{Luck}} 幸运+10#{{ArrowDown}} {{Luck}} 清理房间后-1幸运, 不会导致亏损#碰撞火堆会重新获得所有幸运#5%的概率将石头替换为火堆",
                {ABY="火系橙色蝗虫"}
            },{
                fox.Collectible.CLAY_JAR,
                "粘土罐头",
                "把它砸烂!",
                "{{Throwable}} 可以被投掷的罐头, 会在敌人和障碍物间弹射#罐头造成18碰撞伤害#{{BleedingOut}} 落地后分解成碎片, 造成每段判定4伤害, 并施加流血",
                {VIR="静止的橙色魂火#火焰泪弹",
                CONF={"5.350.166","BetterClay"}}
            },{
                fox.Collectible.BAALS_ALTAR,
                "巴力祭坛",
                "尚存何物得以供奉?",
                "使用以储存碰到的道具底座, 或将储存的道具放下#{{Shop}} 可以白嫖商店或恶魔交易#{{Warning}} 储存的主动道具将失去充能",
                {VIR="没有效果"}
            },{
                fox.Collectible.ASHERAH_POLE,
                "亚舍拉柱",
                "伪神",
                "靠近的敌人会被标记#被标记的敌人会持续被3道光柱轰击直至死亡#{{Warning}} 光柱会伤害角色",
                {BFF="生成更多的光柱",
                ABY="有概率生成光柱造成三倍伤害的白色微光低速蝗虫"}
            },{
                fox.Collectible.COVENANT,
                "协议",
                "相信君之所言",
                "遇到多选一道具底座时会标记其中一个#{{ArrowUp}} {{Damage}} 拾取被标记的道具会获得伤害+1和{{EternalHeart}}1永恒之心#{{AngelDevilChance}} 恶魔房/天使房出现率+35%"
            },{
                fox.Collectible.BATTLE_BANNER,
                "战旗",
                "继续前进",
                "{{ArrowUp}} {{Damage}} 伤害倍率x1.8#{{Warning}} 千万不要打\"退\"堂鼓! 连续两次进入已清理的房间将失去伤害增益#进入新楼层后恢复失去的伤害增益"
            },{
                fox.Collectible.DEMISE_OF_THE_FAITHFUL,
                "信仰亡魂",
                "没有机会可言",
                "{{EmptyBoneHeart}} 获得1骨心#{{ArrowUp}} {{Damage}} 伤害倍率x1.3#{{BossRoom}} 头目被击败后生成更多战利品",
            },{
                fox.Collectible.APPETIZER,
                "开胃小菜",
                "生命上升!",
                "{{ArrowUp}} {{Heart}} 心之容器+1#{{HealingRed}} 治疗1红心#生命上限最大值+1",
                {CONF={CollectibleType.COLLECTIBLE_BINGE_EATER,"BingeAppetizer"}}
            },{
                fox.Collectible.HAPPY_FLY,
                "快乐的苍蝇",
                "她很可爱",
                "在房间内随机移动#碰到它会获得1.2s无敌",
                {BFF="更长的无敌时间"}
            },{
                fox.Collectible.GROCERY_BAG,
                "杂货袋子",
                "非常方便",
                "将{{Coin}}硬币, {{Bomb}}炸弹, {{Key}}钥匙的持有上限增加50#{{Shop}} 可能遇见更好的商店布局和{{ColorYellow}}杂货店道具池{{CR}}道具"
            },{
                fox.Collectible.TOY_SHOVEL,
                "玩具铲子",
                "宝藏之主",
                "10%的概率挖出随机掉落物#如果在特殊地板标记上使用则为50%#{{IGIcon}} 如果在墓室或{{Shop}}商店使用则概率+10%, {{TreasureRoom}}宝箱房则+20%",
                {VIR="有概率获得随机掉落物魂火",
                CONF={{CollectibleType.COLLECTIBLE_TREASURE_MAP,CollectibleType.COLLECTIBLE_BLUE_MAP},"TreasureFinder"}}
            },{
                fox.Collectible.DEL_KEY,
                "删除键",
                "移除废物",
                "所有敌人持续受到伤害{{ColorError}}直至死亡{{CR}}#{{ERROR}} {{ColorError}}污染贴图{{CR}}",
                {VIR="内环粉色魂火, 不会攻击且仅能承受一次伤害#被敌人熄灭后会使那个敌人持续受到伤害直至死亡"}
            },{
                fox.Collectible.CRACKED_MIRROR,
                "碎镜子",
                "连年厄运",
                "{{ArrowDown}} {{Luck}} 幸运-1#{{MirrorShard}} 敌人死亡后有概率掉落存在7s的镜子碎片#{{Luck}} 概率取决于幸运, 幸运-15: 50%#{{Pill}} 药丸池中强制加入幸运下降"
            },{
                fox.Collectible.BOX_CUTTER,
                "开箱小刀",
                "里面有啥?",--我想写个“把自己开盒了”
                "{{EmptyHeart}} 消耗1心之容器#生成6个随机掉落物#{{Collectible214}} 在当前房间内获得贫血",
                {VIR="2个外环魂火",
                CONF={
                    {CollectibleType.COLLECTIBLE_BOX,"OpenBox"},
                    {CollectibleType.COLLECTIBLE_MOVING_BOX,"OpenMoving"},
                    {CollectibleType.COLLECTIBLE_CRACK_JACKS,"OpenJack"},
                    {CollectibleType.COLLECTIBLE_BOX_OF_SPIDERS,"OpenSpider"},
                }}
            },{
                fox.Collectible.PLASTIC_BRICK,
                "塑料积木砖",
                "反步兵地雷",--原文：看好你的脚下
                "{{PlasticBrick}} 生成一个塑料积木掉落物#{{PlasticBrick}} 有概率在进入新房间时生成2个塑料积木",
            },{
                fox.Collectible.DIRGE_BELL,
                "哀悼铃",
                "为汝长鸣",
                "清理房间会生成一个跟班, 发射5伤害灵体泪弹#至多可拥有10个跟班#{{Warning}} 跟班受伤即死亡",
                {BFF="伤害翻倍"}
            },{
                fox.Collectible.DEAD_ORANGE,
                "死橘子",
                "腐烂心情",
                "{{ArrowUp}} {{Tears}} 射速+0.5#{{ArrowUp}} {{EmptyHeart}} 获得1空心之容器#{{ArrowUp}} {{RottenHeart}} 获得2腐心#{{RottenHeart}} 头目死亡后生成腐心"
            },{
                fox.Collectible.SNARED_FOX,
                "被捕的狐狸",
                "万物俱腐",
                "{{RottenHeart}} 生成1腐心#生成3-6蓝苍蝇#每6次攻击发射6个扭动泪弹",
                {ABY="1.1倍伤害的毒系绿色蝗虫"}
            }
        }
        local trinket={
            {
                fox.Trinket.TRUMPET,
                "小号",
                "惊弓之鸟",
                "{{Fear}} 进入房间后, 20%的概率对随机怪物施加恐惧3s#{{Damage}} 恐惧的敌人额外受到50%伤害",
                {GOLD={INFO={findReplace=true},TEXT={"50","100","150"}}}
            },{
                fox.Trinket.WHITE_FLAG,
                "白旗",
                "开摆",
                "每个房间无视第一次受伤#受伤后掉落该饰品并传送至初始房间#{{Warning}} 只有在清理房间后才能重新拾起该饰品",
                {GOLD={INFO={goldenOnly = true, findReplace = true, mult = 2},TEXT={"初始房间","宝箱房或星象房(类型XVII-星辰)"}}}
            },{
                fox.Trinket.THRESHED_WHEAT,
                "打谷之心",
                "大丰收",
                "攻击时每秒释放一次谷粒乱弹",
                {GOLD={INFO={findReplace = true},TEXT={"一次","两次","三次"}}}
            },{
                fox.Trinket.LUCKY_BUG,
                "幸运瓢虫",
                "你感到幸运?",
                "{{ArrowUp}} {{Luck}} 清理房间有15%的概率获得永久幸运提升#{{ArrowDown}} {{Luck}} 有3%的概率失去所有的幸运提升并掉落该饰品#{{Warning}} 小心不要让虫子逃跑了!",
                {GOLD={INFO={findReplace=true},TEXT={"15","30","45"}}}
            },{
                fox.Trinket.MOMS_TELEPHONE,
                "妈妈的电话",
                "你知道她的电话的",
                "进入未清理房间18s后触发{{Card50}}紧急联系电话的效果",
                {GOLD={INFO={findReplace=true},TEXT={"18","9","6"}}}
            },{
                fox.Trinket.CAUTION_SIGN,
                "警示标",
                "注意让行",
                "{{Warning}} 最后一个死亡的敌人自爆",
                {GOLD={INFO={append=true},TEXT={"释放十字爆炸","释放十字爆炸","释放十字爆炸"}}}
            },{
                fox.Trinket.RUNE_STONE,
                "符石",
                "窥见真理",
                "{{Rune}} 标记石头摧毁后额外掉落符文",
                {GOLD={INFO={append=true},TEXT={"掉落更多符文","掉落更多符文","掉落更多符文"}}}
            }
        }
        local other={
            {
                5, fox.Pickup.MIRROR_SHARD, 0,
                "{{MirrorShard}} 镜子碎片",
                "{{BleedingOut}} 可以被捡起并投掷的灵体穿透玻璃片, 造成5x角色伤害并施加流血"
            },{
                5,fox.Pickup.PLASTIC_BRICK, 0,
                "{{PlasticBrick}} 塑料积木砖",
                "在不造成伤害的情况下触发受伤触发道具"
            }
        }
        local conditionalList={
            BetterClay="罐头造成更高的碰撞伤害",
            BingeAppetizer="+2.5{{Range}}射程, +1{{Luck}}幸运",
            TreasureFinder="概率+20%",
            OpenBox="额外生成2个掉落物",
            OpenMoving="根据其中物品的数量获得额外的掉落物",
            OpenJack="额外生成1个随机饰品",
            OpenSpider="额外生成数个蓝蜘蛛"
        }
        mod:AddToConditionalList(conditionalList)
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#所属mod: Foks Booster Pack", item[5])
        end
        for _, item in ipairs(trinket) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#所属mod: Foks Booster Pack", item[5])
        end
        for _, item in ipairs(other) do
            mod:AddEntityTransl(item[1],item[2],item[3],item[4],item[5])
        end
    end
end)
