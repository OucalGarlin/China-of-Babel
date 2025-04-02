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