"Resource/UI/HudMatchStatus.res"
{
	"HudMatchStatus"
	{
		"fieldName"								"HudMatchStatus"
		"avatar_width"							"63"
		"spacer"								"5"
		"name_width"							"57"
		"horiz_inset"							"2"
	}
	
	"CountdownLabel"
	{	
		"ControlName"							"CExLabel"
		"fieldName"								"CountdownLabel"
		"font"									"Size 24 Shadow"
		"xpos"									"cs-0.5"
		"ypos"									"cs-0.1"
		"wide"									"40"
		"tall"									"40"
		"zpos"									"5"
		"autoResize"							"0"
		"pinCorner"								"0"
		"visible"								"0"
		"enabled"								"1"
		"wrap"									"0"
		"labelText"								"%countdown%"
		"textAlignment"							"center"
		"proportionaltoparent"					"1"
		"fgcolor"								"235 235 235 255"

		if_readymode
		{
			"xpos"								"300"
			"ypos"								"130"
		}
	}	

	"FrontParticlePanel"
	{
		"ControlName"							"CTFParticlePanel"
		"fieldName"								"FrontParticlePanel"
		"xpos"									"0"
		"ypos"									"0"
		"zpos"									"3"
		"wide"									"f0"
		"tall"									"f0"
		"visible"								"1"
		"proportionaltoparent"					"1"

		"ParticleEffects"
		{
			"0"
			{
				"particle_xpos" 				"c0"
				"particle_ypos" 				"c0"
				"particle_scale"				"2"
				"particleName"					"versus_door_slam"
				"start_activated" 				"0"
				"loop"							"0"
			}
		}

		"paintbackground"						"0"	
	}

	"MatchDoors"
	{
		"ControlName"							"CModelPanel"
		"fieldName"								"MatchDoors"
		"xpos"									"0"
		"ypos"									"0"
		"zpos"									"2"		
		"wide"									"f0"
		"tall"									"f0"
		"autoResize"							"0"
		"pinCorner"								"0"
		"visible"								"0"
		"enabled"								"1"
		"fov"									"70"
		"proportionaltoparent"					"1"
		
		"model"
		{
			"modelname"							"models/vgui/versus_doors.mdl"
			"skin"								"0"
			"angles_x"							"0"
			"angles_y"							"0"
			"angles_z"							"0"
			"origin_x"							"120"
			"origin_y"							"0"
			"origin_z"							"-77"

			"animation"
			{
				"name"							"ref"
				"sequence"						"ref"
				"default"						"1"
			}

			"animation"
			{
				"name"							"open"
				"sequence"						"open"
			}
			
			"animation"
			{
				"name"							"close"
				"sequence"						"close"
			}

			"animation"
			{
				"name"							"idle_closed"
				"sequence"						"idle_closed"
			}
		}
	}

	"ObjectiveStatusTimePanel"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"ObjectiveStatusTimePanel"
		"xpos"				"c-66"
		"ypos"				"-16"
		"zpos"				"4"
		"wide"				"132"
		"tall"				"150"
		"visible"			"0"
		"enabled"			"1"
		"delta_item_x"			"42"
		"delta_item_start_y"	"30"
		"delta_item_end_y"		"80"
		"PositiveColor"			"0 255 0 255"
		"NegativeColor"			"255 0 0 255"
		"delta_lifetime"		"1.5"
		"delta_item_font"		"DefaultLargerShadow"
		
		"TimePanelValue"
		{
			"ControlName"		"CExLabel"
			"fieldName"		"TimePanelValue"
			"font"			"DefaultLarge"
			"fgcolor"		"TanLight"
			"xpos"			"30"
			"ypos"			"3"
			"zpos"			"3"
			"wide"			"74"
			"tall"			"38"
			"visible"		"1"
			"enabled"		"1"
			"textAlignment"		"center"
			"labelText"		"0:00"
		}	
	}

	"TeamStatus"
	{
		"ControlName"							"CTFTeamStatus"
		"fieldName"								"TeamStatus"
		"xpos"									"0"
		"ypos"									"0"
		"zpos"									"2"
		"wide"									"f0"
		"tall"									"75"
		"visible"								"1"
		"enabled"								"1"

		"max_size"								"35"

		"6v6_gap"								"0"
		"12v12_gap"								"0"

		"team1_grow_dir" 						"west"
		"team1_base_x"							"c-53"
		"team1_max_expand"						"230"

		"team2_grow_dir" 						"east"
		"team2_base_x"							"c53"
		"team2_max_expand"						"230"

		"playerpanels_kv"
		{
			"visible"							"0"
			"wide"								"25"
			"tall"								"50"
			"zpos"								"1"

			"color_portrait_bg_red"				"32 32 32 255" // "255 80 80 255"
			"color_portrait_bg_blue"			"32 32 32 255" // "135 180 200 255"
			"color_portrait_bg_red_dead"		"0 255 0 255" // "175 175 175 150"
			"color_portrait_bg_blue_dead"		"0 255 0 255" // "175 175 175 150"
			"color_bar_health_high"				"32 32 32 255" // "40 200 110 255"
			"color_bar_health_med"				"32 32 32 255" // "255 200 55 255"
			"percentage_health_med"				"0.6"
			"color_bar_health_low"				"32 32 32 255" // "245 70 70 255"
			"percentage_health_low"				"0.3"
			"color_portrait_blend_dead_red"		"235 235 235 255"
			"color_portrait_blend_dead_blue" 	"235 235 235 255"
			
			"playername"
			{
				"ControlName"					"CExLabel"
				"fieldName"						"playername"
				"xpos"							"0"
				"ypos"							"21"
				"zpos"							"5"
				"wide"							"f0"
				"tall"							"7"
				"autoResize"					"0"
				"pinCorner"						"0"
				"visible"						"0"				//1 to enable names
				"textinsetx"					"1"
				"labelText"						"%playername%"
				"font"							"UltraSmall"
				"textAlignment"					"center"
				"bgcolor_override"				"0 0 0 200"
				"proportionaltoparent"			"1"
			}
			
			"classimage"
			{
				"ControlName"					"CTFClassImage"
				"fieldName"						"classimage"
				"xpos"							"cs-0.5"
				"ypos"							"1"
				"zpos"							"5"
				"wide"							"23"
				"tall"							"21"
				"visible"						"1"
				"enabled"						"1"
				"image"							"../hud/class_scoutred"
				"scaleImage"					"1"	
				"proportionaltoparent"			"1"
			}
			
			"classimagebg"
			{
				"ControlName"					"Panel"
				"fieldName"						"classimagebg"
				"xpos"							"0"
				"ypos"							"0"
				"zpos"							"2"
				"wide"							"f0"
				"tall"							"22"
				"visible"						"1"
				"enabled"						"1"
				"PaintBackgroundType"			"0"
				"proportionaltoparent"			"1"
			}
			
			"healthbar"
			{	
				"ControlName"					"ContinuousProgressBar"
				"fieldName"						"healthbar"
				"font"							"Default"
				"xpos"							"0"
				"ypos"							"0"
				"zpos"							"3"
				"wide"							"f0"
				"tall"							"22"				
				"autoResize"					"0"
				"pinCorner"						"0"
				"visible"						"1"
				"enabled"						"1"
				"textAlignment"					"Left"
				"dulltext"						"0"
				"brighttext"					"0"
				"bgcolor_override"	   			"80 80 80 255"
				"proportionaltoparent"			"1"
			}
			
			"overhealbar"
			{	
				"ControlName"					"ContinuousProgressBar"
				"fieldName"						"overhealbar"
				"font"							"Default"																		
				"xpos"							"0"
				"ypos"							"0"
				"zpos"							"4"
				"wide"							"f0"
				"tall"							"22"				
				"autoResize"					"0"
				"pinCorner"						"0"
				"visible"						"1"
				"enabled"						"1"
				"textAlignment"					"Left"
				"dulltext"						"0"
				"brighttext"					"0"
				"bgcolor_override"	   			"0 0 0 0"
				"fgcolor_override"	   			"32 32 32 255" // "235 235 235 255"
				"proportionaltoparent"			"1"
			}
			
			"HealthIcon"
			{
				"ControlName"					"EditablePanel"
				"fieldName"						"HealthIcon"
				"xpos"							"22"
				"ypos"							"-3"
				"zpos"							"3"
				"wide"							"32"
				"tall"							"32"
				"visible"						"0"
				"enabled"						"1"	
				"HealthBonusPosAdj"				"10"
				"HealthDeathWarning"			"0.49"
				"TFFont"						"HudFontSmallest"
				"HealthDeathWarningColor"		"255 0 0 255"
				"TextColor"						"235 235 235 255"
			}
			
			"respawntime"
			{
				"ControlName"					"CExLabel"
				"fieldName"						"respawntime"
				"font"							"Size 12 Shadow"
				"xpos"							"cs-0.5"
				"ypos"							"0"
				"zpos"							"6"
				"wide"							"f0"
				"tall"							"25"
				"autoResize"					"0"
				"pinCorner"						"0"
				"visible"						"1"
				"labelText"						"%respawntime%"
				"textAlignment"					"center"
				"proportionaltoparent"			"1"
				"fgcolor"						"235 235 235 255"
			}
			
			"chargeamount"
			{
				"ControlName"					"CExLabel"
				"fieldName"						"chargeamount"
				"font"							"DefaultSmall"
				"xpos"							"25"
				"ypos"							"17"
				"zpos"							"6"
				"wide"							"25"
				"tall"							"15"
				"autoResize"					"0"
				"pinCorner"						"0"
				"visible"						"0"
				"labelText"						"%chargeamount%"
				"textAlignment"					"north"
				"fgcolor"						"235 235 235 255"
			}
			
			"DeathPanel"
			{
				"ControlName"					"ImagePanel"
				"fieldName"						"DeathPanel"
				"xpos"							"-9999"
				"ypos"							"0"
				"zpos"							"0"
				"wide"							"f0"
				"tall"							"24"
				"visible"						"0"
				"enabled"						"1"
				"image"							"../HUD/comp_player_status"	
				"scaleImage"					"1"
				"proportionaltoparent"			"1"	
			}
			
			"ReadyBG"
			{
				"ControlName"					"ScalableImagePanel"
				"fieldName"						"ReadyBG"
				"xpos"							"9999"
			}
			"ReadyImage"
			{
				"ControlName"					"ImagePanel"
				"fieldName"						"ReadyImage"
				"xpos"							"9999"
			}
			"specindex"
			{
				"ControlName"					"CExLabel"
				"fieldName"						"specindex"
				"xpos"							"9999"
			}
			"SkullPanel"
			{
				"ControlName"					"ImagePanel"
				"fieldName"						"SkullPanel"
				"xpos"							"9999"
			}
		}
	}

	"BlueTeamPanel"
	{
		"ControlName"							"EditablePanel"
		"fieldName"								"BlueTeamPanel"
		"xpos"									"-155"
		"ypos"									"125"
		"zpos"									"50"
		"wide"									"150"
		"tall"									"260"
		"visible"								"0"
		"enabled"								"1"

		if_large
		{
			"ypos"								"65"
			"tall"								"385"
		}

		"BlueTeamBG"
		{
			"ControlName"						"EditablePanel"
			"fieldName"							"BlueTeamBG"
			"xpos"								"0"
			"ypos"								"10"
			"zpos"								"2"
			"wide"								"147"
			"tall"								"36"
			"autoResize"						"0"
			"pinCorner"							"0"
			"visible"							"1"
			"enabled"							"1"
			"border"							"TFFatLineBorderBlueBGOpaque"
		}
		
		"BlueTeamImage"
		{
			"ControlName"						"ImagePanel"
			"fieldName"							"BlueTeamImage"
			"xpos"								"9"
			"ypos"								"0"
			"zpos"								"5"
			"wide"								"56"
			"tall"								"56"
			"visible"							"1"
			"enabled"							"1"
			"image"								"../hud/team_blue"
			"scaleImage"						"1"
		}
		
		"BlueTeamLabel"
		{
			"ControlName"						"CExLabel"
			"fieldName"							"BlueTeamLabel"
			"font"								"CompMatchStartTeamNames"
			"labelText"							"%blueteamname%"
			"textAlignment"						"center"
			"xpos"								"48"
			"ypos"								"13"
			"zpos"								"20"
			"wide"								"95"
			"tall"								"30"
			"autoResize"						"0"
			"pinCorner"							"0"
			"visible"							"1"
			"enabled"							"1"
			"centerwrap"						"1"
		}
		
		"BlueLeaderAvatar"
		{
			"ControlName"						"CAvatarImagePanel"
			"fieldName"							"BlueLeaderAvatar"
			"xpos"								"11"
			"ypos"								"10"
			"zpos"								"5"	
			"wide"								"35"
			"tall"								"35"
			"visible"							"1"
			"enabled"							"1"
			"image"								""
			"scaleImage"						"1"	
			"color_outline"						"52 48 45 255"
		}
		
		"BlueLeaderAvatarBG"
		{
			"ControlName"						"EditablePanel"
			"fieldName"							"BlueLeaderAvatarBG"
			"xpos"								"9"
			"ypos"								"8"
			"zpos"								"4"
			"wide"								"39"
			"tall"								"39"
			"visible"							"1"
			"PaintBackgroundType"				"2"
			"bgcolor_override"					"117 107 94 255"
		}
		
		"BluePlayerList"
		{
			"ControlName"						"SectionedListPanel"
			"fieldName"							"BluePlayerList"
			"xpos"								"6"
			"ypos"								"38"
			"zpos"								"1"
			"wide"								"136"
			"tall"								"205"
			"pinCorner"							"0"
			"visible"							"1"
			"enabled"							"1"
			"tabPosition"						"0"
			"autoresize"						"3"
			"linespacing"						"26"
			"linegap"							"4"
			//"show_columns"					"1"

			if_large
			{
				"tall"							"315"
			}
		}
		
		"BluePlayerListBG"
		{
			"ControlName"						"EditablePanel"
			"fieldName"							"BluePlayerListBG"
			"xpos"								"4"
			"ypos"								"30"
			"zpos"								"0"
			"wide"								"139"
			"tall"								"215"
			"autoResize"						"0"
			"pinCorner"							"0"
			"visible"							"1"
			"enabled"							"1"
			"border"							"TFFatLineBorderClearBG"

			if_large
			{
				"tall"							"325"
			}
		}
	}

	"RedTeamPanel"
	{
		"ControlName"							"EditablePanel"
		"fieldName"								"RedTeamPanel"
		"xpos"									"r-5"
		"ypos"									"125"
		"zpos"									"50"
		"wide"									"150"
		"tall"									"260"
		"visible"								"0"
		"enabled"								"1"

		if_large
		{
			"ypos"								"65"
			"tall"								"385"
		}

		"RedTeamBG"
		{
			"ControlName"						"EditablePanel"
			"fieldName"							"RedTeamBG"
			"xpos"								"0"
			"ypos"								"10"
			"zpos"								"2"
			"wide"								"147"
			"tall"								"36"
			"autoResize"						"0"
			"pinCorner"							"0"
			"visible"							"1"
			"enabled"							"1"
			"border"							"TFFatLineBorderRedBGOpaque"
		}
		
		"RedTeamImage"
		{
			"ControlName"						"ImagePanel"
			"fieldName"							"RedTeamImage"
			"xpos"								"84"
			"ypos"								"-9"
			"zpos"								"5"
			"wide"								"70"
			"tall"								"70"
			"visible"							"1"
			"enabled"							"1"
			"image"								"../hud/team_Red"
			"scaleImage"						"1"
		}
		
		"RedTeamLabel"
		{
			"ControlName"						"CExLabel"
			"fieldName"							"RedTeamLabel"
			"font"								"CompMatchStartTeamNames"
			"labelText"							"%redteamname%"
			"textAlignment"						"center"
			"xpos"								"5"
			"ypos"								"13"
			"zpos"								"20"
			"wide"								"95"
			"tall"								"30"
			"autoResize"						"0"
			"pinCorner"							"0"
			"visible"							"1"
			"enabled"							"1"
			"centerwrap"						"1"
		}
		
		"RedLeaderAvatar"
		{
			"ControlName"						"CAvatarImagePanel"
			"fieldName"							"RedLeaderAvatar"
			"xpos"								"102"
			"ypos"								"10"
			"zpos"								"5"
			"wide"								"35"
			"tall"								"35"
			"visible"							"1"
			"enabled"							"1"
			"image"								""
			"scaleImage"						"1"	
			"color_outline"						"52 48 45 255"
		}
		
		"RedLeaderAvatarBG"
		{
			"ControlName"						"EditablePanel"
			"fieldName"							"RedLeaderAvatarBG"
			"xpos"								"100"
			"ypos"								"8"
			"zpos"								"4"
			"wide"								"39"
			"tall"								"39"
			"visible"							"1"
			"PaintBackgroundType"				"2"
			"bgcolor_override"					"117 107 94 255"
		}
		
		"RedPlayerList"
		{
			"ControlName"						"SectionedListPanel"
			"fieldName"							"RedPlayerList"
			"xpos"								"6"
			"ypos"								"38"
			"zpos"								"1"
			"wide"								"136"
			"tall"								"205"
			"pinCorner"							"0"
			"visible"							"1"
			"enabled"							"1"
			"tabPosition"						"0"
			"autoresize"						"3"
			"linespacing"						"26"
			"linegap"							"4"
			//"show_columns"					"1"

			if_large
			{
				"tall"							"315"
			}
		}
		
		"RedPlayerListBG"
		{
			"ControlName"						"EditablePanel"
			"fieldName"							"RedPlayerListBG"
			"xpos"								"4"
			"ypos"								"30"
			"zpos"								"0"
			"wide"								"139"
			"tall"								"215"
			"autoResize"						"0"
			"pinCorner"							"0"
			"visible"							"1"
			"enabled"							"1"
			"border"							"TFFatLineBorderClearBG"

			if_large
			{
				"tall"							"325"
			}
		}
	}
	
	"RoundCounter"
	{
		"fieldName"								"RoundCounter"
		"xpos"									"c-150"
		"ypos"									"15"
		"zpos"									"7"
		"wide"									"300"
		"tall"									"15"
		"visible"								"1"
		"enabled"								"1"
		
		"starting_width"						"0"
		"width_per_round"						"0"
		"indicator_start_offset"				"2"
		"indicator_max_wide"					"23"
		
		"RoundIndicatorPanel_kv"
		{
			"ypos"								"0"
			"wide"								"4"
			"tall"								"4"
			"zpos"								"7"
			"image"								"../hud/comp_round_counter_dot_bg"
			"scaleimage"						"1"
		}
		
		"RoundWinPanelRed_kv"
		{
			"ypos"								"0"
			"wide"								"4"
			"tall"								"4"
			"zpos"								"8"
			"image"								"../hud/comp_round_counter_light_red"
			"scaleimage"						"1"
		}

		"RoundWinPanelBlue_kv"
		{
			"ypos"								"0"
			"wide"								"4"
			"tall"								"4"
			"zpos"								"8"
			"image"								"../hud/comp_round_counter_light_blue"
			"scaleimage"						"1"
		}
		
		"Background"
		{
			"ypos"								"9999"
		}
	}
	
	"RoundSignModel"
	{
		"ControlName"							"CModelPanel"
		"fieldName"								"RoundSignModel"
		"xpos"									"9999"
		"wide"									"0"
	}
	"CountdownLabelShadow"
	{	
		"ControlName"							"CExLabel"
		"fieldName"								"CountdownLabelShadow"
		"wide"									"0"
		"tall"									"0"
	}
	"BGFrame"
	{
		"ControlName"							"EditablePanel"
		"fieldName"								"BGFrame"
		"wide"									"0"
		"tall"									"0"
	}
	"RankUpLabel"
	{	
		"ControlName"							"CExLabel"
		"fieldName"								"RankUpLabel"
		"wide"									"0"
		"tall"									"0"
	}
	"RankUpShadowLabel"
	{	
		"ControlName"							"CExLabel"
		"fieldName"								"RankUpShadowLabel"
		"wide"									"0"
		"tall"									"0"
	}
}