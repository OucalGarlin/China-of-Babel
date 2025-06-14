local mod = CNEIDBabel
mod:AddModTranslationLoader("LibraryExpanded","图书馆拓展",function()
    if LibraryExpanded then
        local TBOAB=LibraryExpanded.Item.TBOATB.ID
        local items={
            {
                TBOAB,
                "万书之书",
                "知识就是力量",
                "{{Collectible105}} 加强所有书本道具#\1 清理{{ChallengeRoom}}挑战房会奖励一本书",
                {CONF={}},
                "写这吊东西兼容累死我了"
            },{
                LibraryExpanded.Item.BLANK_BOOK.ID,
                "空书皮",--根据收集书页的特质一定程度发散思维了（？
                "把它塞满",
                "持有时, 杀死敌人和清理房间以收集{{ColorYellow}}书页{{CR}}, 并用于升级该道具#在{{ColorYellow}}书页{{CR}}数量足够之前使用会提示你还需要收集多少{{ColorYellow}}书页{{CR}}#{{ColorYellow}}书页{{CR}}足够后会将其升级为对应品质的空白书本",
                {CONF={TBOAB,"BAB_Empty"}},
                "第一页: 煤矿目前是一种极其稀缺的矿物质#{{Blank}} {{ColorGray}}第二页: 可以通过击杀凋零骷髅获取"
            },{
                LibraryExpanded.Item.BLANK_BOOK.ID0,
                "拿来当柴火烧的书",
                "烂书写的什么东西",
                "{{Quality0}} 使用后生成对应品质的一本书#↑ 可以继续收集书页以升级",
                {CONF={TBOAB,"BAB_BookID"}},
                "第三页: 山西地势凶险, 但是盛产凋零骷髅"
            },{
                LibraryExpanded.Item.BLANK_BOOK.ID1,
                "可以当门档用的书",
                "写的还挺多挺沉",
                "{{Quality1}} 使用后生成对应品质的一本书#↑ 可以继续收集书页以升级",
                {CONF={TBOAB,"BAB_BookID"}},
                "第四页: 为提高开刷效率, 门档的进出重置房间可以很大幅度提供帮助"
            },{
                LibraryExpanded.Item.BLANK_BOOK.ID2,
                "还算有点意思的书",
                "可以我来感觉了",
                "{{Quality2}} 使用后生成对应品质的一本书#↑ 可以继续收集书页以升级",
                {CONF={TBOAB,"BAB_BookID"}},
                "第五页: 你知道为什么我要在这里提凋零刷煤的梗吗"
            },{
                LibraryExpanded.Item.BLANK_BOOK.ID3,
                "能给人看上瘾的书",
                "眼睛要离不开书了",
                "{{Quality3}} 使用后生成对应品质的一本书#↑ 可以继续收集书页以升级",
                {CONF={TBOAB,"BAB_BookID"}},
                "第六页: 万事万物均有缺陷, 奢求完美不过是天方夜谭...#{{Blank}} {{ColorRed}}{{ColorFade}}现在的你写论文估计也很少用到\"你自己\"的脑子吧"
            },{
                LibraryExpanded.Item.BLANK_BOOK.ID4,
                "神 作",
                "完 美 无 瑕",
                "{{Quality4}} 使用后生成对应品质的一本书#↑ 可以继续收集书页以升级",
                {CONF={TBOAB,"BAB_BookID"}},
                "扉页: {{ColorFade}}你是否想过, 有时候你为了达到完美, 耗费了多少时间和精力, 而这些精力与你的回报又是否成正比?#{{Blank}} {{ColorFade}}当然, 这个问题无法回答, 回报可以量化而精力不一定. 世界上的所有问题也不是每一个都能找到答案, 如果为了摆脱灾厄而过于追求完美, 有时候本身就是灾厄"
            },{
                LibraryExpanded.Item.BOOK_OF_ANATOMY.ID,
                "人体解剖学之书",
                "这就是我们的躯体",
                "{{BleedingOut}} 使用后对所有怪物施加流血",
                {CONF={TBOAB,"BAB_Anatomy"}},
                "欲练神功, 必先自宫"
            },{
                LibraryExpanded.Item.COOKBOOK.ID,
                "普通食谱",
                "今天吃什么呢",
                "使用后有概率: 生成{{Collectible25}}食物道具, {{Heart}}心掉落物, 蓝苍蝇, 或者{{ColorRed}}敌对苍蝇{{CR}}#{{UnknownHeart}} 可生成的心包括{{Heart}}, {{HalfHeart}}, {{Heart}}{{Heart}}, {{RottenHeart}}, {{EmptyBoneHeart}}#固定有25%的概率触发两次效果",
                {CONF={TBOAB,"BAB_Cook"}},
                "因作者的脑容量有限, 这本食谱不涉及来自其他模组的外来食物, 请不要食用外面的垃圾食品并保持营养均衡=)"
            },{
                LibraryExpanded.Item.ELECTROMAGNETISM_EXPLAINED.ID,
                "电磁力详解教程",
                "感受抛瓦!",
                "使用后获得电磁力之力, 多次使用还会更强#可提供的增益包括: {{Key}}将钥匙变为充能钥匙, {{Collectible559}}靠近电击, {{Collectible494}}导电泪弹, {{Collectible53}}磁力, {{Collectible524}}静电泪弹, {{Collectible315}}诡异磁铁, {{Collectible38}}散射泪弹#{{Warning}} 使用超过10次可能会损坏",
                {CONF={TBOAB,"BAB_Electromagnetism"}},
                "某不科学的超电磁炮"
            },{
                LibraryExpanded.Item.ENCYCLOPEDIA_OF_DISEASES.ID,
                "疾病百科全书",
                "对象评级-安全",
                "使用后在当前楼层获得一个疾病道具或者医学异常道具的效果",
                {CONF={TBOAB,"BAB_Disease"}},
                "因作者的脑容量有限, 这本食谱不涉及来自其他模组的外来疫病, 请外出归来者及时隔离并自我了结=)"
            },{
                LibraryExpanded.Item.KEY_OF_SOLOMON.ID,
                "所罗门的谜底",
                "鬼灵听我号令",
                "{{Collectible634}} 使用后释放炼狱恶鬼",
                {CONF={TBOAB,"BAB_Kelomon"}},
                "要用魔法打败魔法"
            },{
                LibraryExpanded.Item.KINDLING_BOOK.ID,
                "点火之书",
                "烧却",
                "{{Burning}} 使用后对所有怪物施加灼烧#{{Warning}} 这本书最终可能会被烧毁并掉落, 变为效果弱化的{{Collectible"..LibraryExpanded.Item.KINDLING_BOOK.ID2.."}} 焚毁的书",
                {CONF={TBOAB,"BAB_Kind"}},
                "一刀一刀燃烧刀"
            },{
                LibraryExpanded.Item.KINDLING_BOOK.ID2,
                "焚毁的书",
                "读不清上面的字了",
                "{{Burning}} 使用后对所有怪物施加灼烧",
                {CONF={TBOAB,"BAB_KIND"}},
                "太痛苦了"
            },{
                LibraryExpanded.Item.POOPAPEDIA.ID,
                "屎记",
                "教你自己上厕所",
                "使用后放屁, 或者生成粪滴或苍蝇, 或者生成大便, 亦或者--如果足够幸运--生成{{Collectible36}}大便 道具底座",
                {CONF={TBOAB,"BAB_Poop"}},
                "史珍湘 著"
            },{
                LibraryExpanded.Item.VMB.ID,
                "反胃之书",
                "充能形呕吐攻击",
                "{{Collectible149}} 在当前房间获得吐根町#多次使用获得多发泪弹, 至多四发, 继续使用则会{{Collectible38}} 释放一圈泪弹",
                {CONF={TBOAB,"BAB_Ipec"}}
            },{
                LibraryExpanded.Item.CURSED_BOOK.ID,
                "诅咒之书",
                "全属性上升...但代价是什么?",
                "{{Warning}} 拾取或使用后会获得诅咒#{{ArrowDown}} 持有时受到双倍伤害且获得受击传送#{{ArrowUp}} 使用后获得永久全属性提升",
                {CONF={
                    {260,"NotCursedBook"},
                    {TBOAB,"BAB_Curse"}
                }},
                "{{Player10}} 好处说完了坏处呢?"
            },{
                LibraryExpanded.Item.CERTIFICATE.ID,
                "图书馆借阅证明",
                "记得还书",
                "{{Library}} 图书馆版死亡证明",
                nil,"借这种东西就像草船借箭和你同学借你的厕纸一用"
            },{
                LibraryExpanded.Item.BOMB_BOOK.ID,
                "炸弹之书",
                "炸裂的阅读体验!",
                "\1 {{Bomb}} 获得1炸弹#\1 在当前楼层获得一个炸弹特效",
                {CONF={35,"BombUp"}},
                "不是炸自己的效果还是太强了"
            },{
                LibraryExpanded.Item.TECHNOLOGY_BOOK.ID,
                "科技之书",
                "今日即是未来, 老古董",--大概是捏他某部科幻电影的说，有点印象但是没看过（
                "\1 获得一个科技道具的效果",
                {CONF={TBOAB,"BAB_Ipec"}}
            },{
                LibraryExpanded.Item.PHOTO_BOOK.ID,
                "照片书",
                "有一张全家福丢了",
                "\1 在当前房间内触发或获得一个妈妈, 爸爸, 或嗝屁猫相关的道具效果",
                {CONF={TBOAB,"BAB_Ipec"}}
            },{
                LibraryExpanded.Item.COLORING_BOOK.ID,
                "炫彩之书",
                "保持阵容",
                "强制将所有敌人变为精英变种",
                {CONF={TBOAB,"BAB_Ipec"}},
                "并非终极困难"
            },{
                LibraryExpanded.Item.ISAACS_THIRD_LAW.ID,
                "艾萨克第三定律",
                "一牛吨的知识涌入了脑海",
                "\1 在当前房间内获得弹射泪弹, 弹速和射程上升",
                {CONF={TBOAB,"BAB_Ipec"}},
                "Isaac Newton也是以撒da*ze"
            },{
                LibraryExpanded.Item.READING_BOOK.ID,
                "读书之书",
                "吾思故吾在",
                "使用后展示一段预言字幕#\1 有概率在当前房间内获得{{Collectible245}}双发泪弹#{{Bookworm}} 持有书虫套装时必定获得双发泪弹",
                {CONF={TBOAB,"BAB_Ipec"}},
                "你看了眼这本书, 发现里面还夹着一本万书之书#{{Blank}} {{ColorGray}}你打开了万书之书, 发现里面夹着另一本读书之书#{{Blank}} {{ColorGray}}你看了眼里面的读书之书, 发现里面还夹着一本万书之书#{{Blank}} {{ColorGray}}你打开了万书之书, 发现里面夹着另一本读书之书#{{Blank}} {{ColorGray}}你看了眼里面的读书之书, 发现里面还夹着一本万书之书#{{Blank}} {{ColorGray}}你打开了万书之书, 发现里面夹着另一本读书之书#{{Blank}} {{ColorGray}}你看了眼里面的读书之书, 发现里面还夹着一本万书之书#{{Blank}} {{ColorGray}}你打开了万书之书, 发现里面夹着另一本读书之书#{{Blank}} {{ColorGray}}你看了眼里面的读书之书, 发现里面还夹着一本万书之书#{{Blank}} {{ColorGray}}你打开了万书之书, 发现里面夹着另一本读书之书#{{Blank}} {{ColorGray}}你看了眼里面的读书之书, 发现里面还夹着一本万书之书#{{Blank}} {{ColorGray}}你打开了万书之书, 发现里面夹着另一本读书之书#{{Blank}} {{ColorGray}}你看了眼里面的读书之书, 发现里面还夹着一本万书之书#你决定停下"
            },{
                LibraryExpanded.Item.MINING_FOR_DUMMIES.ID,
                "矿工傻瓜式教程",
                "请自备镐头",
                "\1 使用后在当前房间内获得{{Collectible91}}探窟帽和{{Collectible60}}梯子#{{Collectible427}} 同时获得副手工矿炸药包",
                {CONF={TBOAB,"BAB_Mine"},
                MOD={STONE=true}},
                "这下知道为什么会捡到凋零刷煤的书页了"
            },{
                LibraryExpanded.Item.BOMBINOMICON.ID,
                "爆灵书",
                "所有东西都炸上天了哦!",
                "\1 炸掉房间内的敌人#\1 获得一个炸弹特效#\1 {{Bomb}} 获得1炸弹"
            },{
                LibraryExpanded.Item.WEIRD_BOOK.ID,
                "诡变妖书",
                "错乱的阅读书目",
                "\1 触碰书本道具以将其记录, 而后诡变妖书可以模仿其效果#\1 使用丢弃键切换要模仿的书"
            }
        }
        local trinkets={
            {
                LibraryExpanded.Trinket.BOOK_MARK.ID,
                "书签",
                "便携式阅读",
                "使用一本书以将其标记#\1 而后使用一个不同的主动道具将会同时触发标记的书#\2 对特殊充能, 冷却式充能, 无充能和被标记的主动道具无效"
            }
        }
        local conditionalList={
            BAB_Empty="书页生成率翻倍, 清理头目房可能获得更多的书页",
            BAB_BookID="改为生成两本书",
            BAB_Anatomy="流血而死的敌人有概率生成红心",
            BAB_Cook="更高的生成食物和心的概率, 更多种类的可生成的心",
            BAB_Electromagnetism="使用后有概率不会加快损坏(概率基于幸运与万书之书的数量)",
            BAB_Disease="使用后额外获得一个疾病道具的效果",
            BAB_Kelomon="释放更多炼狱恶鬼",
            BAB_Kind="释放一圈13发火焰",
            BAB_Poop="总是生成大便, 更高的概率爆道具底座, 更多的苍蝇和粪滴",
            BAB_Ipec="效果改为持续整层",
            BAB_Curse="负面效果削弱, 属性增益+50%",
            BAB_Mine="同时获得小夜灯, 店长的近亲和万磁王",

            NotCursedBook="这本书将会失效, 变为{{Collectible"..LibraryExpanded.Item.BLANK_BOOK.ID.."}} 空书皮",
            BombUp="可升级!"
        }
        mod:AddToConditionalList(conditionalList)
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#{{Collectible"..TBOAB.."}} 所属mod: 图书馆拓展", item[5])
            if ExpInD then ExpInD:AppendToExpInD("items",item[1],{zh_cn=item[6]}) end
        end
        for _, item in ipairs(trinkets) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#{{Collectible"..TBOAB.."}} 所属mod: 图书馆拓展", item[5])
        end
        if Options.Language=="zh" then
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_ANARCHIST_COOKBOOK] = "#{{TBOATB}} 将即爆炸弹变为究极炸弹"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_TELEPATHY_BOOK] = "#{{TBOATB}} 效果改为持续整层, 多次使用将触发念力和塔米猫的头"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_BIBLE] = "#{{TBOATB}} 效果改为持续整层, 多次使用将获得{{EternalHeart}}永恒之心"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_BOOK_OF_BELIAL] = "#{{TBOATB}} 额外获得永久的伤害上升"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_BOOK_OF_REVELATIONS] = "#{{TBOATB}} 额外获得{{HalfSoulHeart}}半魂心, 击败天启骑士后额外获得肉块或绷带球"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_SATANIC_BIBLE] = "#{{TBOATB}} 额外获得{{HalfBlackHeart}}半黑心, 击败头目后获得额外交易"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_BOOK_OF_SECRETS] = "#{{TBOATB}} 揭示{{UltraSecretRoom}}究极隐藏房#{{TBOATB}} 在当前房间内获得{{Collectible665}}嗝屁猫的眼睛"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_BOOK_OF_SHADOWS] = "#{{TBOATB}} 在当前房间获得护盾泪弹"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_BOOK_OF_SIN] = "#{{TBOATB}} 额外生效数次"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_HOW_TO_JUMP] = "#{{TBOATB}} 起跳和落地会伤害并推开敌人, 伤害取决于角色面板和万书之书的数量"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_NECRONOMICON] = "#{{TBOATB}} 将一个{{Collectible}}道具和{{Trinket}}饰品变为迷失的书页"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_MONSTER_MANUAL] = "#{{TBOATB}} 每层首次使用获得{{Collectible247}}好朋友一辈子, 后续使用将多次触发效果"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_BOOK_OF_THE_DEAD] = "#{{TBOATB}} 使用后在当前楼层获得骨头相关增益"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_LEMEGETON] = "#{{TBOATB}} 视作多次触发"
            LibraryExpanded.LibraryEID.TBOATB[CollectibleType.COLLECTIBLE_BOOK_OF_VIRTUES] = "#{{TBOATB}} 视作多次触发"
        end
        local PDDsyn={
            {LibraryExpanded.Item.WEIRD_BOOK.ID,510}
        }
        local Dflipsyn={
            {5,100,LibraryExpanded.Item.BLANK_BOOK.ID0,5,100,LibraryExpanded.Item.BLANK_BOOK.ID4},
            {5,100,LibraryExpanded.Item.BLANK_BOOK.ID1,5,100,LibraryExpanded.Item.BLANK_BOOK.ID3},
            {5,100,LibraryExpanded.Item.BLANK_BOOK.ID2,5,100,LibraryExpanded.Item.BLANK_BOOK.ID2},
            {5,100,LibraryExpanded.Item.GLITCH.ID,5,100,LibraryExpanded.Item.CERTIFICATE.ID},
            {5,100,LibraryExpanded.Item.WEIRD_BOOK.ID,5,100,510},
            {5,100,LibraryExpanded.Item.KINDLING_BOOK.ID,5,100,LibraryExpanded.Item.KINDLING_BOOK.ID2},
            {5,100,LibraryExpanded.Item.BLANK_BOOK.ID,5,100,TBOAB}
        }
        for _,i in ipairs(PDDsyn) do table.insert(mod.PddSynList,i) end
        for _,i in ipairs(Dflipsyn) do table.insert(mod.DflipSynList,i) end
    end
end)
