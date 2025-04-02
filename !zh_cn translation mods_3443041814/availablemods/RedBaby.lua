local mod=CNEIDBabel
mod:AddModTranslationLoader("RedBaby","!!!\n 警告: 若有发现汉化与实际效果对不上, 请及时反馈",function()
    local items={
        {
            "!!!'s Heart",
            "! ! !的心脏",
            "永恒...但代价是什么?",
            "死亡时若拥有至少2个心之容器即可复活#{{ArrowDown}} 复活后, 将2个心之容器转化为{{EmptyBoneHeart}}骨心#{{ArrowUp}} 每次复活获得 +0.50 {{Damage}}#{{Player" ..Isaac.GetPlayerTypeByName("!!!",false).. "}} ",
            {CHAR={Isaac.GetPlayerTypeByName("!!!",false),"RedsOwnHeart"}}
        },{
            "Hush's Scythe",
            "死寂的镰刀",
            "以血为源",
            "{{Damage}} 每有一个{{HalfHeart}}被填满获得+0.25伤害#{{Tears}} 每有一个{{HalfHeart}}被填满获得+0.40射速#{{Speed}} 每有一个{{HalfHeart}}被填满获得+0.04移速#{{BleedingOut}} 每层排空2个心之容器, 并生成4个血团(至少留下1{{Heart}})"
        },{
            "Phobos ",
            "火卫一",--福波斯（希腊神话中的恫吓之神）
            "刺破这虚伪的\"天堂\"",
            "杀死敌人会生成浮石#双击攻击键发射一支箭矢在浮石间弹跳#这支箭矢会最终卡在墙上, 需要拾起后才能再次使用#{{IGIcon}} 箭矢造成4倍{{Damage}}, 会穿透敌人, 使其大出血, 但不会因此生成浮石"
        },{
            "Pig's Heart",
            "猪心",
            "生命上升 + 更强的血液",
            "{{EmptyHeart}} 获得一个空的心之容器#{{Warning}} 所有的红心被排空并掉落#{{Heart}} 每个独立的心掉落物有概率变为双倍"
        },{
            "...'s Spine",
            "...的脊柱",
            "囚笼射击",
            "角色获得15%的概率发射一个白色泪弹#被命中的敌人会被骨牙囚禁5s#{{Luck}} 幸运15: 100%"
        },{
            "Protector",
            "保护装置",
            "点击丢弃键释放格挡",
            "双击丢弃键触发格挡#{{Slow}} 格挡时被命中会抵消伤害, 并减速时间#{{IGIcon}} 冷却时间4s#{{IGIcon}} 可以用于白嫖{{BloodDonationMachine}} {{DemonBeggar}} {{CursedRoom}}"
        },{
            "Salvaged Pendant",
            "被挽回的吊坠",
            "吸收红心",
            "在满血时拾取取红心有概率获得{{Damage}}+0.25 伤害, {{Speed}}+0.04 移速或 {{Tears}}-0.40 射速延迟"
        },{
            "Lemon Brownie Bombs",
            "柠檬味布朗尼秘制炸弹",
            "撤硕爆破, +5炸弹",
            "炸弹爆炸会生成2-4个尿滴和2-4个粪滴跟班#{{Bomb}} +5炸弹"--把pissling翻译成柠檬滴我还是太文胜质则史了(
        },{
            "Jester Baby",
            "弄臣宝宝",
            "恶作剧大王",
            "{{Warning}} 攻击时, 弄臣宝宝会让所有跟随角色的跟班在房间内斜向运动#所有的跟班均可造成碰撞伤害({{IGIcon}}DPS=25.71)",
            {CONF={472,"JQK"}}
        },{
            "!!!'s Last Friend",
            "! ! !最后的朋友",
            "冲刺伙伴",
            "静止的跟班, 通过长按攻击键蓄力令其朝指定方向猛冲",
            {CONF={604,"Throwable"}}
        },{
            "Scarlet Infant",
            "猩红之胎",
            "夭折",
            "抵挡敌弹的环绕物--环绕敌人!#杀死猩红之胎环绕的敌人会同时\"杀死\"猩红之胎, 释放一次血爆并伤害周围的敌人#猩红死胎会持续吐出血泪, 一小段时间后复活"
        },{
            "Isaac's Skin",
            "以撒的人皮",
            "包皮伙伴",--家里得请哈吉高了
            "会尝试肘击附近的敌人的跟班, 小概率用投掷炸弹的方式攻击#{{SecretRoom}}} 还有小概率尝试去炸隐藏房#在进入新楼层, 有敌人的房间或商店后使用一些特定的卡牌"
        },{
            "The Fistuloids",
            "小瘘管",
            "三重威胁",
            "生成3个环绕的小瘘管环绕物, 不会抵挡敌弹#长按攻击键蓄力, 让小瘘管释放飞蛆#飞蛆对碰撞的敌人造成{{IGIcon}}120DPS, 而后回到自己的瘘管壳中"
            --我赌2点弹速这个包出现字体不兼容
        },{
            "Lil !!!",
            "小! ! !",
            "流血伙伴",
            "环绕角色#持续在未清理的房间内喷出血泪"
        },{--就没一个写BFF兼容的
            "Bladder",
            "膀胱",
            "填满它!",
            "{{ColorFade}}是空的#充能后会更加强大"
        },{--一想到同样的东西我还要写六个而且最重要的是六个EID全都不一样我就想()
            " Bladder",
            "膀胱",
            "憋住它!",
            "释放一簇散弹尿弹#充能后会更加强大#!!! 受伤后失去充能",
            {CAR="发射更多的尿弹"}
        },{
            "  Bladder",
            "膀胱",
            "憋住它!",
            "释放一条尿弹#充能后会更加强大#!!! 受伤后失去充能",
            {CAR="发射更多的尿弹"}
        },{
            "   Bladder",
            "膀胱",
            "憋住它!",
            "释放一个尿雷#尿雷会迸为一滩液体, 2个尿滴和一簇泪弹#充能后会更加强大#!!! 受伤后失去充能",
            {CAR="更强的尿雷"}
        },{
            "    Bladder",
            "膀胱",
            "憋住它!",
            "抛物线发射一个肾结石, 最终崩裂为一簇尿弹和一滩液体#充能后会更加强大#!!! 受伤后失去充能",
            {CAR="更大的肾结石"}
        },{
            "     Bladder",
            "膀胱",
            "憋住它!",
            "喷射一行液体#尿弹从中迸射#充能后会更加强大#!!! 受伤后失去充能",
            {CAR="液体范围更远"}
        },{
            "      Bladder",
            "膀胱",
            "喷射!",
            "发射一个持续时间极长的尿激光柱!#一段时间后会会萎掉并失效#一段时间不使用会自动恢复#!!! 受伤后失去充能",
            {CAR="更强大的尿激光柱"}
        },{
            "Youch! Heart",
            "AUV!这心可真心啊",--嘻嘻
            "缝补破洞 - 粉碎全局",
            "在没有{{BrokenHeart}}碎心是使用会发射一圈泪弹并在当前房间获得{{Tears}}+2射速#在拥有碎心时使用则移除1碎心#还可以移除5个{{BrokenHeart}}"
        },{
            "Youch! Heart ",
            "AUV!这心可真心啊",
            "缝补破洞 - 粉碎全局",
            "在没有{{BrokenHeart}}碎心是使用会发射一圈泪弹并在当前房间获得{{Tears}}+2射速#在拥有碎心时使用则移除1碎心#还可以移除4个{{BrokenHeart}}"
        },{
            "Youch! Heart  ",
            "AUV!这心可真心啊",
            "缝补破洞 - 粉碎全局",
            "在没有{{BrokenHeart}}碎心是使用会发射一圈泪弹并在当前房间获得{{Tears}}+2射速#在拥有碎心时使用则移除1碎心#还可以移除3个{{BrokenHeart}}"
        },{
            "Youch! Heart   ",
            "AUV!这心可真心啊",
            "缝补破洞 - 粉碎全局",
            "在没有{{BrokenHeart}}碎心是使用会发射一圈泪弹并在当前房间获得{{Tears}}+2射速#在拥有碎心时使用则移除1碎心#还可以移除2个{{BrokenHeart}}"
        },{
            "Youch! Heart   ",
            "AUV!这心可真心啊",
            "缝补破洞 - 粉碎全局",
            "在没有{{BrokenHeart}}碎心是使用会发射一圈泪弹并在当前房间获得{{Tears}}+2射速#在拥有碎心时使用则移除1碎心#还可以移除1个{{BrokenHeart}}"
        },{
            "Fudge Dice",
            "乳汁软骰",
            "拆卸你的宿命",
            "使用后, 最近的道具被拆解为2个道具#{{Warning}} 只能拾取其中一个#其中一个必定是{{ColorRed}}红色的{{CR}}, 而另一个是{{ColorBlue}}蓝色的",
            {ABY="每个房间变换颜色的蝗虫, 蓝色蝗虫更快但伤害更少, 红色则反之"}
        },{
            "Dad's Smoke Sticks",
            "爸爸的香烟",--暂定
            "遍地都是的牌子",-- a dime a dozen 非常常见, 几乎毫无价值
            "{{Card}} 生成一支烟"
        },{
            "Retrieve",
            "唤回",
            "回来吧",
            "生成一个...副角色, 他无法拾取任何东西#死亡后, ...会分裂为三个部分#拾取3个部分将他复活#当...还活着, 使用这个道具可以将它举起来; 否则吸引他的身体部件#将...丢出去产生巨大的爆炸, 同时杀死他",
            {CHAR={Isaac.GetPlayerTypeByName("...",false),"Retriver"}}
        }
    }
    local trinkets={
        {
            "Scoped Creep",
            "蔓延液体",--存疑
            "更精准的液迹",
            "地面上的伤害液体也可以伤害空中的敌人"
        },{
            "Pissed Penny",
            "沾尿硬币",
            "尿尿财",
            "拾取硬币会生成尿滴",
            {GOLD={INFO={append=true},TEXT={"生成更多的尿滴","生成更多的尿滴","生成更多的尿滴"}}}
        },{
            "Lil Lemon",
            "小柠檬",
            "把他们打爆浆!",
            "杀死敌人有17%概率生成尿滴液",
            {GOLD={INFO={append=true},TEXT={"概率翻倍","概率翻倍","概率加倍"}}}
        }
    }
    local cards={
        {
            "soulof!!!",
            "! ! !的魂石",
            "",
            "获得一个随机的{{Collectible" ..Isaac.GetItemIdByName("      Bladder").. "}}膀胱效果#有概率获得鲍勃的膀胱/车载电池的兼容效果"--什么?鲍勃膀胱兼容?我怎么不知道??
        },{
            "cigarretes",
            "一支香烟",
            "吸烟有害? 太酷啦!",
            "将时间减速, 并在此期间获得大幅度衰减性射速提升"
        },{
            "birthdaycard",
            "生日贺卡",
            "生日快乐!",
            "{{Collectible619}} 在当前楼层获得长子权的效果, 除了个别个例--",
            {CHAR={
                {2,"BirthCain",false},
                {9,"BirthEden",false},
                {{19,20},"BirthJacob",false},
                {21,"Bisaac",false}
            }}
        }
    }
    local conditionalList={
        RedsOwnHeart="额外获得 +0.50 {{Damage}}",--IsaacGuru描述为改为获得+0.6伤害修正
        JQK="{{ColorRed}} 弑 君 !{{CR}}",
        Throwable="可以被举起并投掷",
        Retriver="使用后吸附最近的身体部件并移除对应负面效果#当拥有完整的身体时, 可以朝攻击方向释放骨片",
        BirthCain="传送至一个上等布局赌博房",
        BirthEden="在当前楼层获得一个随机道具的效果",
        BirthJacob="使用者的兄弟在当前楼层获得一个随机道具的效果",
        Bisaac="丢掉身上的4个道具#这些道具会被堕化以撒的特质所重随"
    }
    mod:AddToConditionalList(conditionalList)
    EID:addCharacterInfo(Isaac.GetPlayerTypeByName("!!!",false),"死亡时若拥有至少2个心之容器即可复活#复活后, 将2个心之容器转化为属性增益和2{{EmptyBoneHeart}}#{{SoulHeart}} -> {{RottenHeart}}#{{BlackHeart}} -> {{EmptyBoneHeart}}", "! ! !", "zh_cn")
    EID:addBirthright(Isaac.GetPlayerTypeByName("!!!",false),"在未清理的房间内持续喷射血泪#每次复活都会增加血泪的伤害","! ! !-正在流血","zh_cn")
    EID:addCharacterInfo(Isaac.GetPlayerTypeByName("!!!",true),"通过造成伤害为膀胱充能#{{SoulHeart}} -> {{RottenHeart}}#{{BlackHeart}} -> {{EmptyBoneHeart}}","! ! !-满载者","zh_cn")
    EID:addBirthright(Isaac.GetPlayerTypeByName("!!!",true),"受到伤害只会失去膀胱的一层充能","! ! !-膀胱耐力上升","zh_cn")
    EID:addCharacterInfo(Isaac.GetPlayerTypeByName("...",false),"#{{SoulHeart}} -> {{RottenHeart}}#{{BlackHeart}} -> {{EmptyBoneHeart}}#每次受伤都会拾取3个身体部件并获得各自的特殊负面效果","...-挑战限定角色","zh_cn")
    EID:addBirthright(Isaac.GetPlayerTypeByName("...",false),"受伤时生成4个骨片","...-骸骨保护","zh_cn")
    for _, item in ipairs(items) do
        mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
    end
    for _, item in ipairs(trinkets) do
        mod:AddTranslate(350, item[1], item[2], item[3], item[4], item[5])
    end
    for _, item in ipairs(cards) do
        mod:AddTranslate(300, item[1], item[2], item[3], item[4], item[5])
    end
end)