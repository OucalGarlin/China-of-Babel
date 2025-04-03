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
