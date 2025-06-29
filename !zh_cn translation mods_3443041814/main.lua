--感谢golden_shit对代码进行的优化
CNEIDBabel = RegisterMod("ChineseEIDBabel", 1)--注册mod
print("请在github的改动说明处确认最近的更新是否为2025年6月23日")--不好我忘了我写了两个这个孩子们我完蛋了local mod = CNEIDBabel--缩写
local mod = CNEIDBabel--缩写
local game = Game()
mod.Flag = {
    Loaded = false,
    Lan = "zh_cn"
}
mod.Sprite = {
    Icon = Sprite()
}
mod.Sprite.Icon:Load("gfx/eid.anm2", true)--用于导入专属icon
mod.Translate = {--容纳翻译的列表
    collectible = {},
    trinket     = {},
    card        = {},
    pill        = {},
    garlin      = {}
}
mod.Quality={}--容纳自定义品质
mod.Mods = {}
mod.Setting = {}
mod.DefaultSetting = {
    FancySyn=false,
    betterQuality=true,
    AccurateBlurb=false,
    DescTrans=true,
}
mod.Suffixs={
    {"VIR","bookOfVirtuesWisps"},
    {"BEL","bookOfBelialBuffs"},
    {"EAT","bingeEaterBuffs"},
    {"CAR","carBattery"},
    {"ABY","abyssSynergies"}
}
mod.Data = {}
if EID then
    EID:addIcon("GarlinIcon", "0", -1, 16, 15, 4, 4, mod.Sprite.Icon)
    EID:addIcon("IGIcon", "1", -1, 16, 16, 4, 4, mod.Sprite.Icon)
end
mod.WarnList={}
mod.json=require("json")
-- Functions

---@param variant number|nil
---@param id string|number
---@param name string
---@param description string
---@param eid string
---@param compatible table|nil
function mod:AddTranslate(variant, id, name, description, eid, compatible)--类型,编号,名称,描述,图鉴,兼容
    local lan = self.Flag.Lan
    compatible = compatible or {}--防止无兼容报错
    if variant == 100 or variant == nil then--道具
        if type(id) == "string" then id = Isaac.GetItemIdByName(id) end--字符串转换为游戏内编号
        if type(id) ~= "number" or id <= 0 then return end
        -- 忏悔龙目前的兼容方法是直接改config属性，不太雅观，用在别人mod上会比较冒犯——GS
        -- 所以等下个版本更新出本地化库再写好了——GS
        mod.Translate.collectible[id] = {name, description}--往列表加入道具及其描述
        if EID then
            EID:addCollectible(id, eid, name, lan)--添加对应EID
            -- 大宝兼容
            if compatible.BFF ~= nil then
                if compatible.BFF then
                    EID:addBFFSCondition(id, compatible.BFF, nil, nil, lan)--BFF兼容
                else
                    EID.BFFSNoSynergy[id] = true
                end
            end
            for _, suffix in ipairs(self.Suffixs) do
                if compatible[suffix[1]] then EID.descriptions[lan][suffix[2]][id] = compatible[suffix[1]] end--添加特殊道具兼容
            end
            --[[local function Condition(descObj)
                return descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType and mod.Quality[descObj.ObjSubType]
            end
            local function Callback(descObj)
                descObj.Quality = mod.Quality[descObj.ObjSubType]
                return descObj
            end
            EID:addDescriptionModifier("YourQualityIsLikePieceOfShitSoImGonnaChangeIt", Condition, Callback)]]
            --如果你觉得这个模组自定义的品质太史可以自定义改动一个你认为更合理的品质(上述为实际改变品质而非装样子，暂时改回来（嗯)
            do
                local q = compatible.QUA
                if q then mod.Quality[id] = q end
            end
            local function Condition(descObj)
                return descObj.ObjType == 5 and descObj.ObjVariant == 100 and descObj.ObjSubType and mod.Quality[descObj.ObjSubType] and mod.Setting.betterQuality==true
            end
            local function Callback(descObj)
                descObj.Quality = mod.Quality[descObj.ObjSubType]
                return descObj
            end
            EID:addDescriptionModifier("YourQualityIsLikePieceOfShitSoImGonnaChangeIt", Condition, Callback)
            -- 一般兼容
            do
                local t = compatible.CONF
                if t and type(t) == "table" then
                    if not(t[2]) or type(t[2]) == "table" then for _, s in ipairs(t) do if #s >= 2 then EID:AddSynergyConditional(id, s[1], s[2], s[3] or s[2]) end end
                    elseif #t >= 2 then EID:AddSynergyConditional(id, t[1], t[2], t[3] or t[2]) end
                end
            end
            do
                local c=compatible.CHAR--EID:AddClosestPlayerConditional(道具ID或饰品全称, 角色ID（可以是数组）, modText（兼容文本）, extraTable（nil就行）, includeTainted（是否包括堕化）) 因为跟道具什么会混淆加上应该数量不多我感觉单独写方便点--GS
                if c and type(c)=="table" then--{角色ID,文字,nil,包括堕化}
                    if not(c[2]) or type(c[2])=="table" then for  _,s in ipairs(c) do if #s>=2 then EID:AddClosestPlayerConditional(id,s[1],s[2],nil,s[3]) end end
                    elseif #c>=2 then EID:AddClosestPlayerConditional(id,c[1],c[2],nil,c[3]) end
                end
            end
            --跨模组兼容  MOD={GOLD=true,PAPER=true}
            if mod.Setting.FancySyn then do
                local m=compatible.MOD
                if m and type(m)=="table" then
                    if m.PAPER then mod:PaperitemAddon(id,"collectible") end
                    if m.ICE then mod:IceAddon(id) end
                    if m.STEEL then mod:SteelAddon(id) end
                    if m.GOLD then mod:GoldenAddon(id) end
                    if m.FEM then mod:FemaleAddon(id) end
                    if m.ILL then mod:DiseaseAddon(id) end
                    if m.GLASS then mod:GlassAddon(id) end
                    if m.BLOOD then mod:ReverieTransAddon(id,"Blood") end
                    if m.STONE then mod:ReverieTransAddon(id,"Stone") end
                    if m.MUSIC then mod:ReverieTransAddon(id,"Music") end
                end
            end end
            local Acc=compatible.ACR
            if REPENTOGON and Options.Language=="zh" and mod.Setting.DescTrans then--代码指导：福雷纳克博
                local config=Isaac.GetItemConfig()
                local ItemConfig=config:GetCollectible(id)
                if ItemConfig then
                    ItemConfig.Name=name
                    if mod.Setting.AccurateBlurb and Acc then ItemConfig.Description=Acc
                    else ItemConfig.Description=description end
                end
            end
        end
    elseif variant == 350 then
        if type(id) == "string" then id = Isaac.GetTrinketIdByName(id) end
        if type(id) ~= "number" or id <= 0 then return end
        mod.Translate.trinket[id] = {name, description}
        if EID then
            EID:addTrinket(id, eid, name, lan)
            -- 金饰品等
            local t = compatible.GOLD--GOLD={INFO={append=true},TEXT={"","",""}}
            if t then
                EID.GoldenTrinketData[id] = t.INFO
                EID.descriptions[lan].goldenTrinketEffects[id] = t.TEXT
            end
            do
                local t = compatible.CONF
                if t and type(t) == "table" then
                    if not(t[2]) or type(t[2]) == "table" then for _, s in ipairs(t) do if #s >= 2 then EID:AddSynergyConditional("5.350."..id, s[1], s[2], s[3] or s[2]) end end
                    elseif #t >= 2 then EID:AddSynergyConditional("5.350."..id, t[1], t[2], t[3] or t[2]) end
                end
            end
            do
                local c=compatible.CHAR
                if c and type(c)=="table" then--{角色ID,文字,包括堕化}
                    if not(c[2]) or type(c[2])=="table" then for  _,s in ipairs(c) do if #s>=2 then EID:AddClosestPlayerConditional("5.350."..id,s[1],s[2],nil,s[3]) end end
                    elseif #c>=2 then EID:AddClosestPlayerConditional("5.350."..id,c[1],c[2],nil,c[3]) end
                end
            end
        end
        local Acc=compatible.ACR
        if REPENTOGON and Options.Language=="zh" and mod.Setting.DescTrans then--代码指导：福雷纳克博
            local config=Isaac.GetItemConfig()
            local ItemConfig=config:GetTrinket(id)
            if ItemConfig then
                ItemConfig.Name=name
                if mod.Setting.AccurateBlurb and Acc then ItemConfig.Description=Acc
                else ItemConfig.Description=description end
            end
        end
    elseif variant == 70 then--谨以此批注祝贺我通过类比学会了添加药丸EID(目前应该没问题?)
        if type(id) ~= "number" or id<=0 then return end
        --药丸不打算用getpillidbyname了, 看起来差不多能用--Garlin
        mod.Translate.pill[id] = {name, description}
        if EID then EID:addPill(id,eid,name,lan) end
        if REPENTOGON and Options.Language=="zh" and mod.Setting.DescTrans then--代码指导：福雷纳克博
            local config=Isaac.GetItemConfig()
            local ItemConfig=config:GetPillEffect(id)
            if ItemConfig then
                ItemConfig.Name=name
            end
        end
    elseif variant == 300 then
        if type(id) == "string" then id = Isaac.GetCardIdByName(id) end
        if type(id) ~= "number" or id <= 0 then return end
        mod.Translate.card[id] = {name, description}
        if EID then EID:addCard(id, eid, name, lan) end
        if REPENTOGON and Options.Language=="zh" and mod.Setting.DescTrans then--代码指导：福雷纳克博
            local config=Isaac.GetItemConfig()
            local ItemConfig=config:GetCard(id)
            if ItemConfig then
                ItemConfig.Name=name
                ItemConfig.Description=description
            end
        end
    end
    -- 附加内容
    if EID and type(id) == "number" and compatible.GARL then
        mod.Translate.garlin["5."..variant.."."..id] = compatible.GARL
    end
    EID:setModIndicatorName("非官方汉化, 如有错误欢迎指正")
    EID:setModIndicatorIcon("GarlinIcon")
end
function mod:AddEntityTransl(objtype,variant,id,name,eid,compatible)--添加实体
    local lan = self.Flag.Lan
    --getentityvariantbyname不知道为什么写到这里会失效, 不过反正到时候也跟药丸一样尽量用模组代码内的编号吧--Garlin
    compatible = compatible or {}--防止无兼容报错
    if EID then
        EID:addEntity(objtype,variant,id,name,eid,lan)
        do
            local t = compatible.CONF
            if t and type(t) == "table" then
                if not(t[2]) or type(t[2]) == "table" then for _, s in ipairs(t) do if #s >= 2 then EID:AddSynergyConditional(id, s[1], s[2], s[3] or s[2]) end end
                elseif #t >= 2 then EID:AddSynergyConditional(id, t[1], t[2], t[3] or t[2]) end
            end
        end
    end
end
---@param key string
---@param name string
---@param fun function
function mod:AddModTranslationLoader(key, name, fun)
    table.insert(self.Mods, { k = key, n = name, f = fun })
end
---@param conditionalList table
function mod:AddToConditionalList(conditionalList)
    local lan = self.Flag.Lan
    for key, value in pairs(conditionalList) do
        EID.descriptions[lan].ConditionalDescs[key] = value
    end
end
function mod:LoadModData()
    if self:HasData() then
        local modData = self.json.decode(self:LoadData())
        for key, value in pairs(modData) do
            self.Setting[key] = value
        end
    end
end

function mod:SaveModData()
    local jsonString = self.json.encode(self.Setting)
	for key, value in pairs(self.DefaultSetting) do
		if type(self.Setting[key]) == "nil" then
			self.Setting[key] = value
		end
	end
    self:SaveData(jsonString)
end

-- Callbacks

---@param player EntityPlayer
function mod:PostPlayerUpdate(player)
	if game:GetFrameCount() <= 0 then return end
    local data = self.Data[player.InitSeed] or {}
    self.Data[player.InitSeed] = data
    local queuedItem = player.QueuedItem
    if not(player:IsItemQueueEmpty()) and queuedItem.Item then
        if data.ItemQueue ~= queuedItem.Item.ID then
            data.ItemQueue = queuedItem.Item.ID
            local translate = nil
            if queuedItem.Item:IsTrinket() then
                translate = self.Translate.trinket[queuedItem.Item.ID % TrinketType.TRINKET_GOLDEN_FLAG]
            else
                translate = self.Translate.collectible[queuedItem.Item.ID]
            end
            --if translate and Options.Language=="zh" then game:GetHUD():ShowItemText(translate[1], translate[2]) end--在游戏内显示对应HUD翻译, 目前仅对道具和饰品有效; 增加了语言检测, 以防在非中文环境下无法正常显示描述--Garlin
        end
    else
        data.ItemQueue = 0
    end
end

mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, mod.PostPlayerUpdate)
include("ACL")--Additional mod Compatible Lib 模组兼容便携函数库?

--include("availablemods/lost&forgottonDemo") 毙掉了
include("availablemods/LazyMattpack")       --√
include("availablemods/CuriosityCrate")     --√
include("availablemods/KNG3")               --√, but this can better
include("availablemods/Road2Enlightment")   --√, but this can better
--include("availablemods/Benevolence")        毙掉了
include("availablemods/Elitium")            --√
include("availablemods/DamnEdithIsBack")    --待优化
include("availablemods/RedBaby")            --√
--include("availablemods/furtherance")        毙掉了
include("availablemods/BattleFantasy")	    --√
include("availablemods/milkshake")          --√
include("availablemods/others")		        --病毒骑士, 更多的玫瑰, 狐狸包, 莉迪亚
include("availablemods/eclipsed")           --√, but this can be better
include("availablemods/LibExpand")          --√
include("availablemods/furtherance2")       --to be continue
--include("availablemods/FiendFolio")       --邪魔典纸   施工中，你也可以去掉批注提前品鉴？
--include("availablemods/balatroEX")        --小丑牌汉化优化版   可以去掉批注开始品鉴？
--include("availablemods/Joseph")           --毙掉了
    function mod:LoadedMods()
        if self.Loaded then return end
        self.Loaded = true
        self:LoadModData()
        if EID then
            for _,suffix in ipairs(self.Suffixs) do
                EID.descriptions[self.Flag.Lan][suffix[2]]=EID.descriptions[self.Flag.Lan][suffix[2]] or {}
            end
        end
        -- 大部分需要在原模组之后加载的模组放在这里
        --self:AddTranslate(100, "README", "必读条目", "模组EID个人汉化合集!", "EID汉化作者: 悟克拉·伽林 #{{GarlinIcon}} 表示翻译经个人补充或调整#{{IGIcon}} 表示翻译依据Isaacguru维基进行了修正或补充#{{CurseBlind}} 表示翻译不确定, 实际效果可能不同# 如有疑问, 欢迎在创意工坊的评论区回复或通过B站联系我")
        
        local loadList = {}
        for _, value in ipairs(self.Mods) do
            if _G[value.k] then -- 检查是否有对应全局表（不能真有只用私有表的内容模组吧）--GS
                value.f() -- 加载主要函数（因为已经验证全局表存在了所以里面不需要再额外加if判断也不会报错 --GS
                table.insert(loadList, value.n)
            end
        end
        self.Mods = {} -- 清除待加载内容
    
        if #loadList > 0 then
            print("已加载下列模组的汉化:")
            for _, value in ipairs(loadList) do print("   + " .. value) end
            --print("模组特殊标识含义见道具\"必读条目(README)\"")
            print("---")
        else
            print("目前未检测到模组, 可以确认是否有报错或因加载顺序的问题而无法正常运行")--增加了未检测到模组的提示--Garlin
        end
        print("This mod contain some Chinese messages that might cannot show without RGON, so you'd better check on the ReadMe in the mod file")--考虑到非忏悔龙的控制台可能不会输出中文, 加了这个提示 —— 我的建议是到时候说这个模组需要忏悔龙前置(什 --Garlin
        print("请在github的改动说明处确认最近的更新是否为2025年6月23日")
    end
if REPENTOGON then mod:AddCallback(ModCallbacks.MC_POST_MODS_LOADED, mod.LoadedMods)
else mod:AddCallback(ModCallbacks.MC_POST_GAME_STARTED, mod.LoadedMods)
end
