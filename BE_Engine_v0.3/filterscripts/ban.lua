--V7wkH0B8-B0-07-28
--E8-40-F2-2F-45-92
--[[
function OnFilterscriptInit()
--local name = GetPlayerName(playerid);
local macAddr = "V7wkH0B8-B0-07-28";

if(string.find(macAddr,"%w%w-%w%w-%w%w-%w%w-%w%w-%w%w"))then
print("true",macAddr);
else
print("false",macAddr);
end
end]]

function OnPlayerConnect(playerid)
local name = GetPlayerName(playerid);
local macAddr = GetMacAddress(playerid);
if IsNPC(playerid) == 0 then
if(string.find(macAddr,"%w%w-%w%w-%w%w-%w%w-%w%w-%w%w"))then
print("true",macAddr);
SendPlayerMessage(playerid,255,154,100,"Ой ой, кто то пытается бан обойти. Пошел нахуй отсюда");
Kick(playerid);
else
print("false",macAddr);
end

--[[if name == "РђР»РµРєСЃ" then
Ban(playerid)
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (DUP)"));
end
if macAddr == "CC-5D-4E-59-F7-AC" then
Ban(playerid)
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (ZHALOBA)"));
end
if macAddr == "00-24-21-B5-C3-F6" then
Ban(playerid)
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (DUP)"));
end]]
if name == "Уайт" then
Ban(playerid);
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (NATE)"));
end

if macAddr == "00-19-66-D6-3D-79" then
SendPlayerMessage(playerid,255,154,100,"За разбаном в ЛС к Нуару");
Ban(playerid);
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (ZHAROV)"));
end

if macAddr == "66-85-3D-34-17-D6" then
SendPlayerMessage(playerid,255,154,100,"130898 = 13-08-1998 - с днем рождения, дебил");
Ban(playerid);
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (Akvitan)"));
end

if macAddr == "8A-DD-EF-82-7E-43" then
SendPlayerMessage(playerid,255,154,100,"130898 = 13-08-1998 - с днем рождения, дебил");
Ban(playerid);
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (Akvitan)"));
end

if macAddr == "00-00-0D-00-00-DA" then
SendPlayerMessage(playerid,255,154,100,"130898 = 13-08-1998 - с днем рождения, дебил");
Ban(playerid);
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (Akvitan)"));
end
--[[if macAddr == "00-AC-63-F9-DE-01" then
Ban(playerid)
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (DAUN)"));
end]]

--[[if macAddr == "C4-E9-84-DE-6E-FF" or macAddr == "BC-EE-7B-9F-1F-F7" then
SendPlayerMessage(playerid,255,154,100,"По жалобе на форуме (ID жалобы - 1)");
Ban(playerid)
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by MAC (ZHALOBA_ID_1)"));
end]]

end
end

--[[if(string.sub(GetPlayerIP(playerid),1,12)=="77.50.173.56")then -- Р’РµРєСЃ
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by IP"));
Ban(playerid)
end]]

--[[if(string.sub(GetPlayerIP(playerid),1,11)=="37.190.49.9")then -- Р’РµРєСЃ
LogString("AUTOBAN",string.format("%s %s %s",GetPlayerName(playerid),macAddr,"banned by IP"));
Ban(playerid)
end]]
--end
