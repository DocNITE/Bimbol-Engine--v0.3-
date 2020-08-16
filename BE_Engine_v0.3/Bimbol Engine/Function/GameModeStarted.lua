--[[
	
	Module: GameModeStarted.lua
	Autor: DocNight
	
	Sending a message when connecting to a server
	
]]--

local name = {}
local Show_Connecting_Script = false

function Connect_Init(con_en)
    if type(con_en) == "boolean" then
	Show_Connecting_Script = true
    end
end

function ConnectMessage(playerid)
if Show_Connecting_Script == true then
local m = 1
SendPlayerMessage (playerid, 235, 0, 235, "Поговаривают в Хоринисе, кур доят...")
if IsNPC(playerid) == 0 then
    repeat
    SendPlayerMessage(playerid, 0, 255, 0, " ");
	m = m + 1
    until m >= 30
	SendPlayerMessage(playerid, 225, 35, 135, "BE 0.3a and GMP 1.1.1 started.");
	CheckPlayerInit(playerid)
    ReadLn()
	CheckServerAddres(playerid)
	--SendPlayerMessage(playerid, 225, 35, 135, "Game Mode '"..resultStr.."' has been loaded.");
	ReadLnHost()
	SendPlayerMessage(playerid, 225, 35, 135, "Connected to "..resultStrl..". Joining the game...");
	end
end
end

function CheckPlayerInit(playerid)
print("{")
print("Check player "..GetPlayerName(playerid))
print("IP:"..GetPlayerIP(playerid))
print("MAC:"..GetMacAddress(playerid))
print("}")
end

function CheckServerAddres(playerid)
local amount, addr = GetListeningAddresses()
amount = 1;
        if amount ~= nil then
            for i = 0,amount - 1 do
			ReadLnPort()
        SendPlayerMessage(playerid, 225, 35, 135, "Connecting to: "..addr[i]..":"..resultStrll.."...")
            end
        else
        SendPlayerMessage(playerid, 225, 35, 135, "Server is not listening")
    end
end

function ReadLn()
local fileRead = io.open("server.cfg","r");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
resultStr = string.sub(tempvar,0,0) .. string.sub(tempvar,10,26)
fileRead:close();
end

function ReadLnHost()
local fileRead = io.open("server.cfg","r");
tempvar = fileRead:read("*l");
tempvar = fileRead:read("*l");
resultStrl = string.sub(tempvar,0,0) .. string.sub(tempvar,10,32)
fileRead:close();
end

function ReadLnPort()
local fileRead = io.open("server.cfg","r");
tempvar = fileRead:read("*l");
resultStrll = string.sub(tempvar,0,0) .. string.sub(tempvar,6,11)
fileRead:close();
end

print(debug.getinfo(1).source.." has been loaded.");