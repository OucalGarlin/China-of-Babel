local mod = CNEIDBabel
--本来对这个mod报中立态度的, 结果你这代码写的什么狗屎,我一个不懂代码的都给气笑了
--最讨厌的一点就是感觉这个模组纯粹是给云玩家特供的, 大多数直接说获得什么什么效果就好结果非要把那个效果大费周章解释一遍,所以这里全部省略了
mod:AddModTranslationLoader("Benevolence", "仁慈(Benevolence)",function()
    local items={
        {
            "Pandemonium",
            "喧嚣",--解锁方式:表AZ全红
            "给他们点\"颜色\"瞧瞧!",
            "{{BlackHeart}} +2 黑心#{{ArrowUp}} {{Damage}} x1.2伤害倍率#{{ArrowUp}} {{Damage}} +2伤害#{{ArrowUp}} {{Range}} x1.5射程倍率#{{ArrowUp}} {{Shotspeed}} +0.5弹速#{{ArrowDown}} {{Tears}} x0.66射速倍率#泪弹会穿透并在命中后弹射"
        },{
            "Cosmic Eyе",
            "宇宙之眼",
            "愈合你的灵魂",
            "佐伊 - 破碎形态:#闪电造成面板伤害, 且可以连接6名敌人# {{Warning}} 此形态下会受到额外伤害, 获得1{{BrokenHeart}}并自动切换为复原形态"
        },{
            "Cosmic Eye",
            "宇宙之眼",
            "粉碎你的灵魂",
            "佐伊 - 复原形态:#闪电造成33%面板伤害, 且可以连接3名敌人"
        },{
            "Tarot Tome",--你他妈道具更新了你就改老的EID啊你他妈新写一个EID干啥??
            "塔罗巨著",--解锁方式:表伯大尼全红
            "灵视",
            "{{Card}} 生成一个卡牌, 魂石或符文#{{Card}} 使用卡牌, 魂石或符文会生成一个环绕魂火跟班发射灵体泪弹",
        },{
            "Cursed Arrow",
            "诅咒之箭",
            "穿甲伤害?",
            "{{ArrowDown}} {{Damage}} x0.8伤害倍率#{{ArrowUp}} {{Damage}} +2 伤害#{{BossRoom}} 无视头目的减伤#对头目造成额外伤害#{{Warning}} {{ColorYellow}}受到的伤害翻倍{{CR}}",
            {CONF={260,"NonCursedArrow"}}
        },{
            "Pet Rock",
            "宠物石头",--解锁方式:表双子全红
            "你最好的朋友朱莉!",
            "{{Collectible562}} 本局内, 阻止以下属性之一被减少#从{{Tears}} {{Damage}} {{Range}} 中随机选择一个"
        },{
            "Robe of Lightning",
            "雷电法袍",--解锁方式:里佐伊通关回溯线
            "雷劈汝敌",
            "{{Collectible559}} 持续电击附近的敌人#受角色属性影响#{{Collectible497}} 每个房间内第一次受到伤害会引雷, 伤害附近的敌人, 然后在当前房间内获得隐身效果"
        },{
            "Celestial Ball",
            "天界宝珠",--解锁方式:里佐伊通关支线
            "揭示星象",
            "{{PlanetariumChance}} +45%星象房出现率"
        },{
            "Cosmic Ring",
            "宇宙魔戒",--解锁方式:里佐伊通关精神错乱
            "同虚空共舞",
            "角色环绕{{Weakness}} 虚弱气场#被虚弱的敌人被{{Slow}}减速, 受到的伤害翻倍#{{Slow}} 受到伤害会将整个房间的时间减速3s"
        },{
            "Contract of Conquest",
            "征服契约",--解锁方式:表骨全红
            "举兵出击",
            "{{ArrowDown}} {{Range}} x0.8射程倍率#{{Collectible634}} 有5%的概率发射一个炼狱恶鬼#{{Luck}} 幸运10: 20%#{{Collectible684}} 恶鬼有25%的概率被替换为不会爆炸的饥渴之魂"
        },{
            "Avarus Dice",
            "贪婪的骰子",--存疑   解锁方式:表店全红
            "梦寐以求的命运",
            "重随房间内的道具#{{Warning}} 每次花费5-15美分#{{Coin}} 拾取时+进入新的一层时, 生成金金币"
        },{
            "Eye Bender",
            "弯眼",
            "超级跟踪泪弹",
            "{{ArrowUp}} {{Range}} +6射程#{{ArrowDown}} {{Shotspeed}} -0.5弹速#超级跟踪泪弹"
        },{
            "Bursting Vision",
            "迸裂视线",
            "完美\"五\"缺!",
            "{{ArrowDown}} {{Tears}} 0.33x射速倍率#角色一次发射5个泪弹"
        },{
            "My Mind",
            "我的意志",
            "用吾之双眼洞察世界",
            "{{ArrowDown}} {{Speed}} -0.2移速#{{ArrowDown}} {{Tears}} x0.5射速倍率#{{ArrowDown}} {{Damage}} x0.5伤害倍率#{{ArrowDown}} {{Shotspeed}} -0.5弹速#角色一次发射8向泪弹#{{Collectible5}} 获得回旋泪弹"
        },{
            "Midas' Eye",
            "迈达斯之眼",
            "哭大钱",
            "{{Collectible202}} %5的概率发射点金泪弹#{{Luck}} 幸运10: 20%"
        },{
            "Bygone Eye",
            "往事如眼",
            "退化泪弹",
            "{{Collectible285}} %5 的概率发射退化泪弹#{{Luck}} 幸运15: 20%"
        },{
            "Zoe's Bell",
            "佐伊的铃铛",--解锁方式:佐伊通关教堂
            "它的铃声带来雷鸣",
            "当有敌人死亡时, 朝另一个最近的敌人发射电弧#电弧不会电穿多个敌人, 造成2倍伤害"
        },{
            "Lined Pockets",
            "满口袋",
            "金钱上升 + 贪婪的敌人",
            "{{ArrowUp}} {{Damage}} +1伤害#{{ArrowUp}} {{Luck}} +5幸运#{{Coin}} +25美分#{{Coin}} 硬币上限变为9999#杀死敌人获得硬币#变种敌人出现率增加25%#!!! {{ColorYellow}}所有房间被加速{{CR}}"
        },{
            "Mustache",
            "胡子",
            "难以抗拒的气场",
            "获得一个驱散敌人和敌弹的气场#泪弹获得50%溅射伤害"
        },{
            "Hellish Wand",
            "地狱权杖",--解锁方式:表犹大全红
            "标记被遗忘者",
            "{{Weakness}} 让房间内的一个随机敌人被虚弱#虚弱的敌人死亡后会让另一个敌人被虚弱"
        },{
            "Determination",
            "决心",
            "不屈的怒火",
            "{{ArrowUp}} +1复活次数#死亡后, 以半颗心复活, 进入{{Collectible704}}狂战效果并获得无敌"
        },{
            "Overloaded Battery",
            "过载的电池",
            "额外充能",
            "清理房间有50%的概率获得额外充能"
        },{
            "Silver Crown",
            "银皇冠",
            "属性增倍器",
            "{{ArrowUp}} {{Tears}} 1.5x射速倍率#{{ArrowUp}} 除幸运外的其他属性如果{{ColorYellow}}高于基础值{{CR}}也获得倍率x2"
        },{
            "The Egg",
            "混沌之蛋",--暂定
            "我...死了吗?",
            "{{ArrowUp}} +1复活次数#复活后使用{{Collectible622}} 创世纪"
        },{
            "Galvanism",
            "电疗",
            "伤害上升?",
            "{{ArrowUp}} {{Damage}} +0.5伤害#泪弹额外造成基于{{ColorYellow}}敌人当前生命值的百分比伤害{{CR}}"
        },{
            "Scorch",
            "焦痕",
            "伤害上升 + 流星泪弹",
            "{{ArrowUp}} +1 伤害#泪弹额外造成基于{{ColorYellow}}敌人最大生命值的百分比伤害{{CR}}#{{Collectible257}} 获得火之意志的效果"
        },{
            "Ceramic Urn",
            "陶翁",
            "远古文物",
            "{{ArrowUp}} 如果角色本层内未受伤则获得{{Damage}} x2伤害倍率"
        },{
            "Ice Age",
            "冰河时代",
            "卧槽!冰!!!",--暂定
            "{{Freezing}} 定住所有敌人2s#{{Freezing}} 当前房间内, 角色发射冰冻泪弹"
        },{
            "Mysterious Rock",
            "神秘石块",
            "嘿!多亮堂!",--存疑
            "!!! {{ColorBlink}}泪弹不再消失, 但是变得极不稳定{{CR}}"
        },{
            "Immaculate Eye",
            "无暇之眼",
            "多重射击",
            "角色有50%的概率发射至多4个额外泪弹"
        },{
            "Misfortune",
            "厄运",
            "没什么好惊讶的了",
            "{{ArrowUp}} 每一点{{ColorRed}}负数幸运{{CR}}提供{{Damage}}+0.25伤害#{{ArrowDown}} {{Luck}} -3幸运"
        },{
            "Roman Dagger",
            "罗马短剑",
            "冲进客栈",--存疑
            "{{ArrowUp}} {{Speed}} +0.2移速#获得飞行#{{Collectible506}} 获得背刺的效果#穿透泪弹#双击攻击键可以冲刺#{{Damage}} 冲刺期间无敌并造成2倍伤害#{{BleedingOut}} 冲刺命中敌人会使其流血#{{Timer}} 冷却时间: 3s"
        },{
            "Zephyr",
            "西风",
            "你个他妈的懦风",--存疑
            "每2s推开所有的敌人和敌弹"
        },{
            "Nova",
            "新星",
            "东方日出",--暂定, 因为搜到的结果说这是个儿歌的名字(
            "{{Damage}} 在有敌人的房间中, 你的伤害会缓慢上升至2倍, 突变为5倍, 然后变回2倍, 再然后慢慢变回1倍#30s循环一次"
        },{
            "Tag!",
            "打标签咯!",
            "你不玩以撒你是这个",
            "触碰敌人会将其{{Charm}}魅惑和{{Bait}}标记"
        },{
            "Glitched Dice",
            "错误骰子",
            "随你的命重重独自重随在山上的一",
            "将房间中所有道具在2-3个道具间切换#{{ColorError}} 20%的概率将其变为错误道具{{CR}}#!!! {{ColorYellow}}5%的概率将其删除"
        },{
            "Winter Meal",
            "冬日暖餐",
            "生命上升",
            "{{ArrowUp}} +1 心之容器#{{HealingRed}} 治疗1红心#{{Trinket}} 消耗角色的饰品并永久获得其效果",
        },{
            "Deep Cut",
            "深切肉",
            "伤害 + 射速上升",
            "{{ArrowUp}} {{Tears}} +0.5射速#{{ArrowUp}} {{Damage}} +0.5伤害",
        },{
            "Call of The Void",
            "虚空的呼唤",
            "去做吧",
            "{{ArrowUp}} +1复活次数#复活后获得:#{{ArrowUp}} {{Speed}} +0.05移速#{{ArrowUp}} {{Damage}} +0.25伤害#{{ArrowUp}} {{Tears}} +0.25射速#{{ArrowUp}} {{Range}}+0.5射程#{{BlackHeart}} 所有心之容器替换为黑心#!!! 角色无法获得心之容器#{{ArrowUp}} {{ColorLime}}杀死敌人后有概率获得+1复活次数{{CR}}#概率会越来越低#"
        },{
            "Infestation 3",
            "害3横行",--Infestation在游戏内是扩充翻译为了"害虫"横行,但这货横行的是...???
            "迷你射击?",
            "{{Collectible658}} 杀死敌人后有66%的概率生成迷你以撒"
        },{
            "Golden Doll",
            "黄金玩偶",
            "抓娃娃!",
            "敌人有0.5%的概率变金#击杀金敌人会获得硬币和掉落物"
        },{
            "Fissure",
            "石隙",
            "大地, 骨头与岩石",--存疑
            "受到伤害在角色身边生成岩石波并有5%的概率生成一个{{EmptyBoneHeart}}#岩石波可以摧毁障碍物和门"
        },{
            "Mesmerism",
            "催眠术",
            "真令我欢喜!",
            "{{Charm}} 进入房间有5%的概率永久魅惑所有敌人"
        },{
            "Torn Bag",
            "破包",--解锁方式:表伊甸全红
            "多则...更多?",
            "拾取一个硬币, 炸弹或钥匙有10%的概率生成一个相同的掉落物#{{Luck}} 18幸运: 36%"
        },{
            "Weighted Dice",
            "权重分配骰子",--解锁方式:表该隐全红
            "夺少概率?",--存疑
            "{{ArrowUp}} 特殊房间生成道具的概率+45%"
        },{
            "Gusty Blood",
            "腥血",
            "他们的血带来速率",--暂定
            "{{ArrowUp}} 当前房间内每杀死一个敌人获得{{Tears}} +0.5射速#上限为+3"
        },{
            "Puffballs",
            "尘菌",
            "毛茸茸!",
            "{{RottenHeart}} 角色不再拾取腐心, 而是将其吸收, 并永久获得其效果#对没有红心的角色也生效"--店长:真的吗哥?
        },{
            "Bloodbound Blade",
            "缚血之刃",--解锁方式:表夏娃全红
            "它渴求献血",
            "命中敌人会将其标记#双击攻击键将角色传送至所有被标记的敌人身后并对其造成3.2倍伤害#{{Warning}} 传送有小概率花费红心"
        },{
            "Aphakia",
            "无晶状体眼",
            "势不可挡",
            "如果房间内没有角色的泪弹, 可以无视射击延迟再次发射"
        },{
            "Wind Knuckles",
            "风之关节",
            "哗哗哗!",
            "{{ArrowDown}} {{Damage}} x0.75伤害倍率#{{ArrowDown}} {{Tears}} x0.42射速倍率#攻击会伤害房间内的所有敌人, 并朝相同的方向击退"
        },{
            "Abyssal Aperture",
            "深渊之穴",
            "虚空正凝视着你",
            "5个环绕物#阻挡敌弹#触碰敌人或敌弹会生成{{Collectible606}} 裂隙"
        },{
            "Cultus Rose",
            "邪教徒之瑰",
            "心灵副手",
            "朝敌人的方向发射血泪和血迹的跟班#用骨牙定住敌人#{{Damage}} 碰撞伤害为37DPS"
        },{
            "Philosopher's Stone",
            "哲人石",
            "瓶中的金光",
            "{{ColorYellow}}将所有持有的饰品镀金{{CR}}#{{EternalHeart}} 变为{{GoldenHeart}}#{{Warning}} 花费10~20美分"
        },{
            "Cursed Sword",
            "受诅之剑",
            "受限的力量",
            "{{ArrowUp}} {{Damage}} x1.6伤害倍率#{{Warning}} 伤害上限变为8",
            {CONF={260,"NolongerCurse"}}
        },{
            "Sands of Time",
            "时之砂",
            "未来指日可待",
            "游戏内计时器永久归零"
        },{
            "Zoe's Heart",
            "佐伊的心脏",
            "风暴泪弹",
            "{{ArrowUp}} {{Tearsize}} x2泪弹大小#角色的泪弹会逐渐减速并停住#{{IGIcon}} 滞空时间受{{Range}} {{Shotspeed}} 影响#滞空时, 泪弹对附近的敌人释放电弧#{{Damage}} 电弧造成角色一半的伤害, 可以电穿至多4个敌人"
        },{
            "Pelts",
            "投石",
            "高抛泪弹",
            "抛物线弹道"
        },{
            "Veterinary Doctorate",
            "兽医学博士证",
            "野性药丸",--考虑到“兽医”关键词选择不译为“药丸++”
            "{{Pill}} 所有药丸变为大药丸版本"
        },{
            "Creeper Undies",
            "爬行者内裤",--我看你还是叫回诅咒狸猫树叶吧
            "坚如磐石",
            "{{Damage}} 保持不动时, 角色的{{Damage}} 缓慢上升至 x2 +4, {{Tears}} 缓慢上升至三倍, 耗时5s",
        },{
            "Timbs",
            "大黄靴",
            "Not the yuttas",--开摆
            "概率免疫碰撞伤害#角色会造成48碰撞伤害/s#{{Confusion}} 可以肘飞碰到的敌人"--喜欢玩曼巴笑话拦不住的
        },{
            "Sputtering Gutter",
            "沟槽的结巴",--这货怎么翻译啊草
            "射速上升 + 精密度下降",
            "{{ArrowUp}} {{Tears}} x1.3射速倍率#基于角色的{{Tears}} {{Damage}}, 泪弹的属性呈现一定范围的变化, 且泪弹呈扇形发射"
        },{
            "Young Revenge",
            "年幼复仇者",
            "以眼还眼",--想过以牙还牙,但考虑到以撒是用眼镜攻击的(老虎指崩掉牙论外)
            "被敌人命中会朝伤害来源发射1.5倍伤害的泪弹"
        }
    }
    local trinkets={
        {
            "Gulped Penny",
            "被吞掉的硬币",--摆了
            "吃!",
            "{{Trinket}} 拾取一个硬币有5%的概率消耗角色的饰品并永久获得其效果",
            {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率加倍"}}}
        },{
            "The Cookie",
            "饼",
            "你感到安全",
            "33%的概率减少受到的伤害为半颗心",
            {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率加倍"}}}
        },{
            "Lost Heart",
            "迷失之心",
            "缺乏安全感?",
            "{{HolyMantle}} 屏障破碎后获得:#{{ArrowUp}} {{Tears}} +2射速#{{ArrowUp}} {{Damage}} +1伤害#{{ArrowUp}} {{Range}} +1.5射程#{{ArrowUp}} {{Shotspeed}} +0.2弹速",
            {GOLD={INFO={append=true},TEXT={"属性增益翻倍, 且每个房间额外提供一次抵消伤害的机会","属性增益翻倍, 且每个房间额外提供一次抵消伤害的机会","属性增益翻倍, 且每个房间额外提供一次抵消伤害的机会",}}}
        },{
            "Found Contact",
            "找回来的隐形眼镜",
            "给予它们保护",
            "{{Collectible213}} 跟班获得护盾泪弹"
        },{--少了个饰品,多了两个新饰品
            "Lucky Penny",
            "幸运硬币",
            "财富即好运",
            "{{Luck}} 幸运币取代普通硬币的概率翻倍"
        },{
            "Toy Penny",
            "玩具硬币",
            "财富即友谊",
            "{{Trinket}} 拾取一个硬币有1%的概率生成一个随机饰品",
            {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率加倍"}}}
        }
    }
    local conditionalList={
        NonCursedArrow="抵消受到伤害翻倍的效果",
        NolongerCurse="抵消负面效果"
    }
    mod:AddToConditionalList(conditionalList)
    if Benevolence then
        EID:addBirthright(Isaac.GetPlayerTypeByName("Zoe", false), "泪弹会释放更大的追踪闪电, 造成角色1/4的伤害且可以命中多个目标","zh_cn")
        EID:addBirthright(Isaac.GetPlayerTypeByName("Zoe", true), "电弧更快, 可以命中更多敌人#命中的敌人有概率朝最近的敌人额外发射电弧#{{BlackHeart}} 杀死敌人有2%的概率生成黑心#{{Luck}} 幸运20: 20%#{{Collectible497}} 使用副手技能有概率在当前房间获得隐身","zh_cn")
    end
    for _, item in ipairs(items) do
        mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
    end
    for _, item in ipairs(trinkets) do
        mod:AddTranslate(350, item[1], item[2], item[3], item[4], item[5])
    end
end)
