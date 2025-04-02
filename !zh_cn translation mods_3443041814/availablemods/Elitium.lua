local mod = CNEIDBabel
mod:AddModTranslationLoader("ElitiumMod","Elitium",function()
    if ElitiumMod then
        local items={
            {
                ElitiumMod.ElitiumItems.HolyOutburst,
                "神圣爆浆",
                "一地都是",
                "原地喷射,生成一大滩圣水水渍",
            },{
                ElitiumMod.ElitiumItems.StrangeAmulet,
                "奇怪的护身符",
                "你感到什么都没有",
                "{{SecretRoom}} 效果未知?#{{ColorGray}}{{ColorFade}}或许另一个模组可以找到答案?{{CR}}",
            },{
                ElitiumMod.ElitiumItems.BottleOfWater,
                "一瓶水",
                "好喝?",
                "{{ArrowUp}} {{Heart}} +1生命上限 #{{Heart}}治疗1红心",
            },{
                ElitiumMod.ElitiumItems.ChaosEmeralds,
                "混沌宝钻",
                "混沌的感觉!",
                "触发多种效果中的一种",
                {VIR="生成一个高血量但无法攻击的魂火"}
            },{
                ElitiumMod.ElitiumItems.GoldenBag,
                "金包",
                "好沉!",
                "{{Coin}} 获得7美分,并获得以下的两种: #{{Coin}} x 20#{{GoldenHeart}} #{{GoldenKey}} #{{GoldenBomb}} #重复获得金钥匙或金炸弹会替换为{{Coin}}20美分",
                {CONF={{ElitiumMod.ElitiumItems.D9,ElitiumMod.ElitiumItems.DullGoldenRazor},"GolTBag"}}
            },{
                ElitiumMod.ElitiumItems.HeartPadlock,
                "心形挂锁",
                "你的爱心会打开每一扇门扉",
                "受到{{Heart}}伤害,并打开所有的门",
                {VIR="生成一个无法攻击的魂火"}
            },{
                ElitiumMod.ElitiumItems.MagicPotion,
                "魔法药水",
                "里面有股奇怪的气息!",
                "{{Warning}} {{ColorRainbow}}属性千变万化!"
            },{
                ElitiumMod.ElitiumItems.MasterEmerald,
                "大师级宝钻",
                "巨大的力量凝聚于手心!",
                "{{Warning}} 一次性 {{Warning}} #触发{{Collectible"..ElitiumMod.ElitiumItems.ChaosEmeralds.."}}混沌宝钻的所有效果,除了传送"
            },{
                ElitiumMod.ElitiumItems.FirstPlaceMedal,
                "一等奖",
                "你应得的!",
                "提升角色最高的属性 #根据角色持有的最多掉落物, 生成3{{Coin}} /1{{Bomb}} /1{{Key}} ",
                {CHAR={
                    {18,"FirstBeth",true},
                    {25,"FirstPoop",false},
                }}
            },{
                ElitiumMod.ElitiumItems.Pizza,
                "披萨",
                "披萨时间到!",
                "{{ArrowUp}} {{Heart}} 生命上限+1 #{{Heart}} 回满生命 #{{ArrowUp}} {{Speed}} 移速+0.67"
            },{
                ElitiumMod.ElitiumItems.RingsOfLovers,
                "情侣戒指",
                "他们真的爱着对方...",
                "{{ArrowUp}} {{Tears}} +1射速修正"
            },{
                ElitiumMod.ElitiumItems.ScaryPumpkin,
                "吓人南瓜",
                "哇奥!!!!",
                "{{Fear}} 有50%的概率吓跑敌人"
            },{
                ElitiumMod.ElitiumItems.Soul,
                "灵魂",
                --你放屁这就是决心
                --决心个屁他叫红魂
                --什么东西他不是叫猹吗
                --放你妈的屁个猹你以为你闰土啊他叫福
                --是"她"!不要用"他"!
                --我草你妈逼的喜欢玩传说之下就好好玩自己的这β互联网不是让你们几把在这里吵架的一群狗屎小学生闲着没事就穿着蓝外套搁哪儿跟个向日葵一样左右瞎晃荡以为自己很有本事是吧真这么大本事你去爬到学校楼顶往下面跳看你会不会复活在你妈伊伯特山我狠话放在这里了我讨厌小孩子不是没有原因的你几把是不是真的以为世界是个童话每个人都能幸福美满是不是真认为你就是皇宫里的花花公子全世界都得围着你转放你妈狗屁吃屎去吧傻鸟东西把你那破手机收起来多看一下书都不至于26个英文字母都背不下来中考连180分都没有然后去读职高被当作没出息的家伙看不起
                "看起来好像不是这个次元的东西",
                "↑ 获得大幅度随机属性提升, 会随时间衰减, 持续30s"
            },{
                ElitiumMod.ElitiumItems.Console,
                "控制台",
                "???",
                "!!! {{ColorRed}}External Item Description出现了一个错误!#{{GarlinIcon}} {{ColorError}}试图调用.../Elitium/script/EIDItems中的\"控制台\"道具描述, 但是在第404行失败了: 变量类型错误 \"请尝试在有敌人或道具的房间内使用\"",--是的原EID就没打算给你看效果(
                {CONF={514,"ErrorFixed"}}--并非兼容, 算是个彩蛋?(快说谢谢Isaacguru)
            },{
                ElitiumMod.ElitiumItems.BookOfSecretsAlt,
                "秘密之书?",
                "知识之卷",
                "{{Collectible287}} 秘密之书,但是有概率无效"
            },{
                ElitiumMod.ElitiumItems.PurpleChaosEmerald,
                "紫色混沌宝钻",
                "没那么混沌的版本",
                "{{Card}} 触发随机卡牌的效果, 无论是否解锁"--太棒了是自杀之王我们完蛋了
            },{
                ElitiumMod.ElitiumItems.BloodySacrifice,
                "血祭品",
                "献给上帝的祭品",
                "{{SacrificeRoom}} 造成1颗心的伤害并提供奖励#{{AngelDevilChance}}造成1颗心的伤害并重随道具#!!! 献祭12次或在{{AngelDevilChance}}中重随道具会使其破碎"
            },{
                ElitiumMod.ElitiumItems.BrokenBloodySacrifice,
                "破碎血祭品",
                "献给上帝的祭品",
                "使用后将其修复"
            },{
                ElitiumMod.ElitiumItems.Psychopathic,
                "精神变态",
                "!我感受到了血的味道!",
                "{{Damage}} 杀死一定数量的敌人以获得伤害提升#{{IGIcon}} 需要27个至少有12HP的敌人"
            },{
                ElitiumMod.ElitiumItems.BookOfVirtuesAlt,
                "美德之书?",
                "灵魂伴侣",
                "{{Collectible584}} 生成1魂火环绕跟班, 发射灵体泪弹但可被摧毁#不能与其他主动道具组合"
            },{
                ElitiumMod.ElitiumItems.BrokenChaosEmerald,
                "破碎的混沌宝钻",
                "所有的混沌生效于你?",
                "{{Card}} 触发0-3张随机卡牌的效果, 无论是否解锁#{{IGIcon}} 该道具仅在{{GreedMode}}中出现, 用于替代Stefan的紫色混沌宝珠"
            },{
                ElitiumMod.ElitiumItems.BlankBook,
                "空白的书本",
                "______",
                "{{IGIcon}} 使用后, 将其变为{{Quality0}}书本道具({{GarlinIcon}}由于原版游戏不存在0级书本, 使用后可能会崩溃!)#{{IGIcon}} 携带这本书通过的楼层越多, 越容易出现高品质书本#{{IGIcon}} 在家中使用则会生成8本书, 其中一本必定为{{Collectible"..ElitiumMod.ElitiumItems.BookOfHistory.."}}",--真想不明白为什么会EID里写一个 只能在教堂或阴间使用
            },{
                ElitiumMod.ElitiumItems.D9,
                "九面骰",
                "重随你的...口袋?",
                "{{Trinket}} 重随房间内的饰品和角色持有的饰品",
                {VIR="每重随一个饰品,额外生成一个魂火"}
            },{
                ElitiumMod.ElitiumItems.PurpleCandle,
                "紫蜡烛",
                "火焰的结合!",
                "触发随机蜡烛的效果#{{IGIcon}} 拾取时有33%的概率变为{{Collectible260}}黑蜡烛",
            },{
                ElitiumMod.ElitiumItems.DevilD6,
                "恶魔六面骰",
                "既定的未来",
                "将房间内的所有道具重随成{{ItemPoolDevil}}恶魔交易#{{Heart}} 需要血量交易",
                {VIR="每重随一个道具,额外生成一个魂火"}
            },{
                ElitiumMod.ElitiumItems.AngelD6,
                "天使六面骰",
                "既定的未来",
                "将房间内的所有道具重随成{{ItemPoolAngel}}道具#!!! 25%会使道具消失#与幸运无关#{{Coin}} 需要花钱购买道具",
                {VIR="每重随一个道具,额外生成一个魂火"}
            },{
                ElitiumMod.ElitiumItems.DullGoldenRazor,
                "金钝刀片",
                "我金金?",--能想出这种翻译的家里得请哈吉高了
                "{{Warning}} 一次性#使角色受伤但不掉血#{{Trinket}} 吞掉当前饰品"
            },{
                ElitiumMod.ElitiumItems.GabrielsPower,
                "加百列之力",
                "天使的力量",
                "在当前房间内获得飞行,并朝四个方向发射圣光",--测试只有圣光,而与EID描述有其他效果不符
            },{
                ElitiumMod.ElitiumItems.GabrielsPowerBirthright,
                "加百列真力",
                "只属于\"你\"的力量!",
                "触发以下效果中的一种#召唤友方的宝宝#朝四个方向发射圣光#释放泪弹"
            },{
                ElitiumMod.ElitiumItems.EmptyDeck,
                "空卡包",
                "回归塔罗",
                "把所有的掉落物变成卡牌 #对即爆炸弹也有效",--存疑
                {VIR="每生成一张卡牌,额外生成一个魂火"},
            },{
                ElitiumMod.ElitiumItems.TumorCell,
                "癌细胞",
                "唤回你的感受",--存疑
                "{{Collectible658}} 生成4-6个迷你以撒"
            },{
                ElitiumMod.ElitiumItems.BirthrightAlt,
                "谁家长子名分",
                "你得到了一个新的身份",
                "!!! 随机改变角色#{{Collectible619}} 好了, 现在长子名分归你了"
            },{
                ElitiumMod.ElitiumItems.GuardianAngel,
                "守护天使",
                "你的守护天使将救你于水火",
                "受到致命伤害后, 获得10s无敌, 释放25道圣光, 触发50次{{Collectible"..ElitiumMod.ElitiumItems.GabrielsPowerBirthright.."}},获得5个{{Heart}}/{{BlackHeart}}#然后, 该道具消失#!!! {{ColorRed}}如果{{Player"..ElitiumMod.ElitiumCharacters.FallenGabriel.."}}获得了全困难通关标记, 该道具不会消失, 而是变为      !"
            },{
                ElitiumMod.ElitiumItems.GuardianAngelAlt,
                "守护天使?",
                "你的守护天使将让你死无葬身之地",
                "受到致命伤害后, 获得10s无敌, 获得1个{{Heart}}/{{BlackHeart}}, 杀死房间内的所有敌人并召唤{{ColorRed}}敌对的加百列{{CR}}"
            },{
                ElitiumMod.ElitiumItems.SecretD6,
                "隐藏六面骰",
                "未来可期",
                "将房间内的所有道具重随成{{ItemPoolSecret}}道具#!!! 35%的概率使道具消失#与幸运无关#{{Coin}} 需要花钱购买道具#!!! 对同一个道具重随会涨价2美分#{{Warning}} 不会出现一次性道具",
                {VIR="每重随一个道具,额外生成一个魂火"}
            },{
                ElitiumMod.ElitiumItems.BadDrops,
                "过期眼药水",
                "止不住地流...",
                "{{ArrowUp}} {{Tears}} 射速x2#泪弹获得偏移#不影响其他攻击方式",
                {CONF={ElitiumMod.ElitiumItems.Antidepressant,"Incomp"}}
            },{
                ElitiumMod.ElitiumItems.GoldenConvertor,
                "黄金转化器",
                "万物点金术!",
                "两次性#把整个房间及所有实体变为金色#{{Collectible584}} 所有魂火变为金色",
                {VIR="被熄灭后会使所有敌人金化1s"}
            },{
                ElitiumMod.ElitiumItems.GoldenConvertor2,
                "黄金转化器",
                "万物点金术!",
                "{{Warning}} 一次性!#把整个房间及所有实体变为金色#{{Collectible584}} 所有魂火变为金色",
                {VIR="被熄灭后会使所有敌人金化1s"}
            },{
                ElitiumMod.ElitiumItems.ChampionCrown,
                "精英皇冠",
                "释放你的自我!",
                "{{TreasureRoomChanceSmall}} 在头顶生成一个皇冠#!!! 受伤后失去皇冠#↑ 将皇冠带到下一层会额外生成一个宝箱房"
            },{
                ElitiumMod.ElitiumItems.BombamanHead,
                "Bombaman的头",
                "爆炸抗性?",
                "{{Bomb}} 炸弹上限变为5#{{HolyMantleSmall}} 获得红温值, 红温前可以免疫爆炸, 受到爆炸会增加红温值"
            },{
                ElitiumMod.ElitiumItems.ShopsItem,
                "富裕之冠",
                "贪婪将统管世界!",
                "把所有{{TreasureRoom}}宝箱房替换为{{Shop}}商店#{{Shop}} 在第四章之后生成商店"
            },{
                ElitiumMod.ElitiumItems.Antidepressant,
                "抗抑郁药",
                "...",
                "{{ArrowUp}} {{Tears}} 射速修正+0.2#{{ArrowUp}} {{Tears}} 射速x2#!!! 射速值将不再增加"
            },{
                ElitiumMod.ElitiumItems.BrokenD6,
                "破碎六面骰",
                "未来在混沌中散发光芒",
                "有概率将房间内的道具重随为{{ItemPoolPlanetarium}}道具#{{ColorFade}} 启用堕化道具模组后, 这个骰子可以将特定道具转化为堕化道具{{CR}}#{{Warning}} 这个骰子有50%的概率破碎"
            },{
                ElitiumMod.ElitiumItems.Ring,
                "环",
                "为什么看起来像个耳环?",
                "拾取后, 生成5张卡牌, 只能选择其中一张#{{Collectible"..ElitiumMod.ElitiumItems.EmptyDeck.."}} 空卡包可以转换敌人#有概率将{{Heart}}替换为{{Coin}}"
            },{
                ElitiumMod.ElitiumItems.AwakenedAmulet,
                "觉醒的护身符",
                "你感受到了强大的力量!",
                "{{ArrowUp}} 1.3x属性提升"
            },{
                ElitiumMod.ElitiumItems.Stability,
                "恒心",
                "你感受到了来自地下室鬼魂的力量!",
                "{{Tears}} 无伤清理房间获得射速修正+0.1"
            },{
                ElitiumMod.ElitiumItems.HolyCrucifix,
                "圣十字",
                "来自传说中的加百列的神圣力量!",
                "{{Player"..ElitiumMod.ElitiumCharacters.Gabriel.."}} 死亡后复活为加百列",
                {CHAR={ElitiumMod.ElitiumCharacters.FallenGabriel,"Tainted_Revive",false}}
            },{
                ElitiumMod.ElitiumItems.TimeRift,
                "时空裂隙",
                "时间破碎, 异常显现",
                "每层开始生成一个时空裂隙#可以在里面存储一个主动道具#下一局开始时,时空裂隙也会出现并允许玩家拿回上一局留下的道具#!!! 不是所有的道具都可以储存在里面"
            },{
                ElitiumMod.ElitiumItems.Invertator,
                "逆转器",
                "重置",
                "{{SecretRoom}} 重随房间类型,重随隐藏房类型"
            },{
                ElitiumMod.ElitiumItems.DeliriousSchoolbag,
                "精神错乱牌书包",
                "多重主动",
                "允许玩家持有10个主动道具#{{Warning}} 不是所有的道具都可以储存在里面"
            },{
                ElitiumMod.ElitiumItems.Sacrifice,
                "祭品",
                "你的献祭不会一无所获",
                "!!! 献出你的生命,炸弹,钥匙,钱币,属性或道具#{{Collectible}} 换取一个道具#合作模式中{{ColorRed}}所有玩家{{ColorText}}分摊属性减益#不同的房间有不同的效果"
            },{
                ElitiumMod.ElitiumItems.DevilShard,
                "恶魔碎片",
                "想做笔交易吗?",
                "每层开始提供一个恶魔房道具#接受道具后, 在当前层施加指定诅咒#在下一局开局也生效, 但是诅咒会持续一整局"
            },{
                ElitiumMod.ElitiumItems.BookOfHistory,
                "历史书",
                "以撒和他的母亲住在山上的一所小房子里",
                "???",
                {CHAR={
                    {ElitiumMod.ElitiumCharacters.FallenGabriel,"H_TGabriel",false},
                    {0,"H_Isaac",true},
                    {1,"H_Maggy",true},
                    {2,"H_Cain",false},
                    {3,"H_Judas",true},
                    {4,"H_BB",true},
                    {5,"H_Eve",false},
                    {6,"H_Sam",true},
                    {7,"H_AZ",false},
                    {ElitiumMod.ElitiumCharacters.Enty,"H_Enty",false},
                    {{8,11,29,38},"H_Laz",true},
                    {9,"H_Eden",false},
                    {10,"H_Lost",false},
                    {13,"H_Lilith",true},
                    {14,"H_Greed",false},
                    {15,"H_Apy",true},
                    {16,"H_Bone",true},
                    {18,"H_Beth",false},
                    {{19,20},"H_JE",false},
                    {23,"H_TCain",false},
                    {26,"H_TEve",false},
                    {28,"H_TAZ",false},
                    {30,"H_TMT",false},
                    {31,"H_TLost",false},
                    {33,"H_TGreed",false},
                    {36,"H_TBeth",false},
                    {37,"H_Jacob",false},
                    {39,"H_TJacob",false},
                    {ElitiumMod.ElitiumCharacters.Gabriel,"H_Gabriel",false},
                    {ElitiumMod.ElitiumCharacters.Crice,"H_Crice",false},
                    {ElitiumMod.ElitiumCharacters.Bombaman,"H_Bomb",false},
                    {ElitiumMod.ElitiumCharacters.Stefan,"H_Stefan",false},
                }}
            }
        }
        local trinkets={
            {
                ElitiumMod.ElitiumTrinkets.GabrielsHalo,
                "加百列的光环",
                "再无贪婪",
                "下一层将商店替换为{{AngelRoom}}天使商店#{{Warning}}与会员卡无兼容",
                {CONF={602,"Incomp2"}}
            },{
                ElitiumMod.ElitiumTrinkets.AngelResistance,
                "免疫天使",
                "你宽恕了你的罪孽",
                "不会失去{{AngelDevilChance}}恶魔/天使房出现率",
                {GOLD={INFO={append=true},TEXT={"削减受到的伤害","削减受到的伤害","削减受到的伤害"}}}
            },{
                ElitiumMod.ElitiumTrinkets.BethanyAura,
                "伯大尼的发散物",
                "美德的力量",
                "拾取魂心或黑心会获得对应的魂火#黑心魂火的生命值为三倍",
                {GOLD={INFO={append=true},TEXT={"生成更多魂火","生成更多魂火","生成更多魂火"}}}
            },{
                ElitiumMod.ElitiumTrinkets.CursedSoul,
                "诅咒之魂",
                "红心为何物?",
                "{{Heart}} -> {{SoulHeart}}#{{RottenHeart}} -> {{EmptyBoneHeart}}#{{Heart}} {{Heart}} -> {{BlackHeart}}",--生动形象.png
                {GOLD={INFO={append=true},TEXT={"有50%的概率生成更多心","有50%的概率生成更多心","有概率生成更多心"}}}
            },{
                ElitiumMod.ElitiumTrinkets.SilverPadlock,
                "银色挂锁",
                "锁了? 没有哦",
                "{{Key}} 使用钥匙时有35%的概率额外生成1个钥匙",
                {GOLD={INFO={append=true},TEXT={"概率变为55%","概率变为55%","概率提升"}}}
            },{
                ElitiumMod.ElitiumTrinkets.BloodyFeather,
                "沾血的羽毛",
                "他们连后悔的机会都不会有了",
                "{{Collectible160}} 受到伤害会从天释放5道圣光"
            },{
                ElitiumMod.ElitiumTrinkets.Pentagram,
                "五芒星之印",
                "看着吓人",
                "{{ArrowUp}} {{Damage}} 伤害x2#!!! 受到的伤害翻倍"
            },{
                ElitiumMod.ElitiumTrinkets.BombConvertator,
                "炸弹转换器",
                "跟他们爆了",
                "有16%的概率将炸弹变为究极炸弹"
            },{
                ElitiumMod.ElitiumTrinkets.DevilGabrielsHalo,
                "堕化加百列的光环",
                "贪婪诅咒",
                "下一层将商店替换为{{DevilRoom}}恶魔交易#!!! 只有{{Player"..ElitiumMod.ElitiumCharacters.FallenGabriel.."}}可以获得该饰品",
                {GOLD={INFO={append=true},TEXT={"任何角色都可以遇见","任何角色都可以遇见","任何角色都可以遇见"}}}--其实就算不加这些话也不会有人有异议的吧
            },{
                ElitiumMod.ElitiumTrinkets.Scarf,
                "围巾",
                "神圣屏障?",
                "16%的概率抵消伤害,而后饰品消失",
                {GOLD={INFO={append=true},TEXT={"有50%的概率不消失, 但受伤无敌时间减半","有50%的概率不消失, 但受伤无敌时间减半","有50%的概率不消失, 但受伤无敌时间减半"}}}
            },{
                ElitiumMod.ElitiumTrinkets.ActiveAttacher,
                "主动道具连接器",
                "双倍主动效果!",
                "!!! 一次性#吸收主动道具#若持有的主动道具充能数不少于被吸收的道具,使用持有的主动道具会同时使用被吸收的道具",
                {GOLD={INFO={append=true},TEXT={"两次性","两次性","两次性"}}}
            }
        }
        local cards={
            {
                "Soul of Bombaman",
                "Bombaman的魂石",
                "爆!",
                "{{Collectible483}} 触发妈咪炸弹!的效果",
                {CHAR={ElitiumMod.ElitiumCharacters.Bombaman,"BomBombMan",false}}
            },{
                "Soul of Crice",
                "Crice的魂石",
                "s eiGsrcuhilte loh",
                "触发{{Collectible"..ElitiumMod.ElitiumItems.Console.."}}控制台和{{Collectile"..ElitiumMod.ElitiumItems.BookOfSecretsAlt.."}}秘密之书?的效果#{{ERROR}} 1%的概率传送至错误房"
            },{
                "Soul of Enty",
                "恩蒂的魂石",
                "血的力量",
                "在当前房间内获得{{Collectible122}} {{Collectible114}} {{Collectible118}}"
            },{
                "Soul of Gabriel",
                "加百列的魂石",
                "天使的力量",
                "召唤{{ColorYellow}}友方宝宝{{CR}}, 释放4向圣光和泪弹",
            },{
                "Soul of Stefan",
                "Stefan的魂石",
                "魂灵棱镜",
                "{{SoulHeart}} +1魂心#{{Card}} 触发3个随机卡牌的效果"
            },{
                "Fobos",
                "XVIII - 火卫一",
                "愿你得而复失",
                "{{SuperSecretRoom}} 传送至超级隐藏房",
                {CONF={451,"FoboBuff"}}
            },{
                "Atheist",
                "V - 无神论者",
                "敌军踩在脚下",
                "{{Collectible545}} 获得10个骨头环绕物",
                {CONF={451,"DoublE"}}
            },{
                "Gluttony",
                "XIV - 暴食",
                "献祭汝之罪孽",
                "{{CursedRoom}} 传送至诅咒房#{{SacrificeRoom}} 没有诅咒房则传送至献祭房",
                {CONF={451,"GluttBuff"}}
            },{
                "Arbitrariness",
                "XX - 臆断",
                "为恶魔而献祭",
                "{{Collectible}} 有50%的概率生成当前房间道具池的道具 #!!! 另外50%会对玩家造成{{Heart}}{{Heart}}伤害#不致死",
                {CONF={451,"DoublE"}}
            },{
                "Creator",
                "0 - 造物主",
                "一己之利唤魔",
                "将房间内的所有道具重随成{{ItemPoolDevil}}恶魔交易",
                {CONF={451,"CreaTuff"}}
            },{
                "Glitch",
                "故障卡",
                "障引你发个故一了",--做个翻译还要学字母重组我们可真是太有实力了(结果到最后还是没搞懂是个什么东西其实)
                "{{ERROR}} 传送至错误房"
            },{
                "Chaos?",
                "混沌卡?",
                "???",
                "对所有敌人生效#有40%的概率秒杀敌人#{{BossRoom}} 对头目造成3333伤害"
            },{
                "CardHumanity2",
                "反人类卡?",
                "???",
                "50%的概率施加诅咒#否则提供丰厚奖励"
            },{
                "BlankSoul",
                "空白的魂石",
                "魂石复制",
                "使用当前角色对应的魂石#没有则使用随机魂石",
                {CHAR={{8,11,29,38},"IDontWanttoDie",true}}
            },{
                "Demon",
                "XV - 魔鬼",
                "释放黑暗一面",
                "变成{{Player7}}阿萨谢尔, 持续1房间"
            },{
                "Activist",
                "IX - 活动家",
                "一己之利重随",
                "在当前房间内获得{{Collectible689}}混乱王冠的效果",
                {CONF={451,"DoublE"}}
            },{
                "DicePiece",
                "骰子零片",
                "???",
                "{{Collectible"..ElitiumMod.ElitiumItems.BrokenD6.."}} 触发破碎六面骰的效果"
            }
        }
        local conditionalList={
            Tainted_Revive="只是复活",
            H_Stefan="生成3-5张卡, 只能拾取其中一个",
            H_Bomb="!!!获得随机炸弹道具, 并释放{{Collectible483}}一次强力爆炸",
            H_Crice="{{10}}使用{{Collectible"..ElitiumMod.ElitiumItems.Console.."}}控制台10次, 有概率传送至错误房, 3%概率传送至家/{{GreedMode}}究极贪婪",
            H_Gabriel="!!!获得{{Collectible"..ElitiumMod.ElitiumItems.HolyCrucifix.."}}+1复活次数",
            H_TJacob="{{12}}在当前房间内获得{{HolyMantle}}",
            H_Jacob="{{6}}拴住房间内的所有敌人(包括{{ColorRed}}堕化以扫{{CR}})",
            H_TBeth="{{2}}{{0}}生成4个来自{{ItemPoolAngel}}{{ItemPoolDevil}}{{ItemPoolSecret}}的道具魂火",
            H_TGreed="{{12}}将整个房间点金",
            H_TLost="{{4}}在当前房间额外获得一个{{HolyMantle}}/{{2}}{{0}}+1复活次数",
            H_TMT="!!!获得5个随机的被动道具, 并重随自身, 使用{{Card49}}",
            H_TAZ="{{4}}在当前房间获得飞行和{{Collectible118}}完整的硫磺火",
            H_TEve="{{4}}生成2个血团",
            H_TCain="{{6}}生成3个随机掉落物",
            H_JE="{{4}}在当前房间内让两人均获得2个随机被动道具的效果",
            H_Beth="{{10}}获得10个随机魂火",
            H_Bone="{{4}}{{Player16}}获得暂时的{{Range}}射程增幅/{{Player17}}获得暂时的{{Tears}}射速增幅",
            H_Apy="{{6}}{{Collectible477}}吞噬房间内的所有道具和一个额外的被动道具",
            H_Greed="{{6}}生成1-25个{{Coin}}",
            H_Lilith="{{4}}在当前房间获得2-4个跟班, 并触发{{Collectible357}}",
            H_Lost="{{4}}在当前房间额外获得一个{{HolyMantle}}",
            H_Eden="{{SecretRoom}}随机充能, 触发随机主动效果, 获得随机被动道具效果",
            H_Laz="{{12}}+1复活次数",
            H_Enty="{{4}}触发{{Collectible556}}硫磺火的效果",
            H_AZ="{{3}}触发{{Collectible556}}硫磺火的效果",
            H_Sam="{{6}}触发{{Collectible704}}狂战!",
            H_Eve="{{4}}在当前房间内生成14个死鸟",
            H_BB="{{4}}生成8个随机大便",
            H_TGabriel="{{0}}生成花费{{Heart}}的钥匙碎片#{{6}}持有完整的钥匙后改为将道具重随为{{ItemPoolAngel}}血偿道具#在阴间/教堂使用以传送至玩具箱",
            H_Isaac="{{6}}重随房间内的道具, 有20%的概率重随成{{AngelDevilChance}}道具",
            H_Maggy="{{4}}生成1{{Heart}}, 有概率使用生命回满药丸",
            H_Cain="{{4}}生成一{{Pill}}/{{GoldenChest}}",
            GolTBag="同时将饰品镀金",
            FirstBeth="可能生成2红心/1魂心充能",
            FirstPoop="有可能生成屎块(需要角色不持有硬币和钥匙)",
            ErrorFixed="{{ColorCyan}}成功找到描述{{IGIcon}}\"40%的概率什么也没有, 否则触发下述效果之一#房间内有敌人 -> {{Damage}}+40#房间内有敌人 -> 所有敌人受到50伤害#{{Collectible}} 房间内有道具 -> 重随道具"..
            "#{{Collectible}} 可以出现道具 -> 生成道具#{{BossRoom}} 专属 -> 无视护甲造成20-200点伤害#{{ArcadeRoom}} 专属 -> 生成20随机硬币#{{AngelDevilChance}} 专属 -> 生成{{SoulHeart}}/{{BlackHeart}}#{{AngelRoom}} 专属 -> 生成{{EternalHeart}}#{{DeathMark}} 头目车轮战 -> {{Collectible}}随机道具 + 3{{UnknownHeart}}#{{IsaacsRoom}} 专属 -> 触发{{Card20}}#{{ChestRoom}} 专属 -> 随机箱子#{{GreedMode}} 20%的概率施加诅咒",
            Incomp="效果不叠加",
            Incomp2="不兼容",
            BomBombMan="+3红温值",
            IDontWanttoDie="不会触发, 而是直接生成{{Card89}}",
            DoublE="双倍效果",
            FoboBuff="获得1{{Bomb}} + 1{{Key}}",
            GluttBuff="生成2{{SoulHeart}}",
            CreaTuff="20%的概率重新获得这张牌"
        }
        mod:AddToConditionalList(conditionalList)
        EID:addBirthright(ElitiumMod.ElitiumCharacters.Crice, "强化控制台,使其更容易触发效果#强化{{ColorError}}影之书{{CR}}:更强的触发概率,有概率获得{{Card22}}和???", "Crice-噩梦变为了美梦!","zh_cn") 
        EID:addBirthright(ElitiumMod.ElitiumCharacters.Bombaman, "红温所需的次数上升至10", "Bombaman-跟你爆了!","zh_cn")
        EID:addBirthright(ElitiumMod.ElitiumCharacters.Gabriel, "不再减少伤害,并获得{{ColorYellow}}加百列真力{{CR}}和{{Collectible643}}", "加百列-你的力量回来了","zh_cn")
        EID:addBirthright(ElitiumMod.ElitiumCharacters.Enty, "{{ArrowUp}} {{Damage}} 伤害x2", "恩蒂-给 我 血 !","zh_cn")
        EID:addBirthright(ElitiumMod.ElitiumCharacters.FallenGabriel, "{{ColorCyan}}不再转换天使相关道具#{{ColorCyan}}取消无法进入天使房的限制{{CR}}", "堕化加百列-汝已被原谅, 吾之子民","zh_cn")
        EID:addBirthright(ElitiumMod.ElitiumCharacters.Stefan, "怪物死亡或角色受伤有概率掉落随机卡牌", "Stefan-卡牌即鲜血","zh_cn")
        EID:addCharacterInfo(ElitiumMod.ElitiumCharacters.FallenGabriel,"{{AngelRoom}} {{ColorRed}}无法进入天使房#{{Heart}} {{ColorRed}}每个心之容器会减少12.5%的伤害#!!! 以下物品会被转换:"..
        "#{{Collectible327}} -> {{Collectible328}}#{{Collectible"..ElitiumMod.ElitiumItems.AngelD6.."}} -> {{Collectible"..ElitiumMod.ElitiumItems.DevilD6.."}}#{{Trinket"..ElitiumMod.ElitiumTrinkets.GabrielsHalo.."}} -> {{Trinket"..ElitiumMod.ElitiumTrinkets.DevilGabrielsHalo.."}}#{{Collectible643}} {{Collectible499}} {{Collectible586}} {{Collectible601}} {{Collectible"..ElitiumMod.ElitiumItems.GabrielsPower.."}} -> {{ItemPoolAngel}}随机道具","堕化加百列","zh_cn")
        EID:addCharacterInfo(ElitiumMod.ElitiumCharacters.Crice,"无伤通过一层可以完全恢复副手道具的充能","Crice","zh_cn")
        EID:addCharacterInfo(ElitiumMod.ElitiumCharacters.Bombaman,"可以无视爆炸伤害, 直到连续5次并红温#每6.67s红温值下降一层#完全红温后会释放一次强力爆炸","Bombaman","zh_cn")
        EID:addCharacterInfo(ElitiumMod.ElitiumCharacters.Stefan,"{{Pill}} 无法获得药丸, 只有卡牌","Stefan","zh_cn")
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
        end
        for _, item in ipairs(trinkets) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4], item[5])
        end
        for _, item in ipairs(cards) do
            mod:AddTranslate(300, item[1], item[2], item[3], item[4], item[5])
        end    
    end
end)
