local Mod=CNEIDBabel
local ModName="C_Babel"

if ModConfigMenu then
	local loadEN = true
	local focusL = nil
	if ModConfigMenu.i18n == "Chinese" then
		loadEN = false
		focusL = "zh"
	end
-- FUNCTION
	local OnOff = {"On", "Off"}
	local function Opt(open)
		if open then
			return OnOff[1]
		else
			return OnOff[2]
		end
	end
    local SettingTxt={
        betterQuality={
            zh="更好的道具品质",
            en="Better Item Quality",
        },betterQualityInfo1={
            zh="如果你觉得这个道具品质有够狗屎的, 请开启",
            en="I adjusted the quality cause it's like piece of shit"
        },betterQualityInfo2={
            zh="警告: 仅改变EID而不改变实际的道具品质",
            en="THIS ONLY CHANGES THE EID"
        },Info1={
			en="A collection of most English mods' Chinese translation. For some reason we also offers some fancy things(?)",
			zh="英文模组汉化合集! 出于某些原因我塞了不少私货(?"
		},Info2={
			en="Translated by Oucal Garlin",
			zh="译者: OucalGarlin"
		},Info3={
			en="Some code support by Golden_Shit",
			zh="代码帮助: Golden_Shit"
		},Info4={
			en="(and some codes I... eh...",
			zh="以及...额..."
		},Info5={
			en="stole them from other mods... sorry)",
			zh="从其他模组偷来的代码? 我摆了反正((("
		},Tricks={
			en="Tricks",
			zh="私货"
		},WackySyn={
			en="Wacky Synergies!",
			zh="一些花哨的模组兼容!"
		},WackySyn1={
			en="...well, there's nothing for now =(",
			zh="...但是目前什么也没有=("
		},WackySyn2={
			en="You can disable synergies \nwith other mods in main.lua",
			zh="若要关闭这些私货模组兼容, \n请手动在main.lua中关闭"
		},WackySyn3={
			en="Finds mod.Setting and \nchange FancySyn into false",
			zh="找到 mod.Setting , \n并将下面的 FancySyn 改为 =false"
		}
    }
    local function Txt(lan,typ)
        if lan then return SettingTxt[typ].en
        else return SettingTxt[typ].zh end
    end
-- SETTING
    ModConfigMenu.SetCategoryInfo(ModName,Txt(loadEN,"Info1"))
    ModConfigMenu.AddSpace(ModName, "Info");
    ModConfigMenu.AddText(ModName, "Info", ModName)
    ModConfigMenu.AddSpace(ModName, "Info")
    ModConfigMenu.AddText(ModName, "Info",Txt(loadEN,"Info2"))
    ModConfigMenu.AddText(ModName, "Info",Txt(loadEN,"Info3"))
    ModConfigMenu.AddText(ModName, "Info",Txt(loadEN,"Info4"))
    ModConfigMenu.AddText(ModName, "Info",Txt(loadEN,"Info5"))
    ModConfigMenu.AddText(ModName, "Settings",Txt(loadEN,"Tricks"))
	ModConfigMenu.AddSetting(
		ModName,
		"Settings",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return Mod.Setting.betterQuality
			end,
			Display = function()
				return Txt(loadEN,"betterQuality") .. Opt(Mod.Setting.betterQuality)
			end,
			OnChange = function(b)
				Mod.Setting.betterQuality = b
				--Mod:SaveModData()
			end,
			Info = {Txt(loadEN,"betterQualityInfo1"), Txt(loadEN,"betterQualityInfo2")}
		}
	)
	ModConfigMenu.AddSpace(ModName, "Settings")
	ModConfigMenu.AddText(ModName, "Settings",Txt(loadEN,"WackySyn"))
	ModConfigMenu.AddSpace(ModName, "Settings")
	ModConfigMenu.AddSpace(ModName, "Settings")
	ModConfigMenu.AddText(ModName,"Settings",Txt(loadEN,"WackySyn1"))
	ModConfigMenu.AddText(ModName,"Settings",Txt(loadEN,"WackySyn2"))
	ModConfigMenu.AddText(ModName,"Settings",Txt(loadEN,"WackySyn3"))	
end
