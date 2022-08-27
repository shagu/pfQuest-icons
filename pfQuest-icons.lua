-- detect current addon path
local addonpath
local tocs = { "", "-master", "-tbc", "-wotlk" }
for _, name in pairs(tocs) do
  local current = string.format("pfQuest-icons%s", name)
  local _, title = GetAddOnInfo(current)
  if title then
    addonpath = "Interface\\AddOns\\" .. current
    break
  end
end

-- get the current localization from spawn id
local push_icon = function(id, texture)
  if pfDB["objects"]["loc"][id] then
    pfQuest.icons[pfDB["objects"]["loc"][id]] = texture
  end
end

-- load icons into pfQuest.icons
if not pfQuest.icons then
  DEFAULT_CHAT_FRAME:AddMessage("|cff33ffccpf|cffffffffQuest-Icons: A newer version of pfQuest is required.")
  DEFAULT_CHAT_FRAME:AddMessage("  You can get the latest version from: https://shagu.org/pfQuest")
else
	-- /db mines
  push_icon(1731, addonpath .. "\\mines\\Copper") -- Copper Vein
  push_icon(1732, addonpath .. "\\mines\\Tin") -- Tin Vein
  push_icon(1733, addonpath .. "\\mines\\Silver") -- Silver Vein
  push_icon(73940, addonpath .. "\\mines\\Silver") -- Ooze Covered Silver Vein
  push_icon(1735, addonpath .. "\\mines\\Iron") -- Iron Deposit
  push_icon(1734, addonpath .. "\\mines\\Gold") -- Gold Vein
  push_icon(73941, addonpath .. "\\mines\\Gold") -- Ooze Covered Gold Vein
  push_icon(2040, addonpath .. "\\mines\\Mithril") -- Mithril Deposit
  push_icon(123310,addonpath .. "\\mines\\Mithril") -- Ooze Covered Mithril Deposit
  push_icon(2047, addonpath .. "\\mines\\TrueSilver") -- Truesilver Deposit
  push_icon(123309,addonpath .. "\\mines\\TrueSilver") -- Ooze Covered Truesilver Deposit
  push_icon(324, addonpath .. "\\mines\\Thorium") -- Small Thorium Vein
  push_icon(123848,addonpath .. "\\mines\\Thorium") -- Ooze Covered Thorium Vein
  push_icon(180215,addonpath .. "\\mines\\Thorium") -- Hakkari Thorium Vein
  push_icon(175404,addonpath .. "\\mines\\RichThorium") -- Rich Thorium Vein
  push_icon(177388,addonpath .. "\\mines\\RichThorium") -- Ooze Covered Rich Thorium Vein
  push_icon(165658,addonpath .. "\\mines\\DarkIron") -- Dark Iron Deposit
  push_icon(2653, addonpath .. "\\mines\\LesserBloodstone") -- Lesser Bloodstone Deposit
  push_icon(181555,addonpath .. "\\mines\\FelIron") -- Fel Iron Deposit
  push_icon(181556,addonpath .. "\\mines\\Adamantite") -- Adamantite Deposit
  push_icon(181569,addonpath .. "\\mines\\Adamantite") -- Rich Adamantite Deposit
  push_icon(181557,addonpath .. "\\mines\\Khorium") -- Khorium Vein
  push_icon(185877,addonpath .. "\\mines\\Nethercite") -- Nethercite Deposit

	-- /db herbs
  push_icon(142141, addonpath .. "\\herbs\\ArthasTears") -- Arthas' Tears
  push_icon(176589, addonpath .. "\\herbs\\BlackLotus") -- Black Lotus
  push_icon(142143, addonpath .. "\\herbs\\Blindweed") -- Blindweed
  push_icon(1621, addonpath .. "\\herbs\\Briarthorn") -- Briarthorn
  push_icon(1622, addonpath .. "\\herbs\\Bruiseweed") -- Bruiseweed
  push_icon(176584, addonpath .. "\\herbs\\Dreamfoil") -- Dreamfoil
  push_icon(1619, addonpath .. "\\herbs\\Earthroot") -- Earthroot
  push_icon(2042, addonpath .. "\\herbs\\Fadeleaf") -- Fadeleaf
  push_icon(2866, addonpath .. "\\herbs\\Firebloom") -- Firebloom
  push_icon(142144, addonpath .. "\\herbs\\GhostMushroom") -- Ghost Mushroom
  push_icon(176583, addonpath .. "\\herbs\\GoldenSansam") -- Golden Sansam
  push_icon(2046, addonpath .. "\\herbs\\Goldthorn") -- Goldthorn
  push_icon(1628, addonpath .. "\\herbs\\GraveMoss") -- Grave Moss
  push_icon(142145, addonpath .. "\\herbs\\Gromsblood") -- Gromsblood
  push_icon(176588, addonpath .. "\\herbs\\Icecap") -- Icecap
  push_icon(2043, addonpath .. "\\herbs\\KhadgarsWhisker") -- Khadgar's Whisker
  push_icon(1624, addonpath .. "\\herbs\\Kingsblood") -- Kingsblood
  push_icon(2041, addonpath .. "\\herbs\\Liferoot") -- Liferoot
  push_icon(1620, addonpath .. "\\herbs\\Mageroyal") -- Mageroyal
  push_icon(176586, addonpath .. "\\herbs\\MountainSilversage") -- Mountain Silversage
  push_icon(1618, addonpath .. "\\herbs\\Peacebloom") -- Peacebloom
  push_icon(176587, addonpath .. "\\herbs\\Plaguebloom") -- Plaguebloom
  push_icon(142140, addonpath .. "\\herbs\\PurpleLotus") -- Purple Lotus
  push_icon(1617, addonpath .. "\\herbs\\Silverleaf") -- Silverleaf
  push_icon(2045, addonpath .. "\\herbs\\Stranglekelp") -- Stranglekelp
  push_icon(142142, addonpath .. "\\herbs\\Sungrass") -- Sungrass
  push_icon(1623, addonpath .. "\\herbs\\WildSteelbloom") -- Wild Steelbloom
  push_icon(2044, addonpath .. "\\herbs\\Wintersbite") -- Wintersbite
  push_icon(181270, addonpath .. "\\herbs\\Felweed") -- Felweed
  push_icon(181271, addonpath .. "\\herbs\\DreamingGlory") -- Dreaming Glory
  push_icon(181166, addonpath .. "\\herbs\\Stranglekelp") -- Bloodthistle
  push_icon(181275, addonpath .. "\\herbs\\Ragveil") -- Ragveil
  push_icon(181276, addonpath .. "\\herbs\\FlameCap") -- Flame Cap
  push_icon(181277, addonpath .. "\\herbs\\Terocone") -- Terocone
  push_icon(181278, addonpath .. "\\herbs\\AncientLichen") -- Ancient Lichen
  push_icon(181279, addonpath .. "\\herbs\\Netherbloom") -- Netherbloom
  push_icon(181280, addonpath .. "\\herbs\\NightmareVine") -- Nightmare Vine
  push_icon(181281, addonpath .. "\\herbs\\ManaThistle") -- Mana Thistle
  push_icon(185881, addonpath .. "\\herbs\\Netherdust") -- Netherdust Bush
	push_icon(157936, addonpath .. "\\herbs\\GraveMoss") -- Un'Goro Dirt Pile

	-- /db chests
  push_icon(2039, addonpath .. "\\chests\\Chest") -- Hidden Strongbox
  push_icon(2744, addonpath .. "\\chests\\Clam") -- Giant Clam
  push_icon(2843, addonpath .. "\\chests\\Chest") -- Battered Chest
  push_icon(2844, addonpath .. "\\chests\\Chest") -- Tattered Chest
  push_icon(2850, addonpath .. "\\chests\\Chest") -- Solid Chest
  push_icon(3658, addonpath .. "\\chests\\Barrel") -- Water Barrel
  push_icon(3659, addonpath .. "\\chests\\Barrel") -- Barrel of Melon Juice
  push_icon(3660, addonpath .. "\\chests\\Crate") -- Armor Crate
  push_icon(3661, addonpath .. "\\chests\\Crate") -- Weapon Crate
  push_icon(3662, addonpath .. "\\chests\\Crate") -- Food Crate
  push_icon(3705, addonpath .. "\\chests\\Barrel") -- Barrel of Milk
  push_icon(3706, addonpath .. "\\chests\\Barrel") -- Barrel of Sweet Nectar
  push_icon(3714, addonpath .. "\\chests\\Chest") -- Alliance Strongbox
  push_icon(19019, addonpath .. "\\chests\\Crate") -- Box of Assorted Parts
  push_icon(142191, addonpath .. "\\chests\\Crate") -- Horde Supply Crate
  push_icon(176582, addonpath .. "\\chests\\ShellfishTrap") -- Shellfish Trap
  push_icon(178244, addonpath .. "\\chests\\Footlocker") -- Practice Lockbox
  push_icon(179486, addonpath .. "\\chests\\Footlocker") -- Battered Footlocker
  push_icon(179487, addonpath .. "\\chests\\Footlocker") -- Waterlogged Footlocker
  push_icon(179492, addonpath .. "\\chests\\Footlocker") -- Dented Footlocker
  push_icon(179493, addonpath .. "\\chests\\Footlocker") -- Mossy Footlocker
  push_icon(179498, addonpath .. "\\chests\\Footlocker") -- Scarlet Footlocker
  push_icon(176213, addonpath .. "\\chests\\BloodHero") -- Blood of Heroes
  push_icon(164881, addonpath .. "\\chests\\NightDragon") -- Cleansed Night Dragon
  push_icon(164882, addonpath .. "\\chests\\Songflower") -- Cleansed Songflower
  push_icon(164883, addonpath .. "\\chests\\WhipperRoot") -- Cleansed Whipper Root
  push_icon(164884, addonpath .. "\\chests\\WindBlossom") -- Cleansed Windblossom
  push_icon(182053, addonpath .. "\\chests\\Glowcap") -- Glowcap
  push_icon(74447, addonpath .. "\\chests\\Chest") -- Large Iron Bound Chest
  push_icon(74448, addonpath .. "\\chests\\Chest") -- Large Solid Chest
  push_icon(75293, addonpath .. "\\chests\\Chest") -- Large Battered Chest
  push_icon(131978, addonpath .. "\\chests\\Chest") -- Large Mithril Bound Chest
  push_icon(131979, addonpath .. "\\chests\\Chest") -- Large Darkwood Chest
  push_icon(184930, addonpath .. "\\chests\\Chest") -- Solid Fel Iron Chest
  push_icon(184931, addonpath .. "\\chests\\Chest") -- Bound Fel Iron Chest
  push_icon(184936, addonpath .. "\\chests\\Chest") -- Bound Adamantite Chest
  push_icon(184939, addonpath .. "\\chests\\Chest") -- Solid Adamantite Chest
  push_icon(28604, addonpath .. "\\chests\\Crate") -- Scattered Crate
  push_icon(185915, addonpath .. "\\chests\\Egg") -- Netherwing Egg
  push_icon(123330, addonpath .. "\\chests\\Footlocker") -- Buccaneer's Strongbox
  push_icon(181665, addonpath .. "\\chests\\Footlocker") -- Burial Chest
  push_icon(184793, addonpath .. "\\chests\\Footlocker") -- Primitive Chest
  push_icon(184740, addonpath .. "\\chests\\Footlocker") -- Wicker Chest
  push_icon(181798, addonpath .. "\\chests\\Chest") -- Fel Iron Chest
  push_icon(181800, addonpath .. "\\chests\\Chest") -- Heavy Fel Iron Chest
  push_icon(181802, addonpath .. "\\chests\\Chest") -- Adamantite Bound Chest
  push_icon(181804, addonpath .. "\\chests\\Chest") -- Felsteel Chest
end
