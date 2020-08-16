--[[
	
	Module: OnPlayerConnect.lua
	Autor: Bimbol
	
	OnPlayerConnect
	
]]--

function OnPlayerConnect(playerid)
    ConnectMessage(playerid) --true - the script works. false - doesn't work
	group_Connect(playerid);
	addToOnline(playerid);
	-- BE Callback --
	BE_OnPlayerConnect(playerid);
	DE_OnPlayerConnect(playerid);
end

function BE_OnPlayerConnect(playerid)
end

function DE_OnPlayerConnect(playerid)
end
-- Loaded
print(debug.getinfo(1).source.." has been loaded.");