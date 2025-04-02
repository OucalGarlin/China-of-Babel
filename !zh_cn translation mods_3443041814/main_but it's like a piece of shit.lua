local mod=RegisterMod("ChineseEIDBabel", 1)
local Icons=Sprite()
Icons:Load("gfx/eid.anm2",true)
Garlin=mod
local game=Game()
mod.ToBeAdded={
    Items={{Isaac.GetItemIdByName("README"),"必读条目","请开启EID以阅读",
        "EID汉化作者为“悟克拉·伽林”#{{GarlinIcon}} 如果你看到了这个记号, 意味着这句话的翻译为个人补充或调整#{{IGIcon}} 这个记号开头的意思则意为翻译根据Isaacguru的维基网站进行了修正或详细化#{{CurseBlind}} 不确定的翻译, 实际游玩时的效果有可能与这句不符#本人并非专业翻译, 若认为翻译有些许不当, 欢迎联系本人b站账号"},
    },
    Trinkets={}
}--将所有需要翻译的模组内容加入这个列表中 Add all items into the table
--                                               Basic EID   Improved      HUD         UI
include("availablemods/lost&forgotton")     --      √           √           √           N
include("availablemods/LazyPack_Update")    --      √           N           √           N
include("availablemods/CuriosityCrate")     --      √           x           √           N
include("availablemods/KNGBetter")          --      √           √           x           N
include("availablemods/Road2Enlightment")   --      √           √           √           x
--include("availablemods/Benevolence")      to be continue
--include("availablemods/Elitium")          to be continue
--include("availablemods/Baphomet")         to be continue

if #mod.ToBeAdded.Items ~= 0 then--尝试修改拾取时道具的描述 Change the description when lifting an item !!!NOT RECOMMENDED IN REP+!!!
    local i_queueLastFrame
    local i_queueNow
    mod:AddCallback(ModCallbacks.MC_POST_PLAYER_UPDATE, function (_, player)
        i_queueNow = player.QueuedItem.Item
        if (i_queueNow ~= nil) then
            for _, item in ipairs(mod.ToBeAdded.Items) do
                if (i_queueNow.ID == item[1] and i_queueNow:IsCollectible() and i_queueLastFrame == nil) then
                    game:GetHUD():ShowItemText(item[2], item[3])
                end
            end
        end
        i_queueLastFrame = i_queueNow
    end)
end 
if EID and #mod.ToBeAdded.Items ~= 0 then--尝试添加道具的EID Add the EID for the items
    for _, i in ipairs(mod.ToBeAdded.Items) do
		EID:addCollectible(i[1], i[4], i[2], "zh_cn")
	end
    EID:addIcon("GarlinIcon","0",-1,16,15,4,4,Icons)
    EID:addIcon("IGIcon","1",-1,16,16,4,4,Icons)
    --EID:addCollectible(Isaac.GetItemIdByName("README"),"EID汉化作者为“悟克拉·伽林”#{{GarlinIcon}} 如果你看到了这个记号, 意味着这句话的翻译为个人补充或调整#{{IGIcon}} 这个记号开头的意思则意为翻译根据Isaacguru的维基网站进行了修正或详细化#{{CurseBlind}} 不确定的翻译, 实际游玩时的效果有可能与这句不符#本人并非专业翻译, 若认为翻译有些许不当, 欢迎联系本人b站账号","必读条目","zh_cn")
    EID:addCollectible(Isaac.GetItemIdByName("README"),"Translation by OucalGarlin#{{GarlinIcon}} If you see this icon, it means that I made some adjustments on these words or add some new things#{{IGIcon}} Some descriptions are detailed thanks to Isaacguru's website#!!! Sorry that I'm not a professional translator :(")
end
print("please input g readme to read some important message")
print("本模组添加了部分特殊的标记(当然就算没有这个模组也不怎么影响正常游玩), 若要了解这些标记的意思请在控制台输入g readme")