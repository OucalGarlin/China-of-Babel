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
			en="Some simple synergies like",
			zh="比较简单的兼容, 例如:"
		},WackySyn2={
			en="D-Flip from Reverie, Fake Member Card from DDAD...",
			zh="幻想曲的镜像骰子, 白日梦的拼少少等"
		},WackySyn3={
			en="Restart the game to accept the change below!",
			zh="以下设置可能需要重启游戏以生效!"
		},AcBlur={
			en="Accurate Blurbs!",
			zh="更精确的道具描述!"
		},AcblInfo1={
			en="pick-up description matches their in-game effects better",
			zh="道具拾取后的描述更贴近实际效果"
		},AcblInfo2={
			en="also requires RGON",
			zh="同样依赖忏悔龙"
		},Tips={
			en="You can help to consummate these tricks(?",
			zh="欢迎提出宝贵意见优化这些私货(?"
		},DescTran={
			en="Translated Item Name and Desc",
			zh="汉化道具拾取后名称和描述"
		},DescTranInfo1={
			en="Translate hud on pick up into Chinese!",
			zh="将拾取道具显示的文本也翻译"
		},DescTranInfo2={
			en="Requires RGON and might have some incompatible?",
			zh="依赖忏悔龙, 且可能暗藏不兼容?"
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
	ModConfigMenu.AddSpace(ModName, "Settings")
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
				Mod:SaveModData()
			end,
			Info = {Txt(loadEN,"betterQualityInfo1"), Txt(loadEN,"betterQualityInfo2")}
		}
	)
	ModConfigMenu.AddSpace(ModName, "Settings")
	ModConfigMenu.AddText(ModName,"Settings",Txt(loadEN,"WackySyn3"))	
	ModConfigMenu.AddSetting(
		ModName,
		"Settings",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return Mod.Setting.DescTrans
			end,
			Display = function()
				return Txt(loadEN,"DescTran") .. Opt(Mod.Setting.DescTrans)
			end,
			OnChange = function(b)
				Mod.Setting.DescTrans = b
				Mod:SaveModData()
			end,
			Info = {Txt(loadEN,"DescTranInfo1"), Txt(loadEN,"DescTranInfo2")}
		}
	)
	ModConfigMenu.AddSpace(ModName, "Settings")
	ModConfigMenu.AddSetting(
		ModName,
		"Settings",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return Mod.Setting.AccurateBlurb
			end,
			Display = function()
				return Txt(loadEN,"AcBlur") .. Opt(Mod.Setting.AccurateBlurb)
			end,
			OnChange = function(b)
				Mod.Setting.AccurateBlurb = b
				Mod:SaveModData()
			end,
			Info = {Txt(loadEN,"AcblInfo1"), Txt(loadEN,"AcblInfo2")}
		}
	)
	ModConfigMenu.AddSpace(ModName, "Settings")
	ModConfigMenu.AddSetting(
		ModName,
		"Settings",
		{
			Type = ModConfigMenu.OptionType.BOOLEAN,
			CurrentSetting = function()
				return Mod.Setting.FancySyn
			end,
			Display = function()
				return Txt(loadEN,"WackySyn") .. Opt(Mod.Setting.FancySyn)
			end,
			OnChange = function(b)
				Mod.Setting.FancySyn = b
				Mod:SaveModData()
			end,
			Info = {Txt(loadEN,"WackySyn1"), Txt(loadEN,"WackySyn2")}
		}
	)
	ModConfigMenu.AddSpace(ModName, "Settings")
	ModConfigMenu.AddText(ModName,"Settings",Txt(loadEN,"Tips"))	
else Mod.Setting=Mod.DefaultSetting
end
