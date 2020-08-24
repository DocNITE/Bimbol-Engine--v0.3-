local 	trak_draw;
local Player = {};
Player = {};
 function CreateGlobalViewTrak()
	trak_draw = CreateDraw(2700,6500,"Ctrl чтобы поговорить с торговцем.","Font_Old_10_White_Hi.TGA",255,100,0);
end
function Npc_Trak()
	Trak = CreateNPC("Торговец");
	SpawnPlayer(Trak);
	SetPlayerAdditionalVisual(Trak,"Hum_Body_Naked0",2,"Hum_Head_Pony",178);
                SetPlayerPos(Trak,7850.12,155.19,1369.55);
	SetPlayerAngle(Trak,125);
	EquipArmor(Trak,"ITAR_Barkeeper");
	EquipMeleeWeapon(Trak,"ItMw_MEATKNIFE");
	PlayAnimation(Trak,"S_LGUARD");
	SetPlayerWorld(Trak,"NEWWORLD\\NEWWORLD.ZEN","FP_STAND_CITY_TAVERN_03");	
end

function FocusOnTrak(playerid,focusid)
	if focusid == Trak then
		ShowDraw(playerid,trak_draw);
	else
		HideDraw(playerid,trak_draw);
	end
end
function KeysForTrak(playerid,keyDown)
	if GetFocus(playerid) == Trak then
		if keyDown == KEY_LCONTROL then
			SetPlayerAngle(playerid,GetAngleToPlayer(playerid,Trak));
			FreezePlayer(playerid,1);
	                                SetPlayerAngle(Trak,GetAngleToPlayer(Trak,playerid));
                                                SendPlayerMessage(playerid,255,255,255,"Торговец: Приветствую тебя, путник! Вот мои товары, выбирай!");
			if not IsMenuShowing(playerid) and not GetActiveMenu(playerid) then
				ShowSelectionMenu(playerid, TrakMenu)
			else
				HideSelectionMenu(playerid, TrakMenu)
				FreezePlayer(playerid,0);
				SetPlayerAngle(Trak,201);
			end
		
		elseif keyDown == KEY_DOWN then
		if GetActiveMenu(playerid) == TrakMenu then
				SwitchOptionDown(playerid, TrakMenu)
		end
			
		elseif keyDown == KEY_UP then
		if GetActiveMenu(playerid) == TrakMenu then
				SwitchOptionUp(playerid, TrakMenu)
		end

		elseif keyDown == KEY_RETURN then
		if GetActiveMenu(playerid) == TrakMenu then
				OnSelectionConfirmedForTrak(playerid)
			end
			
		end
	end
end