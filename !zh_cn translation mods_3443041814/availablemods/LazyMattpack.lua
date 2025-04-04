local mod = CNEIDBabel
mod:AddModTranslationLoader("MattPack", "Lazy Mattpack(5级道具mod)\n 警告: 道具的兼容描述待补充!",function()
    local items={
        {
            "Balor",
            '巴罗尔的魔眼',
            '噩兆之眼',
            "↑ {{Damage}} 伤害+6#↑ {{Damage}} 伤害倍率x3 #↓ {{Tears}} 射速-0.42 #↓ {{Tears}} 射速倍率x0.125 #{{IGIcon}} 泪弹具有巨大的后坐力, 会穿透至多5次, 每次减少20%的伤害, 获得小幅度射程提升, 并按顺序获得一个天启噩兆效果#{{1}} 饥荒噩兆 - 减速#{{2}} 瘟疫噩兆 - 中毒#{{3}} 战争噩兆 - 易燃易爆#{{4}} 死亡噩兆 - 2x 基础伤害#{{5}} 征服噩兆 - 圣光",
            {CONF={
                {{245,2,153,229},"BalorMultiplyer"},
                {{68,114,118},"Recoiless"},
                {168,"Overrides","Overridden"},--不愧是你
                {395,"BaloX"},
                {579,"noEffect"}
            },
            CHAR={16,"noEffect",true},
            QUA=0}--倒扣DPS, 子弹都秒人了噩兆添头真的有用吗
        },{
            "Benighted Heart",
            "愚昧之心",
            "如上, 如是下",
            "↓ {{Heart}} 心之容器-1 #↓ {{Damage}} 伤害-0.4 #↑ {{Tears}} 射速倍率x2.3 #↑ {{Tears}} 射速+1 #↑ {{Shotspeed}} 弹速+0.25 #{{EmptyHeart}} 排空所有的心之容器({{GarlinIcon}}并转化为黑心, 不致死)#{{ColorPurple}}角色的泪弹吸引敌人和掉落物{{CR}}",
            {QUA=2}--参考断头台(非忏悔+),尽管负面明显但属性提升极其显著,2级下应该有(?
        },{
            "Boulder Bottom",
            "谷底巨石",
            "我们能再高一点吗?",
            "所有的临时效果——那些由主动道具, 饰品和副手消耗品得到的效果——变为永久#{{GarlinIcon}} 实现的方法为记录所有用过的临时效果, 并在失效后再使用一次; 效果疑似不会无限叠加#!!! 不包括无敌和复活效果#{{IGIcon}} 被重随或移除的被动道具都会被重新加回来#{{CurseBlind}} 这个道具的效果也无法被移除(存疑)",
            {CONF={
                {"33.4.0","LOLitsReallyEternal"},
                {"5.300.70","BoulderAble"},
                {160,"BoulderAble"},
                {"5.300.63","BoulderLess"},
            },
            QUA=3}--避雷后还是强的
        },{
            "Comically Large Spoon Bender",
            "大的有点逆天的弯勺魔术",
            "只要  一  勺",
            "{{Collectible3}} {{ColorPink}}更强大的追踪泪弹{{CR}}#追踪泪弹一旦缠上敌人, 就会拥有无限的射程#同时缠上2个敌人的追踪泪弹会一分为二, 化作0.66倍攻击的泪弹分别追踪两个敌人",
            {CONF={
                {{68,118,168,114},"Spless"},
                {53,"DrBender"},
                {329,"LudoBender"},
                {395,"Xder"}
            },CHAR={16,"Spless",true},
            QUA=4}--弯勺的牌面还是得有
        },{
            "Kitchen Knife",
            "厨刀",
            "划破黑暗",
            "只能通过拾取黑心充能##{{IGIcon}} 未完全充能时, {{BlackHeart}}红心有33%的概率被替换为黑心, 魂心有50%的概率被替换, 敌人有20%的概率掉落临时的黑心#{{GarlinIcon}} 未完全充能也可以使用#{{ColorFade}}使用后, 角色将刀插入地表, 生成一片直冲云霄的黑暗喷泉{{CR}}#持续时间内, 喷泉会造成帧伤并排斥敌人, 推开敌弹, 击破岩石, 伤害与楼层有关#消耗6充能后光柱的伤害会翻倍,最多只会消耗12充能",
            {QUA=1}--参考死灵书
        },{
            "Devil's Yo-Yo",
            "恶魔悠悠球",
            "迫近的死亡",
            "在角色头顶生成飞刀悠悠球, 并使所有底座道具翻3倍#{{GarlinIcon}} {{ColorRed}}真正意义上的所有道具! 小心你的道具池=){{CR}}#{{Warning}} 每帧有{{IGIcon}}1/2500的概率激活并掉进角色身体里, 不断造成伤害直到只剩半颗心(不致死)",
            {CONF={
                {628,"NoMoreDeathYoyoTAT"},
                {{577,656},"ReDamo"}
            }}--不用改,唯一真神
        },{
            "Knife Bender",
            "弯刀魔术",
            "跟踪泪弹?",
            "↓ {{Tears}} 射速倍率x0.75 #↓ {{ShotSpeed}} 弹速倍率x0.75 #{{Collectible3}} 泪弹会吸引敌弹, 并在触碰后将其吸收#每吸收一个敌弹, 泪弹会继承那个敌弹的一部分伤害, 小幅度的射程增幅和{{ColorPink}}任何适用的泪弹效果(例如环绕, 跟踪等){{CR}}",
            {CONF={
                {579,"Swordless"},
                {168,"Overrides","Overridden"}
            },CHAR={16,"NotGoodAtBending",true},
            QUA=4}--强度是有的唯一的遗憾就是惹上了妈刀
        },{
            "Multi Mush",
            "多重蘑菇",
            "乐趣翻倍",
            "{{MegaArrowUp}} 全属性倍率x2, 包括恶魔天使房开启率和星象房开启率#{{IGIcon}} 翻倍角色的移速上限和体积倍率#{{Heart}} 翻倍生命上限最大值#{{Warning}} {{ColorYellow}}提高所有敌人的移速和弹速1.5倍{{CR}}",
            {QUA=2}--同黑暗圣心
        },{
            "Bloated Body",
            "肿胀的尸体",
            "无限迸射",
            "泪弹碰撞后会分裂为4个#分裂的泪弹获得原泪弹一半的伤害和射程#分裂的泪弹还会进一步分裂, 产生更少伤害和射程的泪弹, 而且会永远继续分裂下去, 直到射程用尽",
            {QUA=4}
        },{
            "Mutant Mycelium",
            "变异蜘蛛菌",
            "寄生?",
            "↑ {{Tears}} x1.25 射速倍率#↓ {{Damage}} x0.85 伤害倍率# 每4次攻击中第四次会额外附加3个泪弹",
            {CONF={
                {{579,168,329},"noEffect"},
                {118,"ChanceTrigger"}
            }}
        },{
            "Tech 5090",
            "科技5090",
            "坚持不懈为其助力",
            "移动时, 角色持续朝移动方向发射激光#角色不改变方向越久, 激光的射程, 宽度和伤害越高, 转向会让这些属性快速衰减#伤害变化幅度为0.5-5倍角色伤害#激光会小幅度推开敌弹",
            {QUA=2}--不能当主力你还站3级?
        },{
            "Tech Omega",
            "科技Omega",
            "远程轰击",
            "角色不再发射泪弹, 而是发射一个持续的{{ColorRed}}低伤害粗激光{{CR}}#被命中的敌人会积攒 \"科技点数\" #{{IGIcon}} 任何\"激光\"都可以积攒科技点数#一旦科技点数满, 怪物会迸出X向射程有限, 伤害减半的激光",
            {CONF={
                {118,"BrimOmega"},
                {395,"Xmega","Omex"}
            },CHAR={16,"Overrides",true},
            QUA=2}--我不喜欢
        },{
            "Dead Litter",
            "缝补死猫",
            "那么我们去哪儿找第四个呢?","↑ {{Damage}} 伤害倍率x1.66#每发子弹有10%的概率伴随三个猫类效果之一#{{Luck}} 幸运10: 50%#{{Collectible81}} 发射3个临时的, 造成一半伤害的{{Collectible706}}蝗虫#{{Collectible38}} 额外发射9个环绕角色的泪弹#{{Collectible"..Isaac.GetItemIdByName("Bloated Body").."}} 无限分裂的泪弹",
            {CONF={
                {579,"Littersword"},
                {{168,329},"GuppyOnly"}
            },QUA=3}--我拿过一局高幸运豆奶, 一大堆蝗虫给我莉莉宝顶掉就算了哥几个左右互搏互相把对方顶掉一点伤害没有
        },{
            "Divine Heart",
            "天赐圣心",
            "不灭的信仰",
            "↑ {{Damage}} 伤害倍率x1.5#↓ {{Tears}} 射速倍率x0.66#↓ {{Shotspeed}} 弹速倍率x0.5#获得穿透+灵体泪弹#泪弹会留下一个微弱的拖尾#泪弹{{ColorFade}}消失{{CR}}后, 在拖尾的位置连接一道圣光, 造成至多每秒3.75倍角色伤害",
            {CONF={
                {68,"DivineLazer"},
                {52,"DrDivine"},
                {579,"DivineSword"},
                {118,"DivineBrims"},
                {168,"DivineEpic"},
                {329,"DivineLudo"},
                {395,"Xvine"},
                {114,"DivineKnife"},
                {540,"noEffect"},
                {397,"DivineBeam"}
            },CHAR={16,"DivineBone",true},
            QUA=3}--射程高会负面,其他还能接受
        },{
            447,
            "流连豆",
            "你放屁跟打雷一样",--文胜质则史,质胜文则力大砖飞(
            "{{GarlinIcon}} 请留步! 这个模组将流连豆加强了!#双击攻击键朝身后发射屁云#{{Timer}} 冷却10s#{{IGIcon}} 屁云会每7s变强一次#{{1}} 初始: 屁云每秒造成4.29次{{Damage}}角色伤害#{{2}} 开始下雨并留下伤害水迹#{{3}} 水迹有33%的概率复制角色的特效#{{4}} 最终: 100%复制特效, 可以对其下方的敌人打雷造成3倍伤害"
        },
    }
    local conditionalList={
        BrimOmega="敌人迸射2.5倍射程的血激光柱",
        Xmega="覆盖科技Omega, 但是获得伤害减半和弹速减半",
        Omex="被科技X覆盖, 但使其伤害减半和弹速减半",
        LOLitsReallyEternal="!!! {{ColorYellow}}游魂诅咒也会变为永久{{CR}}",
        BoulderAble="可以变为永久",
        BoulderLess="非属性效果不能变为永久",
        BalorMultiplyer="多发泪弹会显著增加攻击的后坐力",
        Recoiless="该攻击方式无后坐力",
        BaloX="触发征服噩兆不会让激光环消失, 并使其进行第二次噩兆的循环",
        noEffect="无特殊兼容",
        Spless="失去分裂的效果",
        DrBender="投掷的炸弹也会分裂#!!! 分裂后的炸弹会重置引爆计时",
        LudoBender="悬浮的泪弹也会分裂, 然后角色重新生成一个悬浮泪弹操作",
        Xder="失去分裂的效果#不仅激光环会持续锁定敌人, 激光环的{{ColorYellow}}行动路径{{CR}}也将受到追踪效果的影响",
        NoMoreDeathYoyoTAT="喜报: 死亡证明与恶魔悠悠球的异常兼容已被修复=)",
        ReDamo="一次总共分裂为4个道具",
        Swordless="挥砍攻击不会吸收敌弹",
        ChanceTrigger="改为有概率触发",
        Littersword="挥砍攻击仅召唤蝗虫",
        GuppyOnly="仅召唤蝗虫",
        DivineSword="挥砍时在剑尖处生成拖尾, 蓄力结束后生成圣光",
        DivineLazer="在圣光旁边有概率释放短程激光",
        DrDivine="炸弹引爆时, 同时在拖尾处 + 爆炸与角色位置的连线处 生成圣光",
        DivineBrims="圣光改为持续时间更久且更宽的激光柱",
        DivineEpic="在准心的移动轨迹处生成拖尾",
        DivineLudo="悬浮泪弹移动时生成拖尾, 停止移动后释放圣光#!!! 鼠标操作无法生成拖尾",
        Xvine="激光环上的某一点会持续生成拖尾(这个点会在激光环上持续旋转)",
        DivineKnife="刀子在飞出的某一刻开始生成拖尾, 回到角色时释放圣光",
        DivineBeam="泪弹在被牵引光束强行改变位置时也会留下拖尾",
        NotGoodAtBending="仅挥舞骨棒时可吸收敌弹",
        DivineBone="骨棒挥舞时生成圣光; 骨棒丢出时生成拖尾"
    }
    mod:AddToConditionalList(conditionalList)
    for _, item in ipairs(items) do
        mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
    end
end)
