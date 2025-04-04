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
        mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
    end
    for _, item in ipairs(trinket) do
        mod:AddTranslate(350, item[1], item[2], item[3], item[4], item[5])
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
        mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
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
        mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
    end
end)
