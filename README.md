![alt text](https://github.com/mrxzi/SAMP-MULTICHAR/blob/main/image.png?raw=true)


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

Text:JadenChar[32]
TARUH DI BAGIAN VARIABLE
