require "Bimbol Engine/require"

--[[
	Hi :)
	This is a short example of functionality Bimbol Engine.
	You can also see how to use it.
	Have fun! :D
]]

-- Save player after death and read all in spawn
enableSavePlayerAfterDeath(true);
-- AI Init
ai_Init(true);
-- WayPoints Init
wp_Init(10, true);
-- GUI Init
gui_Init(true);
-- Enable Key
Enable_OnPlayerKey(1);

--[[
	I noticed bug with GMP function GetAngleToPos :(
]]

-- Create Instance of Monster: Young Scavenger

addMonster("YSCAVENGER", 
{
	ai = "ANIMAL",
	name = "Young Scavenger",
	instance = "SCAVENGER",
	str = 5,
	dex = 5,
	skill_1h = 0,
	skill_2h = 0,
	skill_bow = 0,
	skill_cbow = 0,
	lvl = 3,
	hp = 500,
	mp = 0,
	exp = 20,
	min_dist = 250,
	max_dist = 700,
	respawn = 15, -- работает не как надо
	blow_time = 2,
});

addMonster("DEMON", 
{
	ai = "ANIMAL",
	name = "Demon",
	instance = "DEMON",
	str = 400,
	dex = 500,
	skill_1h = 0,
	skill_2h = 0,
	skill_bow = 0,
	skill_cbow = 0,
	lvl = 50,
	hp = 3400,
	mp = 0,
	exp = 1200,
	min_dist = 400,
	max_dist = 800,
	respawn = 35, -- работает не как надо
	blow_time = 2,
});

-- Create Instance of Monster: Orc Warrior
addMonster("ORCWARRIOR_HARAD", 
{
	ai = "2H",
	name = "Orc Warrior",
	instance = "ORCWARRIOR_HARAD",
	str = 100,
	dex = 100,
	skill_1h = 0,
	skill_2h = 30,
	skill_bow = 0,
	skill_cbow = 0,
	lvl = 30,
	hp = 600,
	mp = 0,
	exp = 300,
	min_dist = 350,
	max_dist = 1100,
	respawn = 15, -- работает не как надо
	blow_time = 3,
	weapon = "ITMW_2H_ORCAXE_01",
});

-- Create Instance of Monster: Pirate
addMonster("PIRATE", 
{
	ai = "1H",
	name = "Pirate",
	instance = "PC_HERO",
	str = 100,
	dex = 100,
	skill_1h = 80,
	skill_2h = 0,
	skill_bow = 0,
	skill_cbow = 0,
	lvl = 25,
	hp = 250,
	mp = 0,
	exp = 250,
	min_dist = 300,
	max_dist = 1100,
	respawn = 10, -- работает не как надо
	blow_time = 3,
	armor = "ITAR_PIR_H_ADDON",
	weapon = "ITMW_ADDON_BANDITTRADER",
});

-- Spawning Monsters:
-- instance, x, y, z, amount, world, distance, aggressive
spawnMonster("YSCAVENGER", 0, 0, 2000, 3, "NEWWORLD\\NEWWORLD.ZEN", 200, true);
spawnMonster("DEMON", 15630.525390625, 992.08135986328, -4615.9399414062, 1, "NEWWORLD\\NEWWORLD.ZEN", 36, true);
spawnMonster("ORCWARRIOR_HARAD", 0, 0, -1700, 1, "NEWWORLD\\NEWWORLD.ZEN", 50, true);
spawnMonster("PIRATE", 0, 0, -2400, 1, "NEWWORLD\\NEWWORLD.ZEN", 50, true);

-- WayPoints
addWayPoint("WP_1", 4070.220703125, -1714.0919189453);
addWayPoint("WP_2", 2670.4536132813, -1706.8742675781);
addWayPoint("WP_3", 297.10794067383, -1572.4114990234);
addWayPoint("WP_4", 462.95269775391, 375.03863525391);
addWayPoint("WP_5", 349.64276123047, 2102.1020507813);
addWayPoint("WP_6", -438.34634399414, 3222.5415039063);
addWayPoint("WP_7", -199.54040527344, -4276.8549804688);
addWayPoint("WP_8", -2708.3471679688, -4310.9145507813);
addWayPoint("WP_9", 2631.8308105469, -4189.2651367188);
addWayPoint("WP_10", 4639.64453125, -4773.7797851563);

-- WayPoint Connections
connectWayPoints("WP_1", "WP_2", true);
connectWayPoints("WP_2", "WP_3", true);
connectWayPoints("WP_3", "WP_4", true);
connectWayPoints("WP_4", "WP_5", true);
connectWayPoints("WP_5", "WP_6", true);
connectWayPoints("WP_3", "WP_7", true);
connectWayPoints("WP_7", "WP_8", true);
connectWayPoints("WP_7", "WP_9", true);
connectWayPoints("WP_9", "WP_2", true);
connectWayPoints("WP_9", "WP_10", true);

local npc = createNPC(
"WayPoints - Tester", 
"Hum_Body_Naked0", 
2, 
"Hum_Head_Pony", 
68,
"",
"PC_HERO",
0, 0, 0,
0,
"NEWWORLD\\NEWWORLD.ZEN",
nil, nil, "ITAR_VLK_H");

local FocusNPC_Texture = CreateTexture(2600, 6650, 5750, 7350, "DLG_CONVERSATION.TGA");
local FocusNPC_Draw = CreateDraw(3350, 6900, "Press CTRL to talk to NPC", "Font_Old_10_White_Hi.TGA", 0, 255, 255);
local timedraw = CreateDraw(150, 7350, "Time:", "Font_Old_10_White_Hi.TGA", 255, 255, 255);
local rt = CreateDraw(150, 7350, "Time:", "Font_Old_10_White_Hi.TGA", 255, 255, 255);

-- Welcome Box
msgGUIBox("WELCOME", {
	"Hello, this is a test Gamemode written in Bimbol Engine.",
	"You can see here some of the possibilities.",
	"For things. In the harbor there are monsters such as Orc, Pirate and Scavenger.",
	"These are examples of various types of AI. In addition, I added them to a simple",
	"system of gaining experience.",
	"",
	"Another thing that you can test it is WayPoints.",
	"Just talk to the NPC \"WayPoints - Tester\".",
	"",
	"You can also see GUI and support for keyboards.",
	"I mean bindkey and functions of the GUI.",
	"",
	"Good luck and have fun!",
	"",
	"After 30s this message will be closed."
}, 255, 255, 255, 2000, 3000, "Font_Old_10_White_Hi.TGA", "Welcome!", 2000, 2700, 0, 100, 255, nil, 30);

-- Menu WayPoints
createGUIMenu("WAYPOINTS", {
	{ "WP_1" },
	{ "WP_2" },
	{ "WP_3" },
	{ "WP_4" },
	{ "WP_5" },
	{ "WP_6" },
	{ "WP_7" },
	{ "WP_8" },
	{ "WP_9" },
	{ "WP_10" },
	{ "(END)" },
--	             |- Colours -|
}, 255, 255, 255, 0, 255, 255, 1400, 6950, "Font_Old_10_White_Hi.TGA", CreateTexture(1250, 6800, 6600, 8200, "DLG_CONVERSATION.TGA"), 6);

-- Use this command to Stop NPC
addCommandHandler("/stop", function(playerid, param)
	stopFollowWayPointPath(npc);
	SendPlayerMessage(playerid, 0, 255, 0, "You stopped NPC");
end);

addCommandHandler("/nick", function(playerid, param)
	SetNicknameFont("Font_Old_20_White.TGA")
    SendMessageToAll(255, 255, 0, "We have big font in nicknames!")
end);

addCommandHandler("/coord", function( playerid, params )
	local p_x, p_y, p_z = GetPlayerPos(playerid);
	local p_a = GetPlayerAngle(playerid);
	SendPlayerMessage(playerid,255,250,0,"(ИНФО): Текущие координаты - "..p_x.."  "..p_y.."  "..p_z.." "..p_a);
    CMD_SavePosition(playerid,params);
end);

addCommandHandler("/online", function(playerid, param)
	local amount, Playa = GetOnlinePlayers()
        if amount ~= nil then
            for i = 0, GetMaxPlayers() - 1 do
	    local message = string.format("%s %s","Players online: ",Playa)
        SendPlayerMessage(playerid,255,0,0,message);
		end
	end

end);

addCommandHandler("/world", function(playerid, param)
        SetPlayerWorld(playerid,"MMO.ZEN","START") --After world load player will spawned at waypoint "WP_INTRO13"
end);

addCommandHandler("/cam", function(playerid, param)
        local focus = GetFocus(playerid)
        if focus ~= -1 then
            SetCameraBehindPlayer(playerid, focus)
		else
		    SetDefaultCamera(playerid)
        end
end);

-- Callback of Key
local OnKey_Control, OnKey_Menu, OnKey_NPCFocus;

function OnKey_Control(playerid, key, keyState, arg)
	if GetFocus(playerid) == npc then
	    HideNPCFocus(playerid);
		showGUIMenu(playerid, "WAYPOINTS");
		removeKey(playerid, KEY_LCONTROL, "DOWN");
		bindKey(playerid, KEY_UP, "DOWN", OnKey_Menu);
		bindKey(playerid, KEY_DOWN, "DOWN", OnKey_Menu);
		bindKey(playerid, KEY_RETURN, "DOWN", OnKey_Menu);
		FreezePlayer(playerid, 1);
	end
end

function OnKey_Menu(playerid, key, keyState, arg)
	if key == KEY_UP then
		switchGUIMenuUp(playerid, "WAYPOINTS");
	elseif key == KEY_DOWN then
		switchGUIMenuDown(playerid, "WAYPOINTS");
	elseif key == KEY_RETURN then
		local opt_id = getPlayerOptionID(playerid, "WAYPOINTS");
		if opt_id ~= 11 then
			goToWayPoint(npc, "WP_" .. opt_id, "S_FISTRUNL");
		end
		-- Exit
		removeKey(playerid, KEY_UP, "DOWN");
		removeKey(playerid, KEY_DOWN, "DOWN");
		removeKey(playerid, KEY_RETURN, "DOWN");
		bindKey(playerid, KEY_LCONTROL, "DOWN", OnKey_Control);
		--bindKeyGlobal(playerid, KEY_LCONTROL, "DOWN", OnKey_NPCFocus);
		hideGUIMenu(playerid, "WAYPOINTS");
		FreezePlayer(playerid, 0);
		ShowNPCFocus(playerid);
	end
end

function OnKey_NPCFocus(playerid, key, keyState, arg)
    if GetFocus(playerid) ~= -1 and GetFocus(playerid) == npc then
		if isMonster(playerid) == false then
				HideNPCFocus(playerid);
			end
		end
	end

-- Callback from BE
function BE_OnPlayerConnect(playerid)

	-- Spawn player
	SpawnPlayer(playerid);
	
	GiveItem(playerid, "ITRW_BOW_M_02", 1);
	GiveItem(playerid, "ITRW_ARROW", 200);
	GiveItem(playerid, "ITRW_CROSSBOW_H_01", 1);
	GiveItem(playerid, "ITRW_BOLT", 200);
	GiveItem(playerid, "ITAR_DJG_H", 1);
	GiveItem(playerid, "ITMW_1H_PAL_SWORD", 1);
	GiveItem(playerid, "ITMW_2H_PAL_SWORD", 1);
	
	SetPlayerMaxHealth(playerid, 200);
	SetPlayerHealth(playerid, 200);
	SetPlayerSkillWeapon(playerid, 0, 100);
	SetPlayerSkillWeapon(playerid, 1, 100);
	SetPlayerSkillWeapon(playerid, 2, 100);
	SetPlayerSkillWeapon(playerid, 3, 100);
	SetPlayerDexterity(playerid, 200);
	SetPlayerStrength(playerid, 200);

	ShowDraw(playerid, timedraw)
	ShowDraw(playerid, rt)
	
	-- Show Welcome Box
	showGUIBox(playerid, "WELCOME");
	
	-- Key
	bindKey(playerid, KEY_LCONTROL, "DOWN", OnKey_Control);
	
	-- Add Online
	addToOnline(playerid)
end

--[[function BE_OnPlayerText(playerid, text)
local name = GetPlayerName(playerid)
        for i = 0, 10 - 1 do
            if IsPlayerConnected(i) == 1 then
                if GetDistancePlayers(playerid, i) < 1000 then --range of sending rp chat text message (1000 meters of Gothic, really this is 15 meters)
				SetPlayerColor(playerid, 255, 0, 255)
				local red, green, blue = GetPlayerColor(playerid)
				--local name = SendPlayerMessage(i, red, green, blue, string.format("%s %s %s.", name, "says:", text))
				
                    SendPlayerMessage(i, nil, nil, nil, SendPlayerMessage(i, 170, 50, 180, name),SendPlayerMessage(i, 170, 50, 180, "says:"))
                end
            end
        end
end]]

function ShowNPCFocus(playerid)
ShowTexture(playerid, FocusNPC_Texture);
ShowDraw(playerid, FocusNPC_Draw);
end

function HideNPCFocus(playerid)
HideTexture(playerid, FocusNPC_Texture);
HideDraw(playerid, FocusNPC_Draw);
end

function BE_OnPlayerFocus(playerid, focusid)
   if IsNPC(focusid) == 1 and isMonster(focusid) == false then
	ShowNPCFocus(playerid);
   else
	HideNPCFocus(playerid);
   end
end

--[[function BE_OnPlayerSpawn(monsterid)
SPAWN_AI(monsterid)
end]]

-- Time Callback (added from gmp 1.0.0)
function OnServerWorldTime(oldHour, oldMinute, newHour, newMinute)
-- Game Time
UpdateGT()
-- Real Time
UpdateRT()
end

function UpdateGT()
    local hour,minute = GetTime();
      if minute < 10 then
         UpdateDraw(timedraw,6500, 7400,"GT: " .. hour..":0"..minute, "Font_Old_10_White_Hi.TGA", 255, 255, 255);
      else
         UpdateDraw(timedraw,6500, 7400,"GT: " .. hour..":"..minute, "Font_Old_10_White_Hi.TGA", 255, 255, 255);
      end
end

function UpdateRT()
time = os.date('*t') 
    local year = time.year
	local month = time.month
	local day = time.day
	local hour = string.format( "%02d", time.hour )
	local minute = string.format( "%02d", time.min )
	local dateTag = "RT: " .. year .. "/" .. month .. "/" .. day .. " Time: " .. hour .. ":" .. minute;
	UpdateDraw(rt,6500, 7700, dateTag, "Font_Old_10_White_Hi.TGA", 255, 255, 255);
end

-- Simply level system
function OnMonsterDeath(monsterid, playerid, instance, id, experience, ai)
	-- Give Experience
	SetPlayerExperience(playerid, GetPlayerExperience(playerid) + experience);
	GameTextForPlayer(playerid, 3650, 3800, "Experience +" .. experience, "Font_Old_10_White_Hi.TGA", 255, 255, 255, 1500);
	if GetPlayerExperienceNextLevel(playerid) <= GetPlayerExperience(playerid) then -- Check next level
		SetPlayerLevel(playerid, GetPlayerLevel(playerid) + 1);
		SetPlayerExperienceNextLevel(playerid, GetPlayerExperienceNextLevel(playerid) * 1.2);
		GameTextForPlayer(playerid, 3500, 3500, "Level up!", "Font_Old_20_White_Hi.TGA", 255, 255, 255, 1500);
		SetPlayerMaxHealth(playerid, GetPlayerMaxHealth(playerid) * 1.5); -- Set max health
		GiveItem(playerid, "ITPO_HEALTH_ADDON_04", 5); -- Give award
	end
end

function CMD_SavePosition(playerid, params)
	local x, y, z = GetPlayerPos( playerid )
	local angle = GetPlayerAngle( playerid )
	local result, name = sscanf( params, "s" )
	if result == 1 then
		local message = string.format("%s, %s, %s, %s", x, y, z, angle)
		plik = io.open("pos/".. name .. ".txt", "w+")
		plik:write(message)
		plik:close()
		SendPlayerMessage(playerid,255,255,0,"Сохранено в файл "..name..".txt")
	else
		SendPlayerMessage(playerid,255,255,0,"(ИНФО): /коорд <название>")
	end
end

print("=============================================");
print(" ");
print(" BE Test Gamemode loaded...     ");