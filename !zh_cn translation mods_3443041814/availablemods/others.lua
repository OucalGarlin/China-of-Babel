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
                "{{Shield}} 获得一个每层抵挡一次伤害的护盾#{{Bomb}} 护盾存在期间获得防爆#{{DevilRoom}} 护盾也可以被用于交易#{{Warning}} 同样会影响{{AngelChance}}天使房出现率"
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
                "使用以储存碰到的道具底座, 或将储存的道具放下#{{Shop}} 可以白嫖商店或恶魔交易",
                {VIR="没有效果"}
            },{
                fox.Collectible.ASHERAH_POLE,
                "亚舍拉柱像",
                "伪神",
                "出现在房间内随机位置的跟班, 会标记靠近它的敌人#被标记的敌人会持续被3道光柱轰击直至死亡#{{Warning}} 光柱会伤害角色",
                {BFF="生成更多的光柱",
                ABY="有概率生成光柱造成三倍伤害的白色微光低速蝗虫"}
            },{
                fox.Collectible.COVENANT,
                "协议",
                "相信君之所言",
                --"遇到多选一道具底座时会标记其中一个#{{ArrowUp}} {{Damage}} 拾取被标记的道具会获得伤害+1和{{EternalHeart}}1永恒之心#{{AngelDevilChance}} 恶魔房/天使房出现率+35%"
                --重做
                "有概率标记遇到的道具底座, 概率取决于道具品质, 品质越低概率越高#{{ArrowUp}} 拾取被标记的道具会获得{{Damage}}+0.5和{{EternalHeart}}1永恒之心#{{AngelDevilChance}} 恶魔房/天使房出现率+35%"
            },{
                fox.Collectible.BATTLE_BANNER,
                "战旗",
                "继续前进",
                "{{ArrowUp}} {{Damage}} 伤害倍率x1.8#{{Warning}} 千万不要打退堂鼓! 当前楼层内若有3次进入已清理的房间将失去伤害增益#进入新楼层后恢复失去的伤害增益#{{BossRoom}} 揭示头目房的位置",
                {CONF={fox.Collectible.BATTLE_BANNER,"Banner_Mult"}}
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
                "10%的概率挖出随机掉落物#如果在特殊地板标记上使用则为50%#{{IGIcon}} 如果在特殊房间使用则概率+10%",
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
                {BFF="伤害翻倍",
                CONF={fox.Collectible.DIRGE_BELL,"Bell_Mult"}}
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
            },{
                "Spicy Bean",
                "辣味豆",
                "呼! 呼! 好辣!",
                "放屁并击退周边的敌人和敌弹#{{Burning}} 造成8伤害并施加灼烧"
            },{
                fox.Collectible.PEBBLE,
                "鹅卵石",
                "拿一块",
                "摧毁标记石头额外生成可以抵挡敌弹的鹅卵石环绕物"
            },{
                "Dad's Dumbbell",
                "爸爸的哑铃",
                "坚持才有回报",
                "{{Battery}} 初始无充能#↓ {{Speed}} 持有时, 角色的移速上限下调为0.5#↑ 使用后, 永久获得{{Damage}}伤害+1, 体型+25%"
            },{
                "Cometa",
                "彗星",
                "向星云诉说你的愿望",
                "↑ {{Luck}} 幸运+1#在房间内快速运动的跟班, 可以抵挡敌弹并造成3.5碰撞帧伤#↑ 幸运越高, 跟班的碰撞伤害越高"
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
                "每个房间抵消第一次受伤#效果触发后丢弃该饰品并传送至初始房间#{{Warning}} 只有在清理房间后才能重新拾起该饰品",
                {GOLD={INFO={goldenOnly = true, findReplace = true, mult = 2},TEXT={"初始房间","宝箱房或星象房(类型XVII-星辰)"}}}
            },{
                fox.Trinket.THRESHED_WHEAT,
                "脱粒麦",
                "大丰收",
                "攻击时每秒释放一次稻谷近战攻击#近战造成{{Damage}}+1.5的伤害, 范围不会变化, 可以抵挡敌弹和拾取掉落物, 也可以与可交互实体交互({{GarlinIcon}}{{ColorRainbow}}且疑似由于某些bug导致你可以不消耗任何物资去与它们交互!{{CR}})",
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
            },{
                "Grenade Pin",
                "手榴弹销轴",
                "我说停停!",
                "减缓角色炸弹的爆炸速度#放置炸弹会同步场上已放置的炸弹的爆炸"
            },{
                "Moxie's Yarn",
                "勇气纺线球",
                "虫群结伴",
                "部分苍蝇敌人会变为蓝苍蝇"
            },{
                "Devil's Tongue",
                "恶魔的舌头",
                "目睹它们燃烧",
                "{{Burning}} 角色灼烧碰到的敌人#无视头目的异常状态免疫效果",
                {GOLD={INFO={append=true},TEXT={"获得抗火","获得抗火","获得抗火"}}}
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
            OpenJack="必定生成1个随机饰品",
            OpenSpider="额外生成数个蓝蜘蛛",
            Banner_Mult="多个战旗可以增加失去伤害增益所需的退堂鼓次数",
            Bell_Mult="清理房间可生成多个跟班, 上限不变"
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
mod:AddModTranslationLoader("Chocolate Mod","巧克力",function()
    if mod then
        local items={
            {
                "Chocolate",
                "巧克力",
                "入口即化的快乐, 或者让这次快乐变为分期的",
                "{{Heart}} 使用后, +1心之容器#!!! 多次使用后, 进入下一层将移除该道具提供的心之容器"
            },{
                "White Chocolate",
                "白巧克力",
                "入口即化的永恒, 或者让这份永恒变为分期的",
                "{{EternalHeart}} 使用后, 获得1永恒之心#!!! 在同一层内多次使用会将一个心之容器变为{{BoneHeart}}骨心"
            },{
                "Dark Chocolate",
                "黑巧克力",
                '入口即化的黑暗, 或者让这份黑暗变为分期的',
                "↓ 使用后, 移除1心之容器#{{BlackHeart}} 多次使用后, 进入下一层将获得两倍于通过该道具失去的心之容器数量的黑心"
            },{
                "Feastables",
                "名牌巧克力",
                "入口即化的财富, 或者让这份财富变为分期的",
                "{{Coin}} 使用后, 获得10美分#!!! 多次使用后, 进入下一层将移除该道具提供的钱"
            },{
                "Mint Chocolate",
                "薄荷巧克力",
                "入口即化的凉爽, 或者让这份凉爽变为分期的",
                "发射一圈8枚快速, {{Collectible221}}弹射, 穿透, 高射程冰冻泪弹, 造成2倍伤害#!!! 在同一层内多次使用会将角色冻结3s, 无法做出任何行动, 泪弹将在冻结效果结束后发射"
            },{
                "Delirium Chocolate",
                "精神错乱联名品牌巧克力",
                "入口即化的混乱, 或者让这份混乱变为分期的",
                "触发随机巧克力的效果"
            },{
                "Golden Chocolate",
                "金巧克力",
                "入口即化的奖金, 或者让这份奖金变为分期的",
                "↓ {{Speed}} 使用后, 在当前楼层获得移速-0.15, 可叠加#使用后, 获得一个随机{{Quality4}}道具#!!! 多次使用后, 进入下一层将移除数个该道具提供的{{Quality4}}道具"
            }
        }
        local trinkets={
            {
                "Golden Ticket",
                "金季票",
                "见巧克力眼开",
                "新生成的道具有10%的概率被重随成巧克力道具"
            }
        }
        local conditionalList={}
        mod:AddToConditionalList(conditionalList)
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#所属mod: Chocolate Mod", item[5])
        end
        for _, item in ipairs(trinkets) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#所属mod: Chocolate Mod", item[5])
        end
    end
end)
function LydiaGems(text,isGem)
    if isGem then return "{{LydiaGem}} 激活一个对应"..text.."道具池的未配对宝石#{{LydiaSocket}} 若存在未配对的宝石底座, 将其对应的道具池替换为"..text.."的道具池"
    else return "{{LydiaSocket}} 激活一个对应"..text.."道具池的未配对宝石底座#{{LydiaGem}} 若存在未配对的宝石, 将"..text.."的道具池替换为那个宝石对应的道具池" end
end
mod:AddModTranslationLoader("LydiaMod","莉迪亚",function()
        local items={
            {
                "Jewelry Kit",
                "珠宝盒",
                "宝石 + 底座",
                "{{LydiaGem}} 进入商店, 受到伤害, 杀死敌人和进入新楼层都有可能生成随机的宝石/宝石底座#{{LydiaGem}} 一些特殊的事件可以生成特定的宝石/宝石底座#{{LydiaGem}} 拾取后, 生成2个宝石/宝石底座"
            },{
                "Member Hat",
                "会员帽",
                "奖励会员!",
                "{{Collectible602}} 获得会员卡的效果#{{Trinket110}} 永久获得银币的效果#普通商店改为使用{{TreasureRoom}}宝箱房道具池#{{Shop}} 商店必定包含特殊店长"
            },{
                "Metal Spoon",
                "铁勺",
                "跟踪泪弹...看你太菜了",
                "{{Collectible3}} 打空200发泪弹会获得弯勺魔术",
            },{
                "Claw Baby",
                "爪钳宝宝",
                "抓手朋友",
                "{{Timer}} 每个房间一次:#秒杀最后一个非头目敌人#{{BossRoom}} 攻击小于20%生命的头目"
            },{
                "Ferrofluid",
                "含铁溶液",
                "磁性妙趣横生",
                "杀死2个随机敌人并将其复活为绑在一起的友方敌人#靠近角色的那位会决定整体的行动方式",
                {VIR="中环魂火#7.5%的概率发射减速泪弹",
                CAR="没有效果"}
            },{
                "Wacky Box",
                "古怪玩具箱",
                "变得千奇百怪!",
                "在当前房间内, 角色的所有道具被替换为泪弹特效道具#{{Collectible561}} 20%的概率同时获得杏仁奶的效果#每有4个道具被转换获得{{Tears}}射速+0.3和{{Luck}}幸运+1.5",
                {VIR="具有粘土饼干效果的中环魂火",
                CAR="转换道具提供的属性翻倍"}
            },{
                "Golden Orb",
                "黄金宝珠",
                "该清算清算了!",
                "{{Coin}} 敌人, 敌弹, 掉落物, 道具, 石头和其他一些物体随机变为硬币",
            },{
                "Rapturum",
                "天赐良机",--存疑
                "身处他乡",--开摆
                "移除房间内的所有非头目敌人, 将它们移动至未来的房间",
                {VIR="中环魂火, 移除碰到的敌人",
                CAR="没有效果"}
            },{
                "Rebirth",
                "再生亲临",
                "覆灭新生",
                "摧毁房间内所有的道具底座, 每有一个道具被摧毁, 获得1-3个随机跟班道具#摧毁跟班道具会同时获得该跟班的复制",
                {VIR="内环魂火, 发射随机泪弹",
                CAR="没有效果"}
            },{
                "Potato Masher",
                "捣土豆器",
                "搅和在一起!",
                "对一个随机敌人造成22伤害#造成致命伤害时立刻恢复充能#{{Timer}} 单房间内连续使用会增加伤害#{{BossRoom}} 在头目战中自动充能",
                {CAR="伤害翻倍",
                VIR="用小捣土豆器攻击附近敌人的中环魂火"}
            },{
                "Headless Horsefly",
                "无头苍蝇骑士",
                "天启苍蝇",
                "75%的概率将蓝苍蝇变为随机天启蝗虫#{{Luck}} 幸运5: 100%#50%的概率使蓝蜘蛛变为随机天启蝗虫#{{Luck}} 幸运10: 100%"
            },{
                "Wavy Chip",
                "大波浪薯片",
                "又咸又酸",
                "#↑ {{Tears}} 射速+1.4#↑ {{Shotspeed}} 弹速+0.2#获得波浪弹道的灵体泪弹#所有泪弹和敌弹都变成波浪弹道#{{BossRoom}} 不影响陵墓/炼狱或者阴间/教条之后的头目敌弹"
            }
        }
        local trinkets={
            {
                "?",
                "?",
                "?",
                "底座道具有5%的概率来自{{SecretRoom}}隐藏房道具池#{{Luck}} 概率与幸运无关"
            },{
                "Blue Heart",
                "蓝心",
                "灵魂庇护特价活动",
                "{{SoulHeart}} 商店出售的红心变为魂心"
            },{
                "Burnt Face",
                "烧焦面皮",
                "有股烟味",
                "店长会变橙然后自爆, 提供更多的掉落物",
                {GOLD={INFO={findReplace=true},TEXT={"更多","更多","更多"}}}
            }
        }
        local cards={
            {
                "SocketTreasure",
                "宝石底座-宝藏",
                "宝藏猎人!",
                LydiaGems("{{TreasureRoom}}宝箱房",false)
            },{
                "SocketShop",
                "宝石底座-商贸",
                "来财法宝!",
                LydiaGems("{{Shop}}商店",false)
            },{
                "SocketBoss",
                "宝石底座-头目",
                "力大砖飞!",
                LydiaGems("{{BossRoom}}头目房",false)
            },{
                "SocketDevil",
                "宝石底座-恶魔",
                "恶贯满盈!",
                LydiaGems("{{DevilRoom}}恶魔",false).."#!!! 恶魔房的道具池被替换后, 生成{{Collectible215}}山羊头, 并阻止{{AngelRoom}}天使房的出现"
            },{
                "SocketAngel",
                "宝石底座-天使",
                "返璞归真!",
                LydiaGems("{{AngelRoom}}天使",false).."#!!! 天使房的道具池被替换后, {{DevilRoom}}必定将恶魔房替换为{{AngelRoom}}天使房"
            },{
                "SocketSecret",
                "宝石底座-隐藏",
                "神秘莫测!",
                LydiaGems("{{SecretRoom}}隐藏房",false).."#{{Collectible}} 隐藏房的道具池被替换后, 额外获得20%的概率使隐藏房包含道具底座"
            },{
                "SocketLibrary",
                "宝石底座-书籍",
                "学识渊博!",
                LydiaGems("{{Library}}图书馆",false).."#{{Library}} 图书馆的道具池被替换后, 图书馆出现率翻倍"
            },{
                "SocketGoldenChest",
                "宝石底座-金箱",
                "金光闪闪!",
                LydiaGems("{{GoldenChest}}金箱子",false).."#{{GoldenChest}} 金箱子的道具池被替换后, 20%的概率将清理房间奖励替换为金箱子#{{GreedMode}} 贪婪出口房有15%的概率额外生成金箱子"
            },{
                "SocketRedChest",
                "宝石底座-血箱",
                "风险升级!",
                LydiaGems("{{RedChest}}红箱子",false).."#{{RedChest}} 红箱子的道具池被替换后, 20%的概率将清理房间奖励替换为红箱子#{{GreedMode}} 贪婪出口房有15%的概率额外生成红箱子"
            },{
                "SocketBeggar",
                "宝石底座-乞丐",
                "饥渴难耐!",
                LydiaGems("{{Beggar}}乞丐",false).."#{{Beggar}} 乞丐的道具池被替换后, 30%的概率使乞丐额外出现在宝箱房和商店中, 且不会提供食物道具"
            },{
                "SocketDemonBeggar",
                "宝石底座-黑乞丐",
                "漆黑意志!",
                LydiaGems("{{DemonBeggar}}黑暗乞丐",false).."#{{DemonBeggar}} 黑暗乞丐的道具池被替换后, 30%的概率使黑暗乞丐额外出现在宝箱房和商店中"
            },{
                "SocketCurse",
                "宝石底座-诅咒",
                "太痛苦了!",
                LydiaGems("{{CursedRoom}}诅咒房",false).."#{{Collectible}} 诅咒房的道具池被替换后, 额外获得20%的概率使诅咒房包含道具底座"
            },{
                "SocketKeyBeggar",
                "宝石底座-锁孔",
                "空洞无比!",
                LydiaGems("{{KeyBeggar}}钥匙大师",false).."#{{KeyBeggar}} 钥匙大师的道具池被替换后, 30%的概率使钥匙大师额外出现在宝箱房和商店中"
            },{
                "SocketBatteryBum",
                "宝石底座-电能",
                "活力满满!",
                LydiaGems("{{BatteryBeggar}}电池乞丐",false).."#{{BatteryBeggar}} 电池乞丐的道具池被替换后, 30%的概率使电池乞丐额外出现在宝箱房和商店中"
            },{
                "SocketTreasureGreed",
                "宝石底座-宝藏",
                "宝藏猎人!",
                LydiaGems("{{TreasureRoom}}宝箱房",false)
            },{
                "SocketShopGreed",
                "宝石底座-商贸",
                "来财法宝!",
                LydiaGems("{{Shop}}商店",false)
            },{
                "SocketBossGreed",
                "宝石底座-头目",
                "力大砖飞!",
                LydiaGems("{{BossRoom}}头目房",false)
            },{
                "SocketDevilGreed",
                "宝石底座-恶魔",
                "恶贯满盈!",
                LydiaGems("{{DevilRoom}}恶魔",false).."#!!! 恶魔房的道具池被替换后, 生成{{Collectible215}}山羊头, 并阻止{{AngelRoom}}天使房的出现"
            },{
                "SocketAngelGreed",
                "宝石底座-天使",
                "返璞归真!",
                LydiaGems("{{AngelRoom}}天使",false).."#!!! 天使房的道具池被替换后, {{DevilRoom}}必定将恶魔房替换为{{AngelRoom}}天使房"
            },{
                "SocketSecretGreed",
                "宝石底座-隐藏",
                "神秘莫测!",
                LydiaGems("{{SecretRoom}}隐藏房",false).."#{{Collectible}} 隐藏房的道具池被替换后, 额外获得20%的概率使隐藏房包含道具底座"
            },{
                "SocketCurseGreed",
                "宝石底座-诅咒",
                "太痛苦了!",
                LydiaGems("{{CursedRoom}}诅咒房",false).."#{{Collectible}} 诅咒房的道具池被替换后, 额外获得20%的概率使诅咒房包含道具底座"
            },{
                "SocketCraneGame",
                "宝石底座-抓奖",
                "好运来!",
                LydiaGems("{{CraneGame}}抓娃娃机",false).."#{{CraneGame}} 抓娃娃机道具池被替换后, 15%的概率使抓娃娃机出现在宝箱房和商店中"
            },{
                "SocketUltraSecret",
                "宝石底座-猩红",
                "绯红之王!",
                LydiaGems("{{UltraSecretRoom}}究极隐藏房",false)
            },{
                "SocketBombBum",
                "宝石底座-火药",
                "艺术就是!",
                LydiaGems("{{BombBeggar}}炸弹乞丐",false).."#{{BombBeggar}} 炸弹乞丐的道具池被替换后, 30%的概率使炸弹乞丐额外出现在宝箱房和商店中"
            },{
                "SocketPlanetarium",
                "宝石底座-星辰",
                "浩瀚宇宙!",
                LydiaGems("{{Planetarium}}星象房",false)
            },{
                "SocketOldChest",
                "宝石底座-尘封",
                "往事如烟!",
                LydiaGems("{{DirtyChest}}旧箱子",false)
            },{
                "SocketBabyShop",
                "宝石底座-领养",
                "世间萌物!",
                LydiaGems("{{Collectible67}}宝宝商店",false).."#{{Trinket184}} 宝宝商店的道具池被替换后, 显著提高领养协议书出现的概率"
            },{
                "SocketWoodenChest",
                "宝石底座-木制品",
                "轻拿轻放!",
                LydiaGems("{{WoodenChest}}木箱子",false).."#{{RedChest}} 木箱子的道具池被替换后, 20%的概率将清理房间奖励替换为木箱子#{{GreedMode}} 贪婪出口房有15%的概率额外生成木箱子"
            },{
                "SocketRottenBeggar",
                "宝石底座-腐烂",
                "散发恶臭!",
                LydiaGems("{{RottenBeggar}}腐烂乞丐",false).."#{{RottenBeggar}} 腐烂乞丐的道具池被替换后, 30%的概率使腐烂乞丐额外出现在宝箱房和商店中"
            },{
                "SocketMomsChest",
                "宝石底座-母爱",
                "爱如刀割!",
                LydiaGems("{{MomBoss}}妈妈",false)
            },{
                "GemTreasure",
                "宝石-宝藏",
                "宝藏猎人!",
                LydiaGems("{{TreasureRoom}}宝箱房",true)
            },{
                "GemShop",
                "宝石-商贸",
                "来财法宝!",
                LydiaGems("{{Shop}}商店",true)
            },{
                "GemBoss",
                "宝石-头目",
                "力大砖飞!",
                LydiaGems("{{BossRoom}}头目房",true)
            },{
                "GemDevil",
                "宝石-恶魔",
                "恶贯满盈!",
                LydiaGems("{{DevilRoom}}恶魔",true)
            },{
                "GemAngel",
                "宝石-天使",
                "返璞归真!",
                LydiaGems("{{AngelRoom}}天使",true)
            },{
                "GemSecret",
                "宝石-隐藏",
                "神秘莫测!",
                LydiaGems("{{SecretRoom}}隐藏房",true)
            },{
                "GemLibrary",
                "宝石-书籍",
                "学识渊博!",
                LydiaGems("{{Library}}图书馆",true)
            },{
                "GemGoldenChest",
                "宝石-金箱",
                "金光闪闪!",
                LydiaGems("{{GoldenChest}}金箱子",true)
            },{
                "GemRedChest",
                "宝石-血箱",
                "风险升级!",
                LydiaGems("{{RedChest}}红箱子",true)
            },{
                "GemBeggar",
                "宝石-乞丐",
                "饥渴难耐!",
                LydiaGems("{{Beggar}}乞丐",true)
            },{
                "GemDemonBeggar",
                "宝石-黑乞丐",
                "漆黑意志!",
                LydiaGems("{{DemonBeggar}}黑暗乞丐",true)
            },{
                "GemCurse",
                "宝石-诅咒",
                "太痛苦了!",
                LydiaGems("{{CursedRoom}}诅咒房",true)
            },{
                "GemKeyBeggar",
                "宝石-锁孔",
                "空洞无比!",
                LydiaGems("{{KeyBeggar}}钥匙大师",true)
            },{
                "GemBatteryBum",
                "宝石-电能",
                "活力满满!",
                LydiaGems("{{BatteryBeggar}}电池乞丐",true)
            },{
                "GemTreasureGreed",
                "宝石-宝藏",
                "宝藏猎人!",
                LydiaGems("{{TreasureRoom}}宝箱房",true)
            },{
                "GemShopGreed",
                "宝石-商贸",
                "来财法宝!",
                LydiaGems("{{Shop}}商店",true)
            },{
                "GemBossGreed",
                "宝石-头目",
                "力大砖飞!",
                LydiaGems("{{BossRoom}}头目房",true)
            },{
                "GemDevilGreed",
                "宝石-恶魔",
                "恶贯满盈!",
                LydiaGems("{{DevilRoom}}恶魔",true)
            },{
                "GemAngelGreed",
                "宝石-天使",
                "返璞归真!",
                LydiaGems("{{AngelRoom}}天使",true)
            },{
                "GemSecretGreed",
                "宝石-隐藏",
                "神秘莫测!",
                LydiaGems("{{SecretRoom}}隐藏房",true)
            },{
                "GemCurseGreed",
                "宝石-诅咒",
                "太痛苦了!",
                LydiaGems("{{CursedRoom}}诅咒房",true)
            },{
                "GemCraneGame",
                "宝石-抓奖",
                "好运来!",
                LydiaGems("{{CraneGame}}抓娃娃机",true)
            },{
                "GemUltraSecret",
                "宝石-猩红",
                "绯红之王!",
                LydiaGems("{{UltraSecretRoom}}究极隐藏房",true)
            },{
                "GemBombBum",
                "宝石-火药",
                "艺术就是!",
                LydiaGems("{{BombBeggar}}炸弹乞丐",true)
            },{
                "GemPlanetarium",
                "宝石-星辰",
                "浩瀚宇宙!",
                LydiaGems("{{Planetarium}}星象房",true)
            },{
                "GemOldChest",
                "宝石-尘封",
                "往事如烟!",
                LydiaGems("{{DirtyChest}}旧箱子",true)
            },{
                "GemBabyShop",
                "宝石-领养",
                "世间萌物!",
                LydiaGems("{{Collectible67}}宝宝商店",true)
            },{
                "GemWoodenChest",
                "宝石-木制品",
                "轻拿轻放!",
                LydiaGems("{{WoodenChest}}木箱子",true)
            },{
                "GemRottenBeggar",
                "宝石-腐烂",
                "散发恶臭!",
                LydiaGems("{{RottenBeggar}}腐烂乞丐",true)
            },{
                "GemMomsChest",
                "宝石-母爱",
                "爱如刀割!",
                LydiaGems("{{MomBoss}}妈妈",true)
            },{
                "GlobbyGoo",
                "油迹粘液",
                "充满磁性!",
                "杀死2个随机敌人并将其复活为绑在一起的友方敌人#靠近角色的那位会决定整体的行动方式#{{LydiaGlobbyGoo}} 这对敌人死亡后有50%的概率生成油迹粘液#{{Luck}} 概率与幸运无关",
            },{
                "SoulofLydia",
                "莉迪亚的魂石",
                "覆盖!",
                "生成3个随机{{LydiaGem}}宝石和3个随机{{LydiaSocket}}宝石底座"
            },{
                "NerveBulb",
                "神茎",
                "略有震感",
                "在当前房间内改为发射激光#↑ {{Damage}} 伤害+0.5"
            },{
                "GiftingAngel",
                "馈赠天使",
                "世间好物",
                "两个随机道具池将会提供一个{{Quality3}}/{{Quality4}}的{{AngelRoom}}天使道具#该效果生效后, 那个道具池将被恢复"
            }
        }
        local other={
            {
                6,259376970,0,
                "{{LydiaCardRecycler}} 卡牌回收机",
                "{{Card}} 随机替换角色持有的卡牌#{{Coin}} 耗费3美分"
            }
        }
        local conditionalList={}
        mod:AddToConditionalList(conditionalList)
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#所属mod: Lydia", item[5])
        end
        for _, item in ipairs(trinkets) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#所属mod: Lydia", item[5])
        end
        for _, item in ipairs(cards) do
            mod:AddTranslate(300, item[1], item[2], item[3], item[4].."#所属mod: Lydia", item[5])
        end
        for _, item in ipairs(other) do
            mod:AddEntityTransl(item[1],item[2],item[3],item[4],item[5])
        end
        EID:addBirthright(Isaac.GetPlayerTypeByName("Lydia",false),"不再出现宝石底座#宝石现在会将所有道具池替换为指定的道具","莉迪亚-独一无二","zh_cn")
end)
