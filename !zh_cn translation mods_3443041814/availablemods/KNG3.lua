local mod = CNEIDBabel
mod:AddModTranslationLoader("Diepio", "踢脚与讥笑(Kicks and Giggles)\n* 警告: 本EID汉化完全根据维基译制, 与原版EID可能存在较大差异",function()
    if Diepio then
        local items={
            {
                "Shuko's Bonesaw",
                "舒科的锯骨刀",
                "你只能想象它会看到多么残酷的...",--存疑
                "角色立即斩首最近的非头目敌人, 将其秒杀, 然后掉落{{ColorYellow}}祭品头颅{{CR}}#{{GreedMode}} 贪婪模式改为生成{{Trinket173}}",
                {MOD={STEEL=true}}
            },{
                "Lewis & Wynne's Wedding Ring",
                "路易斯和云茵的结婚戒指",
                "这不属于你.",
                "对路易斯和云茵无效#犹大之影,???,游魂或舒科试图持有该道具会将其移除#{{Warning}} 如果让其他角色拿了这个道具我注定让你飞起来!",--由于戒指的存在, 路易斯和云茵无法被污染成蓬莱, 蓬莱人偶会自己炸掉(
                {MOD={FEM=true}}
            },{
                "Lewis's Broken Headband",
                "路易斯的破损头套",
                "高压警告",
                "通过按下20次移动键充满能#使用后, 释放6个火焰, 短程石刃波和电流攻击",
            },{
                "Blizzard Blockade",
                "暴雪屏障",
                "冻结保护",
                "舒科可以按住副手键将自己藏在冰块中, 免疫一切伤害, 但是无法移动和攻击",
                {MOD={ICE=true}}
            },{
                "Lewis's Replica Headband",
                "路易斯的头套仿制品",
                "目前还是非常不稳定",
                "使用后, 释放6个火焰, 短程石刃波和电流攻击"
            },{
                "Paramedic's Medikit",
                "护理人员的医疗包(限堕化舒科)",
                "应急治疗",
                "{{SoulHeart}} +1 魂心#{{Heart}} 治疗4红心#对所有角色生效"
            },{
                "​Paramedic's Medikit",
                "护理人员的医疗包",
                "可重复加命, 但代价惨重",
                "+1复活次数#!!! 施加截肢效果, 造成{{Heart}}伤害, +1{{BrokenHeart}}, 且在截肢治愈前获得属性降低#死亡可以治愈截肢#最后一个额外生命被消耗时生成一个{{ColorYellow}}可疑的烧瓶",
                {CHAR={10,"不会被截肢和受到伤害",true}}
            },{
                "Seal of Winifred",
                "云茵之印",
                "就是这样! 准备抄家伙!",
                "角色朝攻击方向挥舞锤子并造成伤害(取决于攻击力x射速)#与{{Winifred}}的锤子完全相同, 且无视护甲",
                {CHAR={Diepio.Enums.PlayerType.WYNNE,"ReWynne",false}}
            },{
                "Lewis's Ultimatum",
                "路易斯的最后通牒",
                "为持有者提供上好的货物, 否则后果自负",
                "{{Collectible}} 生成一个随机的底座道具#!!! {{ColorFade}}根据所选的角色/本局内送走了多少乞丐等情况, 奖励可能会有所不同{{CR}}",
                {MOD={PAPER=true}}
            },{
                "Haumea",
                "妊神星",
                "飞旋, 打旋, 轻旋, 但可别摔出血",
                "角色释放一个龙卷风, 吸引掉落物, 弹射物和敌人# 龙卷风会摧毁敌弹, 造成52.5伤害/秒, 无视护甲#龙卷风的移动方向可以受角色的移动键影响"
            },{
                "Dodging Manual",
                "闪避教程",
                "比你想象的更简单易懂",
                "{{Collectible282}} 角色朝指定方向跳跃#擦弹跳跃可以触发{{Collectible677}}时间减速效果",
                {MOD={PAPER=true}}
            },{
                "Eros",
                "爱神星",
                "丘比特泪弹",
                "每个房间的第一次攻击会额外发射一枚跟踪穿透箭矢, 将命中的敌人变为{{Charming}}友好#!!! 箭矢同时造成25%敌人生命的伤害#友好的怪物每秒治愈10%的生命",
                {MOD={FEM=true}}
            },{
                "YouTuber Luck",
                "欧洲主播的强运",--存疑
                "家人们这道具它不神奇吗",
                "↑ {{Luck}} +5幸运#进入房间后, 如果房间内存在{{Quality3}}{{Quality4}}道具则播放meme音效#{{Card81}} 有12%的概率额外提供一个选择"
            },{
                "Square Candy",
                "方糖",
                "...有东西要从你的血痕中爬出来了!",
                "进入未清理的房间后生成友好的{{ColorRed}}巨大瞪眼血红尸{{CR}}#该血红尸每秒恢复10%的生命#不可跨房间存在"
            },{
                "Shattered Candy",
                "碎裂的糖果",
                "暴脾气",
                "角色朝随机方向投掷{{Coin}}{{Key}}{{Bomb}}攻击敌人#任意一个物资持有数为0时无法使用#{{Coin}} 硬币泪弹施加点金效果#{{Key}} 钥匙泪弹穿透敌人, 生成临时掉落物#{{Bomb}} 炸弹与角色放置的炸弹相同"
            },{
                "Black Orb",
                "黑暗宝珠",
                "疫病被化作有形之物",
                "{{Chargeable}} 蓄力5s后, 朝最近的敌人释放黑暗宝珠造成共计4次伤害#伤害取决于角色的{{Damage}}和{{Tears}}, 不会小于7, 无视护甲",
                {MOD={ILL=true}}
            },{
                "Monoball",
                "莫诺球",
                "软糯保险",
                "!!! 每进入一个房间吃掉角色的1美分#受到伤害后根据吃掉的硬币数吐出奖励, 然后重置#{{Coin}} 随机数额的硬币(0~4)#{{Trinket}} 每5美分换取1个随机饰品(5~14)#{{Collectible}} 每15美分换取1个随机道具(15+)"
            },{
                "Roots that Reap",
                "收割之根",
                "自然之力由你掌控",
                "{{Chargeable}} 蓄力5s后, 有65%的概率在怪物脚底释放收割之根#收割之根造成2点伤害, 命中敌人后有45%的概率释放骨头泪弹造成取决于{{Damage}}攻击力的伤害#{{BossRoom}} 更容易在头目脚下生成"
            },{
                "Miscarriage",
                "流产",
                "生命上升 + 免费祭品",
                "{{Heart}} +1心之容器#{{Heart}} 治疗1红心#{{Card92}} 生成一个莉莉丝的魂石#!!! 角色使用{{SacrificeRoom}}时会失去该道具, 生成1{{BlackHeart}}并临时增加巫术台生成率",
                {MOD={FEM=true,BLOOD=true}}
            },{
                "Eerie Flyer",
                "诡异的传单",
                "你是否曾在梦中见过这个男人",
                "生成一个巫术台和{{Rune}}随机符文",
                {MOD={PAPER=true}}
            },{
                "The Meat Grinder",
                "绞肉机",
                "锯!!!!!!#死!!!!!!!#你!!!!!!!!",
                "使用后, 朝攻击方向使用绞肉机, 对命中的敌人施加{{BleedingOut}}流血#每次造成伤害有30%的概率生成骨片或麻风肉片环绕物#绞肉机的伤害取决于{{Damage}}和{{Tears}}, 每次使用至多4次判定",
                {MOD={STEEL=true}}
            },{
                "Winifred's Grimoire",
                "云茵的魔法书",
                "更强大的伤害法术",
                "随时间恢复充能, 杀死敌人也可以获得充能#使用后, 对最近的敌人释放伤害法术, 施加{{BleedingOut}}流血5s, 并造成取决于{{Damage}}的伤害#无视护甲#!!! 如果角色的巫术台生成率过低, 角色将会走火入魔受到伤害, 并被截肢"
            },{
                "Golden Ring-of-thorns",
                "黄金荆棘戒指",
                "幸运 + 攻击上升, 更多金钱 + 更可怕的伤害",
                "↑ {{Damage}} x2伤害倍率#↑ {{Luck}} +1幸运#↓ {{Shotspeed}} x0.7弹速倍率#{{Collectible429}} 泪弹命中后概率产生硬币#!!! 每次受到惩罚伤害额外失去1颗心",
                {CONF={108,"goldenWafer"},
                MOD={GOLD=true,BLOOD=true}}
            },{
                "Monstromagnetic Energy Drink",
                "怪兽磁性能量饮料",
                "小型磁场 + 移速上升 + 偶尔伤害抗性",
                "↑ {{Speed}} x1.3移速倍率#有50%的概率使受到的惩罚伤害减半#缓慢吸附靠近的掉落物"
            },{
                "The Book of Enlightenment",
                "启蒙之书",
                "你距离启蒙又更进一步",
                "!!! 一次性#在当前楼层内生成一个存档点, 允许角色在该楼层内无数次复活#!!! 复活后, 设置存档点的楼层将{{ColorRed}}永远不会生成除心掉落物外的任何物资{{CR}}"
            },{
                "Book of Bleakness",
                "荒芜之书",
                "强化群体伤害 + ???",
                "对房间中的所有敌人造成40点伤害#{{Collectible"..Isaac.GetItemIdByName("Black Orb").."}} 获得黑暗宝珠的效果(需解锁)"
            },{
                "Book of Procreation",
                "繁殖之书",
                "结婚生子",
                "生成3~5个迷你以撒#{{Burning}} 这些迷你以撒有概率吐出火焰",
                {MOD={FEM=true}}
            },{
                "Book of The Abyss",
                "深渊之书",
                "吞噬万物",
                "将所有道具吞噬并变为{{Collectible706}}深渊蝗虫#将所有非头目敌人变为{{Trinket115}}天启蝗虫#额外获得一个深渊蝗虫"
            },{
                "Book of Filth",
                "污秽之书",
                "还是狗屎游戏",
                "令所有敌人放屁, 生成随机友好粪滴#消除所有敌弹"
            },{
                "Book of Weaponry",
                "武装之书",
                "暂时性武装",
                "在当前房间内获得{{Collectible114}}妈妈的菜刀#多次使用可叠加"
            },{
                "Book of The Moonlight",
                "月光之书",
                "月之佑",
                "{{Collectible589}} 生成一束月光"
            },{
                "Book of Combustion",
                "焚烧之书",
                "可怖大火",
                "{{Burning}} 让整个房间大火收汁#每个敌人有67%的概率爆炸, 受到基于自身最大生命值的伤害#{{Burning}} 所有敌人永久烧伤#{{Collectible483}} 释放一次强力爆炸"
            }
        }
        local trinket={
            {
                "Starfall Necklace",
                "星坠项链",
                "觉醒你的天赋",
                "持有后立即获得与当前角色对应的巫术台技能#然后, 饰品消失#!!! 不兼容的模组角色或试图学习重复的技能都只会获得随机的属性提升",
                {CHAR={
                    {0,"S_Isaac",true},
                    {1,"S_Maggy",true},
                    {2,"S_Cain",true},
                    {{3,12,24},"S_Judas",true},
                    {4,"S_BB",true},
                    {5,"S_Eve",true},
                    {6,"S_Sam",true},
                    {7,"S_AZ",true},
                    {{8,11,29,38},"S_Laz",true},
                    {9,"S_Eden",true},
                    {10,"S_Lost",true},
                    {13,"S_Lilith",true},
                    {14,"S_Greed",true},
                    {15,"S_Apy",true},
                    {{16,17,40,35},"S_Bone",true},
                    {18,"S_Beth",true},
                    {{19,20,39,37},"S_Jacob"},
                    {{Diepio.Enums.PlayerType.LEWIS,Diepio.Enums.PlayerType.LEWIS_B},"S_Lewis",true},
                    {{Diepio.Enums.PlayerType.WYNNE,Diepio.Enums.PlayerType.WYNNE_B},"S_Wynne",true},
                    {{Diepio.Enums.PlayerType.SHUKO,Diepio.Enums.PlayerType.SHUKO_B},"S_Shuko",true}
                }}
            },{
                "Grit Sash",
                "毅力腰带",
                "真的是废物吗?",
                "{{Warning}} 受伤后+6{{BrokenHeart}}, 然后失去该饰品#{{HolyMantle}} 每个房间抵消一次伤害"
            },{
                "Salmonsnake Rune",
                "鲑蛇符文",
                "你的皮肤更加坚硬",
                "角色免疫任何自伤, {{Collectible448}}流血和{{BleedingOut}}截肢效果#!!! 不能用于治愈截肢#!!! 导致角色无法与一些需要造成伤害的物体互动",
            },{
                "Piezoelectric Igniter",
                "压电点火器",
                "略有震感",
                "{{Collectible494}} 导电泪弹#!!! 无法被吞下的饰品"
            },{
                "Lil Sis's Memorial Photo",
                "妹妹的纪念照片",
                "...",
                "!!! 用于解锁舒科的关键道具, 需要在全程持有该饰品的情况下击败{{HardMode}}{{MegaSatan}}"
            },{
                "Shuko's Scalpel",
                "舒科的手术刀",
                "伤害上升, 器官盛宴",
                "↑ x1.1 伤害倍率#{{UnknownHeart}} 敌人有3%的概率死亡后掉落随机心#!!! 无法被吞下的饰品"
            },{
                "Stolen Penny",
                "被偷走的硬币",
                "财富即挫折",
                "{{Warning}} 持有时, 摧毁所有的硬币掉落物#{{Damage}} 每有一个硬币被摧毁, 50%的概获得伤害+0.1#{{ColorYellow}}伤害增益在小退或进入下一层后重置{{CR}}"
            },{
                "Glass Derringer",
                "玻璃手枪",
                "标签写着: 警告-新产品; 不适合开火",
                "按下攻击键发射一簇玻璃碎片#玻璃碎片不会造成伤害, 而是永久施加{{Confusion}}混乱和{{BleedingOut}}流血#每个房间只能发射一次",
                {CONF={{5,675,352,337,448},"GlassItems"}}
            },{
                "Torn Cherub Wing",
                "破碎的天使羽翼",
                "力比书 4:13",
                "{{Damage}} 每个持有的\"神圣\"道具提供伤害增幅",
                {CONF={Isaac.GetTrinketIdByName("Torn Cherub Wing"),"DogmaWing"}}
            },{
                "Booster Energy",
                "强化能源",
                "力量强化剂",
                "为最高的属性提供x1.3倍率, 然后失去该饰品#可提供的属性包括{{Range}} {{Damage}} {{Speed}} {{Tears}} {{Shotspeed}}"	--该效果是通过添加道具实现永久属性,而这些道具都是0级,所以正邪...
            },{
                "Flintstone and Firesteel",
                "燧石与火钢",
                "有点古老, 不过还能用!",
                "摧毁障碍物生成火焰"
            },{
                "A Pipe Wrench",
                "水管扳手",
                "再丢一次",
                "长按攻击键后释放以将该饰品投掷出去造成伤害#无视护甲, 伤害值受蓄力时间和移速影响"
            },{
                "Friendliness Pellet",
                "友谊颗粒",
                "永远最好的朋友",	--更准确的捏他源其实是同人游戏UTY,在那里主角可以将友谊颗粒作为自己的子弹装备; 而描述在游戏里的同名歌曲也是小花战一阶段的音乐
                "角色的攻击有12%的概率额外造成无视护甲的伤害#{{Damage}} 伤害值 = 1.5 x 攻击力, 这个数值不会小于5.25"
            },{
                "Wynne's Earrings",
                "云茵的耳环",
                "迷你磁场, 幸运上升",
                "↑ +1幸运#角色缓慢吸附小范围内的掉落物"
            },{
                "Tympanites",
                "鼓胀",
                "狗屎游戏",
                "敌人死亡后有35%的概率放屁, 生成毒云并拉屎#角色在攻击时每秒有50%的概率放屁"
            },{
                "R Key Plush",
                "R键公仔",
                "别担心, 再来一次吧",
                "死亡后重新开始当前楼层, 触发自杀之王的效果#作为复活手段存在, 复活后失去该饰品"
            },{
                "Shuko's Severed Head",
                "舒科的祭品头颅",
                "冰之复苏",
                "↑ +1复活次数#死亡后复活为舒科, 然后失去该饰品#可以用于跟口袋猫达安交易"
            },{
                "Blank Soul",
                "虚无之魂",
                "来切片吧...不要?",
                "对最近的敌人施加{{BleedingOut}}流血和{{Weakness}}虚弱#如果敌人与角色的距离不够近会失去效果#{{Pill}} 使用药丸会治疗{{HalfHeart}}并生成{{HalfSoulHeart}}"
            },{
                "Changeling Soul",
                "低能之魂",
                "保护气场 + 更多巫术台",
                "角色缓慢推开敌弹和敌人#↑ 增加巫术台生成率"
            },{
                "Chaotic Soul",
                "混沌之魂",
                "突袭",
                "{{Collectible506}} 获得背刺的效果#{{Confusion}} 进入未清理的房间后使房间内的怪物受到混乱状态3.5s"
            },{
                "Decrepit Soul",
                "衰败之魂",
                "一旦你的头着地...",
                "进入一个未清理的房间时生成一个可投掷炸弹"
            },{
                "Endless Soul",
                "无尽之魂",
                "锁孔难以招架",
                "进入下一层后生成一个{{GoldenKey}}"
            },{
                "Enlightened Soul",
                "启蒙之魂",
                "武装神秘主义",
                "首次进入一个头目房生成{{Card80}}, {{Battery}}, {{Rune}}一个随机符文#!!! 只能选择其中一个"
            },{
                "Latent Soul",
                "潜在之魂",
                "你的力量正在成长",
                "↑ 进入下一层后获得一个随机的属性提升"
            },{
                "Radiating Soul",
                "辐射之魂",
                "更多巫术台 + 血祭",
                "↑ 巫术台生成率+15%#若角色为未触发{{Collectible122}}的{{Player5}}则额外+20%#!!! 若触发了{{Collectible122}}则会减少巫术台生成率#若在{{SacrificeRoom}}使用献祭刺或{{Collectible487}}{{Collectible126}}{{Collectible186}}可以获得永久增加巫术台生成率"
            },{
                "Shadowed Soul",
                "暗影之魂",
                "剧毒之触",
                "{{Poison}} 毒性泪弹"
            },{
                "Solitary Soul",
                "孤独之魂",
                "随身枪支",
                "角色每4s可以释放一次霰弹攻击"
            },{
                "Suffocated Soul",
                "窒息之魂",
                "近战精通",
                "{{Collectible261}} 眼球突出泪弹#{{Collectible169}} 半穿透泪弹"
            },{
                "Tainted Soul",
                "腐化之魂",
                "移速上升 + 反击姿态",
                "↑ x1.3移速#受到伤害或失去最后一个{{HolyMantle}}会肘击最近的怪物#伤害取决于角色的体型, 且不会小于30"
            },{
                "Tormented Soul",
                "罹难之魂",
                "气到不想死",
                "{{Collectible704}} 每个楼层第一次受到致命伤害时, 触发狂战!的效果"
            }
        }
        local cards={
            {
                "SoulOfLewis",
                "路易斯的魂石",
                "专横审判者",
                "释放一阵雷雨云, 释放圣光和电流, 造成至多1000点伤害"
            },{
                "SoulOfShuko",
                "舒科的魂石",
                "气象灾害",
                "不断落下冰雹, 破坏障碍物并永久{{Confusion}}使敌人混乱#效果会永久持续直到角色离开房间"
            },{
                "SoulOfWinifred",
                "云茵的魂石",
                "灼魂 + ???",
                "杀死所有非头目敌人, 每一个敌人生成一个魂火或临时的{{HalfSoulHeart}}# 在当前房间内获得{{Collectible"..Isaac.GetItemIdByName("Seal of Winifred").."}}(需解锁)"
            },{
                "ZeroCard",
                "0卡",
                "不许!冻!",
                "冻结整个房间, 暂时石化敌人#{{Freezing}} 敌人死亡后变为冰雕"
            },{
                "76Card",
                "76卡",
                "再怎么杀也比不过大杀特杀",
                "{{Warning}} 生成6~7个究极即爆炸弹, 并释放6~7次强力爆炸#对玩具造成伤害, 但不会失去血量, 触发受伤类道具"
            },{
                "TrashCow",
                "垃圾农场的牛",
                "你知道的",
                "将房间内的所有道具底座变为{{Collectible36}}大便#可以转化空的道具底座#!!! 每个敌人有8%的概率拉屎拉死, 留下{{PoopPickup}}"
            },{
                "WhiteHerb",
                "白薄荷",
                "zh_cn",
                "{{Collectible562}} 当前楼层内不会获得属性降低"
            },{
                "NewYearsEve",
                "除夕夜",
                "别太依赖它, 通常这是个哑弹",
                "70%的概率是个哑炮#30%的概率释放一次强力爆炸, 扣除所有敌人99%的生命"
            },{
                "SuspiciousFlask",
                "可疑的烧瓶",
                "所有医生都恨那个怪东西",
                "恢复所有生命, 获得2{{SoulHeart}}, 在当前房间内将受到的伤害降至半颗心"
            },{
                "Catnip",
                "浓缩猫薄荷",
                "你是时候该去晒晒太阳了",
                "有概率从{{BossRoom}}头目获取#使用后, 将角色传送至一个特殊的恶魔房, 在那里可以与口袋猫达安交易#{{GreedMode}} 达安不会出现在贪婪模式, 角色会被传送至普通恶魔房"
            },{
                "Minus10Card",
                "-10卡",
                "为荣誉而战",
                "将角色传送至随机的{{MiniBoss}}小头目#允许角色重复获得战利品"
            }
        }
        local other={
            {
                1000, Diepio.Enums.PickupVariant.DAAN,0,
                "口袋猫达安",
                "使用祭品头颅作为交换, 换取各种道具#一部分道具只能通过达安获取",
            },{
                6,Diepio.Enums.SlotVariant.HEXEN,0,
                "巫术台",
                "接触后消耗角色持有的符文#如果是角色的魂石, 则角色立即获得与之相关的巫术台技能#{{CurseLost}} 不兼容的魂石或非魂石的符文提供随机的属性提升#!!! 不可学习重复的技能#↑ {{ColorYellow}}{{ColorFade}}在多个楼层送走乞丐或者本局内首次拾取圣经可以升级巫术台技能{{CR}}#{{GarlinIcon}} {{ColorFade}}理论上这个也应该要有兼容的描述, 但由于某些原因未能成功加载...未来会修复的...应该?",
                {CONF={
                    {"5.300.81","S_Isaac"},
                    {"5.300.82","S_Maggy"},
                    {"5.300.83","S_Cain"},
                    {"5.300.84","S_Judas"},
                    {"5.300.85","S_BB"},
                    {"5.300.86","S_Eve"},
                    {"5.300.87","S_Sam"},
                    {"5.300.88","S_AZ"},
                    {"5.300.89","S_Laz"},
                    {"5.300.90","S_Eden"},
                    {"5.300.91","S_Lost"},
                    {"5.300.92","S_Lilith"},
                    {"5.300.93","S_Greed"},
                    {"5.300.94","S_Apy"},
                    {"5.300.95","S_Bone"},
                    {"5.300.96","S_Beth"},
                    {"5.300.97","S_Jacob"},
                    {"5.300."..Isaac.GetCardIdByName("SoulOfLewis"),"S_Lewis"},
                    {"5.300."..Isaac.GetCardIdByName("SoulOfWinifred"),"S_Wynne"},
                    {"5.300."..Isaac.GetCardIdByName("SoulOfShuko"),"S_Shuko"}
                }}
            },{
                5, Diepio.Enums.PickupVariant.SQUARE, 0,
                "绿色小方块",
                "拾取后:#{{ColorLime}}+5 美分#{{ColorLime}}{{ColorFade}}获得随机属性增益"
            }
        }
        if Reverie then
            local ReverieSyn={
                {{Isaac.GetPlayerTypeByName("Seija",true),Isaac.GetPlayerTypeByName("Seija",false)},"S_Seija",true},
                {{Isaac.GetPlayerTypeByName("Eika",true),Isaac.GetPlayerTypeByName("Eika",false)},"S_Eika",true},
                {{Isaac.GetPlayerTypeByName("Satori",true),Isaac.GetPlayerTypeByName("Satori",false)},"S_Satori",true},
                {{Isaac.GetPlayerTypeByName("Hourai",true),Isaac.GetPlayerTypeByName("Hourai",false)},"S_Hourai",true},
            }
            for i=1,#ReverieSyn do
                table.insert(trinket[1][5].CHAR,ReverieSyn[i])
            end
        end
        local conditionalList={
            ReWynne="取消锤子蓄力时的减速效果",
            GlassItems="每个玻璃道具可以增加玻璃手枪的发射次数",
            DogmaWing="两个破碎的羽翼可以合成\"完整的羽翼\"(一次性)",
            goldenWafer="可以将额外拾取的生命减半",
            --巫术台兼容:原版+本模组角色
            S_Isaac="{{ColorYellow}}圣餐变体论{{CR}}#将任意非任务{{Quality0}}道具拆解为随机掉落物",
            S_Maggy="{{ColorYellow}}信息素操控{{CR}}#进入房间后{{Charm}}魅惑所有怪物, {{Bait}}标记血量最高的怪物#↑ {{ColorYellow}}{{ColorFade}}获得{{Collectible591}}的效果{{CR}}",
            S_Cain="{{ColorYellow}}凶残意志{{CR}}#进入房间后{{Fear}}恐惧所有怪物#↑ {{ColorYellow}}{{ColorFade}}进入一个未清理的房间时生成一个可投掷炸弹{{CR}}",
            S_Judas="{{ColorYellow}}惊骇之舞{{CR}}#在战斗中缓慢获得伤害增幅, 至多300%, 清理房间后重置#↑ {{ColorYellow}}{{ColorFade}}蓄力5s释放伤害法术{{CR}}",
            S_BB="{{ColorYellow}}小烂人{{CR}}#进入房间后使所有敌人{{Poison}}中毒2.167s或{{Weakness}}虚弱#↑ {{ColorYellow}}{{ColorFade}}额外施加{{Slow}}减速; {{Weakness}}虚弱的敌人死亡后生成友好蝇蛆{{CR}}",
            S_Eve="{{ColorYellow}}乌鸦无情{{CR}}#生成数只{{Card86}}死鸟, 追击敌人, 至死方休; 获得{{Trinket"..Isaac.GetTrinketIdByName("Radiating Soul").."}}辐射之魂的效果#↑ {{ColorYellow}}{{ColorFade}}生成更多的死鸟{{CR}}",
            S_Sam="#{{ColorYellow}}高速刺拳{{CR}}#按下攻击键肘击敌人#↑ {{ColorYellow}}{{ColorFade}}可以肘碎障碍物, 且能够兼容泪弹特效{{ColorWhite}}(除了吐根){{CR}}",
            S_AZ="{{ColorYellow}}朗基努斯{{CR}}#角色手持血矛进行挥砍#↑ {{ColorYellow}}{{ColorFade}}挥砍命中后偶尔发射血激光柱{{CR}}",
            S_Laz="{{ColorYellow}}高凝血{{CR}}#角色受伤后有50%的概率生成小血团#↑ {{ColorYellow}}{{ColorFade}}概率上升为85%; 血团有10%的概率被替换为永恒之心血团{{CR}}",
            S_Eden="{{ColorYellow}}原初之根{{CR}}#进入新房间后释放收割之根攻击#↑ {{ColorYellow}}{{ColorFade}}退化敌人{{CR}}",
            S_Lost="{{ColorYellow}}精神之盾{{CR}}#每层第一次受到伤害将变为游魂并抵消第一次伤害(获得{{HolyMantle}}抵消第二次伤害)#↑ {{ColorYellow}}{{ColorFade}}每层可以触发2次{{CR}}",
            S_Lilith="{{ColorYellow}}亡命妊娠{{CR}}#杀死敌人有8%的概率生成迷你以撒#↑ {{ColorYellow}}{{ColorFade}}生成的迷你以撒有概率喷火{{CR}}",
            S_Greed="{{ColorYellow}}扒手{{CR}}#敌人死亡后有12.5%的概率掉落会消失的随机掉落物; 角色可以吸引消失的掉落物#↑ {{ColorYellow}}{{ColorFade}}概率上升为25%; 献祭房生成一个地摊{{CR}}",
            S_Apy="{{ColorYellow}}蝗虫过境{{CR}}#角色的攻击有12%的概率生成{{Trinket113}}天启蝗虫#↑ {{ColorYellow}}{{ColorFade}}每层获得一个深渊蝗虫{{CR}}",
            S_Bone="{{ColorYellow}}死灵术{{CR}}#杀死敌人有概率生成友方骷髅仔#↑ {{ColorYellow}}{{ColorFade}}效果改为: 首次杀死敌人召唤遗骸副角色, 但是需要用魂石复活{{CR}}",
            S_Beth="伯大尼的技能为随机二选一#{{ColorYellow}}铭记{{CR}}#穿透泪弹, {{Damage}}+1伤害#↑ {{ColorYellow}}{{ColorFade}}120%伤害倍率{{CR}}#{{ColorYellow}}无畏的信仰{{CR}}#跟踪泪弹#↑ {{ColorYellow}}{{ColorFade}}神体泪弹{{CR}}",
            S_Jacob="{{ColorYellow}}烹饪精通{{CR}}#每个食物道具提供伤害增幅#↑ {{ColorYellow}}{{ColorFade}}惩罚伤害减半{{CR}}",
            S_Lewis="{{ColorYellow}}泰瑟枪{{CR}}#角色有概率发射石化导电泪弹#↑ {{ColorYellow}}{{ColorFade}}所有泪弹获得导电效果, 石化泪弹获得神性光环; 使用主动道具重创随机敌人{{CR}}",
            S_Wynne="{{ColorYellow}}恶鬼傀儡戏{{CR}}#每个房间内前两个杀死的敌人生成持续追杀敌人的恶鬼, 后续杀死敌人有概率生成爆破鬼魂#↑ {{ColorYellow}}{{ColorFade}}鬼魂出现时生成邪眼裂口{{CR}}",
            S_Shuko="{{ColorYellow}}药学{{CR}}#获得药丸透视; 学习该技能时回满生命, +2{{SoulHeart}}, 并治愈截肢; 心30%被替换为药丸; 捡血80%治愈截肢或-1{{BrokenHeart}}#↑ {{ColorYellow}}{{ColorFade}}获得背刺{{CR}}",
            --巫术台兼容:幻想曲
            S_Eika="{{ColorYellow}}血肉傀儡{{CR}}#进入房间后生成一滩血迹和友方瞪眼血红尸#↑ {{ColorYellow}}{{ColorFade}}更大的血迹, 角色站在里面获得属性加成{{CR}}",
            S_Satori="{{ColorYellow}}洗脑{{CR}}#在角色一定范围内的敌人受到{{Confusion}}混乱#↑ {{ColorYellow}}{{ColorFade}}持续3s会同化非头目敌人, 对头目施加伤害法术{{CR}}",
            S_Seija="{{ColorYellow}}悲观的乐观主义{{CR}}#每一个持有的{{Quality0}}{{Quality1}}道具提供伤害加成#↑ {{ColorYellow}}{{ColorFade}} 当伤害和射速相较于初始值减少时, 反而使其增加{{CR}}",--存疑
            S_Hourai="{{ColorFade}}蓬莱没有巫术台技能, 只会生成数个掉落物, 只能选择其中一个{{CR}}",
            --巫术台兼容:邪魔典纸
            S_Fiend="#{{ColorYellow}}邪魔-焦土{{CR}}#所有实体(包括角色)受到{{Poison}}中毒,{{Burning}}烧伤和爆炸的伤害翻倍#↑ {{ColorYellow}}{{ColorFade}}伤害翻3倍{{CR}}",
            S_Golem="#{{ColorYellow}}石像鬼-化石{{CR}}#持有的所有饰品变为石头饰品#↑ {{ColorYellow}}{{ColorFade}}粉碎饰品生成随机符文{{CR}}",
            S_GodFuckingRandomNumberGenerator="#{{Card"..Isaac.GetCardIdByName("Soul of Random").."}} {{ColorYellow}}?????{{CR}}#永久获得{{CurseBlind}}, 进入新房间将道具底座在10个选择间切换",
            --[[To be continue
            S_Bael="#{{ColorYellow}}Bael-???{{CR}}#猫薄荷会将角色传送至更好的口袋猫房间"
            S_Mark="#{{ColorYellow}}警长-射击术{{CR}}#角色每个房间可以发射一枚秒杀泪弹#{{ColorYellow}}{{ColorFade}}发射散弹{{CR}}"
            S_Ethereal="#{{ColorYellow}}安德洛墨达-飘渺之召{{CR}}#进入新房间后, 有50%的概率让所有道具增加一个{{Planetarium}}星星道具作为选择#{{ColorYellow}}{{ColorFade}}概率上升为100%{{CR}}"
            S_Port="#{{ColorYellow}}伯大尼的玛莎-月之传送门{{CR}}#每层的初始房间生成一个前往隐藏房的传送门(可返程)#启用忏悔+还会生成一个小传送门的空间#{{ColorYellow}}{{ColorFade}}在初始房间生成一束月光{{CR}}"
            S_Death="#{{ColorYellow}}!!!-假死{{CR}}#每层第一次受到致命伤害后角色会装死(无敌), 使所有怪物{{Confusion}}混乱, 可以暴起吓唬他们#{{ColorYellow}}{{ColorFade}}爬起来后获得{{EthernalHeart}}{{CR}}"
            S_Torm="#{{ColorYellow}}萨麦尔-折磨之链{{CR}}#进入未清理的房间时, 锁住最近的敌人, 永久施加{{BleedingOut}}流血并造成25伤害#{{ColorYellow}}{{ColorFade}}锁住2个敌人{{CR}}"
            S_Wraith="#{{ColorYellow}}马斯特马-幽术{{CR}}#失去所有的金钱并获得一个{{Quality4}}道具魂火, 每层生效一次, 减少巫术台生成率#{{ColorYellow}}{{ColorFade}}若未升级, 魂火只能承受一次攻击{{CR}}"
            S_Ray="#{{ColorYellow}}十字君-缩小光线{{CR}}#{{Chargeable}} 蓄力5s释放一个较弱的激光, 必定缩小命中的敌人#{{ColorYellow}}{{ColorFade}}更粗的激光柱{{CR}}"
            S_Dysen="#{{ColorYellow}}溃烂者-痢疾{{CR}}#角色的泪弹留下一个短时间的红色液迹, 消失后有5%的概率生成蓝苍蝇#{{ColorYellow}}{{ColorFade}}液迹持续更久{{CR}}"
            S_Incan="#{{ColorYellow}}罪之人-咒语{{CR}}#获得一个无敌的罪孽道具魂火,+3{{BrokenHeart}}; 敌人死亡后有16%的概率生成一个与七宗罪头目相关的脆弱的魂火#{{ColorYellow}}{{ColorFade}}概率上升为30%{{CR}}"
            S_Research="#{{ColorYellow}}研究者-???{{CR}}#立即吞下一个随机{{ColorPurple}}参赛者的灵魂{{CR}}"
            未被维基记载的兼容模组: 启蒙之路, Job, Arachna, Retribution, Pudding & Wakaba]]
    
        }
        mod:AddToConditionalList(conditionalList)
        EID:addCharacterInfo(Diepio.Enums.PlayerType.LEWIS, "{{SoulHeart}} 魂心角色#{{Blank}} {{ColorYellow}}蓄能{{CR}}#{{Damage}} 快速连点移动键获得一个会迅速衰减的+5攻击和200%攻击倍率#半穿透泪弹和导电泪弹", "路易斯", "zh_cn")
        EID:addCharacterInfo(Diepio.Enums.PlayerType.LEWIS_B, "{{SoulHeart}} 魂心角色#!!! 试图获取{{Bomb}}炸弹会将其变为{{Trinket113}}蝗虫#额外的蓄力攻击#{{1}} 追踪爆破泪弹#{{2}} 弱化的圣光轰击#{{Blank}} {{ColorYellow}}闪避{{CR}}#丢弃键+移动键=朝指定方向翻滚闪避#擦弹翻滚可以触发时间减速, 并立即准备释放圣光轰击", "路易斯-专横者", "zh_cn")
        EID:addCharacterInfo(Diepio.Enums.PlayerType.WYNNE, "按下攻击键挥舞锤子, 可以蓄力#{{0}} 造成约12伤害#{{1}} 旋转挥舞, 造成约5x7伤害#{{2}} 造成约95~140伤害#{{3}} 造成约250~459伤害并附加{{Burning}}灼烧效果#锤子的攻击受{{Damage}}, {{Tears}}以及楼层数的影响#锤子的攻击无视护甲#部分NPC可以被锤子杀死", "云茵", "zh_cn")
        EID:addCharacterInfo(Diepio.Enums.PlayerType.WYNNE_B, "{{SoulHeart}} 魂心角色#本体无法发射泪弹, 而是操作36只恶鬼战斗#恶鬼至多可以造成105%云茵的DPS的碰撞伤害#!!! 恶鬼死亡后需要捡起光球才能将其复活#恶鬼死亡后会发射随机数量随机方向的泪弹#恶鬼的无敌时间受到{{Range}}影响", "云茵-受毁者", "zh_cn")
        EID:addCharacterInfo(Diepio.Enums.PlayerType.SHUKO, "{{SoulHeart}} 魂心角色#{{Freezing}} 冰冻泪弹#泪弹具有0~36°偏移#按住副手键触发保护效果#{{Blank}} {{ColorYellow}}冰风暴{{CR}}#按住丢弃键释放冰风暴持续伤害周围的敌人#冰风暴可以减速敌人, 冻结敌弹, 伤害受角色DPS影响", "舒科", "zh_cn")
        EID:addCharacterInfo(Diepio.Enums.PlayerType.SHUKO_B, "{{SoulHeart}} 魂心角色#弹跳泪弹#无法拾取任何心掉落物, 只能拾取攻击性,飞行和任务道具#可以进行额外蓄力攻击#{{1}} 肢解(需要手术刀)#{{2}} 发射3发弹跳泪弹#{{3}} 释放穿透霰弹冰冻泪弹#{{4}} 蓄力炼药, 有多种炼药攻击#写不下了, 自己按H键看更多东西吧", "舒科-痴狂者", "zh_cn")
        EID:addBirthright(Diepio.Enums.PlayerType.WYNNE,"将云茵的锤子替换为更轻的玩具锤#{{TearsAB}} 玩具锤的攻击速度增加62.5%, 但是对蓄力攻击不影响","云茵-快速摆锤","zh_cn")
        EID:addBirthright(Diepio.Enums.PlayerType.WYNNE_B,"云茵可以缓慢吸引光球形态的恶鬼","云茵-更忠诚的信徒","zh_cn")
        EID:addBirthright(Diepio.Enums.PlayerType.LEWIS,"路易斯的伤害增幅流失速度降低","路易斯-升级电容","zh_cn")
        EID:addBirthright(Diepio.Enums.PlayerType.LEWIS_B,"路易斯的破损头套充能速度翻倍","路易斯-快速充能","zh_cn")
        EID:addBirthright(Diepio.Enums.PlayerType.SHUKO,"屏障状态下可以缓慢移动","舒科-移动屏障","zh_cn")
        EID:addBirthright(Diepio.Enums.PlayerType.SHUKO_B,"炼药时间减少至72.3%","舒科-快速炼药","zh_cn")
        for _, item in ipairs(other) do
            mod:AddEntityTransl(item[1],item[2],item[3],item[4],item[5])
        end
        for _, item in ipairs(items) do
            mod:AddTranslate(100, item[1], item[2], item[3], item[4].."#{{Player"..Diepio.Enums.PlayerType.LEWIS_B.."}} 所属mod: Kicks and Giggles", item[5])
        end
        for _, item in ipairs(trinket) do
            mod:AddTranslate(350, item[1], item[2], item[3], item[4].."#{{Player"..Diepio.Enums.PlayerType.LEWIS_B.."}} 所属mod: Kicks and Giggles", item[5])
        end
        for _, item in ipairs(cards) do
            mod:AddTranslate(300, item[1], item[2], item[3], item[4].."#{{Player"..Diepio.Enums.PlayerType.LEWIS_B.."}} 所属mod: Kicks and Giggles", item[5])
        end
        local PDDsyn={
            {Isaac.GetItemIdByName("Eros"),Isaac.GetItemIdByName("Throat of Siren")},
            {Isaac.GetItemIdByName("Festive Winds"),Isaac.GetItemIdByName("Haumea")},
            {Isaac.GetItemIdByName("Eerie Flyer"),Isaac.GetItemIdByName("Work for Nothing")}
        }
        for _,i in ipairs(PDDsyn) do mod:PDDfakeAddon(i[1],i[2]) end
        local Dflipsyn={
            {5,100,Isaac.GetItemIdByName("Monoball"),5,100,Isaac.GetItemIdByName("Fortunate Fox")},
            {5,100,Isaac.GetItemIdByName("The Meat Grinder"),5,100,Isaac.GetItemIdByName("Vicious Curse")},
            {5,100,Isaac.GetItemIdByName("Eerie Flyer"),5,350,Diepio.Enums.Trinkets.NATSUMINECKLACE},
            {5,100,Isaac.GetItemIdByName("Seal of Winifred"),5,100,Isaac.GetItemIdByName("Winifred's Grimoire")},
            {5,100,Isaac.GetItemIdByName("Book of Bleakness"),5,100,35},
            {5,100,Isaac.GetItemIdByName("Book of Filth"),5,100,576},
            {5,100,Isaac.GetItemIdByName("Shuko's Bonesaw"),5,350,Diepio.Enums.Trinkets.SHUKOHEAD},
            {5,350,Diepio.Enums.Trinkets.RKEY,5,100,636},
            {5,350,Diepio.Enums.Trinkets.WING,5,350,80}
        }
        for _,i in ipairs(Dflipsyn) do mod:DFlipPairsAddon(i) end
    end
end)
