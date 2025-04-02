local mod = CNEIDBabel
mod:AddModTranslationLoader("EnlightenmentMod", "启蒙之路",function()
	local items = {
		{
			"Charming Cinder Candle",
			"魅惑煤渣烛",
			"发光发热吧, 疯蜡烛",
			"{{Charm}} 移动到房间中央, 魅惑附近的敌人#{{Burning}} 灼烧接触的敌人",
			{ ABY = "{{ColorOrange}}不会造成伤害的蝗虫, 碰撞时迸射火焰",
			CONF={289,"Candle_n_Candle"} }
		},{
			"Money = Power 2.0",
			"金钱=力量2.0",
			"你最好还有钱",
			"每15美分提供{{Damage}} +2伤害#↓ 连15美分都凑不齐的就要减攻击了",
		},{
			"Golden Scale",
			"金秤",
			"等价交换",
			"花费20美分触发{{Card65}}逆位隐士的效果#↑ 额外获得随机属性提升",
			{ VIR="效果改为: 转换房间内的道具底座为20美分的{{ItemPoolAngel}}道具, 每转换一个道具消耗5美分",
			BEL="效果改为: 转换房间内的道具底座为20美分的{{ItemPoolDevil}}道具, 每转换一个道具消耗5美分",
			ABY="{{ColorLime}}2只概率在碰撞后生成硬币的蝗虫"}
		},{
			"Inkwell",
			"墨池",
			"腐女的饮料",
			"{{Battery}} 杀死变种敌人获得充能#使用后, 根据你杀死的变种类型为飞行中的泪弹提供特殊效果",
			{ VIR="根据变种类型提供对应的魂火",
			BEL="效果改为: 将房间内的所有敌人变为消耗的充能所对应的变种",
			ABY="{{ColorRainbow}}蝗虫在与泪弹碰撞后有概率为其赋予随机特效"}
		},{
			"Jar of Maggots",
			"蛆罐",
			"你还怕蛆啊你个废物",
			"使用后, 朝一个方向投出罐子, 放出3个随机蛆",
			{ VIR="在生成蝇蛆的位置生成魂火",
			BEL="罐子破碎后的效果改为: 生成一个持续生成蝇蛆的信标",
			ABY="3只概率为敌人施加{{Poison}} 中毒的蝗虫"}
		},{
			"Swoopin' Season",
			"俯冲季",
			"他们说, 两次会带来好运...",
			"{{IGIcon}} 角色的{{Luck}}幸运每10分钟在-3 和 +3间变化#{{Collectible562}} 幸运+3时, 幸运属性不会再降低",
			{ABY="5只仅有0.1倍伤害的蝗虫"}
		},{
			"Fish Baggy",
			"金鱼袋",
			"不宜消费, 就算是给小女友买单也不行",
			"1/20概率发射鱼袋, 命中敌人后迸射泪弹#{{IGIcon}} 泪弹造成2点伤害",
			{ABY="{{ColorOrange}}碰撞后召唤{{Trinket115}} 减速蝗虫的深渊蝗虫"}
		},{
			"Landmines",
			"地雷",
			"啊哦",
			"{{ArrowUp}} +5 炸弹#{{IGIcon}} 10s引爆, 或者通过碰撞引爆",
			{ABY="{{ColorGreen}}碰撞后概率爆炸的蝗虫"}
		},{
			"Oghma Infinium",
			"无限智典",
			"凡人园丁 轻读版",
			"{{Warning}} 一次性 {{Warning}}#↑ 使用后, 在伤害, 幸运和射速中随机选择一个获得永久+5",
			{VIR="获得5个魂火, 属性为{{Damage}}5, {{Tears}}5, {{Heart}}555",
			BEL="额外使用一本书五次:{{Collectible34}}{{Collectible292}}{{Collectible712}}{{Collectible97}}{{Collectible35}}{{Collectible545}}",
			ABY="{{ColorOlive}}5只2.5倍伤害的蝗虫, 碰撞后有概率生成{{Collectible512}} 黑洞"}
		},{
			"Sulphur",
			"炼金硫火",
			"你知道是什么让我成为一块好石头吗?",
			"!!! 随机自爆#不会伤害自己",
			{ABY="{{ColorYellow}}飞行时会随机爆炸的蝗虫(放心没有友伤)"}
		},{
			"Mercury",
			"炼金汞",
			"只有我能胜任的任务...",
			"每30s, 生成高伤害液体#{{IGIcon}}  单次判定伤害15, 每秒伤害150#免疫毒属性伤害",
			{ABY="{{ColorYellow}}有概率留下水银液迹的蝗虫"}
		},{
			"Salt",
			"炼金盐",
			"敌军全都跟个宝宝似的!",
			"{{Tears}} 射速随机变化",
			{ABY="{{ColorYellow}}飞行时发射泪弹的蝗虫, 泪弹兼容角色属性和特效"}
		},{
			"Cocktail Shaker",
			"鸡尾酒调酒壶",
			"调制饮品, 改变人生",
			"使用后, 将收集的掉落物装进调酒壶中#收集3个掉落物制成一个饮品#{{CurseBlind}} 特定的掉落物会调制出特殊的饮品#{{Blank}} Certain key pickups will confirm respective drinks",
			{VIR="调配饮品现在需要15个掉落物, 但是可以装入底座道具#若至少一个道具被装入, 额外生成一个{{ItemPoolAngel}}道具",
			BEL="调配饮品现在需要15个掉落物, 但是可以装入底座道具#若至少一个道具被装入, 额外生成一个{{ItemPoolDevil}}道具",
			ABY="{{ColorPink}}概率生成随机饮品的蝗虫"}
		},{
			"Mr. Maggot's Feastables",
			"蝇蛆先生的巧克力",
			"有股\"这是内脏\"味!",
			"有1/20的概率射出一个会施加{{Weakness}} 虚弱效果的友方蝇蛆#{{GarlinIcon}} 大概率捏他了Mr. Beast Feastables巧克力",
			{ABY="{{ColorCyan}}概率生成 会施加虚弱效果的小蝇蛆 的蝗虫"}
		},{
			"Fusion",
			"融合",
			"准备往上",
			"使用后, 将塔罗牌重随为编号+1的塔罗牌#{{IGIcon}} 如: {{Card22}}世界会变为{{Card56}}逆位愚者, {{Card77}}逆位世界会变回{{Card1}}愚者",
			{VIR="在卡牌的位置生成魂火",
			BEL="每次改变卡牌都会使其爆炸",
			ABY="{{ColorCyan}}蝗虫, 碰到{{Card}} 塔罗牌后会将其消耗并立刻触发效果"}
		},{
			"Forceful Fists of Frost",
			"强而有力的冰霜之拳",
			"我认真的, 别做坏事了",
			"有概率肘击靠近角色的怪物, 击退并减速它们, 造成4~30点{{Freezing}}冰属性伤害#{{RangeSmall}} 攻击范围受射程影响",
			{ABY="{{ColorRed}}2只击退蝗虫"}
		},{
			"Clock Guy",
			"钟货",
			"是时候创造史话了",
			"{{Timer}} 与敌人碰撞时会消失, 然后将房间加速或减速6s#进入房间有50%的概率重新生成",
			{ABY="{{ColorCyan}}蝗虫有极小的概率触发{{Pill}}好困或{{Pill}}好兴奋的效果"}
		},{
			"Potted Protector",
			"盆栽护卫",
			"植物大战地下室",
			"受到伤害会掉落一个植物#{{TearsizeSmall}} 用泪弹浇灌植物, 助其生长#经过绽放的植物的泪弹会获得特殊效果",
			{ABY="{{ColorGreen}}有概率生成盆栽的蝗虫"}
		},{
			"Magatama",
			"勾玉",
			"生活中的一切都是要看运气的",
			"拾取后, 获得6个{{BrokenHeart}} 碎心和{{Luck}} +6幸运#每次使用移除2碎心和2幸运#只能使用3次",
			{VIR="生成5个魂火, 每个魂火获得+0.2{{Luck}}",
			BEL="效果改为: 拾取后, 获得3个{{BrokenHeart}} 碎心和{{Luck}} +3幸运#每次使用额外获得1碎心和1幸运",
			ABY="{{ColorLime}}有概率碰撞后获得碎心的蝗虫"}
		},{
			"The Face of an Oni",
			"鬼面具",
			"每个人都梦想成为最强之人",
			"{{Fear}} 使角色身后的敌人恐惧",
			{ABY="{{ColorRed}}10倍伤害的蝗虫"}
		},{
			"Scouter",
			"实体编号探测器",
			"那么, 实体编号是多少呢",
			"{{Weakness}} 对房间内编号最高的敌人施加永久虚弱效果!",
			{VIR="同时对目标发射3个魂火",
			BEL="同时对目标敌人发射激光炮",
			ABY="{{ColorYellow}}蝗虫会秒杀碰到的战5渣(然后失去该蝗虫), 释放传说中的超{{Trinket}}级{{Trinket}}爆{{Trinket}}炸然后开始插入旁白"}
		},{
			"Grandnade",
			"壮丽炸弹",
			"挥霍资产",
			"\1 +5 美分#{{Coin}} 如果角色没有炸弹, 可以自动花费5美分继续放置炸弹#角色的炸弹有概率触发点金效果",
		},{
			"Time is Money",
			"一寸光阴一寸金",
			"我冻结的时间重新开始流动",
			"{{Coin}} 进入下一层获得N硬币#N初始值为10, 且可以为负数#{{Timer}} 每分钟都会减少N值",
			{ABY="{{Timer}}命中敌人后释放一圈Y个泪弹的蝗虫#(Y = 游戏时间/10 的余数)"}
		},{
			"Enlightened Indemnity",
			"启蒙的报偿",
			"店长之佑",
			"{{CoinHeart}} 受到伤害不会扣血, 而是失去3美分#!!! 在子宫层后将失去5美分#{{IGIcon}} 除非拥有{{Collectible108}}圣饼或其他抗性提升效果#{{EmptyHeart}} 未持有钱币则不生效",
			{ABY="{{ColorYellow}}1.5倍伤害的蝗虫, 命中敌人后有概率生成硬币",
			CONF={64,"HalfPricePerce"}}
		},{
			"Dragon Balls",
			"龙珠",
			"说出你的愿望",
			"{{HardModeSmall}} 生成所有来自启蒙之路mod角色的全红解锁道具#!!! 只能选择其中一个#{{IGIcon}} 如未解锁对应道具则会生成另外的指定道具",
			{VIR="只会生成另外指定的道具",
			BEL="额外生成一个与未来可能加入的角色相关的道具#{{Collectible523}}",
			ABY="{{ColorYellow}}7只蝗虫"}
		},{
			"Lil' Sam",
			"迷你参孙",
			"为了我, 去做吧!",
			"投掷1.5倍角色伤害的炸弹",
			{ABY="{{Player6}}没有蝗虫, 而是获得一个副角色"}
		},{
			"Selfish Sacks",
			"自私袋",
			"无底线的贪婪",
			"吸收距角色最近的掉落物#20% 的概率举起一个和掉落物相关的道具, 指示你下一个需要吸收什么掉落物#{{Coin}} 本层内完成则获得1美分",
		},{
			"Pepper Steak",
			"胡椒牛排",
			"好像是OFF",
			"↑ +1 伤害#!!! 50% 的概率在拾取后失去5炸弹",
			{ABY="3只0.2倍伤害的蝗虫"}
		},{
			"Dice Bombs",
			"骰子炸弹",
			"死了啦, 可真谢谢你啊",
			"{{Bomb}} +5炸弹#!!! 放置的炸弹会随机获得下述伤害倍率#{{IGIcon}} {{ColorFade}}0.1, 0.5, 0.8, 1.2, 1.5, 2{{CR}}",
			{ABY="命中敌人后有概率生成 随机骰子魂火 的蝗虫"}
		},{
			"Gulp Bombs",
			"咕噜炸弹",
			"别",
			"{{Bomb}} +5炸弹#{{Trinket}} 角色被自己的炸弹伤害后有33%的概率吞下持有的饰品",
			{ABY="{{ColorYellow}}命中敌人后定住并延时爆炸的蝗虫, 会吃掉生命值低于5的敌人, 有4%的概率生成一个饰品"}
		},{
			"Pepper Steak?",
			"胡椒牛排?",
			"好像是ON",
			"{{Bomb}} 消耗5炸弹获得可叠加的{{Damage}} +1.23伤害#↓ 进入下一层失去一半的叠加攻击力",
			{ABY="{{ColorOrange}}如果当前房间内使用过主动道具, 这只蝗虫会在当前房间内生成4个自己的复制"}
		},{
			"E.N.A: Evolutionary Notice Assistant",
			"E.N.A:可升级弹窗助理",
			"感谢使用, 您的安全问题会得到保障",
			"游戏会弹出广告, 可以通过按住丢弃键:{{Blank}} 超过2s点击链接#{{Blank}} 2s以内关闭广告#!!! {{ColorRed}}可能有病毒广告{{CR}}#具有推送机制#{{GarlinIcon}} 每层的初始房间生成一个弹窗助理, 可以对当前的助理进行更换#{{GarlinIcon}} 打开一定次数的广告或病毒可以升级选择的助理",
			{ABY="{{ColorYellow}}悬浮在房间中央的蝗虫, 在角色攻击时造成碰撞伤害",
			CONF={514,"OHMYPCCCCCCCCCC"}}
		},{
			"Roswell",
			"罗斯威尔事件",
			"放眼全球, 脚踏实地",
			"接触敌人会释放一道光线, 短时间吸引附近的敌人#{{GarlinIcon}} 1947年, 美国发生了轰动全球的罗斯威尔事件, 疑似有飞碟坠毁新墨西哥州, 并造成外星人死亡. 该事件真相至今始终未明",
			{ABY="{{ColorLime}}蝗虫会秒杀碰到的敌人(然后失去该蝗虫)"}
		},{
			"Nephi's Nine",
			"尼法九连胜",--存疑
			"我操你妈",
			"4% 的概率复制角色小范围内最近的掉落物#复制成功后, 引爆这个道具#{{IGIcon}} 爆炸不会对角色造成伤害, 对敌人造成1点伤害",
			{VIR="基于被复制的掉落物获得对应魂火",
			BEL="更强大的爆炸",
			ABY="没有蝗虫=)"}
		},{
			"Lina's Lid",
			"莉娜的盖子",
			"开辟自己的道路",
			"每个使用的消耗品都会永久提供可堆叠的+1碰撞伤害#{{IGIcon}} 碰撞伤害的间隔为2.03s",
			{ABY="{{ColorOrange}}环绕轨道极度不稳定, 但是可以造成更高伤害的蝗虫"}
		},{
			"Tunnel Vision",
			"井底之蛙",
			"好的知道了(猪脑过载中)",
			"{{Weakness}} 最近的敌人会被虚弱#{{Blank}} 但其他敌人会隐形",
			{ABY="{{ColorMaroon}}2只仅有0.1倍伤害的蝗虫, 命中敌人后必定施加{{Collectible398}}缩水效果"}
		},{
			"Fragrance Extraction",
			"芳香提取器",
			"千味寻踪",
			"生成一个芳香容器跟班, 清理一个房间后消失#{{Burning}} 跟班被角色的泪弹命中会迸射火焰",
			{VIR="不再迸射火焰, 而是静止的魂火",
			BEL="不再迸射火焰, 而是{{Collectible634}}鬼魂",
			ABY="{{ColorLime}}2倍伤害的蝗虫, {{Burning}} 灼烧命中的敌人"}
		},{
			"Pawaurum",
			"金掌",
			"它是个漂亮的小猫咪",
			"当前房间内15s, 有节奏地释放{{Collectible202}} 点金冲击波",
			{VIR="冲击波命中有4.17%的概率生成{{GolednHeart}}",
			BEL="同时释放爆炸, 造成1.2倍伤害",
			ABY="{{ColorGreen}}这只蝗虫可以为你提供金掉落物, 但你用它造成的伤害得等同于澳大利亚每克黄金的价值!#{{CR}}该数值在2024/11/15为127$"}
		},{
			"Cede",
			"放松",
			"接受它们",
			"恢复正常生成蝇蛆#↓ 移除杀死蝇蛆得到的攻击力加成",
		},{
			"Hold",
			"捂紧",
			"憋住它们",
			"角色不再生成蝇蛆#↑ 杀死所有蝇蛆, 并根据其数量和种类获得攻击力加成",
		}
	}
	local trinkets = {
		{
			"Blood Orb",
			"血石",
			"手心血月",
			"{{EmptyHeart}} 持续流失生命#{{Damage}} 伤害倍率x1.5",
			{GOLD={INFO={append=true},TEXT={"伤害加倍","伤害加倍","伤害加倍"}}}
		},{
			"Heart of Gild",
			"虚饰之心",
			"血腥的, 肮脏的财宝",
			"{{Coin}} 红心被替换为硬币",
			{GOLD={INFO={append=true},TEXT={"可以出现原游戏内任何种类的硬币","可以出现原游戏内任何种类的硬币","可以出现原游戏内任何种类的硬币"}}}
		},{
			"Nemertea",
			"纽虫",
			"一份虫迁礼物",
			"{{RottenBeggar}} 所有的机器/乞丐替换为腐烂乞丐#{{ItemPoolRottenBeggar}} 更好的腐烂乞丐道具池#{{GarlinIcon}} 实现效果的方式大致为将生成的道具替换为新道具池的道具, 期间有空隙",
			{GOLD={INFO={append=true},TEXT={"生成更多的蓝苍蝇","生成更多的蓝苍蝇","生成更多的蓝苍蝇"}}}
		},{
			"Bouquet",
			"花束",
			"读作bucket!",
			"将腐烂乞丐替换为复苏乞丐#复苏乞丐道具池内的道具均为复活类道具",
			{GOLD={INFO={append=true},TEXT={"乞丐被转换时有20%的概率生成{{EmptyBoneHeart}}","乞丐被转换时有20%的概率生成{{EmptyBoneHeart}}","乞丐被转换时有20%的概率生成{{EmptyBoneHeart}}"}}}
		},{
			"Coin Pile",
			"硬币堆",
			"越浅的赌池越不能深潜",
			"{{Beggar}} 所有的机器/乞丐替换为游戏乞丐#{{Beggar}} 更好的游戏乞丐道具池#{{GarlinIcon}} 实现效果的方式大致为将生成的道具替换为新道具池的道具, 期间有空隙",
			{GOLD={INFO={append=true},TEXT={"最终奖励出现时有20%的概率生成{{Coin}}金硬币","最终奖励出现时有20%的概率生成{{Coin}}金硬币","最终奖励出现时有20%的概率生成{{Coin}}金硬币"}}}
		},{
			"I.O.U",
			"借据",
			"等等什么?",
			"{{BombBeggar}} 所有的机器/乞丐替换为炸弹乞丐#{{ItemPoolBombBum}} 更好的炸弹乞丐道具池#{{GarlinIcon}} 实现效果的方式大致为将生成的道具替换为新道具池的道具, 期间有空隙",
			{GOLD={INFO={append=true},TEXT={"最终奖励出现时有20%的概率生成{{GoldenBomb}}","最终奖励出现时有20%的概率生成{{GoldenBomb}}","最终奖励出现时有20%的概率生成{{GoldenBomb}}"}}}
		},{
			"Broken Record",
			"破损录像",
			"重-重-重播",
			"触发主动道具效果时有概率额外触发一次, 至多五次#第一次为64%概率, 每次减半",
			{GOLD={INFO={append=true},TEXT={"额外触发数次效果","额外触发数次效果","额外触发数次效果"}}}
		},{
			"Crit Penny",
			"临界硬币",
			"小心地滑",
			"清理房间后:#{{Coin}} 生成硬币#{{Blank}} &#{{Warning}} 将饰品丢到随机房间中",
			{GOLD={INFO={append=true},TEXT={"更多的硬币","更多的硬币","更多的硬币"}}}
		},{
			"Mosaic Heartbreak",
			"马赛克心碎",
			"让它们走吧",
			"进入未清理的房间造成1颗心的伤害, 并生成{{SoulHeart}}1个魂心#房间内的所有心会每隔一段时间传送并留下液迹",
			{GOLD={INFO={append=true},TEXT={"更多的伤害, 更多的{{SoulHeart}}","更多的伤害, 更多的{{SoulHeart}}","更多的伤害, 更多的{{SoulHeart}}"}}}
		}
	}
	local cards = {
		{
			"Brn",
			"脑子",
			"知识就是粮食",
			"{{BrokenHeart}} 移除1碎心#{{IGIcon}} 若没有碎心则生成{{RottenHeart}}1腐心#若角色为启蒙蓝人, 重新获得一个丢失的肢节",
		},{
			"Bld",
			"血腥玛丽",
			"比食尸还糟糕",
			"2次性#第一次, 生成芹菜条引诱附近的敌人#第二次, 吐出毒性泪弹",
		},{
			"BldS",
			"血腥玛丽",
			"比食尸还糟糕",
			"2次性#第一次, 生成芹菜条引诱附近的敌人#第二次, 吐出毒性泪弹",
		},{
			"Cham",
			"香槟",
			"吾好黄金",
			"重随你的10-20个硬币, 钥匙和炸弹#在有敌人的房间中, 有概率被重随为攻击子弹",
		},{
			"Nit",
			"氮气加速",
			"让你的血管泵出汽油的感受!",
			"10s内将移速变为2, 增加碰撞伤害, 且能粉碎接触的石头"
		},{
			"Jae",
			"野格炸弹",
			"艾伦! 艾伦! 敢不敢再来个二连?",
			"长按#{{EmptyHeart}} 使用时, 所有的心会被缓慢消耗#{{Heart}} 剩1颗心时, 回收消耗的心, 并释放爆炸, 爆炸的伤害基于消耗的心#!!! 失败则不会返还心, 并受到1伤害",
		},{
			"Flw",
			"花莓",
			"花莓病毒",
			"{{SoulHeart}} 为使用者和附近的玩家+1 魂心#10s内, 弹速变为0.4, 摩擦力降低"
		}
	}
	local conditionalList={
		Candle_n_Candle="试试在蜡烛下面点蜡烛?",
		OHMYPCCCCCCCCCC="新增一种极稀有的广告, 可能会出现{{ColoeYellow}}错误道具{{CR}}",
		HalfPricePerce="还有硬币时, 有50%的概率也会提供抗性提升"
	}
	mod:AddToConditionalList(conditionalList)
	for _, item in ipairs(items) do
		mod:AddTranslate(100, item[1], item[2], item[3], item[4], item[5])
	end
	for _, item in ipairs(trinkets) do
		mod:AddTranslate(350, item[1], item[2], item[3], item[4], item[5])
	end
	for _, item in ipairs(cards) do
		mod:AddTranslate(300, item[1], item[2], item[3], item[4], item[5])
	end
	if EnlightenmentMod then--加了这个，不然如果没打对应mod会报错加载失败，虽然实际不影响但是控制台看着不舒服
		EID:addBirthright(
			Isaac.GetPlayerTypeByName("Enlightened Keeper",false),
			"可以失去更多的肢节"..
			"#{{Card"..Isaac.GetCardIdByName("Brain").."}} 脑子得到的肢节还会提供随机永久属性提升",
			"启蒙店长",
			"zh_cn"
		)
		EID:addBirthright(
			Isaac.GetPlayerTypeByName("Enlightened Blue Baby",false),
			"死亡后, 得到葬礼保险"..
			"#包含永久的四重泪弹, +100幸运和27美分",
			"启蒙蓝人",
			"zh_cn"
		)
		EID:addBirthright(
			Isaac.GetPlayerTypeByName("Enlightened Samson",false),
			"每个房间的奇数次爆破周期, 小参孙会带上面具"..
			"#然后角色将操作大参孙战斗"..
			"#大参孙可以免费承受5次伤害, 并将其转换为爆炸, 利用丢弃键将炸弹拉/踢向敌人"..
			"#爆破周期结束后变回启蒙参孙",
			"启蒙参孙",
			"zh_cn"
		)
		EID:addCharacterInfo(
			Isaac.GetPlayerTypeByName("Enlightened Keeper", false),
			"{{Collectible74}} 每持有25美分, 攻击额外发射1泪弹"..
			"#游戏生成的1美分会被替换为其他掉落物"..
			"#!!! 任何东西都要花钱: 掉落物, 饰品, 道具"..
			"#{{Shop}} 更坏的商店"..
			"#特殊的硬币不会增加钱币数, 而是提供特殊增益"..
			"#钱币为0时角色死亡",
			"启蒙店长",
			"zh_cn"
		)
		EID:addCharacterInfo(Isaac.GetPlayerTypeByName(
			"Enlightened Blue Baby", false),
			"攻击有20%概率发射友方小蝇蛆"..
			"#!!! 最多可以有7个蝇蛆"..
			"#!!! 只能拥有{{EmptyBoneHeart}}骨心和{{RottenHeart}}腐心"..
			"#!!! 受到伤害并失去骨心会+1碎心, 失去一个随机肢节, 并导致属性变化, 获得道具效果和更多的蝇蛆种类",
			"启蒙蓝人",
			"zh_cn"
		)
		EID:addCharacterInfo(
			Isaac.GetPlayerTypeByName("Enlightened Samson",false),
			"按丢弃键选定一个放置的炸弹, 通过攻击键来移动它"..
			"#在未清理且没有其他放置炸弹的房间放置一个炸弹开启爆破周期"..
			"#持续15s, 时间到后所有被放置的炸弹都会一起引爆"..
			"#爆破周期内每放置一个炸弹, 小参孙都会丢出3个特效炸弹消耗品, 可以用于为放置的炸弹赋予炸弹特效",
			"启蒙参孙",
			"zh_cn"
		)
	end
end)