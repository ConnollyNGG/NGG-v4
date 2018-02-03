/*
    	 		 /$$   /$$  /$$$$$$          /$$$$$$$  /$$$$$$$
				| $$$ | $$ /$$__  $$        | $$__  $$| $$__  $$
				| $$$$| $$| $$  \__/        | $$  \ $$| $$  \ $$
				| $$ $$ $$| $$ /$$$$ /$$$$$$| $$$$$$$/| $$$$$$$/
				| $$  $$$$| $$|_  $$|______/| $$__  $$| $$____/
				| $$\  $$$| $$  \ $$        | $$  \ $$| $$
				| $$ \  $$|  $$$$$$/        | $$  | $$| $$
				|__/  \__/ \______/         |__/  |__/|__/

//--------------------------------[MAIN NGRP.PWN]--------------------------------

							Next Generation Gaming, LLC
				(created by Next Generation Gaming Development Team)

				Current Developers:
								*** Director of SA:MP Development:
								    Shane

								**  Development Staff:
									Miguel (s0nic)
									Farva
									Connolly
				Past Developers:
								*** Director of SA:MP Development:
									Dom
									Akatony
									John
									Rothschild
									Brendan
									Austin (Theory)
									BrianF
									Scott
									GhoulSlayer
									Zhao
									Donuts
									Mo Cena
									Calgon

								** 	Developers:
									AlexR
									Jamie
									Connor
									Neo
									ThomasJWhite
									Beren
									Kareemtastic
									Sew Sumi
									Razbit
									Behemoth
									Connor
									Jingles
									Westen

				Credits to alternate sources (Y_Less for foreach, gf, etc)
 *
 * Copyright (c) 2014, Next Generation Gaming, LLC
 *
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without modification,
 * are not permitted in any case.
 *
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

 #include <a_samp>

/*  ---------------- SCRIPT REVISION ----------------- */

// Do not forget to change this everytime you commit - it's mandatory!
#define SERVER_GM_TEXT "NG:RP v3.0.417"

//#define AREA_DEBUG
//#define TEXTLABEL_DEBUG

#undef  MAX_PLAYERS
#define MAX_PLAYERS (500)
#include <a_mysql>
#include <streamer>
#include <yom_buttons>
#include <ZCMD>
#include <sscanf2>
#include <crashdetect>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <mSelection>
#include <gvar>
#include <irc>
#include <geo_ip>
#include <easyDialog>
#include <callbacks>
#include <attachments>
//#include <profiler>

#if defined SOCKET_ENABLED
#include <socket>
#endif

#include "./includes/defines.pwn"
#include "./includes/enums.pwn"
#include "./includes/variables.pwn"
#include "./includes/wrappers.pwn"
#include "./includes/timers.pwn"
#include "./includes/functions.pwn"
#include "./includes/mysql.pwn"
#include "./includes/OnPlayerLoad.pwn"
#include "./includes/callbacks.pwn"
#include "./includes/textdraws.pwn"
#include "./includes/streamer.pwn"
#include "./includes/OnDialogResponse.pwn"
//#include "./includes/irc.pwn" // Test remove
#include "./includes/walkstyle.pwn" 

#if defined AREA_DEBUG
#include "./includes/areadebug.pwn"
#endif

//streamer includes
#include "./includes/streamer/removebuildings.pwn"
#include "./includes/streamer/areas.pwn"
#include "./includes/streamer/buttons.pwn"
#include "./includes/streamer/objects.pwn"
#include "./includes/streamer/pickups.pwn"
#include "./includes/streamer/textlabels.pwn"
#include "./includes/streamer/vehicles.pwn"
#include "./includes/streamer/OnPlayerEditDynamicObject.pwn"

//admin includes
#include "./includes/admin/admin.pwn"
#include "./includes/admin/advisory.pwn"
//#include "./includes/admin/auctionsystem.pwn" // Can be removed
#include "./includes/admin/bugreport.pwn"
#include "./includes/admin/flags.pwn"
//#include "./includes/admin/gift.pwn" // Can be removed
#include "./includes/admin/reportsystem.pwn"
#include "./includes/admin/serveroffences.pwn"
#include "./includes/admin/vouchers.pwn" // Can be removed
//#include "./includes/admin/watchdogs.pwn" // Can be removed
#include "./includes/admin/intlist.pwn"
#include "./includes/admin/anticheat.pwn"
#include "./includes/admin/spectate.pwn"
#include "./includes/admin/teleport.pwn"
#include "./includes/admin/watch.pwn"
#include "./includes/admin/newbie.pwn" // Can be removed
#include "./includes/admin/ban.pwn"
#include "./includes/admin/newstaffban.pwn"

//business includes
#include "./includes/business/247items.pwn"
//#include "./includes/business/ammunation.pwn" // Can be removed
#include "./includes/business/businesscore.pwn"
#include "./includes/business/mailsystem.pwn"

//core includes
#include "./includes/core/acceptcancel.pwn"
#include "./includes/core/advertisements.pwn"
#include "./includes/core/banking.pwn"
#include "./includes/core/chat.pwn"
#include "./includes/core/fireworks.pwn" // Test remove
#include "./includes/core/helpcmds.pwn" // Test remove, add old system - Need to remove a few lines
#include "./includes/core/hospital.pwn"
#include "./includes/core/lotto.pwn" // Test remove
#include "./includes/core/lselevator.pwn" // Test remove
#include "./includes/core/marriage.pwn"
#include "./includes/core/namechange.pwn"
#include "./includes/core/phone.pwn"
#include "./includes/core/radio.pwn"
#include "./includes/core/service.pwn"
#include "./includes/core/storage.pwn"
#include "./includes/core/tutorial.pwn"
#include "./includes/core/upgrades.pwn"
#include "./includes/core/vactions.pwn"
#include "./includes/core/weapons.pwn"
#include "./includes/core/damage.pwn"
#include "./includes/core/health.pwn"
#include "./includes/core/teams.pwn"
#include "./includes/core/stats.pwn"
#include "./includes/core/timefuncs.pwn"
#include "./includes/core/camerafuncs.pwn"
#include "./includes/core/clearcheckpoint.pwn"
#include "./includes/core/maintenance.pwn"
#include "./includes/core/countrycheck.pwn"
#include "./includes/core/countdown.pwn"
#include "./includes/core/filehandle.pwn"
#include "./includes/core/initgamemode.pwn"
#include "./includes/core/login.pwn"
#include "./includes/core/miscload.pwn"
#include "./includes/core/proxdetector.pwn"
#include "./includes/core/setplayerspawn.pwn"
#include "./includes/core/stats.pwn"
#include "./includes/core/streamprep.pwn"
//#include "./includes/core/emailcheck.pwn" // Can be removed
#include "./includes/core/AccountSettings.pwn"
//#include "./includes/core/tutorial_new.pwn"
#include "./includes/core/deluxegps.pwn"
//#include "./includes/core/nametags.pwn"

// #tryinclude "./includes/core/inactive.pwn"

//dynamic core includes
#include "./includes/dynamic/doors.pwn"
#include "./includes/dynamic/garages.pwn"
#include "./includes/dynamic/gates.pwn"
#include "./includes/dynamic/houses.pwn"
#include "./includes/dynamic/mapicons.pwn"
#include "./includes/dynamic/motds.pwn"
#include "./includes/dynamic/paynsprays.pwn"
#include "./includes/dynamic/textlabels.pwn"
#include "./includes/dynamic/impound.pwn"
#include "./includes/dynamic/speedcamera.pwn"
#include "./includes/dynamic/arrestpoints.pwn"
#include "./includes/dynamic/dynsu.pwn"
#include "./includes/dynamic/housemarket.pwn"
#include "./includes/dynamic/ddsale.pwn"
#include "./includes/dynamic/parking.pwn"
#include "./includes/dynamic/MetalDetectors.pwn"
#include "./includes/dynamic/points.pwn"

//vehicle system includes
#include "./includes/vehsystem/vehiclecore.pwn"
#include "./includes/vehsystem/drivingtest.pwn"
#include "./includes/vehsystem/Server_DMV.pwn"
#include "./includes/vehsystem/speedo.pwn"
#include "./includes/vehsystem/tow.pwn"
#include "./includes/vehsystem/VLP.pwn"
#include "./includes/vehsystem/helmet.pwn"
#include "./includes/vehsystem/groupvehs.pwn"
#include "./includes/vehsystem/playervehs.pwn"
#include "./includes/vehsystem/cratevehicles.pwn"

//event kernels includes
//#include "./includes/events/bday.pwn" // Can be removed
#include "./includes/events/event.pwn"
#include "./includes/events/eventpoints.pwn"
//#include "./includes/events/fif.pwn" // Can be removed
//#include "./includes/events/hungergames.pwn" // Can be removed
#include "./includes/events/paintball.pwn"
//#include "./includes/events/rewardplay.pwn" // Can be removed
//#include "./includes/events/rfl.pwn" // Can be removed
//#include "./includes/events/xmas.pwn" // Can be removed
#include "./includes/events/zombies.pwn"
//#include "./includes/events/valentine.pwn" // Can be removed
//#include "./includes/events/festival.pwn" // Can be removed
//#include "./includes/events/stpatricks.pwn" // Can be removed
//#include "./includes/events/memorial.pwn" // Can be removed

//dynamic group system includes
#include "./includes/group/citizenship.pwn"
//#include "./includes/group/contract.pwn"
#include "./includes/group/hitman.pwn"
//#include "./includes/group/fires.pwn" // Can be removed
#include "./includes/group/gov.pwn"
#include "./includes/group/groupcore.pwn"
#include "./includes/group/judicial.pwn"
#include "./includes/group/lea.pwn"
#include "./includes/group/medic.pwn"
#include "./includes/group/news.pwn"
#include "./includes/prison_system.pwn"
#include "./includes/group/racing.pwn"
#include "./includes/group/taxi.pwn"
#include "./includes/group/towing.pwn"
#include "./includes/group/turfs.pwn"
#include "./includes/group/cratesystem.pwn" // Can be removed, need to remove about 15 lines
#include "./includes/group/callsystem.pwn"
//#include "./includes/group/gangshipment.pwn"
//#include "./includes/group/gangcrates.pwn"
//#include "./includes/group/gangrobbery.pwn"
//#include "./includes/group/GovArms.pwn" // Can be removed
#include "./includes/group/grouppay.pwn"
#include "./includes/group/gangtags.pwn"
#include "./includes/group/GunLicense.pwn"
//#include "./includes/group/URLrace.pwn"
#include "./includes/group/sanews.pwn"
//#include "./includes/group/casefile.pwn" // Can be removed
#include "./includes/group/groupweapons.pwn"

//job system includes
#include "./includes/jobs/bartender.pwn"
#include "./includes/jobs/bodyguard.pwn"
#include "./includes/jobs/boxing.pwn"
#include "./includes/jobs/craftsman.pwn"
#include "./includes/jobs/detective.pwn"
#include "./includes/jobs/drugs.pwn"
#include "./includes/garbagesystem.pwn"
#include "./includes/fishingsystem.pwn"
#include "./includes/jobs/jobcore.pwn"
#include "./includes/jobs/dynjobcore.pwn"
#include "./includes/jobs/lawyer.pwn"
#include "./includes/jobs/mechanic.pwn"
#include "./includes/jobs/pizzaboy.pwn"
#include "./includes/jobs/shipment.pwn"
#include "./includes/jobs/taxi.pwn"
#include "./includes/jobs/treasure.pwn"
#include "./includes/jobs/whore.pwn"
#include "./includes/jobs/armsdealer.pwn"
//#include "./includes/jobs/newshipment.pwn" - not supposed to be in yet! Don't forget to uncomment the reset, line 1975 in callbacks.pwn
#include "./includes/core/drugcore.pwn"

//perk system includes
#include "./includes/perks/boombox.pwn"
#include "./includes/perks/backpack.pwn"
#include "./includes/perks/dedicated.pwn"
#include "./includes/perks/famed.pwn" // Can be removed, need to remove a few lines
#include "./includes/perks/poker.pwn" // Can be removed, need to remove about 12 lines
#include "./includes/perks/shopcore.pwn" // Can be removed, need to remove about 10 lines
//#include "./includes/perks/tokens.pwn" // Can be removed
#include "./includes/perks/toys.pwn"
#include "./includes/perks/vipcore.pwn"
#include "./includes/perks/casino.pwn"

//#include "./includes/core/ammo.pwn"
#include "./includes/core/phone_new.pwn"
#include "./includes/core/payphones.pwn" // Can be removed, need to remove a few lines
//#include "./includes/group/rivalry.pwn" // Can be removed

// WIP
#include "./includes/core/ATMs.pwn"
#include "./includes/core/Banks.pwn"
#include "./includes/core/entexit.pwn"
#include "./includes/vehsystem/vehauto.pwn"
#include "./includes/DBLog.pwn"
//#include "./includes/core/Player_Interact.pwn" // Can be removed


// Jingles WIP
//#include "./includes/core/minigame.pwn" // Can be removed
//#include "./includes/anticheat2.pwn"
#include "./includes/furnituretextures.pwn"
#include "./includes/furniture.pwn"
//#include "./includes/group/elections.pwn"
//#include "./includes/events/naturaldisaster.pwn"

// Westen WIP
//#include "./includes/dynamic/dynpolls2.pwn" // Can be removed

// Jason WIP
//#include "./includes/core/interact.pwn"

main(){}

public OnGameModeInit()
{
	print("Preparing the gamemode, please wait...");
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
	print("Exiting the gamemode, please wait..."); // Added this for easier access to find logs about the gamemode exiting
    g_mysql_Exit();
	return 1;
}

AntiDeAMX()
{
    new a[][] = {
        "Unarmed (Fist)",
        "Brass K"
    };
    #pragma unused a
}
