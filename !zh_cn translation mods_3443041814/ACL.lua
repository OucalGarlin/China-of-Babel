 --Additional Compatibles Library -- Portable compatible functions? 便携式模组兼容函数库?
local ACL=CNEIDBabel
local printing=true --Set this to true so there will have printed information if synergies are successfully added 调试模式：将该项设为true后即刻在控制台看到成功加载的输出
--Fiend Folio 邪魔典纸

function ACL:FuzzyPickleAddon(itemid,itemtype,referencename,partial)--This item references something else? 该道具是否为一个捏他道具？
    if FiendFolio then
        table.insert(FiendFolio.ReferenceItems[itemtype],{ID=itemid,Reference=referencename,Partial=partial})
        if printing then print(itemid.." is a reference to "..referencename) end
    end
end
--itemid (int) The id of the item 道具的ID
--itemtype (string) The type of the item 道具的类型
    --Actives  Passives Trinkets
--referencename (string) What do this item reference? 该道具是什么内容的致敬？
--partial (boolean) If this item is a partial reference? 该道具是否为不完全捏他？

function ACL:LoadedDiceAddon(itemid)--This item is stackable? 该道具是否有可叠加效果？
    if FiendFolio then
        FiendFolio.StackableItems[itemid]=true 
        if printing then print(itemid.." can be rerolled by Loaded D6") end
    end
end

--Reverie 幻想曲

function ACL:DFlipPairsAddon(Dflist)--This item has another symmetry item 该道具是否有另一个道具对应
    if Reverie and THI then
        THI.Collectibles.DFlip:AddFixedPair(Dflist[1],Dflist[2],Dflist[3],Dflist[4],Dflist[5],Dflist[6]) 
        if printing then print(Dflist[3].." and "..Dflist[6].." can be rerolled into each other by D Flip") end
    end
end
--Dflist = { Obj1Type , Obj1Variant , Obj1SubType , Obj2Type , Obj2Variant , Obj2Subtype }

function ACL:PaperitemAddon(itemid,type)--This item is a paper item? 该道具是否为纸质道具？
    if Reverie and THI then
        if type=="collectible" then
            THI.Collectibles.PortableCopier:AddPaperCollectible(itemid)
            if printing then print(itemid.." is a paper item") end
        elseif type=="trinket" then
            THI.Collectibles.PortableCopier:AddPaperTrinket(itemid)
            if printing then print(itemid.." is a paper trinket") end
        else print("[ACL] There's something wrong in your paper type?") end
    end
end

function ACL:ReverieTransAddon(itemid,form)
    if Reverie and THI then do -- Special thanks to ReverieMGO  代码指导：幻想曲·拾遗
        local function hasTransformationItem(form, id)
            for i, item in ipairs(form.Collectibles) do
                if item == id then
                    return true
                end
            end
            return false
        end

        local function addItemToTransformations(form, items)
            if not form or not form.Collectibles then return end
            for _, item in pairs(items) do
                if not hasTransformationItem(form, item) then
                    table.insert(form.Collectibles, item)
                    if EID then
                        EID:assignTransformation("collectible", item, form.Key);
                    end
                end
            end
        end

        local Musician = THI.Transformations.Musician -- 音乐家套装 About music?
        local Kindred = THI.Transformations.Kindred -- 血族套装 About blood?
        local Stoney = THI.Transformations.Stoney -- 石头套装 About stone?

        if form=="Music" then addItemToTransformations(Musician, {itemid})
        elseif form=="Blood" then addItemToTransformations(Kindred, {itemid})
        elseif form=="Stone" then addItemToTransformations(Stoney, {itemid})
        else print("[ACL] There's something wrong in your transformation type?") end
        if printing then print(itemid.." now belongs to "..form) end
end end end

function ACL:IceAddon(itemid)--This item is related to ice? 该道具是否为冰属性?
    if ReverieMGO then
        table.insert(ReverieMGO.Collectibles.FrostOrb.IceItems,itemid)
        if printing then print(itemid.." can buff Frost Orb") end
    end
end

--Daydream all day 白日梦

function ACL:PDDfakeAddon(itemid,fakeitemid)--Do you want to sold this as a disguised or disguising item? 是否要出售该道具？
    if ddad then
        table.insert(ddad.data.fakeShopCollectibleList,{itemid,fakeitemid})
        if printing then print(itemid.." can appear in fake member card's shop... wait no it's actually "..fakeitemid) end
    end
end
--Fake Member Card offers an additional shop that solds items cheaper, but there will have a high chance for that item to be fake
--itemid means the item you see, fakeitemid means the probable fake deal that item might be  itemid是你看到的道具, fakeitemid则可能是皮囊下伪装的道具

function ACL:FestiveAddon(month , day , rule , list , name)--Do you want to add a memorable "festival"? 是否要加入一个特定日期的大日子？
    if ddad then
        ddad:AddFestival(month , day , rule , list , name)
        if printing then print(string.format("The gift will be served at %02d/%02d",list[1],list[2])) end
    end
end
--month (int)
--day (int)
    --exp: month=5 day=4 -> May 4th 五月四日
--rule (string) some rule for the day (if no, then this should be nil) 对于日期的规则，如果没有规则请输入nil
    -- "L" the day is in Lunar Calendar 农历日期
    -- "Q" solar term 节气，如Q1代表立春
    -- "R" this is used for Easter 复活节
    -- "W??" "W20" means the 2nd Sunday in the certain month "W20" 表示某月的第 2 个星期日
    -- "WF?" "WF3" means the last Saturday in the certain month "WF3" 表示某月的最后一个星期三
    -- "~E" 1 day ahead 提前一天
--list (table) what should be offerred during that day 那天会提供什么东西?
    --exp: {"c628",            "t28",       "p1",           "k89",          "10",               "20,1"}
    --means Death Certificate, Broken Ankh, Bad Trip pill, Soul of Lazarus, random heart pickup, 1 penny
--name (table) the name of that day (table is used for localization) 日期的名字(列表的目的是支持多语言)
    --exp:{ en="birthday, Isaac" , zh="祝以撒生日" }
    --these text will be shown in EID 这些文本会在EID内展示, 如
    --Happy birthday, Isaac   祝以撒生日快乐

--Balatro 小丑牌

function ACL:SteelAddon(itemid)--If this item is a steel item 是否为钢铁道具
    if BalatroJokers then
        table.insert(BalatroJokers.Enums.SteelItems,itemid)
        if printing then print(itemid.." can buff Steel Joker") end
    end
end

function ACL:GoldenAddon(itemid)--If this item is a gold item 是否为金道具
    if BalatroJokers then
        table.insert(BalatroJokers.Enums.GoldenItems,itemid)
        if printing then print(itemid.." can buff Golden TIcket") end
    end
end

function ACL:FemaleAddon(itemid)--If this item is a female item 是否为女性道具
    if BalatroJokers then
        table.insert(BalatroJokers.Enums.FemaleItemsEdgeCase,itemid)
        if printing then print(itemid.." can buff Shoot The Moon & Triboulet") end
    end
end

--Shared 共用部分？

function ACL:DiseaseAddon(itemid)--This item is related to disease? 该道具是否为疾病类道具？
    if Reverie and THI then
        THI.Collectibles.MedicalRecords.Diseases[itemid]=true
        if printing then print(itemid.." can be spawned by Medical Records") end
    end
    if Isaac_BenightedSoul then
        table.insert(Isaac_BenightedSoul.IBS_Lib.Pools.DiseaseItemList,itemid)
        if printing then print(itemid.." can be removed by Panacea") end
    end
end

function ACL:GlassAddon(itemid)--If this item is a glass item 是否为玻璃道具
    if BalatroJokers then
        table.insert(BalatroJokers.Enums.GlassItems,itemid)
        if printing then print(itemid.." can buff Glass Joker") end
    end
    if MilkshakeVol1 then
        MilkshakeVol1.API:AddItemsToGlassPool({Collectible = itemid, Weight = 1, DecreaseBy = 1, RemoveOn = 0.1})
        if printing then print(itemid.." can be spawned by Spirit Kiln Brenda") end
    end
end
