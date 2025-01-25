//TARUH DI BAGIAN Main.pwn

ShowCharacterMenu(playerid)
{	
	ChoseCharacterInformation[playerid][0] = CreatePlayerTextDraw(playerid, 225.000, 323.000, "Jaden Bakteria");
	PlayerTextDrawLetterSize(playerid, ChoseCharacterInformation[playerid][0], 0.108, 0.699);
	PlayerTextDrawAlignment(playerid, ChoseCharacterInformation[playerid][0], 1);
	PlayerTextDrawColor(playerid, ChoseCharacterInformation[playerid][0], -912625409);
	PlayerTextDrawSetShadow(playerid, ChoseCharacterInformation[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, ChoseCharacterInformation[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, ChoseCharacterInformation[playerid][0], 150);
	PlayerTextDrawFont(playerid, ChoseCharacterInformation[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, ChoseCharacterInformation[playerid][0], 1);

	forex(i, 1)
	{
		PlayerTextDrawShow(playerid, ChoseCharacterInformation[playerid][i]);
	}

	forex(i, 32)
	{
		TextDrawShowForPlayer(playerid, JadenChar[i]);
	}

	SelectCharIndex[playerid] = 0;
	UpdateCharacterInformationTD(playerid);
	SelectTextDraw(playerid, X11_LIGHTBLUE);

	Player_ToggleTelportAntiCheat(playerid, false);
	TogglePlayerSpectating(playerid, false);

	if(CharacterList[playerid][SelectCharIndex[playerid]][0] == EOS)
	{
		SetSpawnInfo(playerid, 0, 1, 1818.3202, 2086.8596, 35.5225, 89.5504, 0, 0, 0, 0, 0, 0);
		SpawnPlayer(playerid);
	}
	else
	{
		SetSpawnInfo(playerid, 0, CharSkin[playerid][0], 1818.3202, 2086.8596, 35.5225, 89.5504, 0, 0, 0, 0, 0, 0);
		SpawnPlayer(playerid);
	}
	return 1;
}

stock HideJadenCharTextDraw(playerid)
{
	forex(i, 1)
	{
		PlayerTextDrawHide(playerid, ChoseCharacterInformation[playerid][i]);
	}

	forex(i, 32)
	{
		TextDrawHideForPlayer(playerid, JadenChar[i]);
	}
	return 1;
}
stock UpdateCharacterInformationTD(playerid)
{
	if (CharacterList[playerid][SelectCharIndex[playerid]][0] == EOS)
	{
		PlayerTextDrawSetString(playerid, ChoseCharacterInformation[playerid][0], "_");
	}
	else
	{
		PlayerTextDrawSetString(playerid, ChoseCharacterInformation[playerid][0], sprintf("%s", CharacterList[playerid][SelectCharIndex[playerid]]));
	}
	ApplyAnimationSpawn(playerid, "ped", "SEAT_down", 4.1, 0, 0, 0, 1, 0);
	return 1;
}