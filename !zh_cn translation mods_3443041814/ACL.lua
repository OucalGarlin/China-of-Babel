local ACL --Additional Compatibles Library -- Portable compatible functions? 便携式模组兼容函数库?
local printing=false --Set this to true so there will have printed information if synergies are successfully added 调试模式：将该项设为true后即刻在控制台看到成功加载的输出
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
        else print("There's something wrong in your paper type?") end
    end
end

function ACL:IceAddon(itemid)--This item is related to ice? 该道具是否为冰属性?
    if ReverieMGO then
        table.insert(THI.Collectibles.FrostOrb.IceItems,itemid)
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

--Balatro 小丑牌

function ACL:GlassAddon(itemid)--If this item is a glass item 是否为玻璃道具
    if BalatroJokers then
        table.insert(BalatroJokers.Enums.GlassItems,itemid)
        if printing then print(itemid.." can buff Glass Joker") end
    end
end

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
        THI.Collectible.MedicalRecords.Diseases[itemid]=true
        if printing then print(itemid.." can be spawned by Medical Records") end
    end
    if Isaac_BenightedSoul then
        table.insert(Isaac_BenightedSoul.IBS_Lib.Pools.DiseaseItemList,itemid)
        if printing then print(itemid.." can be removed by Panacea") end
    end
end
