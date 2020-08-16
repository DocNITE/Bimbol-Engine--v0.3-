local MAX_SLOTS = GetMaxPlayers();

function OnFilterscriptInit()
	print("------------------------");
	print("Admin Panel 0.3 loaded");
	print("------------------------");
end

function LoopTwo()

	print("admin.lua: zalogowany =",gPlayer.zalogowany);
end

function OnFilterscriptExit()

    print("-----------------------");
	print("Admin Panel unloaded...");
	print("-----------------------");
end

function OnPlayerConnect(playerid)

end

function OnPlayerCommandText(playerid, cmdtext)

    local cmd,params = GetCommand(cmdtext);

	if cmdtext == "/ahelp" then
		CMD_AdminHelp(playerid);

	elseif cmd == "/kick" then
		CMD_Kick(playerid,params);

	elseif cmd == "/ban" then
		CMD_Ban(playerid,params);

	elseif cmd == "/kill" then
		CMD_Kill(playerid,params);
	elseif cmd == "/rcck" then
	if Player[playerid].logged == true then
	local world = GetPlayerWorld(id);
		CreateItem("ORE_ARMOR_H",1,-3595.4760742188 , -494.60986328125 , 2196.5810546875,world);
		CreateItem("ORE_ARMOR_H",1,-3639.4790039063 , -509.36206054688 , 2285.1245117188,world);
		CreateItem("ORE_ARMOR_H",1,-3684.6579589844 , -524.48419189453 , 2375.763671875,world);
		CreateItem("ORE_ARMOR_H",1,-3728.3659667969 , -543.46624755859 , 2462.9831542969,world);
		CreateItem("ORE_ARMOR_H",1,-3771.6228027344 , -557.85107421875 , 2549.7473144531,world);
		CreateItem("ORE_ARMOR_H",1,-3814.6232910156 , -570.23150634766 , 2635.7268066406,world);
		CreateItem("ORE_ARMOR_H",1,-3895.0688476563 , -398.86532592773 , 2656.3803710938,world);
		CreateItem("ORE_ARMOR_H",1,-3839.5190429688 , -569.1123046875 , 2678.5651855469,world);
		CreateItem("ORE_ARMOR_H",1,-3745.4938964844 , -573.49194335938 , 2727.6123046875,world);
		CreateItem("ORE_ARMOR_H",1,-3627.7260742188 , -575.98181152344 , 2772.2543945313,world);
		CreateItem("ORE_ARMOR_H",1,-3516.310546875 , -578.85070800781 , 2819.8728027344,world);
		CreateItem("ORE_ARMOR_H",1,-3415.7736816406 , -581.48187255859 , 2862.4304199219,world);
		CreateItem("ORE_ARMOR_H",1,-3338.1315917969 , -528.58978271484 , 2925.3200683594,world);
		CreateItem("ORE_ARMOR_H",1,-3309.5197753906 , -582.92901611328 , 2869.9604492188,world);
		CreateItem("ORE_ARMOR_H",1,-3282.8410644531 , -570.00366210938 , 2813.37890625,world);
		CreateItem("ORE_ARMOR_H",1,-3241.6401367188 , -559.57989501953 , 2763.9689941406,world);
		CreateItem("ORE_ARMOR_H",1,-3204.8903808594 , -541.06097412109 , 2655.2175292969,world);
		CreateItem("ORE_ARMOR_H",1,-3170.2060546875 , -522.79248046875 , 2552.7634277344,world);
		CreateItem("ORE_ARMOR_H",1,-3132.6530761719 , -502.43490600586 , 2442.0324707031,world);
		CreateItem("ORE_ARMOR_H",1,-3093.3505859375 , -481.88323974609 , 2326.2841796875,world);
		CreateItem("ORE_ARMOR_H",1,-3051.9548339844 , -459.93698120117 , 2208.6262207031,world);
		CreateItem("ORE_ARMOR_H",1,-3149.8369140625 , -459.2907409668 , 2162.7028808594,world);
		CreateItem("ORE_ARMOR_H",1,-3249.2233886719 , -458.79290771484 , 2109.8112792969,world);
		CreateItem("ORE_ARMOR_H",1,-3339.6696777344 , -457.32907104492 , 2066.8125,world);
		CreateItem("ORE_ARMOR_H",1,-3438.6564941406 , -457.54202270508 , 2018.5745849609,world);
		CreateItem("ORE_ARMOR_H",1,-3548.5173339844 , -471.48672485352 , 2051.8530273438,world);
		CreateItem("ORE_ARMOR_H",1,-3554.689453125 , -482.43634033203 , 2125.1418457031,world);
		CreateItem("ITMI_SKULL",1,-3146.5810546875 , -478.98895263672 , 2283.8364257813,world);
		CreateItem("ITMI_SKULL",1,-3258.3017578125 , -498.10250854492 , 2353.4521484375,world);
		CreateItem("ITMI_SKULL",1,-3378.1772460938 , -517.55670166016 , 2427.2272949219,world);
		CreateItem("ITMI_SKULL",1,-3511.6257324219 , -536.72796630859 , 2512.1477050781,world);
		CreateItem("ITMI_SKULL",1,-3620.6733398438 , -552.92742919922 , 2586.0056152344,world);
		CreateItem("ITMI_SKULL",1,-3724.2475585938 , -567.47930908203 , 2659.1281738281,world);
		CreateItem("ITMI_SKULL",1,-3364.3618164063 , -580.26055908203 , 2823.9289550781,world);
		CreateItem("ITMI_SKULL",1,-3381.6254882813 , -560.84930419922 , 2717.3361816406,world);
		CreateItem("ITMI_SKULL",1,-3398.6887207031 , -546.87811279297 , 2610.3227539063,world);
		CreateItem("ITMI_SKULL",1,-3418.4057617188 , -528.96392822266 , 2482.3374023438,world);
		CreateItem("ITMI_SKULL",1,-3436.8273925781 , -511.89767456055 , 2367.9814453125,world);
		CreateItem("ITMI_SKULL",1,-3455.962890625 , -496.87020874023 , 2254.3044433594,world);
		CreateItem("ITMI_SKULL",1,-3473.6560058594 , -479.80987548828 , 2136.9895019531,world);
		CreateItem("ITMI_RING_FIX",1,-3314.3393554688 , -553.01239013672 , 2685.7319335938,world);
		CreateItem("MYTHRILKLINGE02",1,-3314.3393554688 , -553.01239013672 , 2685.7319335938,world);
		CreateItem("ITMI_RING_FIX",1,-3264.5144042969 , -534.28729248047 , 2588.5366210938,world);
		CreateItem("ITMI_RING_FIX",1,-3226.08984375 , -516.18450927734 , 2484.5498046875,world);
		CreateItem("ITMI_RING_FIX",1,-3187.4011230469 , -497.05316162109 , 2382.8444824219,world);
		CreateItem("ITMI_RING_FIX",1,-3145.5307617188 , -477.14782714844 , 2267.2797851563,world);
		CreateItem("ITMI_RING_FIX",1,-3242.8232421875 , -478.00643920898 , 2227.6176757813,world);
		CreateItem("ITMI_RING_FIX",1,-3348.0651855469 , -477.71527099609 , 2185.8974609375,world);
		CreateItem("ITMI_RING_FIX",1,-3446.0063476563 , -479.32678222656 , 2144.4741210938,world);
		CreateItem("ITMI_RING_FIX",1,-3505.294921875 , -500.70129394531 , 2265.8640136719,world);
		CreateItem("ITMI_RING_FIX",1,-3552.4406738281 , -517.47113037109 , 2367.1840820313,world);
		CreateItem("ITMI_RING_FIX",1,-3594.63671875 , -534.04400634766 , 2461.3041992188,world);
		CreateItem("ITMI_RING_FIX",1,-3649.603515625 , -552.89306640625 , 2577.2355957031,world);
		CreateItem("ITMI_RING_FIX",1,-3656.7211914063 , -569.28149414063 , 2696.0366210938,world);
		CreateItem("ITMI_RING_FIX",1,-3554.193359375 , -571.41564941406 , 2738.3012695313,world);
		CreateItem("ITMI_RING_FIX",1,-3426.3967285156 , -572.27508544922 , 2781.1711425781,world);
		CreateItem("ITMI_RING_FIX",1,-3371.0236816406 , -572.91241455078 , 2798.716796875,world);
		CreateItem("ITMI_RING_FIX",1,-3444.5629882813 , -548.92218017578 , 2616.2692871094,world);
		CreateItem("ITMI_RING_FIX",1,-3452.3444824219 , -525.93029785156 , 2455.580078125,world);
		CreateItem("ITMI_RING_FIX",1,-3349.5 , -507.01889038086 , 2373.197265625,world);
		CreateItem("ITMI_RING_FIX",1,-3345.7868652344 , -526.6083984375 , 2499.7221679688,world);
	else
		SendPlayerMessage(playerid,255,0,0,"Сначала авторизуйтесь!");
	end
	elseif cmd == "/rcckf" then
	local result,id = sscanf(params,"d")
	local x,y,z = GetPlayerPos(id);
	local world = GetPlayerWorld(id);
	if result == 1 then
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
		CreateItem("ITMI_RING_FIX",1,x,y,z,world);
	end
	elseif cmd == "/tp" then
		CMD_Teleport(playerid,params);

	elseif cmd == "/giveitem" then
		CMD_GiveItem(playerid,params);
	
	elseif cmd == "/time" then
		CMD_Time(playerid,params);
		
	elseif cmd == "/name" then
		CMD_Name(playerid,params);
	
	elseif cmd == "/color" then
		CMD_Color(playerid,params);
	end
end

function CMD_AdminHelp(playerid)

	if IsPlayerAdmin(playerid) == 1
	then
		for i = 0, 8
		do
			SendPlayerMessage(playerid,255,255,255,"");
		end

		SendPlayerMessage(playerid,255,255,255,"Admin help:");
		SendPlayerMessage(playerid,255,250,200,"/kick /ban /kill /tp /giveitem /name /color");
	else
		SendPlayerMessage(playerid,255,250,200,"(Server): You are not admin!");
	end
end

function CMD_Kick(playerid, params)

	if IsPlayerAdmin(playerid) == 1
	then
		local result,id,reason = sscanf(params,"ds");

		if result == 1
		then
			if IsPlayerConnected(id) == 1
			then
				for i = 0, MAX_SLOTS - 1
				do
				end

				Kick(id);
			else
				SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"is not connected with server."));
			end
		else
			SendPlayerMessage(playerid,255,250,200,"Use: /kick (playerid) (reason)");
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server): You are not admin!");
	end
end

function CMD_Ban(playerid, params)

	if IsPlayerAdmin(playerid) == 1
	then
		local result,id,reason = sscanf(params,"ds");

		if result == 1
		then
			if IsPlayerConnected(id) == 1
			then
				for i = 0, MAX_SLOTS - 1
				do
					SendPlayerMessage(i,255,0,0,string.format("%s %s %s %s%s %s %s","(Server):",GetPlayerName(id),"has been banned by",GetPlayerName(playerid),".","Reason:",reason));
				end

				Ban(id);
			else
				SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"is not connected with server."));
			end
		else
			SendPlayerMessage(playerid,255,250,200,"Use: /ban (playerid) (reason)");
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server): You are not admin!");
	end
end

function CMD_Kill(playerid, params)

	if IsPlayerAdmin(playerid) == 1
	then
		local result,id = sscanf(params,"d");

		if result == 1
		then
			if IsPlayerConnected(id) == 1
			then
				SendPlayerMessage(id,255,250,200,string.format("%s %s","You have been killed by",GetPlayerName(playerid)));
				SendPlayerMessage(playerid,255,250,200,string.format("%s %s","You killed",GetPlayerName(id)));
				SetPlayerHealth(id,0);
			else
				SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"is not connected with server."));
			end
		else
			SendPlayerMessage(playerid,255,250,200,"Use: /kill (playerid)");
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server): You are not admin!");
	end
end

function CMD_Teleport(playerid, params)

	if IsPlayerAdmin(playerid) == 1
	then
		local result,from_id,to_id = sscanf(params,"dd");

		if result == 1
		then
			if IsPlayerConnected(from_id) == 1
			then
				if IsPlayerConnected(to_id) == 1
				then
					SendPlayerMessage(from_id,255,250,200,string.format("%s %s","You have been teleported to",GetPlayerName(to_id)));
					SendPlayerMessage(to_id,255,250,200,string.format("%s %s","To you has teleported",GetPlayerName(from_id)));

					local x,y,z = GetPlayerPos(to_id);
					SetPlayerPos(from_id,x + 50,y,z);
				else
					SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",to_id,"is not connected with server."));
				end
			else
				SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",from_id,"is not connected with server."));
			end
		else
			SendPlayerMessage(playerid,255,250,200,"Use: /tp (fromplayerid) (toplayerid)");
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server): You are not admin!");
	end
end

function CMD_GiveItem(playerid, params)

	if IsPlayerAdmin(playerid) == 1
	then
		local result,id,item,amount = sscanf(params,"dsd");

		if result == 1
		then
			if IsPlayerConnected(id) == 1
			then
				SendPlayerMessage(id,255,250,200,string.format("%s %d %s %s %s","You have received",amount,item,"from",GetPlayerName(playerid)));
				SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s %s %s","You gave",amount,item,"for",GetPlayerName(id)));
				GiveItem(id,item,amount);
			else
				SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"is not connected with server."));
			end
		else
			SendPlayerMessage(playerid,255,250,200,"Use: /giveitem (playerid) (iteminstance) (amount)");
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server): You are not admin!");
	end
end

function CMD_Time(playerid, params)

	if IsPlayerAdmin(playerid) == 1
	then
		local result,hour,minute = sscanf(params,"dd");
		
		if result == 1
		then		
			SendMessageToAll(255,250,200,string.format("%s %s %s %d:%02d","(Server):",GetPlayerName(playerid),"set time at",hour,minute));
			SetTime(hour,minute);
		else
			SendPlayerMessage(playerid,255,250,200,"Use: /time (hour) (minute)");
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server): You are not admin!");
	end
end

function CMD_Name(playerid, params)

	if IsPlayerAdmin(playerid) == 1 then
		local result,id,name = sscanf(params,"ds");

		if result == 1 then
		
			if IsPlayerConnected(id) == 1 then
			
				local adminname = GetPlayerName(playerid);
				local beforename = GetPlayerName(id);
				if SetPlayerName(id,name) == 1 then
				
					SendMessageToAll(0,255,0,string.format("%s %s %s %s %s %s","Admin",adminname,"set name player",beforename,"to",name));
				else
					SendPlayerMessage(playerid,255,250,200,"(Server) Can't set name.");
				end
			else
				SendPlayerMessage(playerid,255,250,200,string.format("%s %d %s","(Server): Player ID",id,"is not connected with server."));
			end
		else
			SendPlayerMessage(playerid,255,250,200,"Use: /name (playerid) (name)");
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server) You are not admin!");
	end
end

function CMD_Color(playerid, params)

	if IsPlayerAdmin(playerid) == 1 then
	
		local result,id,r,g,b = sscanf(params,"dddd");
	
		if result == 1 then
			if IsPlayerConnected(id) == 1 then
				
				local adminName = GetPlayerName(playerid);
				SendPlayerMessage(id,255,250,200,string.format("%s %d %d %d %s %s","Your color was changed to",r,g,b,"by",adminName));
				SetPlayerColor(id,r,g,b);
			end
		else
			SendPlayerMessage(playerid,255,250,200,"Use: /color (playerid) (r) (g) (b)");
		end
	else
		SendPlayerMessage(playerid,255,250,200,"(Server) You are not admin!");
	end
end