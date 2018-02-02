-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 10:30 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `911calls`
--

CREATE TABLE `911calls` (
  `id` int(11) NOT NULL,
  `Caller` varchar(24) NOT NULL DEFAULT 'N/A',
  `Phone` int(11) NOT NULL DEFAULT '0',
  `Area` varchar(255) NOT NULL DEFAULT 'None',
  `MainZone` varchar(255) NOT NULL DEFAULT 'None',
  `Description` varchar(255) NOT NULL DEFAULT 'None',
  `Type` int(11) NOT NULL DEFAULT '0',
  `Time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `id` int(11) NOT NULL,
  `DBID` int(11) DEFAULT '0',
  `timestamp` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `type` int(11) DEFAULT '0',
  `flags` int(11) DEFAULT '0',
  `extraid` int(11) DEFAULT '0',
  `totalfired` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT '0',
  `rmisses` int(11) DEFAULT '0',
  `tmisses` int(11) DEFAULT '0',
  `ratio` int(11) DEFAULT '0',
  `Image` text,
  `Video` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `Online` int(11) NOT NULL DEFAULT '0',
  `UpdateDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RegiDate` datetime DEFAULT NULL,
  `LastLogin` datetime DEFAULT NULL,
  `Username` varchar(32) NOT NULL DEFAULT '',
  `Key` varchar(256) NOT NULL DEFAULT '',
  `Salt` varchar(11) DEFAULT NULL,
  `LastPassChange` datetime NOT NULL DEFAULT '2014-07-09 05:06:42',
  `Email` varchar(256) NOT NULL DEFAULT '',
  `_Email` varchar(256) NOT NULL DEFAULT '',
  `EmailOptOut` int(1) NOT NULL DEFAULT '0',
  `IP` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `SecureIP` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `Registered` int(11) NOT NULL DEFAULT '0',
  `ConnectedTime` int(11) NOT NULL DEFAULT '0',
  `Sex` int(11) NOT NULL DEFAULT '1',
  `BirthDate` date DEFAULT '0000-00-00',
  `Age` int(11) NOT NULL DEFAULT '18',
  `Band` int(11) NOT NULL DEFAULT '0',
  `PermBand` int(11) NOT NULL DEFAULT '0',
  `Warnings` int(11) NOT NULL DEFAULT '0',
  `Disabled` int(11) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '1',
  `AdminLevel` int(11) NOT NULL DEFAULT '0',
  `ASM` int(11) NOT NULL DEFAULT '0',
  `AdminType` int(1) NOT NULL DEFAULT '0',
  `SeniorModerator` int(11) NOT NULL DEFAULT '0',
  `Helper` int(11) NOT NULL DEFAULT '0',
  `DonateRank` int(11) NOT NULL DEFAULT '0',
  `Respect` int(11) NOT NULL DEFAULT '0',
  `Money` bigint(11) NOT NULL DEFAULT '5000',
  `Bank` bigint(11) NOT NULL DEFAULT '20000',
  `pHealth` float(10,5) NOT NULL DEFAULT '50.00000',
  `pArmor` float(10,5) NOT NULL DEFAULT '0.00000',
  `pSHealth` float(10,5) NOT NULL DEFAULT '0.00000',
  `Int` int(11) NOT NULL DEFAULT '0',
  `VirtualWorld` int(11) NOT NULL DEFAULT '0',
  `Model` int(11) NOT NULL DEFAULT '299',
  `SPos_x` float(20,5) NOT NULL DEFAULT '0.00000',
  `SPos_y` float(20,5) NOT NULL DEFAULT '0.00000',
  `SPos_z` float(20,5) NOT NULL DEFAULT '0.00000',
  `SPos_r` float(20,5) NOT NULL DEFAULT '0.00000',
  `BanAppealer` int(11) NOT NULL DEFAULT '0',
  `PR` int(11) NOT NULL DEFAULT '0',
  `HR` int(11) NOT NULL DEFAULT '0',
  `AP` int(11) NOT NULL DEFAULT '0',
  `Security` int(11) NOT NULL DEFAULT '0',
  `ShopTech` int(11) NOT NULL DEFAULT '0',
  `FactionModerator` int(11) NOT NULL DEFAULT '0',
  `GangModerator` int(11) NOT NULL DEFAULT '0',
  `Undercover` int(11) NOT NULL DEFAULT '0',
  `TogReports` int(11) NOT NULL DEFAULT '0',
  `Radio` int(11) NOT NULL DEFAULT '0',
  `RadioFreq` int(11) NOT NULL DEFAULT '0',
  `UpgradePoints` int(11) NOT NULL DEFAULT '0',
  `Origin` int(11) NOT NULL DEFAULT '0',
  `Muted` int(11) NOT NULL DEFAULT '0',
  `Crimes` int(11) NOT NULL DEFAULT '0',
  `Accent` int(11) NOT NULL DEFAULT '0',
  `CHits` int(11) NOT NULL DEFAULT '0',
  `FHits` int(11) NOT NULL DEFAULT '0',
  `Arrested` int(11) NOT NULL DEFAULT '0',
  `Phonebook` int(11) NOT NULL DEFAULT '0',
  `LottoNr` int(11) NOT NULL DEFAULT '0',
  `Fishes` int(11) NOT NULL DEFAULT '0',
  `BiggestFish` int(11) NOT NULL DEFAULT '0',
  `Job` int(11) NOT NULL DEFAULT '0',
  `Job2` int(11) NOT NULL DEFAULT '0',
  `Paycheck` int(11) NOT NULL DEFAULT '0',
  `HeadValue` int(11) NOT NULL DEFAULT '0',
  `Jailed` int(11) NOT NULL DEFAULT '0',
  `JailTime` int(11) NOT NULL DEFAULT '0',
  `WRestricted` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Crates` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Nation` int(1) NOT NULL DEFAULT '0',
  `Leader` int(11) NOT NULL DEFAULT '-1',
  `Member` int(11) NOT NULL DEFAULT '-1',
  `Division` int(11) NOT NULL DEFAULT '-1',
  `Badge` varchar(8) NOT NULL DEFAULT 'None',
  `FMember` int(11) NOT NULL DEFAULT '255',
  `Rank` int(11) NOT NULL DEFAULT '-1',
  `DetSkill` int(11) NOT NULL DEFAULT '0',
  `SexSkill` int(11) NOT NULL DEFAULT '0',
  `BoxSkill` int(11) NOT NULL DEFAULT '0',
  `LawSkill` int(11) NOT NULL DEFAULT '0',
  `MechSkill` int(11) NOT NULL DEFAULT '0',
  `TruckSkill` int(11) NOT NULL DEFAULT '0',
  `DrugsSkill` int(11) NOT NULL DEFAULT '0',
  `ArmsSkill` int(11) NOT NULL DEFAULT '0',
  `SmugglerSkill` int(11) NOT NULL DEFAULT '0',
  `FishSkill` int(11) NOT NULL DEFAULT '0',
  `FightingStyle` int(11) NOT NULL DEFAULT '0',
  `PhoneNr` int(11) NOT NULL DEFAULT '0',
  `Apartment` int(11) NOT NULL DEFAULT '-1',
  `Apartment2` int(11) NOT NULL DEFAULT '-1',
  `Renting` int(11) NOT NULL DEFAULT '-1',
  `CarLic` int(11) NOT NULL DEFAULT '0',
  `FlyLic` int(11) NOT NULL DEFAULT '0',
  `BoatLic` int(11) NOT NULL DEFAULT '1',
  `FishLic` int(11) NOT NULL DEFAULT '1',
  `CheckCash` int(11) NOT NULL DEFAULT '0',
  `Checks` int(11) NOT NULL DEFAULT '0',
  `GunLic` int(11) NOT NULL DEFAULT '1',
  `Gun0` int(11) NOT NULL DEFAULT '0',
  `Gun1` int(11) NOT NULL DEFAULT '0',
  `Gun2` int(11) NOT NULL DEFAULT '0',
  `Gun3` int(11) NOT NULL DEFAULT '0',
  `Gun4` int(11) NOT NULL DEFAULT '0',
  `Gun5` int(11) NOT NULL DEFAULT '0',
  `Gun6` int(11) NOT NULL DEFAULT '0',
  `Gun7` int(11) NOT NULL DEFAULT '0',
  `Gun8` int(11) NOT NULL DEFAULT '0',
  `Gun9` int(11) NOT NULL DEFAULT '0',
  `Gun10` int(11) NOT NULL DEFAULT '0',
  `Gun11` int(11) NOT NULL DEFAULT '0',
  `DrugsTime` int(11) NOT NULL DEFAULT '0',
  `LawyerTime` int(11) NOT NULL DEFAULT '0',
  `LawyerFreeTime` int(11) NOT NULL DEFAULT '0',
  `MechTime` int(11) NOT NULL DEFAULT '0',
  `SexTime` int(11) NOT NULL DEFAULT '0',
  `PayDay` int(11) NOT NULL DEFAULT '0',
  `PayDayHad` int(11) NOT NULL DEFAULT '0',
  `CDPlayer` int(11) NOT NULL DEFAULT '0',
  `Dice` int(11) NOT NULL DEFAULT '0',
  `Spraycan` int(11) NOT NULL DEFAULT '0',
  `Rope` int(11) NOT NULL DEFAULT '0',
  `Cigars` int(11) NOT NULL DEFAULT '0',
  `Sprunk` int(11) NOT NULL DEFAULT '0',
  `Bombs` int(11) NOT NULL DEFAULT '0',
  `Wins` int(11) NOT NULL DEFAULT '0',
  `Loses` int(11) NOT NULL DEFAULT '0',
  `Tutorial` int(11) NOT NULL DEFAULT '0',
  `OnDuty` int(11) NOT NULL DEFAULT '0',
  `Hospital` int(11) NOT NULL DEFAULT '0',
  `Married` int(11) NOT NULL DEFAULT '0',
  `MarriedID` int(11) NOT NULL DEFAULT '-1',
  `MarriedTo` varchar(32) NOT NULL DEFAULT 'Nobody',
  `ContractBy` varchar(32) NOT NULL DEFAULT 'Nobody',
  `ContractDetail` varchar(64) NOT NULL DEFAULT 'None',
  `WantedLevel` int(11) NOT NULL DEFAULT '0',
  `Insurance` int(11) NOT NULL DEFAULT '0',
  `911Muted` int(1) NOT NULL DEFAULT '0',
  `NewMuted` int(11) NOT NULL DEFAULT '0',
  `NewMutedTotal` int(11) NOT NULL DEFAULT '0',
  `AdMuted` int(11) NOT NULL DEFAULT '0',
  `AdMutedTotal` int(11) NOT NULL DEFAULT '0',
  `HelpMute` int(11) NOT NULL DEFAULT '0',
  `ReportMuted` int(11) NOT NULL DEFAULT '0',
  `ReportMutedTotal` int(11) NOT NULL DEFAULT '0',
  `ReportMutedTime` int(11) NOT NULL DEFAULT '0',
  `VIPMuted` int(11) NOT NULL DEFAULT '0',
  `VIPMutedTime` int(11) NOT NULL DEFAULT '0',
  `GiftTime` int(11) NOT NULL DEFAULT '0',
  `AdvisorDutyHours` int(11) NOT NULL DEFAULT '0',
  `AcceptedHelp` int(11) NOT NULL DEFAULT '0',
  `AcceptReport` int(11) NOT NULL DEFAULT '0',
  `ShopTechOrders` int(11) NOT NULL DEFAULT '0',
  `TrashReport` int(11) NOT NULL DEFAULT '0',
  `GangWarn` int(11) NOT NULL DEFAULT '0',
  `FactionBanned` int(11) NOT NULL DEFAULT '0',
  `CSFBanned` int(11) NOT NULL DEFAULT '0',
  `VIPInviteDay` int(11) NOT NULL DEFAULT '0',
  `TempVIP` int(11) NOT NULL DEFAULT '0',
  `BuddyInvite` int(11) NOT NULL DEFAULT '0',
  `Tokens` int(11) NOT NULL DEFAULT '0',
  `PTokens` int(11) NOT NULL DEFAULT '0',
  `TriageTime` int(11) NOT NULL DEFAULT '0',
  `PrisonedBy` varchar(32) NOT NULL DEFAULT 'Nobody',
  `PrisonReason` varchar(128) NOT NULL DEFAULT 'None',
  `Flag` varchar(128) NOT NULL DEFAULT '',
  `TaxiLicense` int(11) NOT NULL DEFAULT '0',
  `TicketTime` int(11) NOT NULL DEFAULT '0',
  `Screwdriver` int(11) NOT NULL DEFAULT '0',
  `Smslog` int(11) NOT NULL DEFAULT '0',
  `Wristwatch` int(11) NOT NULL DEFAULT '0',
  `Surveillance` int(11) NOT NULL DEFAULT '0',
  `Tire` int(11) NOT NULL DEFAULT '0',
  `Firstaid` int(11) NOT NULL DEFAULT '0',
  `Rccam` int(11) NOT NULL DEFAULT '0',
  `Receiver` int(11) NOT NULL DEFAULT '0',
  `GPS` int(11) NOT NULL DEFAULT '0',
  `Sweep` int(11) NOT NULL DEFAULT '0',
  `SweepLeft` int(11) NOT NULL DEFAULT '0',
  `Bugged` int(11) NOT NULL DEFAULT '0',
  `pWExists` int(11) NOT NULL DEFAULT '0',
  `pWSeeds` int(11) NOT NULL DEFAULT '0',
  `Warrants` varchar(128) NOT NULL DEFAULT '',
  `JudgeJailTime` int(11) NOT NULL DEFAULT '0',
  `JudgeJailType` int(11) NOT NULL DEFAULT '0',
  `BeingSentenced` int(11) NOT NULL DEFAULT '0',
  `ProbationTime` int(11) NOT NULL DEFAULT '0',
  `PlayerKills` int(11) NOT NULL,
  `DMKills` int(11) NOT NULL DEFAULT '0',
  `Order` varchar(63) NOT NULL DEFAULT '',
  `OrderConfirmed` int(11) NOT NULL DEFAULT '0',
  `CallsAccepted` int(11) NOT NULL DEFAULT '0',
  `PatientsDelivered` int(11) NOT NULL DEFAULT '0',
  `LiveBanned` int(11) NOT NULL DEFAULT '0',
  `FreezeBank` int(11) NOT NULL DEFAULT '0',
  `FreezeHouse` int(11) NOT NULL DEFAULT '0',
  `FreezeCar` int(11) NOT NULL DEFAULT '0',
  `Hydration` int(11) NOT NULL DEFAULT '0',
  `DoubleEXP` int(11) NOT NULL DEFAULT '0',
  `EXPToken` int(11) NOT NULL DEFAULT '0',
  `RacePlayerLaps` int(11) NOT NULL DEFAULT '0',
  `Ringtone` int(11) NOT NULL DEFAULT '0',
  `VIPM` int(11) NOT NULL DEFAULT '0',
  `VIPMO` int(11) NOT NULL DEFAULT '0',
  `VIPExpire` int(11) NOT NULL DEFAULT '0',
  `VIPSold` int(11) NOT NULL DEFAULT '0',
  `GVip` int(11) NOT NULL DEFAULT '0',
  `Speedo` int(11) NOT NULL DEFAULT '0',
  `Firework` int(11) NOT NULL DEFAULT '0',
  `Boombox` int(11) NOT NULL DEFAULT '0',
  `DrawChance` int(11) NOT NULL DEFAULT '0',
  `GoldBoxTokens` int(11) NOT NULL DEFAULT '0',
  `RewardHours` float(10,5) NOT NULL DEFAULT '0.00000',
  `DMRMuted` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `Watchdog` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `CarsRestricted` tinyint(2) NOT NULL DEFAULT '0',
  `Flagged` tinyint(2) NOT NULL DEFAULT '0',
  `LepPoints` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `LepSafePoints` int(11) NOT NULL DEFAULT '0',
  `LastCarWarning` int(11) NOT NULL DEFAULT '0',
  `CarWarns` int(11) NOT NULL DEFAULT '0',
  `Scripter` int(11) NOT NULL DEFAULT '0',
  `Hours` int(11) NOT NULL DEFAULT '0',
  `Paper` int(11) NOT NULL DEFAULT '0',
  `MailEnabled` int(11) NOT NULL DEFAULT '1',
  `Mailbox` int(11) NOT NULL DEFAULT '0',
  `UnreadMails` int(11) NOT NULL DEFAULT '0',
  `TreasureSkill` int(5) NOT NULL DEFAULT '0',
  `MetalDetector` int(5) NOT NULL DEFAULT '0',
  `HelpedBefore` int(11) NOT NULL DEFAULT '0',
  `Business` int(11) NOT NULL DEFAULT '-1',
  `BusinessRank` int(11) NOT NULL DEFAULT '-1',
  `pEventTokens` int(11) NOT NULL DEFAULT '0',
  `RHMutes` int(1) NOT NULL DEFAULT '0',
  `RHMuteTime` int(11) NOT NULL DEFAULT '0',
  `referral_id` varchar(20) DEFAULT NULL,
  `GiftCode` int(11) NOT NULL DEFAULT '0',
  `Table` int(11) NOT NULL DEFAULT '0',
  `OpiumSeeds` int(11) NOT NULL DEFAULT '0',
  `RawOpium` int(11) NOT NULL DEFAULT '0',
  `Heroin` int(11) NOT NULL DEFAULT '0',
  `Syringe` int(11) NOT NULL DEFAULT '0',
  `Skins` int(11) NOT NULL DEFAULT '0',
  `Hunger` int(11) NOT NULL DEFAULT '50',
  `HungerTimer` int(11) NOT NULL DEFAULT '0',
  `HungerDeathTimer` int(11) NOT NULL DEFAULT '0',
  `Fitness` int(11) NOT NULL DEFAULT '0',
  `LastCharmReceived` int(11) NOT NULL DEFAULT '0',
  `ForcePasswordChange` int(11) NOT NULL DEFAULT '0',
  `Credits` int(11) NOT NULL DEFAULT '0',
  `ReceivedCredits` int(11) NOT NULL DEFAULT '0',
  `TotalCredits` int(11) NOT NULL DEFAULT '0',
  `HealthCare` int(11) NOT NULL DEFAULT '0',
  `Pin` varchar(256) NOT NULL DEFAULT '',
  `RimMod` int(11) NOT NULL DEFAULT '0',
  `Tazer` int(11) NOT NULL DEFAULT '0',
  `Cuff` int(11) NOT NULL DEFAULT '0',
  `CarVoucher` int(11) NOT NULL DEFAULT '0',
  `ReferredBy` varchar(32) NOT NULL DEFAULT 'Nobody',
  `ReferredID` int(11) NOT NULL DEFAULT '-1',
  `PendingRefReward` int(11) NOT NULL DEFAULT '0',
  `Refers` int(11) NOT NULL DEFAULT '0',
  `Developer` int(11) NOT NULL DEFAULT '0',
  `Famed` int(11) NOT NULL DEFAULT '0',
  `FamedMuted` int(11) NOT NULL DEFAULT '0',
  `DefendTime` int(11) NOT NULL DEFAULT '0',
  `PVIPVoucher` int(11) NOT NULL DEFAULT '0',
  `VehicleSlot` int(11) NOT NULL DEFAULT '0',
  `ToySlot` int(11) NOT NULL DEFAULT '0',
  `RFLTeam` int(11) NOT NULL DEFAULT '-1',
  `RFLTeamL` int(11) NOT NULL DEFAULT '-1',
  `ReceivedCreditReward` int(11) NOT NULL DEFAULT '0',
  `GiftVoucher` int(11) NOT NULL DEFAULT '0',
  `VehVoucher` int(11) NOT NULL DEFAULT '0',
  `SVIPVoucher` int(11) NOT NULL DEFAULT '0',
  `GVIPVoucher` int(11) NOT NULL DEFAULT '0',
  `FallIntoFun` int(11) NOT NULL DEFAULT '0',
  `HungerVoucher` int(11) NOT NULL DEFAULT '0',
  `BoughtCure` int(11) NOT NULL DEFAULT '0',
  `Vials` int(11) NOT NULL DEFAULT '0',
  `ShopCounter` int(11) NOT NULL DEFAULT '0',
  `ShopNotice` int(11) NOT NULL DEFAULT '0',
  `AdvertVoucher` int(11) NOT NULL DEFAULT '0',
  `SVIPExVoucher` int(11) NOT NULL DEFAULT '0',
  `GVIPExVoucher` int(11) NOT NULL DEFAULT '0',
  `VIPSellable` int(11) NOT NULL DEFAULT '0',
  `ReceivedPrize` int(11) NOT NULL DEFAULT '0',
  `VIPSpawn` int(11) NOT NULL DEFAULT '0',
  `FreeAdsDay` int(11) NOT NULL DEFAULT '0',
  `FreeAdsLeft` int(11) NOT NULL DEFAULT '0',
  `BuddyInvites` int(11) NOT NULL DEFAULT '0',
  `ReceivedBGift` int(11) NOT NULL DEFAULT '0',
  `pVIPJob` int(11) NOT NULL DEFAULT '1',
  `LastBirthday` int(11) NOT NULL DEFAULT '0',
  `Job3` int(11) NOT NULL DEFAULT '0',
  `Apartment3` int(11) NOT NULL DEFAULT '-1',
  `Backpack` int(11) NOT NULL DEFAULT '0',
  `BEquipped` int(11) NOT NULL DEFAULT '0',
  `BStoredH` int(11) NOT NULL DEFAULT '0',
  `BStoredV` int(11) NOT NULL DEFAULT '0',
  `BItem0` int(11) NOT NULL DEFAULT '0',
  `BItem1` int(11) NOT NULL DEFAULT '0',
  `BItem2` int(11) NOT NULL DEFAULT '0',
  `BItem3` int(11) NOT NULL DEFAULT '0',
  `BItem4` int(11) NOT NULL DEFAULT '0',
  `BItem5` int(11) NOT NULL DEFAULT '0',
  `BItem6` int(11) NOT NULL DEFAULT '0',
  `BItem7` int(11) NOT NULL DEFAULT '0',
  `BItem8` int(11) NOT NULL DEFAULT '0',
  `BItem9` int(11) NOT NULL DEFAULT '0',
  `BItem10` int(11) NOT NULL DEFAULT '0',
  `AccountRestricted` int(11) NOT NULL DEFAULT '0',
  `Watchlist` int(11) NOT NULL DEFAULT '0',
  `WatchlistTime` int(11) NOT NULL DEFAULT '0',
  `BetaTester` int(11) NOT NULL DEFAULT '0',
  `AvatarLink` varchar(255) NOT NULL DEFAULT 'http://',
  `cms` int(11) NOT NULL DEFAULT '0',
  `BRTimeout` int(11) NOT NULL DEFAULT '0',
  `NewbieTogged` int(11) NOT NULL DEFAULT '0',
  `VIPTogged` int(11) NOT NULL DEFAULT '0',
  `FamedTogged` int(11) NOT NULL DEFAULT '0',
  `pDigCooldown` int(11) NOT NULL DEFAULT '0',
  `ToolBox` int(11) NOT NULL DEFAULT '0',
  `CrowBar` int(11) NOT NULL DEFAULT '0',
  `CarLockPickSkill` int(11) NOT NULL DEFAULT '0',
  `LockPickVehCount` int(11) NOT NULL DEFAULT '0',
  `LockPickTime` int(11) NOT NULL DEFAULT '0',
  `SEC` int(11) NOT NULL DEFAULT '0',
  `BM` int(11) NOT NULL DEFAULT '0',
  `Isolated` int(11) NOT NULL DEFAULT '0',
  `WantedJailTime` int(11) NOT NULL DEFAULT '0',
  `WantedJailFine` int(11) NOT NULL DEFAULT '0',
  `NextNameChange` int(11) NOT NULL DEFAULT '0',
  `pExamineDesc` varchar(256) NOT NULL DEFAULT 'None',
  `FavStation` varchar(255) NOT NULL DEFAULT '',
  `pDedicatedPlayer` int(11) NOT NULL DEFAULT '0',
  `pDedicatedEnabled` int(11) NOT NULL DEFAULT '0',
  `pDedicatedMuted` int(11) NOT NULL DEFAULT '0',
  `pDedicatedWarn` int(11) NOT NULL DEFAULT '0',
  `BItem11` int(11) NOT NULL DEFAULT '0',
  `mInventory` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `mPurchaseCounts` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `mCooldowns` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `mBoost` varchar(255) NOT NULL DEFAULT '0|0',
  `mShopNotice` varchar(255) NOT NULL DEFAULT '0|0',
  `zFuelCan` int(11) NOT NULL DEFAULT '0',
  `bTicket` int(11) NOT NULL DEFAULT '0',
  `JailedInfo` varchar(255) NOT NULL DEFAULT '0|0|0|0|0',
  `JailedWeapons` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0',
  `pVIPMod` int(11) NOT NULL DEFAULT '0',
  `EmailConfirmed` int(11) NOT NULL DEFAULT '0',
  `EmailCount` int(11) NOT NULL DEFAULT '0',
  `Trickortreat` int(11) NOT NULL DEFAULT '0',
  `pBailPrice` int(11) NOT NULL DEFAULT '0',
  `Ammo0` int(11) NOT NULL DEFAULT '0',
  `Ammo1` int(11) NOT NULL DEFAULT '0',
  `Ammo2` int(11) NOT NULL DEFAULT '0',
  `Ammo3` int(11) NOT NULL DEFAULT '0',
  `Ammo4` int(11) NOT NULL DEFAULT '0',
  `VIPGunsCount` int(11) NOT NULL DEFAULT '0',
  `pBAmmo0` int(11) NOT NULL DEFAULT '0',
  `pBAmmo1` int(11) NOT NULL DEFAULT '0',
  `pBAmmo2` int(11) NOT NULL DEFAULT '0',
  `pBAmmo3` int(11) NOT NULL DEFAULT '0',
  `pBAmmo4` int(11) NOT NULL DEFAULT '0',
  `Wallpaper` int(11) NOT NULL DEFAULT '0',
  `Cannabis` int(11) NOT NULL DEFAULT '0',
  `Meth` int(11) NOT NULL DEFAULT '0',
  `Cocaine` int(11) NOT NULL DEFAULT '0',
  `Opium` int(11) NOT NULL DEFAULT '0',
  `Ecstasy` int(11) NOT NULL DEFAULT '0',
  `Speed` int(11) NOT NULL DEFAULT '0',
  `Alcohol` int(11) NOT NULL DEFAULT '0',
  `Demerol` int(11) NOT NULL DEFAULT '0',
  `Morphine` int(11) NOT NULL DEFAULT '0',
  `Haloperidol` int(11) NOT NULL DEFAULT '0',
  `Aspirin` int(11) NOT NULL DEFAULT '0',
  `Mgseeds` int(11) NOT NULL DEFAULT '0',
  `Canseeds` int(11) NOT NULL DEFAULT '0',
  `Lye` int(11) NOT NULL DEFAULT '0',
  `Ethyl` int(11) NOT NULL DEFAULT '0',
  `Ephedrine` int(11) NOT NULL DEFAULT '0',
  `Diswater` int(11) NOT NULL DEFAULT '0',
  `Opiumpop` int(11) NOT NULL DEFAULT '0',
  `Lime` int(11) NOT NULL DEFAULT '0',
  `Baking` int(11) NOT NULL DEFAULT '0',
  `Cocextract` int(11) NOT NULL DEFAULT '0',
  `Nbenzynol` int(11) NOT NULL DEFAULT '0',
  `Pmkoil` int(11) NOT NULL DEFAULT '0',
  `Mdmacrys` int(11) NOT NULL DEFAULT '0',
  `Caffeine` int(11) NOT NULL DEFAULT '0',
  `Lsd` int(11) NOT NULL DEFAULT '0',
  `Muriatic` int(11) NOT NULL DEFAULT '0',
  `DrugQuality` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `ToggledChats` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `ChatboxSettings` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `ChatTog0` int(2) NOT NULL DEFAULT '0',
  `ChatTog1` int(2) NOT NULL DEFAULT '0',
  `ChatTog2` int(2) NOT NULL DEFAULT '0',
  `ChatTog3` int(2) NOT NULL DEFAULT '0',
  `ChatTog4` int(2) NOT NULL DEFAULT '0',
  `ChatTog5` int(2) NOT NULL DEFAULT '0',
  `ChatTog6` int(2) NOT NULL DEFAULT '0',
  `ChatTog7` int(2) NOT NULL DEFAULT '0',
  `ChatTog8` int(2) NOT NULL DEFAULT '0',
  `ChatTog9` int(2) NOT NULL DEFAULT '0',
  `ChatTog10` int(2) NOT NULL DEFAULT '0',
  `ChatTog11` int(2) NOT NULL DEFAULT '0',
  `ChatTog12` int(2) NOT NULL DEFAULT '0',
  `ChatTog13` int(2) NOT NULL DEFAULT '0',
  `ChatTog14` int(2) NOT NULL DEFAULT '0',
  `ChatTog15` int(2) NOT NULL DEFAULT '0',
  `ChatTog16` int(2) NOT NULL DEFAULT '0',
  `ChatTog17` int(2) NOT NULL DEFAULT '0',
  `ChatTog18` int(2) NOT NULL DEFAULT '0',
  `ChatTog19` int(2) NOT NULL DEFAULT '0',
  `ChatTog20` int(2) NOT NULL DEFAULT '0',
  `ChatTog21` int(2) NOT NULL DEFAULT '0',
  `ChatTog22` int(2) NOT NULL DEFAULT '0',
  `ChatTog23` int(2) NOT NULL DEFAULT '0',
  `GroupToy0` float NOT NULL DEFAULT '0',
  `GroupToy1` float NOT NULL DEFAULT '0',
  `GroupToy2` float NOT NULL DEFAULT '0',
  `GroupToy3` float NOT NULL DEFAULT '0',
  `GroupToy4` float NOT NULL DEFAULT '0',
  `GroupToy5` float NOT NULL DEFAULT '0',
  `GroupToy6` float NOT NULL DEFAULT '0',
  `GroupToy7` float NOT NULL DEFAULT '1',
  `GroupToy8` float NOT NULL DEFAULT '1',
  `GroupToy9` float NOT NULL DEFAULT '1',
  `GroupToyBone` int(4) NOT NULL DEFAULT '1',
  `BDrug0` int(11) NOT NULL DEFAULT '0',
  `BDrug1` int(11) NOT NULL DEFAULT '0',
  `BDrug2` int(11) NOT NULL DEFAULT '0',
  `BDrug3` int(11) NOT NULL DEFAULT '0',
  `BDrug4` int(11) NOT NULL DEFAULT '0',
  `BDrug5` int(11) NOT NULL DEFAULT '0',
  `BDrug6` int(11) NOT NULL DEFAULT '0',
  `BDrug7` int(11) NOT NULL DEFAULT '0',
  `BDrug8` int(11) NOT NULL DEFAULT '0',
  `BDrug9` int(11) NOT NULL DEFAULT '0',
  `BDrug10` int(11) NOT NULL DEFAULT '0',
  `BDrug11` int(11) NOT NULL DEFAULT '0',
  `BDrug12` int(11) NOT NULL DEFAULT '0',
  `BDrug13` int(11) NOT NULL DEFAULT '0',
  `PrisonSoap` int(11) NOT NULL DEFAULT '0',
  `PrisonSugar` int(11) NOT NULL DEFAULT '0',
  `PrisonBread` int(11) NOT NULL DEFAULT '0',
  `PrisonShank` int(11) NOT NULL DEFAULT '0',
  `PrisonShankOut` int(11) NOT NULL DEFAULT '0',
  `ShankUsages` int(11) NOT NULL DEFAULT '0',
  `PrisonWine` int(11) NOT NULL DEFAULT '0',
  `PrisonMWine` int(11) NOT NULL DEFAULT '0',
  `PrisonChisel` int(11) NOT NULL DEFAULT '0',
  `PrisonCellChisel` int(11) NOT NULL DEFAULT '0',
  `FishingSkill` int(11) NOT NULL DEFAULT '0',
  `FishWeight` int(11) NOT NULL DEFAULT '0',
  `GarbageSkill` int(11) NOT NULL DEFAULT '0',
  `PrisonDrugs` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `PrisonCredits` int(11) NOT NULL DEFAULT '0',
  `PrisonMaterials` int(11) NOT NULL,
  `PrisonCell` int(11) NOT NULL,
  `PrisonWineTime` int(11) NOT NULL,
  `pLastPoll` int(11) NOT NULL DEFAULT '0',
  `EventPoint` int(11) NOT NULL,
  `EventPrizeClaim` int(11) NOT NULL,
  `DrugSmuggler` int(11) NOT NULL,
  `Pot` int(11) NOT NULL,
  `StaffBanned` int(11) NOT NULL,
  `PollKeyA` varchar(24) NOT NULL DEFAULT 'Invalid Key',
  `PollKeyB` varchar(24) NOT NULL DEFAULT 'Invalid Key',
  `PollKeyC` varchar(24) NOT NULL DEFAULT 'Invalid Key',
  `FurnitureSlots` int(11) NOT NULL,
  `Rags` int(11) NOT NULL,
  `Hitman` int(11) NOT NULL DEFAULT '-1',
  `HitmanLeader` int(11) NOT NULL,
  `HitmanBlacklisted` int(11) NOT NULL,
  `BlacklistReason` varchar(64) NOT NULL,
  `CopKit` int(11) NOT NULL DEFAULT '0',
  `DedicatedHours` int(11) NOT NULL DEFAULT '0',
  `DedicatedTimestamp` date NOT NULL DEFAULT '0000-00-00',
  `DedicatedDaymarker` date NOT NULL DEFAULT '0000-00-00',
  `WalkStyle` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `anticheat`
--

CREATE TABLE `anticheat` (
  `id` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `microtime` int(11) NOT NULL,
  `damagedid` int(11) NOT NULL,
  `damagedlastupdate` int(11) NOT NULL,
  `damagedping` int(11) NOT NULL,
  `giverid` int(11) NOT NULL,
  `giverping` int(11) NOT NULL,
  `amount` float(10,5) NOT NULL,
  `weaponid` tinyint(3) NOT NULL,
  `damagedX` float(10,5) NOT NULL,
  `damagedY` float(10,5) NOT NULL,
  `damagedZ` float(10,5) NOT NULL,
  `giverX` float(10,5) NOT NULL,
  `giverY` float(10,5) NOT NULL,
  `giverZ` float(10,5) NOT NULL,
  `giverCX` float(10,5) NOT NULL,
  `giverCY` float(10,5) NOT NULL,
  `giverCZ` float(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_admins`
--

CREATE TABLE `app_admins` (
  `id` int(254) NOT NULL,
  `adminName` varchar(254) DEFAULT NULL,
  `status` varchar(10) DEFAULT '1',
  `lastMsg` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `app_todo`
--

CREATE TABLE `app_todo` (
  `id` int(254) NOT NULL,
  `adminName` varchar(254) DEFAULT NULL,
  `todo` varchar(999) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arenas`
--

CREATE TABLE `arenas` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT 'Name',
  `vw` int(11) NOT NULL DEFAULT '0',
  `interior` int(11) NOT NULL DEFAULT '0',
  `dm1` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `dm2` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `dm3` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `dm4` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `red1` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `red2` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `red3` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `blue1` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `blue2` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `blue3` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0|0.0',
  `flagred` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0',
  `flagblue` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0',
  `hill` varchar(128) NOT NULL DEFAULT '0.0|0.0|0.0',
  `hillr` float(11,4) NOT NULL DEFAULT '0.0000',
  `veh1` varchar(128) NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh2` varchar(128) NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh3` varchar(128) NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh4` varchar(128) NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh5` varchar(128) NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0',
  `veh6` varchar(128) NOT NULL DEFAULT '0|0.0|0.0|0.0|0.0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `id` int(2) NOT NULL,
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `VW` int(5) NOT NULL DEFAULT '0',
  `Int` int(5) NOT NULL DEFAULT '0',
  `Type` int(1) NOT NULL DEFAULT '0',
  `jailVW` int(5) NOT NULL DEFAULT '0',
  `jailInt` int(5) NOT NULL DEFAULT '0',
  `jailpos1x` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos1y` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos1z` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2x` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2y` float(10,5) NOT NULL DEFAULT '0.00000',
  `jailpos2z` float(10,5) NOT NULL DEFAULT '0.00000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `arrestreports`
--

CREATE TABLE `arrestreports` (
  `id` int(12) NOT NULL,
  `copid` int(12) NOT NULL DEFAULT '0',
  `suspectid` int(12) NOT NULL DEFAULT '0',
  `shortreport` varchar(512) NOT NULL DEFAULT '',
  `longreport` varchar(2024) NOT NULL DEFAULT '',
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `origin` int(11) NOT NULL DEFAULT '1' COMMENT 'SA=1 | TR=2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `id` int(11) NOT NULL,
  `BiddingFor` varchar(64) NOT NULL DEFAULT '(none)',
  `InProgress` int(11) NOT NULL DEFAULT '0',
  `Bid` int(11) NOT NULL DEFAULT '0',
  `Bidder` int(11) NOT NULL DEFAULT '0',
  `Expires` int(11) NOT NULL DEFAULT '0',
  `Wining` varchar(24) NOT NULL DEFAULT '(none)',
  `Increment` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `backpacks`
--

CREATE TABLE `backpacks` (
  `id` int(11) NOT NULL,
  `BEquipped` int(11) NOT NULL DEFAULT '0',
  `BStoredH` int(11) NOT NULL DEFAULT '-1',
  `BStoredV` int(11) NOT NULL DEFAULT '0',
  `posX` float NOT NULL DEFAULT '0',
  `posY` float NOT NULL DEFAULT '0',
  `posZ` float NOT NULL DEFAULT '0',
  `rotX` float NOT NULL DEFAULT '0',
  `rotY` float NOT NULL DEFAULT '0',
  `rotZ` float NOT NULL DEFAULT '0',
  `scaleX` float NOT NULL DEFAULT '0',
  `scaleY` float NOT NULL DEFAULT '0',
  `scaleZ` float NOT NULL DEFAULT '0',
  `color` mediumint(8) UNSIGNED NOT NULL DEFAULT '16777215'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE `ban` (
  `id` int(11) NOT NULL,
  `bannedid` int(11) NOT NULL,
  `creatorid` int(11) NOT NULL,
  `IP` varchar(17) NOT NULL,
  `reason` varchar(128) NOT NULL,
  `createdate` int(11) NOT NULL,
  `liftdate` int(11) NOT NULL DEFAULT '2147483647',
  `active` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id` int(11) NOT NULL,
  `money` bigint(20) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` varchar(32) DEFAULT NULL,
  `reason` varchar(156) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `date_unban` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `link` varchar(156) DEFAULT NULL,
  `admin` varchar(156) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blackmarkets`
--

CREATE TABLE `blackmarkets` (
  `id` int(11) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '-1',
  `posx` float NOT NULL DEFAULT '0',
  `posy` float NOT NULL DEFAULT '0',
  `posz` float NOT NULL DEFAULT '0',
  `delposx` float NOT NULL DEFAULT '0',
  `delposy` float NOT NULL DEFAULT '0',
  `delposz` float NOT NULL DEFAULT '0',
  `vw` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL,
  `Lsd` int(11) NOT NULL DEFAULT '0',
  `Cannabis` int(11) NOT NULL DEFAULT '0',
  `Meth` int(11) NOT NULL DEFAULT '0',
  `Cocaine` int(11) NOT NULL DEFAULT '0',
  `Opium` int(11) NOT NULL DEFAULT '0',
  `Ecstasy` int(11) NOT NULL DEFAULT '0',
  `Speed` int(11) NOT NULL DEFAULT '0',
  `Alcohol` int(11) NOT NULL DEFAULT '0',
  `Demerol` int(11) NOT NULL DEFAULT '0',
  `Morphine` int(11) NOT NULL DEFAULT '0',
  `Haloperidol` int(11) NOT NULL DEFAULT '0',
  `Aspirin` int(11) NOT NULL DEFAULT '0',
  `Mgseeds` int(11) NOT NULL DEFAULT '0',
  `Canseeds` int(11) NOT NULL DEFAULT '0',
  `Lye` int(11) NOT NULL DEFAULT '0',
  `Ethyl` int(11) NOT NULL DEFAULT '0',
  `Ephedrine` int(11) NOT NULL DEFAULT '0',
  `Diswater` int(11) NOT NULL DEFAULT '0',
  `Opiumpop` int(11) NOT NULL DEFAULT '0',
  `Lime` int(11) NOT NULL DEFAULT '0',
  `Baking` int(11) NOT NULL DEFAULT '0',
  `Cocextract` int(11) NOT NULL DEFAULT '0',
  `Nbenzynol` int(11) NOT NULL DEFAULT '0',
  `Pmkoil` int(11) NOT NULL DEFAULT '0',
  `Mdmacrys` int(11) NOT NULL DEFAULT '0',
  `Canseedspay` int(11) NOT NULL DEFAULT '0',
  `Lyepay` int(11) NOT NULL DEFAULT '0',
  `Ethylpay` int(11) NOT NULL DEFAULT '0',
  `Ephedrinepay` int(11) NOT NULL DEFAULT '0',
  `Diswaterpay` int(11) NOT NULL DEFAULT '0',
  `Opiumpoppay` int(11) NOT NULL DEFAULT '0',
  `Limepay` int(11) NOT NULL DEFAULT '0',
  `Muriaticpay` int(11) NOT NULL DEFAULT '0',
  `Bakingpay` int(11) NOT NULL DEFAULT '0',
  `Cocextractpay` int(11) NOT NULL DEFAULT '0',
  `Nbenzynolpay` int(11) NOT NULL DEFAULT '0',
  `Pmkoilpay` int(11) NOT NULL DEFAULT '0',
  `Mdmacryspay` int(11) NOT NULL DEFAULT '0',
  `Cafeinepay` int(11) NOT NULL DEFAULT '0',
  `Mgseedsprice` int(11) NOT NULL,
  `Canseedsprice` int(11) NOT NULL DEFAULT '0',
  `Lyeprice` int(11) NOT NULL DEFAULT '0',
  `Ethylprice` int(11) NOT NULL DEFAULT '0',
  `Ephedrineprice` int(11) NOT NULL DEFAULT '0',
  `Diswaterprice` int(11) NOT NULL DEFAULT '0',
  `Opiumpopprice` int(11) NOT NULL DEFAULT '0',
  `Limeprice` int(11) NOT NULL DEFAULT '0',
  `Bakingprice` int(11) NOT NULL DEFAULT '0',
  `Cocaineprice` int(11) NOT NULL,
  `Cocextractprice` int(11) NOT NULL DEFAULT '0',
  `Nbenzynolprice` int(11) NOT NULL DEFAULT '0',
  `Pmkoilprice` int(11) NOT NULL DEFAULT '0',
  `Mdmacrysprice` int(11) NOT NULL DEFAULT '0',
  `Caffeineprice` int(11) NOT NULL DEFAULT '0',
  `Caffeine` int(11) NOT NULL DEFAULT '0',
  `Muriatic` int(11) NOT NULL,
  `Muriaticprice` int(11) NOT NULL,
  `seized` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `blackmarkets_orders`
--

CREATE TABLE `blackmarkets_orders` (
  `DBID` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL DEFAULT 'None',
  `timestamp` int(11) NOT NULL DEFAULT '-1',
  `groupid` int(11) NOT NULL DEFAULT '0',
  `ingredientid` int(11) NOT NULL DEFAULT '-1',
  `amount` int(11) NOT NULL DEFAULT '0',
  `trackable` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugcomments`
--

CREATE TABLE `bugcomments` (
  `id` int(11) NOT NULL,
  `Bugid` int(11) NOT NULL DEFAULT '0',
  `Postid` int(11) NOT NULL DEFAULT '1',
  `Staff` int(11) NOT NULL DEFAULT '0',
  `UserId` int(11) NOT NULL DEFAULT '0',
  `Message` text CHARACTER SET utf8,
  `Created` int(11) NOT NULL DEFAULT '0',
  `Locked` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Anoy` int(1) NOT NULL DEFAULT '0',
  `Staff` int(1) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '0',
  `Subject` varchar(52) DEFAULT NULL,
  `Created` int(11) NOT NULL DEFAULT '0',
  `Status` int(11) NOT NULL DEFAULT '0',
  `Locked` int(11) NOT NULL DEFAULT '0',
  `Priority` int(11) NOT NULL DEFAULT '0',
  `LastDate` int(11) NOT NULL DEFAULT '0',
  `Assign` int(11) NOT NULL DEFAULT '0',
  `Read` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `Id` int(11) NOT NULL,
  `Name` varchar(40) NOT NULL DEFAULT 'Unnamed Business',
  `Type` int(11) NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `OwnerName` varchar(40) NOT NULL DEFAULT 'None',
  `Months` int(11) NOT NULL DEFAULT '0',
  `SafeBalance` int(11) NOT NULL DEFAULT '0',
  `Inventory` int(11) NOT NULL DEFAULT '0',
  `InventoryCapacity` int(11) NOT NULL DEFAULT '1000',
  `Status` int(11) NOT NULL DEFAULT '1',
  `Level` tinyint(4) NOT NULL DEFAULT '1',
  `LevelProgress` int(11) NOT NULL DEFAULT '0',
  `AutoSale` tinyint(4) NOT NULL DEFAULT '1',
  `OrderDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `OrderAmount` int(11) NOT NULL DEFAULT '0',
  `OrderBy` varchar(24) NOT NULL DEFAULT '',
  `OrderState` int(11) NOT NULL DEFAULT '0',
  `TotalSales` int(11) NOT NULL DEFAULT '0',
  `Bargain` tinyint(4) NOT NULL DEFAULT '0',
  `ExteriorX` float NOT NULL DEFAULT '0',
  `ExteriorY` float NOT NULL DEFAULT '0',
  `ExteriorZ` float NOT NULL DEFAULT '0',
  `ExteriorA` float NOT NULL DEFAULT '0',
  `InteriorX` float NOT NULL DEFAULT '0',
  `InteriorY` float NOT NULL DEFAULT '0',
  `InteriorZ` float NOT NULL DEFAULT '0',
  `InteriorA` float NOT NULL DEFAULT '0',
  `Interior` tinyint(4) NOT NULL DEFAULT '0',
  `CustomExterior` int(11) NOT NULL DEFAULT '0',
  `CustomInterior` int(11) NOT NULL DEFAULT '0',
  `SupplyPointX` float NOT NULL DEFAULT '0',
  `SupplyPointY` float NOT NULL DEFAULT '0',
  `SupplyPointZ` float NOT NULL DEFAULT '0',
  `Item1Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item2Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item3Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item4Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item5Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item6Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item7Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item8Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item9Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item10Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item11Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item12Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item13Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item14Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item15Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item16Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item17Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item18Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Item19Price` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank0Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank1Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank2Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank3Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank4Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank5Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Pay` tinyint(4) NOT NULL DEFAULT '0',
  `GasPrice` float UNSIGNED NOT NULL DEFAULT '0',
  `MinInviteRank` tinyint(4) NOT NULL DEFAULT '4',
  `MinSupplyRank` tinyint(4) NOT NULL DEFAULT '5',
  `MinGiveRankRank` tinyint(4) NOT NULL DEFAULT '5',
  `MinSafeRank` tinyint(4) NOT NULL DEFAULT '5',
  `GasPump1PosX` float NOT NULL DEFAULT '0',
  `GasPump1PosY` float NOT NULL DEFAULT '0',
  `GasPump1PosZ` float NOT NULL DEFAULT '0',
  `GasPump1Angle` float NOT NULL DEFAULT '0',
  `GasPump1Model` float NOT NULL DEFAULT '0',
  `GasPump1Capacity` float NOT NULL DEFAULT '0',
  `GasPump1Gas` float NOT NULL DEFAULT '0',
  `GasPump2PosX` float NOT NULL DEFAULT '0',
  `GasPump2PosY` float NOT NULL DEFAULT '0',
  `GasPump2PosZ` float NOT NULL DEFAULT '0',
  `GasPump2Angle` float NOT NULL DEFAULT '0',
  `GasPump2Model` float NOT NULL DEFAULT '0',
  `GasPump2Capacity` float NOT NULL DEFAULT '0',
  `GasPump2Gas` float NOT NULL DEFAULT '0',
  `Car0PosX` float NOT NULL DEFAULT '0',
  `Car0PosY` float NOT NULL DEFAULT '0',
  `Car0PosZ` float NOT NULL DEFAULT '0',
  `Car0PosAngle` float NOT NULL DEFAULT '0',
  `Car0ModelId` int(11) NOT NULL DEFAULT '0',
  `Car0Price` int(11) NOT NULL DEFAULT '0',
  `Car1PosX` float NOT NULL DEFAULT '0',
  `Car1PosY` float NOT NULL DEFAULT '0',
  `Car1PosZ` float NOT NULL DEFAULT '0',
  `Car1PosAngle` float NOT NULL DEFAULT '0',
  `Car1ModelId` int(11) NOT NULL DEFAULT '0',
  `Car1Price` int(11) NOT NULL DEFAULT '0',
  `Car2PosX` float NOT NULL DEFAULT '0',
  `Car2PosY` float NOT NULL DEFAULT '0',
  `Car2PosZ` float NOT NULL DEFAULT '0',
  `Car2PosAngle` float NOT NULL DEFAULT '0',
  `Car2ModelId` int(11) NOT NULL DEFAULT '0',
  `Car2Price` int(11) NOT NULL DEFAULT '0',
  `Car3PosX` float NOT NULL DEFAULT '0',
  `Car3PosY` float NOT NULL DEFAULT '0',
  `Car3PosZ` float NOT NULL DEFAULT '0',
  `Car3PosAngle` float NOT NULL DEFAULT '0',
  `Car3ModelId` int(11) NOT NULL DEFAULT '0',
  `Car3Price` int(11) NOT NULL DEFAULT '0',
  `Car1Stock` int(11) NOT NULL DEFAULT '0',
  `Car2Stock` int(11) NOT NULL DEFAULT '0',
  `Car3Stock` int(11) NOT NULL DEFAULT '0',
  `Car1Order` int(11) NOT NULL DEFAULT '0',
  `Car2Order` int(11) NOT NULL DEFAULT '0',
  `Car3Order` int(11) NOT NULL DEFAULT '0',
  `Car4PosX` float NOT NULL DEFAULT '0',
  `Car4PosY` float NOT NULL DEFAULT '0',
  `Car4PosZ` float NOT NULL DEFAULT '0',
  `Car4PosAngle` float NOT NULL DEFAULT '0',
  `Car4ModelId` int(11) NOT NULL DEFAULT '0',
  `Car4Price` int(11) NOT NULL DEFAULT '0',
  `Car5PosX` int(11) NOT NULL DEFAULT '0',
  `Car5PosY` float NOT NULL DEFAULT '0',
  `Car5PosZ` float NOT NULL DEFAULT '0',
  `Car5PosAngle` float NOT NULL DEFAULT '0',
  `Car5ModelId` int(11) NOT NULL DEFAULT '0',
  `Car5Price` int(11) NOT NULL DEFAULT '0',
  `Car6PosX` float NOT NULL DEFAULT '0',
  `Car6PosY` float NOT NULL DEFAULT '0',
  `Car6PosZ` float NOT NULL DEFAULT '0',
  `Car6PosAngle` float NOT NULL DEFAULT '0',
  `Car6ModelId` int(11) NOT NULL DEFAULT '0',
  `Car6Price` int(11) NOT NULL DEFAULT '0',
  `Car7PosX` float NOT NULL DEFAULT '0',
  `Car7PosY` float NOT NULL DEFAULT '0',
  `Car7PosZ` float NOT NULL DEFAULT '0',
  `Car7PosAngle` float NOT NULL DEFAULT '0',
  `Car7ModelId` int(11) NOT NULL DEFAULT '0',
  `Car7Price` int(11) NOT NULL DEFAULT '0',
  `Car8PosX` float NOT NULL DEFAULT '0',
  `Car8PosY` float NOT NULL DEFAULT '0',
  `Car8PosZ` float NOT NULL DEFAULT '0',
  `Car8PosAngle` float NOT NULL DEFAULT '0',
  `Car8ModelId` int(11) NOT NULL DEFAULT '0',
  `Car8Price` int(11) NOT NULL DEFAULT '0',
  `Car9PosX` float NOT NULL DEFAULT '0',
  `Car9PosY` float NOT NULL DEFAULT '0',
  `Car9PosZ` float NOT NULL DEFAULT '0',
  `Car9PosAngle` float NOT NULL DEFAULT '0',
  `Car9ModelId` int(11) NOT NULL DEFAULT '0',
  `Car9Price` int(11) NOT NULL DEFAULT '0',
  `PurchaseX` float NOT NULL DEFAULT '0',
  `PurchaseY` float NOT NULL DEFAULT '0',
  `PurchaseZ` float NOT NULL DEFAULT '0',
  `PurchaseAngle` float NOT NULL DEFAULT '0',
  `TotalProfits` int(11) NOT NULL DEFAULT '0',
  `GymEntryFee` int(11) NOT NULL DEFAULT '0',
  `GymType` int(11) NOT NULL DEFAULT '0',
  `CustomVW` int(11) NOT NULL DEFAULT '0',
  `Grade` int(11) NOT NULL DEFAULT '0',
  `MaxLevel` int(11) NOT NULL DEFAULT '0',
  `Item20Price` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `businesssales`
--

CREATE TABLE `businesssales` (
  `bID` int(10) UNSIGNED NOT NULL,
  `BusinessID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `Text` varchar(128) DEFAULT '0',
  `Price` int(11) DEFAULT '0',
  `Available` int(11) NOT NULL DEFAULT '0',
  `Purchased` int(11) DEFAULT '0',
  `Type` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countrysec`
--

CREATE TABLE `countrysec` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `code` varchar(2) DEFAULT NULL,
  `code2` varchar(2) DEFAULT NULL,
  `region` varchar(2) DEFAULT NULL,
  `optout` int(11) DEFAULT '0',
  `code2exp` int(11) DEFAULT NULL,
  `regenabled` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_access`
--

CREATE TABLE `cp_access` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `punish` int(1) NOT NULL DEFAULT '0',
  `refund` int(1) NOT NULL DEFAULT '0',
  `ban` int(1) NOT NULL DEFAULT '0',
  `tech` int(1) NOT NULL DEFAULT '0',
  `ip` int(1) NOT NULL DEFAULT '0',
  `cplgeneral` int(1) NOT NULL DEFAULT '0',
  `cplstaff` int(1) NOT NULL DEFAULT '0',
  `cplfaction` int(1) NOT NULL DEFAULT '0',
  `cplfamily` int(1) NOT NULL DEFAULT '0',
  `cplcr` int(1) NOT NULL DEFAULT '0',
  `cplaccess` int(1) NOT NULL DEFAULT '0',
  `gladmin` int(1) NOT NULL DEFAULT '0',
  `gladminauction` int(1) NOT NULL DEFAULT '0',
  `gladmingive` int(1) NOT NULL DEFAULT '0',
  `gladminpay` int(1) NOT NULL DEFAULT '0',
  `glauction` int(1) NOT NULL DEFAULT '0',
  `glban` int(1) NOT NULL DEFAULT '0',
  `glbedit` int(1) NOT NULL DEFAULT '0',
  `glbusiness` int(1) NOT NULL DEFAULT '0',
  `glcontracts` int(1) NOT NULL DEFAULT '0',
  `glcrime` int(1) NOT NULL DEFAULT '0',
  `glddedit` int(1) NOT NULL DEFAULT '0',
  `gldealership` int(1) NOT NULL DEFAULT '0',
  `gldmpedit` int(1) NOT NULL DEFAULT '0',
  `gldv` int(1) NOT NULL DEFAULT '0',
  `gldvspawn` int(1) NOT NULL DEFAULT '0',
  `gleditgroup` int(1) NOT NULL DEFAULT '0',
  `glfaction` int(1) NOT NULL DEFAULT '0',
  `glfamily` int(1) NOT NULL DEFAULT '0',
  `glflagmove` int(1) NOT NULL DEFAULT '0',
  `glflags` int(1) NOT NULL DEFAULT '0',
  `glfmembercount` int(1) NOT NULL DEFAULT '0',
  `glgedit` int(1) NOT NULL DEFAULT '0',
  `glgifts` int(1) NOT NULL DEFAULT '0',
  `glgov` int(1) NOT NULL DEFAULT '0',
  `glgroup` int(1) NOT NULL DEFAULT '0',
  `glhack` int(1) NOT NULL DEFAULT '0',
  `glhedit` int(1) NOT NULL DEFAULT '0',
  `glhouse` int(1) NOT NULL DEFAULT '0',
  `glhsafe` int(1) NOT NULL DEFAULT '0',
  `glkick` int(1) NOT NULL DEFAULT '0',
  `gllicenses` int(1) NOT NULL DEFAULT '0',
  `gllogin` int(1) NOT NULL DEFAULT '0',
  `glmail` int(1) NOT NULL DEFAULT '0',
  `glmoderator` int(1) NOT NULL DEFAULT '0',
  `glmute` int(1) NOT NULL DEFAULT '0',
  `glpads` int(1) NOT NULL DEFAULT '0',
  `glpassword` int(1) NOT NULL DEFAULT '0',
  `glpay` int(1) NOT NULL DEFAULT '0',
  `glplant` int(1) NOT NULL DEFAULT '0',
  `glplayervehicle` int(1) NOT NULL DEFAULT '0',
  `glpnsedit` int(1) NOT NULL DEFAULT '0',
  `glpoker` int(1) NOT NULL DEFAULT '0',
  `glrpspecial` int(1) NOT NULL DEFAULT '0',
  `glsecurity` int(1) NOT NULL DEFAULT '0',
  `glsetvip` int(1) NOT NULL DEFAULT '0',
  `glshopconfirmedorders` int(1) NOT NULL DEFAULT '0',
  `glshoplog` int(1) NOT NULL DEFAULT '0',
  `glshoporders` int(1) NOT NULL DEFAULT '0',
  `glsobeit` int(1) NOT NULL DEFAULT '0',
  `glspeedcam` int(1) NOT NULL DEFAULT '0',
  `glstats` int(1) NOT NULL DEFAULT '0',
  `gltledit` int(1) NOT NULL DEFAULT '0',
  `gltoydelete` int(1) NOT NULL DEFAULT '0',
  `gltoys` int(1) NOT NULL DEFAULT '0',
  `glundercover` int(1) NOT NULL DEFAULT '0',
  `glvipnamechanges` int(1) NOT NULL DEFAULT '0',
  `glvipremove` int(1) NOT NULL DEFAULT '0',
  `glsellcredits` int(1) NOT NULL DEFAULT '0',
  `gllogincredits` int(1) NOT NULL DEFAULT '0',
  `glcleo` int(1) NOT NULL DEFAULT '0',
  `glcredits` int(1) NOT NULL DEFAULT '0',
  `glbackpack` int(11) DEFAULT '0',
  `glvoucher` int(11) DEFAULT '0',
  `glgiftbox` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_admin_notes`
--

CREATE TABLE `cp_admin_notes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `invoke_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `points` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_advisor`
--

CREATE TABLE `cp_advisor` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Hired` int(11) NOT NULL DEFAULT '0',
  `Hired_By` int(11) NOT NULL DEFAULT '0',
  `Timezone` text,
  `Status` int(11) NOT NULL DEFAULT '0',
  `WIB` int(11) NOT NULL DEFAULT '0',
  `Cashed` int(11) NOT NULL DEFAULT '0',
  `Updated` int(11) NOT NULL DEFAULT '0',
  `Update_By` int(11) NOT NULL DEFAULT '0',
  `Band` int(11) NOT NULL,
  `Reason` text,
  `AdminSet` int(1) NOT NULL DEFAULT '0',
  `StoreBand` int(11) NOT NULL DEFAULT '0',
  `EditStore` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_advisor_notes`
--

CREATE TABLE `cp_advisor_notes` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Type` int(1) NOT NULL DEFAULT '0',
  `Details` text,
  `Playerid` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL DEFAULT '0',
  `Points` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_advisor_tracker`
--

CREATE TABLE `cp_advisor_tracker` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Date` date NOT NULL,
  `Points` int(11) NOT NULL DEFAULT '0',
  `Requests` int(11) NOT NULL DEFAULT '0',
  `Hours` int(11) NOT NULL DEFAULT '0',
  `Updated_By` int(11) NOT NULL DEFAULT '0',
  `Updated` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_advisor_zones`
--

CREATE TABLE `cp_advisor_zones` (
  `id` int(11) NOT NULL,
  `Zone` text,
  `Amount` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_alerts`
--

CREATE TABLE `cp_alerts` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Note` text,
  `Date` int(11) NOT NULL DEFAULT '0',
  `Expire` int(11) NOT NULL DEFAULT '0',
  `Link` text,
  `Read` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cache_email`
--

CREATE TABLE `cp_cache_email` (
  `id` int(11) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `token` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cache_passreset`
--

CREATE TABLE `cp_cache_passreset` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_cache_sec_questions`
--

CREATE TABLE `cp_cache_sec_questions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_casino_log`
--

CREATE TABLE `cp_casino_log` (
  `id` int(10) NOT NULL,
  `Timestamp` int(35) DEFAULT NULL,
  `PlayerID` int(33) DEFAULT NULL,
  `game` varchar(33) DEFAULT NULL,
  `amount` int(33) DEFAULT NULL,
  `prize` int(33) DEFAULT NULL,
  `num1` int(33) DEFAULT NULL,
  `num2` int(33) DEFAULT NULL,
  `num3` int(33) DEFAULT NULL,
  `PlayerIP` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_faction`
--

CREATE TABLE `cp_faction` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `rank_0` varchar(64) DEFAULT NULL,
  `rank_1` varchar(64) DEFAULT NULL,
  `rank_2` varchar(64) DEFAULT NULL,
  `rank_3` varchar(64) DEFAULT NULL,
  `rank_4` varchar(64) DEFAULT NULL,
  `rank_5` varchar(64) DEFAULT NULL,
  `rank_6` varchar(64) DEFAULT NULL,
  `div_0` varchar(64) DEFAULT NULL,
  `div_1` varchar(64) DEFAULT NULL,
  `div_2` varchar(64) DEFAULT NULL,
  `div_3` varchar(64) DEFAULT NULL,
  `div_4` varchar(64) DEFAULT NULL,
  `div_5` varchar(64) DEFAULT NULL,
  `div_6` varchar(64) DEFAULT NULL,
  `div_7` varchar(64) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_family`
--

CREATE TABLE `cp_family` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) DEFAULT NULL,
  `leader` int(11) DEFAULT NULL,
  `rank_1` varchar(64) DEFAULT NULL,
  `rank_2` varchar(64) DEFAULT NULL,
  `rank_3` varchar(64) DEFAULT NULL,
  `rank_4` varchar(64) DEFAULT NULL,
  `rank_5` varchar(64) DEFAULT NULL,
  `rank_6` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_info_states`
--

CREATE TABLE `cp_info_states` (
  `state_id` smallint(5) UNSIGNED NOT NULL COMMENT 'PK: Unique state ID',
  `state_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'State name with first letter capital',
  `state_abbr` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Optional state abbreviation (US is 2 capital letters)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cp_info_temp`
--

CREATE TABLE `cp_info_temp` (
  `order_id` varchar(12) NOT NULL,
  `player_id` varchar(200) DEFAULT NULL,
  `first_name` varchar(120) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `billing_address` varchar(120) DEFAULT NULL,
  `country` varchar(120) DEFAULT NULL,
  `state` varchar(120) DEFAULT NULL,
  `city` varchar(120) DEFAULT NULL,
  `zip_code` varchar(120) DEFAULT NULL,
  `gift_player` varchar(200) DEFAULT NULL,
  `purchasetype` varchar(120) DEFAULT NULL,
  `method` varchar(120) DEFAULT NULL,
  `date_added` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_leave`
--

CREATE TABLE `cp_leave` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `date_leave` date DEFAULT NULL,
  `date_return` date DEFAULT NULL,
  `reason` varchar(1024) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `acceptedby_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_log_access`
--

CREATE TABLE `cp_log_access` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_log_cr`
--

CREATE TABLE `cp_log_cr` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_log_cron`
--

CREATE TABLE `cp_log_cron` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Info` text NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_log_faction`
--

CREATE TABLE `cp_log_faction` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_log_family`
--

CREATE TABLE `cp_log_family` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_log_general`
--

CREATE TABLE `cp_log_general` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_log_security`
--

CREATE TABLE `cp_log_security` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_log_staff`
--

CREATE TABLE `cp_log_staff` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_mass_email`
--

CREATE TABLE `cp_mass_email` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(25565) DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_sent` datetime DEFAULT NULL,
  `banned` int(1) NOT NULL DEFAULT '0',
  `disabled` int(1) NOT NULL DEFAULT '0',
  `admins` varchar(255) NOT NULL DEFAULT '0',
  `helpers` varchar(255) NOT NULL DEFAULT '0',
  `vip` varchar(255) NOT NULL DEFAULT '0',
  `famed` varchar(255) NOT NULL DEFAULT '0',
  `faction` varchar(255) NOT NULL DEFAULT '0',
  `faction_rank` varchar(255) NOT NULL DEFAULT '0',
  `gang` varchar(255) NOT NULL DEFAULT '0',
  `gang_rank` varchar(255) NOT NULL DEFAULT '0',
  `biz` varchar(255) NOT NULL DEFAULT '0',
  `biz_rank` varchar(255) NOT NULL DEFAULT '0',
  `bypass` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_misc`
--

CREATE TABLE `cp_misc` (
  `id` int(32) NOT NULL,
  `from` int(11) NOT NULL DEFAULT '0',
  `title` varchar(24) DEFAULT NULL,
  `message` text,
  `status` int(32) DEFAULT NULL,
  `expire` int(11) NOT NULL DEFAULT '0',
  `adminlevel` int(11) NOT NULL DEFAULT '2',
  `date` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_misc_track`
--

CREATE TABLE `cp_misc_track` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Notification` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_perms`
--

CREATE TABLE `cp_perms` (
  `id` int(11) NOT NULL,
  `UserId` int(11) NOT NULL DEFAULT '0',
  `ip` int(1) NOT NULL DEFAULT '0',
  `group` int(1) NOT NULL DEFAULT '0',
  `general` int(1) NOT NULL DEFAULT '0',
  `staff` int(1) NOT NULL DEFAULT '0',
  `advisory` int(1) NOT NULL DEFAULT '0',
  `accedit` int(1) NOT NULL DEFAULT '0',
  `access` int(1) NOT NULL DEFAULT '0',
  `punish` int(1) NOT NULL DEFAULT '0',
  `refunds` int(11) NOT NULL DEFAULT '0',
  `bans` int(11) NOT NULL DEFAULT '0',
  `post` int(11) NOT NULL DEFAULT '0',
  `anticheat` int(1) NOT NULL,
  `advisor` int(1) NOT NULL,
  `teamspeak` int(1) NOT NULL DEFAULT '0',
  `famed` int(1) NOT NULL DEFAULT '0',
  `shiftsenior` int(1) NOT NULL DEFAULT '0',
  `tech` int(1) NOT NULL DEFAULT '0',
  `whois` int(1) NOT NULL DEFAULT '0',
  `dedicated` int(1) NOT NULL DEFAULT '0',
  `shiftalert` int(1) NOT NULL DEFAULT '0',
  `staffban` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_profile`
--

CREATE TABLE `cp_profile` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL,
  `NameColor` int(1) NOT NULL DEFAULT '1',
  `Department` text,
  `WCode` text,
  `Sound` int(1) NOT NULL DEFAULT '1',
  `SoundVol` decimal(2,1) NOT NULL DEFAULT '0.3',
  `VisRoster` int(11) NOT NULL DEFAULT '1',
  `VisEmail` int(1) NOT NULL DEFAULT '0',
  `REmail` text,
  `Task` text,
  `ForumID` int(11) NOT NULL DEFAULT '0',
  `ActSA` int(1) NOT NULL DEFAULT '0',
  `PUpdate` int(1) NOT NULL DEFAULT '0',
  `Avatar` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_punishment`
--

CREATE TABLE `cp_punishment` (
  `id` int(11) NOT NULL,
  `player_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `addedby_id` int(11) DEFAULT NULL,
  `reason` varchar(1024) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `prison` int(11) DEFAULT NULL,
  `warn` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL,
  `ban` int(1) DEFAULT NULL,
  `wep_restrict` int(11) DEFAULT NULL,
  `other_punish` varchar(1024) DEFAULT NULL,
  `link` varchar(1024) DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `issuedby_id` int(11) DEFAULT NULL,
  `bantime` int(11) NOT NULL DEFAULT '0',
  `bantype` int(1) NOT NULL DEFAULT '0',
  `banlen` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_refund`
--

CREATE TABLE `cp_refund` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `money` int(10) DEFAULT '0',
  `materials` int(10) DEFAULT '0',
  `pot` int(10) DEFAULT '0',
  `crack` int(10) DEFAULT '0',
  `boombox` int(10) DEFAULT '0',
  `viptoken` int(10) DEFAULT '0',
  `refund` varchar(512) DEFAULT NULL,
  `link` varchar(256) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `auth` varchar(256) DEFAULT NULL,
  `addedby_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `issuedby_id` int(1) DEFAULT NULL,
  `date_issued` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_restricted_archive`
--

CREATE TABLE `cp_restricted_archive` (
  `id` int(12) NOT NULL,
  `user_id` int(12) DEFAULT NULL,
  `removed_by` int(12) DEFAULT NULL,
  `removed_date` datetime DEFAULT NULL,
  `reason` varchar(524) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_security_files`
--

CREATE TABLE `cp_security_files` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `uploader_id` int(12) NOT NULL,
  `file_name` varchar(524) NOT NULL,
  `file_type` varchar(524) NOT NULL,
  `file_size` varchar(524) NOT NULL,
  `file_location` varchar(524) NOT NULL,
  `file_description` varchar(524) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_security_notes`
--

CREATE TABLE `cp_security_notes` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `note_by` int(12) NOT NULL,
  `note` varchar(524) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_security_profiles`
--

CREATE TABLE `cp_security_profiles` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `forum_name` varchar(524) NOT NULL,
  `teamspeak_name` varchar(524) NOT NULL,
  `recommending_admin` varchar(524) NOT NULL,
  `rp_names` varchar(524) NOT NULL,
  `email_addresses` varchar(524) NOT NULL,
  `messenger_handles` varchar(524) NOT NULL,
  `security_orientation` date NOT NULL,
  `security_profile` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_session`
--

CREATE TABLE `cp_session` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Token` varchar(128) DEFAULT NULL,
  `Expire` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_shifts`
--

CREATE TABLE `cp_shifts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `shift_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `sign_up` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `bonus` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_shift_blocks`
--

CREATE TABLE `cp_shift_blocks` (
  `id` int(11) NOT NULL,
  `shift_id` int(11) NOT NULL,
  `shift` varchar(3) DEFAULT NULL,
  `time_start` time DEFAULT NULL,
  `time_end` time DEFAULT NULL,
  `needs_sunday` int(11) DEFAULT '1',
  `needs_monday` int(11) DEFAULT '1',
  `needs_tuesday` int(11) DEFAULT '1',
  `needs_wednesday` int(11) DEFAULT '1',
  `needs_thursday` int(11) DEFAULT '1',
  `needs_friday` int(11) DEFAULT '1',
  `needs_saturday` int(11) DEFAULT '1',
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_shift_leader`
--

CREATE TABLE `cp_shift_leader` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shift_id` text,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_stat`
--

CREATE TABLE `cp_stat` (
  `user_id` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL,
  `timezone` varchar(128) NOT NULL DEFAULT 'NULL',
  `gtalk` varchar(124) DEFAULT 'N/A',
  `paypal` varchar(128) DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  `shift` int(11) DEFAULT '0',
  `shift_day` varchar(255) DEFAULT NULL,
  `shift_restrict` varchar(255) DEFAULT NULL,
  `shift_complete` int(11) DEFAULT '0',
  `shift_partcomplete` int(11) DEFAULT '0',
  `shift_missed` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_store`
--

CREATE TABLE `cp_store` (
  `id` int(11) NOT NULL,
  `Type` int(11) NOT NULL DEFAULT '0',
  `Name` text,
  `Status` int(1) NOT NULL DEFAULT '1',
  `Purchases` int(11) NOT NULL DEFAULT '0',
  `Total` int(11) NOT NULL DEFAULT '0',
  `AdminOnly` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_store_cart`
--

CREATE TABLE `cp_store_cart` (
  `id` int(12) NOT NULL,
  `cart_id` int(12) NOT NULL,
  `customer_id` int(12) NOT NULL,
  `customer_ip_address` varchar(32) NOT NULL,
  `cart_pack_id` varchar(32) NOT NULL,
  `date_item_added` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_store_items`
--

CREATE TABLE `cp_store_items` (
  `id` int(11) NOT NULL,
  `StoreId` int(11) NOT NULL DEFAULT '0',
  `Name` text,
  `Description` text,
  `Transfer` int(1) NOT NULL DEFAULT '0',
  `Price` int(11) NOT NULL DEFAULT '0',
  `Discount` int(11) NOT NULL DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '1',
  `Available` int(11) NOT NULL DEFAULT '-1',
  `Status` int(1) NOT NULL DEFAULT '1',
  `Sold` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_store_manage`
--

CREATE TABLE `cp_store_manage` (
  `id` int(12) NOT NULL,
  `pack_id` int(12) NOT NULL,
  `pack_picture` varchar(120) NOT NULL DEFAULT '',
  `total_tokens` varchar(12) NOT NULL,
  `old_price` varchar(12) DEFAULT NULL,
  `total_price` varchar(12) NOT NULL,
  `additional_tokens` varchar(12) DEFAULT NULL,
  `store_online` varchar(12) NOT NULL DEFAULT 'OFF'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_store_orders`
--

CREATE TABLE `cp_store_orders` (
  `id` int(24) NOT NULL,
  `order_id` int(12) DEFAULT NULL,
  `order_status` varchar(60) DEFAULT NULL,
  `customer_id` int(12) DEFAULT NULL,
  `customer_ip_address` varchar(60) DEFAULT NULL,
  `pack_id` int(12) DEFAULT NULL,
  `pack_total_tokens` varchar(12) DEFAULT NULL,
  `pack_total_price` varchar(12) DEFAULT NULL,
  `gift_player_id` varchar(24) DEFAULT NULL,
  `payment_method` varchar(12) DEFAULT NULL,
  `payment_address` varchar(150) DEFAULT NULL,
  `date_purchased` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_store_tracker`
--

CREATE TABLE `cp_store_tracker` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Name` text,
  `Price` int(11) NOT NULL DEFAULT '0',
  `Discount` int(11) NOT NULL DEFAULT '0',
  `Quantity` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_support_faq`
--

CREATE TABLE `cp_support_faq` (
  `faq_id` int(10) UNSIGNED NOT NULL,
  `category` int(12) NOT NULL DEFAULT '0',
  `isenabled` int(1) UNSIGNED NOT NULL DEFAULT '1',
  `question` varchar(125) NOT NULL DEFAULT '',
  `answer` varchar(500) NOT NULL,
  `created` varchar(150) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` varchar(150) NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_support_faq_category`
--

CREATE TABLE `cp_support_faq_category` (
  `id` int(12) NOT NULL,
  `category` varchar(250) DEFAULT NULL,
  `sub_category` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_support_items`
--

CREATE TABLE `cp_support_items` (
  `id` int(12) NOT NULL,
  `sort_id` int(6) NOT NULL,
  `item_category` varchar(32) NOT NULL,
  `item_name` varchar(32) NOT NULL,
  `item_picture` varchar(150) NOT NULL DEFAULT '',
  `item_credit_price` varchar(12) NOT NULL,
  `item_description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_support_tickets`
--

CREATE TABLE `cp_support_tickets` (
  `ticket_id` int(11) UNSIGNED NOT NULL,
  `ticketID` varchar(12) DEFAULT NULL,
  `area` varchar(150) NOT NULL DEFAULT '2',
  `priority` varchar(12) NOT NULL DEFAULT 'Normal',
  `p_id` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `email` varchar(150) NOT NULL DEFAULT '',
  `subject` varchar(150) NOT NULL DEFAULT '[no subject]',
  `ip_address` varchar(40) NOT NULL DEFAULT '',
  `status` varchar(24) NOT NULL DEFAULT 'open',
  `isoverdue` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `isanswered` int(1) UNSIGNED NOT NULL DEFAULT '0',
  `duedate` varchar(150) DEFAULT NULL,
  `reopened` varchar(150) DEFAULT NULL,
  `closed` varchar(150) DEFAULT NULL,
  `lastmessage` varchar(150) DEFAULT NULL,
  `lastresponse` varchar(150) DEFAULT NULL,
  `created` varchar(150) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` varchar(150) NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_support_tickets_response`
--

CREATE TABLE `cp_support_tickets_response` (
  `response_id` int(11) UNSIGNED NOT NULL,
  `ticket_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `p_id` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `form` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `staff` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `response` varchar(1000) NOT NULL,
  `ip_address` varchar(40) NOT NULL DEFAULT '',
  `created` varchar(150) NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` varchar(150) NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cp_track`
--

CREATE TABLE `cp_track` (
  `Logins` int(11) NOT NULL DEFAULT '0',
  `MaxDay` int(11) NOT NULL DEFAULT '0',
  `MaxDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_username`
--

CREATE TABLE `cp_username` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(24) DEFAULT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `Reason` text,
  `Updated_By` int(11) NOT NULL DEFAULT '0',
  `Date` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_weekly_reports`
--

CREATE TABLE `cp_weekly_reports` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `q1` varchar(512) DEFAULT NULL,
  `q2` varchar(512) DEFAULT NULL,
  `q3` varchar(512) DEFAULT NULL,
  `q4` varchar(512) DEFAULT NULL,
  `q5` varchar(512) DEFAULT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cp_whitelist`
--

CREATE TABLE `cp_whitelist` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `key` varchar(128) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `date` datetime NOT NULL,
  `adminlevel` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crates`
--

CREATE TABLE `crates` (
  `id` int(11) NOT NULL,
  `Facility` int(11) NOT NULL DEFAULT '0',
  `Group` int(11) NOT NULL DEFAULT '-1',
  `CrateX` float(20,5) NOT NULL DEFAULT '0.00000',
  `CrateY` float(20,5) NOT NULL DEFAULT '0.00000',
  `CrateZ` float(20,5) NOT NULL DEFAULT '0.00000',
  `InVehicle` int(11) NOT NULL DEFAULT '-1',
  `OnVehicle` int(11) NOT NULL DEFAULT '-1',
  `Int` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Gun1` int(11) NOT NULL DEFAULT '0',
  `GunAmount1` int(11) NOT NULL DEFAULT '0',
  `Gun2` int(11) NOT NULL DEFAULT '0',
  `GunAmount2` int(11) NOT NULL DEFAULT '0',
  `Gun3` int(11) NOT NULL DEFAULT '0',
  `GunAmount3` int(11) NOT NULL DEFAULT '0',
  `Gun4` int(11) NOT NULL DEFAULT '0',
  `GunAmount4` int(11) NOT NULL DEFAULT '0',
  `Gun5` int(11) NOT NULL DEFAULT '0',
  `GunAmount5` int(11) NOT NULL DEFAULT '0',
  `Gun6` int(11) NOT NULL DEFAULT '0',
  `GunAmount6` int(11) NOT NULL DEFAULT '0',
  `Gun7` int(11) NOT NULL DEFAULT '0',
  `GunAmount7` int(11) NOT NULL DEFAULT '0',
  `Gun8` int(11) NOT NULL DEFAULT '0',
  `GunAmount8` int(11) NOT NULL DEFAULT '0',
  `Gun9` int(11) NOT NULL DEFAULT '0',
  `GunAmount9` int(11) NOT NULL DEFAULT '0',
  `Gun10` int(11) NOT NULL DEFAULT '0',
  `GunAmount10` int(11) NOT NULL DEFAULT '0',
  `Gun11` int(11) NOT NULL DEFAULT '0',
  `GunAmount11` int(11) NOT NULL DEFAULT '0',
  `Gun12` int(11) NOT NULL DEFAULT '0',
  `GunAmount12` int(11) NOT NULL DEFAULT '0',
  `Gun13` int(11) NOT NULL DEFAULT '0',
  `GunAmount13` int(11) NOT NULL DEFAULT '0',
  `Gun14` int(11) NOT NULL DEFAULT '0',
  `GunAmount14` int(11) NOT NULL DEFAULT '0',
  `Gun15` int(11) NOT NULL DEFAULT '0',
  `GunAmount16` int(11) NOT NULL DEFAULT '0',
  `GunAmount15` int(11) NOT NULL DEFAULT '0',
  `Gun16` int(11) NOT NULL DEFAULT '0',
  `PlacedBy` varchar(24) NOT NULL DEFAULT 'Unknown',
  `Lifespan` int(11) NOT NULL DEFAULT '0',
  `Transfer` int(1) NOT NULL DEFAULT '0',
  `DoorID` int(11) NOT NULL DEFAULT '-1',
  `DoorType` int(11) NOT NULL DEFAULT '-1',
  `Price` int(11) NOT NULL DEFAULT '0',
  `Paid` int(1) NOT NULL DEFAULT '0',
  `Active` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crate_facility`
--

CREATE TABLE `crate_facility` (
  `id` int(11) NOT NULL,
  `Name` varchar(52) NOT NULL DEFAULT '----',
  `Group` int(11) NOT NULL DEFAULT '-1',
  `Posx` float(20,5) NOT NULL DEFAULT '0.00000',
  `Posy` float(20,5) NOT NULL DEFAULT '0.00000',
  `Posz` float(20,5) NOT NULL DEFAULT '0.00000',
  `Posr` float(20,5) NOT NULL DEFAULT '0.00000',
  `Int` int(11) NOT NULL DEFAULT '0',
  `Vw` int(11) NOT NULL DEFAULT '0',
  `Prodmax` int(11) NOT NULL DEFAULT '10',
  `ProdPrep` int(11) NOT NULL DEFAULT '0',
  `ProdReady` int(11) NOT NULL DEFAULT '0',
  `ProdTimer` int(11) NOT NULL DEFAULT '1',
  `ProdStatus` int(11) NOT NULL DEFAULT '1',
  `ProdCost` int(11) NOT NULL DEFAULT '0',
  `ProdMulti` int(11) NOT NULL DEFAULT '5',
  `RaidTimer` int(11) NOT NULL DEFAULT '0',
  `Cooldown` int(11) NOT NULL DEFAULT '0',
  `Raidable` int(1) NOT NULL DEFAULT '1',
  `Active` int(1) NOT NULL DEFAULT '0',
  `Timer` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crate_orders`
--

CREATE TABLE `crate_orders` (
  `id` int(11) NOT NULL,
  `Facility` int(11) NOT NULL DEFAULT '-1',
  `Crates` int(11) NOT NULL DEFAULT '0',
  `PerCrate` int(11) NOT NULL DEFAULT '0',
  `OrderBy` varchar(25) NOT NULL DEFAULT 'Unknown',
  `Delivered` int(11) NOT NULL DEFAULT '0',
  `Status` int(11) NOT NULL DEFAULT '0',
  `Time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crate_vehicles`
--

CREATE TABLE `crate_vehicles` (
  `id` int(11) NOT NULL,
  `vModel` int(11) NOT NULL DEFAULT '-1',
  `vColor1` int(11) NOT NULL DEFAULT '0',
  `vColor2` int(11) NOT NULL DEFAULT '0',
  `vPlate` varchar(32) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `vGroup` int(11) NOT NULL DEFAULT '-1',
  `vRank` int(11) NOT NULL DEFAULT '-1',
  `vSpawned` int(1) NOT NULL DEFAULT '1',
  `vDisabled` int(1) NOT NULL DEFAULT '0',
  `vImpound` int(1) NOT NULL DEFAULT '0',
  `vTickets` int(11) NOT NULL DEFAULT '0',
  `vMaxHealth` int(11) NOT NULL DEFAULT '1000',
  `vHealth` float NOT NULL DEFAULT '1000',
  `vFuel` int(11) NOT NULL DEFAULT '100',
  `vPosX` float(20,5) NOT NULL DEFAULT '0.00000',
  `vPosY` float(20,5) NOT NULL DEFAULT '0.00000',
  `vPosZ` float(20,5) NOT NULL DEFAULT '0.00000',
  `vRotZ` float(20,5) NOT NULL DEFAULT '0.00000',
  `vInt` int(11) NOT NULL DEFAULT '0',
  `vVw` int(11) NOT NULL DEFAULT '0',
  `vCrateMax` int(11) NOT NULL DEFAULT '0',
  `vCrate` int(11) NOT NULL DEFAULT '-1',
  `FirstDrop` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crimesdata`
--

CREATE TABLE `crimesdata` (
  `id` int(4) NOT NULL,
  `type` int(2) DEFAULT '1',
  `nation` int(2) DEFAULT '1',
  `name` varchar(32) DEFAULT 'N/A',
  `jailtime` int(6) DEFAULT '1',
  `fine` int(8) DEFAULT '1',
  `bail` int(8) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ddoors`
--

CREATE TABLE `ddoors` (
  `id` int(11) NOT NULL,
  `Description` varchar(128) NOT NULL DEFAULT 'None',
  `Owner` int(11) NOT NULL DEFAULT '-1',
  `OwnerName` varchar(256) NOT NULL DEFAULT 'Nobody',
  `CustomInterior` int(11) NOT NULL DEFAULT '0',
  `ExteriorVW` int(11) NOT NULL DEFAULT '0',
  `ExteriorInt` int(11) NOT NULL DEFAULT '0',
  `InteriorVW` int(11) NOT NULL DEFAULT '0',
  `InteriorInt` int(11) NOT NULL DEFAULT '0',
  `ExteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `CustomExterior` int(11) NOT NULL DEFAULT '0',
  `Type` int(1) NOT NULL DEFAULT '0',
  `Rank` int(1) NOT NULL DEFAULT '-1',
  `VIP` int(11) NOT NULL DEFAULT '0',
  `DPC` int(11) NOT NULL DEFAULT '0',
  `Allegiance` int(11) NOT NULL DEFAULT '0',
  `GroupType` int(11) NOT NULL DEFAULT '0',
  `Family` int(11) NOT NULL DEFAULT '0',
  `Faction` int(11) NOT NULL DEFAULT '-1',
  `Admin` int(11) NOT NULL DEFAULT '0',
  `Wanted` int(11) NOT NULL DEFAULT '0',
  `VehicleAble` int(11) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `PickupModel` int(11) NOT NULL DEFAULT '0',
  `Pass` varchar(24) NOT NULL DEFAULT 'pass',
  `Locked` int(11) NOT NULL DEFAULT '0',
  `Famed` int(11) NOT NULL DEFAULT '0',
  `LastLogin` int(11) NOT NULL DEFAULT '0',
  `Expire` int(11) NOT NULL DEFAULT '0',
  `Inactive` int(11) NOT NULL DEFAULT '0',
  `Ignore` int(11) NOT NULL DEFAULT '0',
  `Counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dedi_april`
--

CREATE TABLE `dedi_april` (
  `id` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(255) DEFAULT NULL,
  `RewardHours` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `Title` text,
  `Display` int(11) NOT NULL DEFAULT '0',
  `Status` int(1) NOT NULL DEFAULT '0',
  `BanOnly` int(1) NOT NULL DEFAULT '0',
  `Guest` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `devcpbans`
--

CREATE TABLE `devcpbans` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Reason` text CHARACTER SET utf8 NOT NULL,
  `Date` datetime NOT NULL,
  `Banby` int(11) NOT NULL DEFAULT '0',
  `Unban` date DEFAULT NULL,
  `Bugid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `devcplogs`
--

CREATE TABLE `devcplogs` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `log` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `time` int(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `bugid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmap`
--

CREATE TABLE `dmap` (
  `PlayerID` int(11) NOT NULL DEFAULT '-1',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `PosX` float(11,0) DEFAULT NULL,
  `PosY` float(11,0) DEFAULT NULL,
  `PosZ` float(11,0) DEFAULT NULL,
  `VehID` int(3) DEFAULT NULL,
  `VehModel` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dmapicons`
--

CREATE TABLE `dmapicons` (
  `id` int(11) NOT NULL,
  `MarkerType` int(11) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dm_watchdog`
--

CREATE TABLE `dm_watchdog` (
  `id` int(11) NOT NULL DEFAULT '0',
  `reporter` int(11) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `superwatch` tinyint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `drugpool`
--

CREATE TABLE `drugpool` (
  `id` int(11) NOT NULL,
  `drugid` int(11) NOT NULL DEFAULT '-1',
  `quality` int(11) NOT NULL DEFAULT '0',
  `DBID` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL DEFAULT 'None',
  `timestamp` int(11) NOT NULL DEFAULT '0',
  `spawned` int(11) NOT NULL DEFAULT '0',
  `posx` float NOT NULL DEFAULT '0',
  `posy` float NOT NULL DEFAULT '0',
  `posz` float NOT NULL DEFAULT '0',
  `vw` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dynpoints`
--

CREATE TABLE `dynpoints` (
  `id` int(11) NOT NULL,
  `pointname` varchar(24) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `posx` float(20,5) NOT NULL,
  `posy` float(20,5) NOT NULL,
  `posz` float(20,5) NOT NULL,
  `pos2x` float(20,5) NOT NULL,
  `pos2y` float(20,5) NOT NULL,
  `pos2z` float(20,5) NOT NULL,
  `vw` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `vw2` int(11) NOT NULL DEFAULT '0',
  `int2` int(11) NOT NULL DEFAULT '0',
  `boatonly` int(11) NOT NULL DEFAULT '0',
  `ready` int(11) NOT NULL DEFAULT '0',
  `capturename` varchar(24) DEFAULT 'N/A',
  `capturegroup` int(11) NOT NULL DEFAULT '-1',
  `locked` int(11) NOT NULL DEFAULT '1',
  `timer` int(11) NOT NULL DEFAULT '0',
  `amounthour` int(11) NOT NULL DEFAULT '0',
  `amount0` int(11) NOT NULL DEFAULT '0',
  `amount1` int(11) NOT NULL DEFAULT '0',
  `amount2` int(11) NOT NULL DEFAULT '0',
  `amount3` int(11) NOT NULL DEFAULT '0',
  `amount4` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `electionresults`
--

CREATE TABLE `electionresults` (
  `accountid` int(11) NOT NULL,
  `optionid` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_hungergames-2013-10`
--

CREATE TABLE `event_hungergames-2013-10` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fallintofun`
--

CREATE TABLE `fallintofun` (
  `player` int(50) NOT NULL DEFAULT '0',
  `FIFHours` int(30) DEFAULT '0',
  `FIFChances` int(30) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `families`
--

CREATE TABLE `families` (
  `ID` tinyint(1) NOT NULL,
  `Taken` tinyint(1) NOT NULL DEFAULT '0',
  `Name` varchar(40) NOT NULL DEFAULT 'None',
  `MOTD1` varchar(128) NOT NULL DEFAULT 'None',
  `Leader` varchar(24) NOT NULL DEFAULT 'None',
  `Bank` int(11) NOT NULL DEFAULT '0',
  `Cash` int(11) NOT NULL DEFAULT '0',
  `FamilyUSafe` int(11) NOT NULL DEFAULT '0',
  `FamilySafeX` float(11,5) NOT NULL DEFAULT '0.00000',
  `FamilySafeY` float(11,5) NOT NULL DEFAULT '0.00000',
  `FamilySafeZ` float(11,5) NOT NULL DEFAULT '0.00000',
  `FamilySafeVW` int(11) NOT NULL DEFAULT '-1',
  `FamilySafeInt` int(11) NOT NULL DEFAULT '-1',
  `Pot` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Mats` int(11) NOT NULL DEFAULT '0',
  `Rank0` varchar(30) NOT NULL DEFAULT 'Newb',
  `Rank1` varchar(30) NOT NULL DEFAULT 'Outsider',
  `Rank2` varchar(30) NOT NULL DEFAULT 'Associate',
  `Rank3` varchar(30) NOT NULL DEFAULT 'Soldier',
  `Rank4` varchar(30) NOT NULL DEFAULT 'Capo',
  `Rank5` varchar(30) NOT NULL DEFAULT 'Underboss',
  `Rank6` varchar(30) NOT NULL DEFAULT 'Godfather',
  `Members` smallint(6) NOT NULL DEFAULT '0',
  `MaxSkins` tinyint(4) NOT NULL DEFAULT '0',
  `Skin1` int(11) NOT NULL DEFAULT '0',
  `Skin2` int(11) NOT NULL DEFAULT '0',
  `Skin3` int(11) NOT NULL DEFAULT '0',
  `Skin4` int(11) NOT NULL DEFAULT '0',
  `Skin5` int(11) NOT NULL DEFAULT '0',
  `Skin6` int(11) NOT NULL DEFAULT '0',
  `Skin7` int(11) NOT NULL DEFAULT '0',
  `Skin8` int(11) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `TurfTokens` int(11) NOT NULL DEFAULT '0',
  `Gun1` tinyint(4) NOT NULL DEFAULT '0',
  `Gun2` tinyint(4) NOT NULL DEFAULT '0',
  `Gun3` tinyint(4) NOT NULL DEFAULT '0',
  `Gun4` tinyint(4) NOT NULL DEFAULT '0',
  `Gun5` tinyint(4) NOT NULL DEFAULT '0',
  `Gun6` tinyint(4) NOT NULL DEFAULT '0',
  `Gun7` tinyint(4) NOT NULL DEFAULT '0',
  `Gun8` tinyint(4) NOT NULL DEFAULT '0',
  `Gun9` tinyint(4) NOT NULL DEFAULT '0',
  `Gun10` tinyint(4) NOT NULL DEFAULT '0',
  `ExteriorX` float(11,5) NOT NULL DEFAULT '0.00000',
  `ExteriorY` float(11,5) NOT NULL DEFAULT '0.00000',
  `ExteriorZ` float(11,5) NOT NULL DEFAULT '0.00000',
  `ExteriorA` float(11,5) NOT NULL DEFAULT '0.00000',
  `InteriorX` float(11,5) NOT NULL DEFAULT '0.00000',
  `InteriorY` float(11,5) NOT NULL DEFAULT '0.00000',
  `InteriorZ` float(11,5) NOT NULL DEFAULT '0.00000',
  `InteriorA` float(11,5) NOT NULL DEFAULT '0.00000',
  `VW` int(11) NOT NULL DEFAULT '0',
  `INT` int(11) NOT NULL DEFAULT '0',
  `CustomInterior` int(11) NOT NULL DEFAULT '0',
  `Division0` varchar(16) NOT NULL DEFAULT 'None',
  `Division1` varchar(16) NOT NULL DEFAULT 'None',
  `Division2` varchar(16) NOT NULL DEFAULT 'None',
  `Division3` varchar(16) NOT NULL DEFAULT 'None',
  `Division4` varchar(16) NOT NULL DEFAULT 'None',
  `Heroin` int(11) NOT NULL DEFAULT '0',
  `GtObject` int(11) NOT NULL DEFAULT '1490',
  `MOTD2` varchar(128) NOT NULL DEFAULT '0',
  `MOTD3` varchar(128) NOT NULL DEFAULT '0',
  `fontface` varchar(32) NOT NULL DEFAULT 'Arial',
  `fontsize` int(11) NOT NULL DEFAULT '24',
  `bold` int(11) NOT NULL DEFAULT '0',
  `fontcolor` int(32) NOT NULL DEFAULT '-1',
  `backcolor` int(32) NOT NULL DEFAULT '0',
  `text` varchar(32) NOT NULL DEFAULT 'Preview',
  `gtUsed` int(11) NOT NULL DEFAULT '0',
  `FamColor` mediumint(8) UNSIGNED NOT NULL DEFAULT '130303'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `fid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `issuer` varchar(24) NOT NULL,
  `flag` varchar(128) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '1' COMMENT '1 = Regular | 2 = Admin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `freegift`
--

CREATE TABLE `freegift` (
  `id` int(11) NOT NULL,
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniture`
--

CREATE TABLE `furniture` (
  `id` int(11) NOT NULL,
  `houseid` int(11) DEFAULT '0',
  `sqlid` int(11) DEFAULT '0',
  `modelid` int(11) DEFAULT '0',
  `slotid` int(11) DEFAULT '0',
  `x` float(11,4) DEFAULT '0.0000',
  `y` float(11,4) DEFAULT '0.0000',
  `z` float(11,4) DEFAULT '0.0000',
  `rx` float(11,4) DEFAULT '0.0000',
  `ry` float(11,4) DEFAULT '0.0000',
  `rz` float(11,4) DEFAULT '0.0000',
  `text0` int(11) DEFAULT '-1',
  `text1` int(11) DEFAULT '-1',
  `text2` int(11) DEFAULT '-1',
  `text3` int(11) DEFAULT '-1',
  `text4` int(11) DEFAULT '-1',
  `text5` int(11) DEFAULT '0',
  `col0` int(11) DEFAULT '0',
  `col1` int(11) DEFAULT '0',
  `col2` int(11) DEFAULT '0',
  `col3` int(11) DEFAULT '0',
  `col4` int(11) DEFAULT '0',
  `col5` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `furniturecatalog`
--

CREATE TABLE `furniturecatalog` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `modelid` int(11) DEFAULT '-1',
  `name` varchar(32) DEFAULT 'None',
  `price` int(11) DEFAULT '0',
  `vip` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gangtags`
--

CREATE TABLE `gangtags` (
  `id` int(11) NOT NULL,
  `gangid` int(11) NOT NULL DEFAULT '-1',
  `text` varchar(128) DEFAULT 'Cheeky Nandos',
  `pdbid` int(11) NOT NULL DEFAULT '-1',
  `pname` varchar(32) DEFAULT NULL,
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `rx` int(11) NOT NULL DEFAULT '0',
  `ry` int(11) NOT NULL DEFAULT '0',
  `rz` int(11) NOT NULL DEFAULT '0',
  `fontid` int(11) NOT NULL DEFAULT '0',
  `color` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `garages`
--

CREATE TABLE `garages` (
  `id` int(11) NOT NULL,
  `Owner` int(11) NOT NULL DEFAULT '-1',
  `OwnerName` varchar(24) NOT NULL DEFAULT 'Nobody',
  `ExteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorVW` int(11) NOT NULL DEFAULT '0',
  `ExteriorInt` int(11) NOT NULL DEFAULT '0',
  `CustomExterior` int(11) NOT NULL DEFAULT '0',
  `InteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorVW` int(11) NOT NULL DEFAULT '0',
  `Pass` varchar(24) NOT NULL DEFAULT 'pass',
  `Locked` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gates`
--

CREATE TABLE `gates` (
  `ID` int(11) NOT NULL,
  `HID` int(11) NOT NULL DEFAULT '-1',
  `Speed` float NOT NULL DEFAULT '10',
  `Range` float NOT NULL DEFAULT '10',
  `Model` int(11) NOT NULL DEFAULT '18631',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `Pass` varchar(24) NOT NULL DEFAULT '',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `RotX` float NOT NULL DEFAULT '0',
  `RotY` float NOT NULL DEFAULT '0',
  `RotZ` float NOT NULL DEFAULT '0',
  `PosXM` float NOT NULL DEFAULT '0',
  `PosYM` float NOT NULL DEFAULT '0',
  `PosZM` float NOT NULL DEFAULT '0',
  `RotXM` float NOT NULL DEFAULT '0',
  `RotYM` float NOT NULL DEFAULT '0',
  `RotZM` float NOT NULL DEFAULT '0',
  `Allegiance` int(11) NOT NULL DEFAULT '0',
  `GroupType` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(2) NOT NULL DEFAULT '-1',
  `FamilyID` int(2) NOT NULL DEFAULT '-1',
  `RenderHQ` int(11) NOT NULL DEFAULT '1',
  `Timer` int(1) NOT NULL DEFAULT '0',
  `Automate` int(1) NOT NULL DEFAULT '0',
  `Locked` int(1) NOT NULL DEFAULT '0',
  `TIndex` int(3) NOT NULL DEFAULT '-1',
  `TModel` int(11) NOT NULL DEFAULT '65535',
  `TTXD` varchar(64) NOT NULL DEFAULT '',
  `TTexture` varchar(64) NOT NULL DEFAULT '',
  `TColor` int(11) NOT NULL DEFAULT '0',
  `Facility` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gcrates`
--

CREATE TABLE `gcrates` (
  `iCrateID` int(11) NOT NULL,
  `iGroupID` int(11) NOT NULL DEFAULT '255',
  `9mm` int(11) NOT NULL DEFAULT '0',
  `sdpistol` int(11) NOT NULL DEFAULT '0',
  `deagle` int(11) NOT NULL DEFAULT '0',
  `uzi` int(11) NOT NULL DEFAULT '0',
  `tec9` int(11) NOT NULL DEFAULT '0',
  `mp5` int(11) NOT NULL DEFAULT '0',
  `m4` int(11) NOT NULL DEFAULT '0',
  `ak47` int(11) NOT NULL DEFAULT '0',
  `rifle` int(11) NOT NULL DEFAULT '0',
  `sniper` int(11) NOT NULL DEFAULT '0',
  `shotty` int(11) NOT NULL DEFAULT '0',
  `sawnoff` int(11) NOT NULL DEFAULT '0',
  `spas` int(11) NOT NULL DEFAULT '0',
  `ammo0` int(11) NOT NULL DEFAULT '0',
  `ammo1` int(11) NOT NULL DEFAULT '0',
  `ammo2` int(11) NOT NULL DEFAULT '0',
  `ammo3` int(11) NOT NULL DEFAULT '0',
  `ammo4` int(11) NOT NULL DEFAULT '0',
  `pot` int(11) NOT NULL DEFAULT '0',
  `crack` int(11) NOT NULL DEFAULT '0',
  `meth` int(11) NOT NULL DEFAULT '0',
  `ecstasy` int(11) NOT NULL DEFAULT '0',
  `heroin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `giftbox`
--

CREATE TABLE `giftbox` (
  `dgMoney0` int(11) DEFAULT '0',
  `dgRimKit0` int(11) DEFAULT '0',
  `dgFirework0` int(11) DEFAULT '0',
  `dgGVIP0` int(11) DEFAULT '0',
  `dgGVIPEx0` int(11) DEFAULT '0',
  `dgSVIP0` int(11) DEFAULT '0',
  `dgSVIPEx0` int(11) DEFAULT '0',
  `dgCarSlot0` int(11) DEFAULT '0',
  `dgToySlot0` int(11) DEFAULT '0',
  `dgArmor0` int(11) DEFAULT '0',
  `dgFirstaid0` int(11) DEFAULT '0',
  `dgDDFlag0` int(11) DEFAULT '0',
  `dgGateFlag0` int(11) DEFAULT '0',
  `dgCredits0` int(11) DEFAULT '0',
  `dgPriorityAd0` int(11) DEFAULT '0',
  `dgHealthNArmor0` int(11) DEFAULT '0',
  `dgRespectPoint0` int(11) DEFAULT '0',
  `dgCarVoucher0` int(11) DEFAULT '0',
  `dgBuddyInvite0` int(11) DEFAULT '0',
  `dgLaser0` int(11) DEFAULT '0',
  `dgCustomToy0` int(11) DEFAULT '0',
  `dgAdmuteReset0` int(11) DEFAULT '0',
  `dgNewbieMuteReset0` int(11) DEFAULT '0',
  `dgRestrictedCarVoucher0` int(11) DEFAULT '0',
  `dgPlatinumVIPVoucher0` int(11) DEFAULT '0',
  `dgGiftReset0` int(11) DEFAULT '0',
  `dgMaterial0` int(11) DEFAULT '0',
  `dgWarning0` int(11) DEFAULT '0',
  `dgPot0` int(11) DEFAULT '0',
  `dgCrack0` int(11) DEFAULT '0',
  `dgPaintballToken0` int(11) DEFAULT '0',
  `dgVIPToken0` int(11) DEFAULT '0',
  `dgMoney1` int(11) DEFAULT '0',
  `dgRimKit1` int(11) DEFAULT '0',
  `dgFirework1` int(11) DEFAULT '0',
  `dgGVIP1` int(11) DEFAULT '0',
  `dgGVIPEx1` int(11) DEFAULT '0',
  `dgSVIP1` int(11) DEFAULT '0',
  `dgSVIPEx1` int(11) DEFAULT '0',
  `dgCarSlot1` int(11) DEFAULT '0',
  `dgToySlot1` int(11) DEFAULT '0',
  `dgArmor1` int(11) DEFAULT '0',
  `dgFirstaid1` int(11) DEFAULT '0',
  `dgDDFlag1` int(11) DEFAULT '0',
  `dgGateFlag1` int(11) DEFAULT '0',
  `dgCredits1` int(11) DEFAULT '0',
  `dgPriorityAd1` int(11) DEFAULT '0',
  `dgHealthNArmor1` int(11) DEFAULT '0',
  `dgRespectPoint1` int(11) DEFAULT '0',
  `dgCarVoucher1` int(11) DEFAULT '0',
  `dgBuddyInvite1` int(11) DEFAULT '0',
  `dgLaser1` int(11) DEFAULT '0',
  `dgCustomToy1` int(11) DEFAULT '0',
  `dgAdmuteReset1` int(11) DEFAULT '0',
  `dgNewbieMuteReset1` int(11) DEFAULT '0',
  `dgRestrictedCarVoucher1` int(11) DEFAULT '0',
  `dgPlatinumVIPVoucher1` int(11) DEFAULT '0',
  `dgGiftReset1` int(11) DEFAULT '0',
  `dgMaterial1` int(11) DEFAULT '0',
  `dgWarning1` int(11) DEFAULT '0',
  `dgPot1` int(11) DEFAULT '0',
  `dgCrack1` int(11) DEFAULT '0',
  `dgPaintballToken1` int(11) DEFAULT '0',
  `dgVIPToken1` int(11) DEFAULT '0',
  `dgMoney2` int(11) DEFAULT '0',
  `dgRimKit2` int(11) DEFAULT '0',
  `dgFirework2` int(11) DEFAULT '0',
  `dgGVIP2` int(11) DEFAULT '0',
  `dgGVIPEx2` int(11) DEFAULT '0',
  `dgSVIP2` int(11) DEFAULT '0',
  `dgSVIPEx2` int(11) DEFAULT '0',
  `dgCarSlot2` int(11) DEFAULT '0',
  `dgToySlot2` int(11) DEFAULT '0',
  `dgArmor2` int(11) DEFAULT '0',
  `dgFirstaid2` int(11) DEFAULT '0',
  `dgDDFlag2` int(11) DEFAULT '0',
  `dgGateFlag2` int(11) DEFAULT '0',
  `dgCredits2` int(11) DEFAULT '0',
  `dgPriorityAd2` int(11) DEFAULT '0',
  `dgHealthNArmor2` int(11) DEFAULT '0',
  `dgRespectPoint2` int(11) DEFAULT '0',
  `dgCarVoucher2` int(11) DEFAULT '0',
  `dgBuddyInvite2` int(11) DEFAULT '0',
  `dgLaser2` int(11) DEFAULT '0',
  `dgCustomToy2` int(11) DEFAULT '0',
  `dgAdmuteReset2` int(11) DEFAULT '0',
  `dgNewbieMuteReset2` int(11) DEFAULT '0',
  `dgRestrictedCarVoucher2` int(11) DEFAULT '0',
  `dgPlatinumVIPVoucher2` int(11) DEFAULT '0',
  `dgGiftReset2` int(11) DEFAULT '0',
  `dgMaterial2` int(11) DEFAULT '0',
  `dgWarning2` int(11) DEFAULT '0',
  `dgPot2` int(11) DEFAULT '0',
  `dgCrack2` int(11) DEFAULT '0',
  `dgPaintballToken2` int(11) DEFAULT '0',
  `dgVIPToken2` int(11) DEFAULT '0',
  `dgMoney3` int(11) DEFAULT '0',
  `dgRimKit3` int(11) DEFAULT '0',
  `dgFirework3` int(11) DEFAULT '0',
  `dgGVIP3` int(11) DEFAULT '0',
  `dgGVIPEx3` int(11) DEFAULT '0',
  `dgSVIP3` int(11) DEFAULT '0',
  `dgSVIPEx3` int(11) DEFAULT '0',
  `dgCarSlot3` int(11) DEFAULT '0',
  `dgToySlot3` int(11) DEFAULT '0',
  `dgArmor3` int(11) DEFAULT '0',
  `dgFirstaid3` int(11) DEFAULT '0',
  `dgDDFlag3` int(11) DEFAULT '0',
  `dgGateFlag3` int(11) DEFAULT '0',
  `dgCredits3` int(11) DEFAULT '0',
  `dgPriorityAd3` int(11) DEFAULT '0',
  `dgHealthNArmor3` int(11) DEFAULT '0',
  `dgRespectPoint3` int(11) DEFAULT '0',
  `dgCarVoucher3` int(11) DEFAULT '0',
  `dgBuddyInvite3` int(11) DEFAULT '0',
  `dgLaser3` int(11) DEFAULT '0',
  `dgCustomToy3` int(11) DEFAULT '0',
  `dgAdmuteReset3` int(11) DEFAULT '0',
  `dgNewbieMuteReset3` int(11) DEFAULT '0',
  `dgRestrictedCarVoucher3` int(11) DEFAULT '0',
  `dgPlatinumVIPVoucher3` int(11) DEFAULT '0',
  `dgGiftReset3` int(11) DEFAULT '0',
  `dgMaterial3` int(11) DEFAULT '0',
  `dgWarning3` int(11) DEFAULT '0',
  `dgPot3` int(11) DEFAULT '0',
  `dgCrack3` int(11) DEFAULT '0',
  `dgPaintballToken3` int(11) DEFAULT '0',
  `dgVIPToken3` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `giftpage_dec`
--

CREATE TABLE `giftpage_dec` (
  `id` int(11) NOT NULL,
  `dID` varchar(32) NOT NULL,
  `Username` varchar(32) NOT NULL,
  `ip` varchar(32) NOT NULL DEFAULT '0',
  `rToken` int(11) NOT NULL DEFAULT '0',
  `usedReset` int(11) NOT NULL DEFAULT '0',
  `plyHour` int(11) DEFAULT '0',
  `sgToken` int(11) DEFAULT '0',
  `sBeer` int(11) DEFAULT '0',
  `rBeer` int(11) DEFAULT '0',
  `rVIP` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `govgunsales`
--

CREATE TABLE `govgunsales` (
  `wepid` int(11) NOT NULL,
  `wepprice` int(11) NOT NULL,
  `wepsales` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groupbans`
--

CREATE TABLE `groupbans` (
  `id` int(11) NOT NULL,
  `TypeBan` int(11) NOT NULL DEFAULT '-1',
  `PlayerID` int(11) NOT NULL DEFAULT '-1',
  `BanDate` datetime NOT NULL DEFAULT '2001-01-12 00:00:00',
  `GroupBan` int(11) NOT NULL DEFAULT '-1',
  `BannedBy` varchar(24) NOT NULL DEFAULT '',
  `BanReason` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `Type` tinyint(4) NOT NULL DEFAULT '0',
  `Name` varchar(64) NOT NULL DEFAULT '',
  `MOTD` varchar(128) NOT NULL DEFAULT 'None',
  `MOTD2` varchar(128) NOT NULL DEFAULT 'None',
  `MOTD3` varchar(128) NOT NULL DEFAULT 'None',
  `Allegiance` tinyint(4) NOT NULL DEFAULT '0',
  `Bug` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `Radio` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `DeptRadio` int(4) UNSIGNED NOT NULL DEFAULT '255',
  `GovAnnouncement` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `SpikeStrips` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `Barricades` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `Cones` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `Flares` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `Barrels` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `Ladders` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `FreeNameChange` tinyint(3) UNSIGNED NOT NULL DEFAULT '255',
  `CrateIslandAccess` tinyint(4) UNSIGNED NOT NULL DEFAULT '255',
  `DutyColour` mediumint(8) UNSIGNED NOT NULL DEFAULT '16777215',
  `RadioColour` mediumint(8) UNSIGNED NOT NULL DEFAULT '16777215',
  `Budget` int(11) NOT NULL DEFAULT '0',
  `BudgetPayment` int(11) NOT NULL DEFAULT '0',
  `Stock` int(11) NOT NULL DEFAULT '0',
  `LockerCostType` int(11) NOT NULL DEFAULT '2',
  `CrateX` float NOT NULL DEFAULT '0',
  `CrateY` float NOT NULL DEFAULT '0',
  `CrateZ` float NOT NULL DEFAULT '0',
  `Rank0` varchar(30) NOT NULL DEFAULT '',
  `Rank1` varchar(30) NOT NULL DEFAULT '',
  `Rank2` varchar(30) NOT NULL DEFAULT '',
  `Rank3` varchar(30) NOT NULL DEFAULT '',
  `Rank4` varchar(30) NOT NULL DEFAULT '',
  `Rank5` varchar(30) NOT NULL DEFAULT '',
  `Rank6` varchar(30) NOT NULL DEFAULT '',
  `Rank7` varchar(30) NOT NULL DEFAULT '',
  `Rank8` varchar(30) NOT NULL DEFAULT '',
  `Rank9` varchar(30) NOT NULL DEFAULT '',
  `Rank0Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank1Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank2Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank3Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank4Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank5Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank6Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank7Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank8Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Rank9Pay` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `Div0` varchar(30) NOT NULL DEFAULT 'None',
  `Div1` varchar(16) NOT NULL DEFAULT 'None',
  `Div2` varchar(16) NOT NULL DEFAULT 'None',
  `Div3` varchar(16) NOT NULL DEFAULT 'None',
  `Div4` varchar(16) NOT NULL DEFAULT 'None',
  `Div5` varchar(16) NOT NULL DEFAULT 'None',
  `Div6` varchar(16) NOT NULL DEFAULT 'None',
  `Div7` varchar(16) NOT NULL DEFAULT 'None',
  `Div8` varchar(16) NOT NULL DEFAULT 'None',
  `Div9` varchar(16) NOT NULL DEFAULT 'None',
  `Div10` varchar(16) NOT NULL DEFAULT 'None',
  `Gun0` tinyint(4) NOT NULL DEFAULT '0',
  `Cost0` int(11) NOT NULL DEFAULT '0',
  `Gun1` tinyint(4) NOT NULL DEFAULT '0',
  `Cost1` int(11) NOT NULL DEFAULT '0',
  `Gun2` tinyint(4) NOT NULL DEFAULT '0',
  `Cost2` int(11) NOT NULL DEFAULT '0',
  `Gun3` tinyint(4) NOT NULL DEFAULT '0',
  `Cost3` int(11) NOT NULL DEFAULT '0',
  `Gun4` tinyint(4) NOT NULL DEFAULT '0',
  `Cost4` int(11) NOT NULL DEFAULT '0',
  `Gun5` tinyint(4) NOT NULL DEFAULT '0',
  `Cost5` int(11) NOT NULL DEFAULT '0',
  `Gun6` tinyint(4) NOT NULL DEFAULT '0',
  `Cost6` int(11) NOT NULL DEFAULT '0',
  `Gun7` tinyint(4) NOT NULL DEFAULT '0',
  `Cost7` int(11) NOT NULL DEFAULT '0',
  `Gun8` tinyint(4) NOT NULL DEFAULT '0',
  `Cost8` int(11) NOT NULL DEFAULT '0',
  `Gun9` tinyint(4) NOT NULL DEFAULT '0',
  `Cost9` int(11) NOT NULL DEFAULT '0',
  `Gun10` tinyint(4) NOT NULL DEFAULT '0',
  `Cost10` int(11) NOT NULL DEFAULT '0',
  `Gun11` tinyint(4) NOT NULL DEFAULT '0',
  `Cost11` int(11) NOT NULL DEFAULT '0',
  `Gun12` tinyint(4) NOT NULL DEFAULT '0',
  `Cost12` int(11) NOT NULL DEFAULT '0',
  `Gun13` tinyint(4) NOT NULL DEFAULT '0',
  `Cost13` int(11) NOT NULL DEFAULT '0',
  `Gun14` tinyint(4) NOT NULL DEFAULT '0',
  `Cost14` int(11) NOT NULL DEFAULT '0',
  `Gun15` tinyint(4) NOT NULL DEFAULT '0',
  `Cost15` int(11) NOT NULL DEFAULT '0',
  `Gun16` int(11) NOT NULL DEFAULT '0',
  `Cost16` int(11) NOT NULL DEFAULT '0',
  `CratesOrder` int(11) NOT NULL DEFAULT '0',
  `CrateIsland` int(4) NOT NULL DEFAULT '255',
  `IntRadio` int(11) NOT NULL DEFAULT '255',
  `GarageX` float(11,0) NOT NULL DEFAULT '0',
  `GarageY` float(11,0) NOT NULL DEFAULT '0',
  `GarageZ` float(11,0) NOT NULL DEFAULT '0',
  `TackleAccess` int(11) NOT NULL DEFAULT '255',
  `WheelClamps` int(11) NOT NULL DEFAULT '255',
  `DoCAccess` int(11) NOT NULL DEFAULT '255',
  `MedicAccess` int(11) NOT NULL DEFAULT '-1',
  `DMVAccess` int(11) NOT NULL DEFAULT '255',
  `OOCChat` int(11) NOT NULL DEFAULT '255',
  `OOCColor` mediumint(8) UNSIGNED NOT NULL DEFAULT '130303',
  `Pot` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Heroin` int(11) NOT NULL DEFAULT '0',
  `Syringes` int(11) NOT NULL DEFAULT '0',
  `Opium` int(11) NOT NULL DEFAULT '0',
  `TurfCapRank` int(11) NOT NULL DEFAULT '255',
  `PointCapRank` int(11) NOT NULL DEFAULT '255',
  `WithdrawRank` int(11) NOT NULL DEFAULT '255',
  `WithdrawRank2` int(11) NOT NULL DEFAULT '255',
  `WithdrawRank3` int(11) NOT NULL DEFAULT '255',
  `WithdrawRank4` int(11) NOT NULL DEFAULT '255',
  `WithdrawRank5` int(11) NOT NULL DEFAULT '255',
  `GClothes0` int(11) NOT NULL DEFAULT '0',
  `GClothes1` int(11) NOT NULL DEFAULT '0',
  `GClothes2` int(11) NOT NULL DEFAULT '0',
  `GClothes3` int(11) NOT NULL DEFAULT '0',
  `GClothes4` int(11) NOT NULL DEFAULT '0',
  `GClothes5` int(11) NOT NULL DEFAULT '0',
  `GClothes6` int(11) NOT NULL DEFAULT '0',
  `GClothes7` int(11) NOT NULL DEFAULT '0',
  `GClothes8` int(11) NOT NULL DEFAULT '0',
  `GClothes9` int(11) NOT NULL DEFAULT '0',
  `Tokens` int(11) NOT NULL DEFAULT '0',
  `Mats` int(11) NOT NULL DEFAULT '0',
  `CrimeType` int(11) NOT NULL DEFAULT '0',
  `gAmmo0` int(11) NOT NULL DEFAULT '0',
  `gAmmo1` int(11) NOT NULL DEFAULT '0',
  `gAmmo2` int(11) NOT NULL DEFAULT '0',
  `gAmmo3` int(11) NOT NULL DEFAULT '0',
  `gAmmo4` int(11) NOT NULL DEFAULT '0',
  `Cannabis` int(11) NOT NULL DEFAULT '0',
  `Meth` int(11) NOT NULL DEFAULT '0',
  `Cocaine` int(11) NOT NULL DEFAULT '0',
  `Ecstasy` int(11) NOT NULL DEFAULT '0',
  `Speed` int(11) NOT NULL DEFAULT '0',
  `Alcohol` int(11) NOT NULL DEFAULT '0',
  `Demerol` int(11) NOT NULL DEFAULT '0',
  `Morphine` int(11) NOT NULL DEFAULT '0',
  `Haloperidol` int(11) NOT NULL DEFAULT '0',
  `Aspirin` int(11) NOT NULL DEFAULT '0',
  `Mgseeds` int(11) NOT NULL DEFAULT '0',
  `Canseeds` int(11) NOT NULL DEFAULT '0',
  `Lye` int(11) NOT NULL DEFAULT '0',
  `Ethyl` int(11) NOT NULL DEFAULT '0',
  `Ephedrine` int(11) NOT NULL DEFAULT '0',
  `Diswater` int(11) NOT NULL DEFAULT '0',
  `Opiumpop` int(11) NOT NULL DEFAULT '0',
  `Lime` int(11) NOT NULL DEFAULT '0',
  `Baking` int(11) NOT NULL DEFAULT '0',
  `Cocextract` int(11) NOT NULL DEFAULT '0',
  `Nbenzynol` int(11) NOT NULL DEFAULT '0',
  `Pmkoil` int(11) NOT NULL DEFAULT '0',
  `Mdmacrys` int(11) NOT NULL DEFAULT '0',
  `Caffeine` int(11) NOT NULL DEFAULT '0',
  `Lsd` int(11) NOT NULL DEFAULT '0',
  `Muriatic` int(11) NOT NULL DEFAULT '0',
  `FreeNameChangeDiv` int(11) NOT NULL DEFAULT '255',
  `GroupToyID` int(11) NOT NULL DEFAULT '0',
  `TurfTax` int(11) NOT NULL DEFAULT '0',
  `gRival0` int(11) NOT NULL DEFAULT '-1',
  `gRival1` int(11) NOT NULL DEFAULT '-1',
  `gRival2` int(11) NOT NULL DEFAULT '-1',
  `gRival3` int(11) NOT NULL DEFAULT '-1',
  `gRival4` int(11) NOT NULL DEFAULT '-1',
  `TollLockDown` int(11) NOT NULL,
  `TempNum` int(11) NOT NULL DEFAULT '255',
  `Tapes` int(11) NOT NULL DEFAULT '255',
  `Find` int(11) NOT NULL DEFAULT '255',
  `LEOArrest` int(11) NOT NULL DEFAULT '255'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `Type`, `Name`, `MOTD`, `MOTD2`, `MOTD3`, `Allegiance`, `Bug`, `Radio`, `DeptRadio`, `GovAnnouncement`, `SpikeStrips`, `Barricades`, `Cones`, `Flares`, `Barrels`, `Ladders`, `FreeNameChange`, `CrateIslandAccess`, `DutyColour`, `RadioColour`, `Budget`, `BudgetPayment`, `Stock`, `LockerCostType`, `CrateX`, `CrateY`, `CrateZ`, `Rank0`, `Rank1`, `Rank2`, `Rank3`, `Rank4`, `Rank5`, `Rank6`, `Rank7`, `Rank8`, `Rank9`, `Rank0Pay`, `Rank1Pay`, `Rank2Pay`, `Rank3Pay`, `Rank4Pay`, `Rank5Pay`, `Rank6Pay`, `Rank7Pay`, `Rank8Pay`, `Rank9Pay`, `Div0`, `Div1`, `Div2`, `Div3`, `Div4`, `Div5`, `Div6`, `Div7`, `Div8`, `Div9`, `Div10`, `Gun0`, `Cost0`, `Gun1`, `Cost1`, `Gun2`, `Cost2`, `Gun3`, `Cost3`, `Gun4`, `Cost4`, `Gun5`, `Cost5`, `Gun6`, `Cost6`, `Gun7`, `Cost7`, `Gun8`, `Cost8`, `Gun9`, `Cost9`, `Gun10`, `Cost10`, `Gun11`, `Cost11`, `Gun12`, `Cost12`, `Gun13`, `Cost13`, `Gun14`, `Cost14`, `Gun15`, `Cost15`, `Gun16`, `Cost16`, `CratesOrder`, `CrateIsland`, `IntRadio`, `GarageX`, `GarageY`, `GarageZ`, `TackleAccess`, `WheelClamps`, `DoCAccess`, `MedicAccess`, `DMVAccess`, `OOCChat`, `OOCColor`, `Pot`, `Crack`, `Heroin`, `Syringes`, `Opium`, `TurfCapRank`, `PointCapRank`, `WithdrawRank`, `WithdrawRank2`, `WithdrawRank3`, `WithdrawRank4`, `WithdrawRank5`, `GClothes0`, `GClothes1`, `GClothes2`, `GClothes3`, `GClothes4`, `GClothes5`, `GClothes6`, `GClothes7`, `GClothes8`, `GClothes9`, `Tokens`, `Mats`, `CrimeType`, `gAmmo0`, `gAmmo1`, `gAmmo2`, `gAmmo3`, `gAmmo4`, `Cannabis`, `Meth`, `Cocaine`, `Ecstasy`, `Speed`, `Alcohol`, `Demerol`, `Morphine`, `Haloperidol`, `Aspirin`, `Mgseeds`, `Canseeds`, `Lye`, `Ethyl`, `Ephedrine`, `Diswater`, `Opiumpop`, `Lime`, `Baking`, `Cocextract`, `Nbenzynol`, `Pmkoil`, `Mdmacrys`, `Caffeine`, `Lsd`, `Muriatic`, `FreeNameChangeDiv`, `GroupToyID`, `TurfTax`, `gRival0`, `gRival1`, `gRival2`, `gRival3`, `gRival4`, `TollLockDown`, `TempNum`, `Tapes`, `Find`, `LEOArrest`) VALUES
(1, 1, 'LSPD', 'Assist new players with roleplay and RP laws - We are here to SERVE and HELP!', '****911 calls for service are top priority. ANSWER THEM FIRST, ASAP****', 'Pull out of situations that you know you will lose! Don''t pointlessly waste our resources!', 2, 6, 0, 0, 6, 1, 1, 1, 1, 1, 3, 0, 255, 80607, 6711039, 87655985, 100000, 1495, 0, 1560.56, -1620.18, 13.52, 'Cadet', 'Officer', 'Senior Officer', 'Corporal', 'Sergeant', 'Staff Sergeant', 'Lieutenant', 'Captain', 'Deputy Chief', 'Chief of Police', 5000, 40000, 45000, 60000, 68000, 72000, 82000, 100000, 5, 5, '', 'PTL', 'HON', 'OCP', 'IA', 'HR', 'SWAT', 'DET', 'CMD', 'PROB', 'ADV', 0, 0, 35, 2, 41, 2, 24, 10, 29, 10, 25, 8, 6, 4, 42, 4, 43, 2, 17, 4, 0, 4, 0, 0, 0, 0, 27, 20, 30, 15, 31, 6, 34, 5, 10, 255, 8, 1564, -1698, 6, 0, 1, 255, -1, 6, 0, 3381759, 0, 0, 0, 0, 0, 7208964, 255, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 731381760, 731381760, 365690880, 365690880, 0, 0, 0, 43746, 25160, 44878, 46978, 9034, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 0, 255, 255),
(2, 1, 'FBI', 'Be sure to assist the newly-hired probationary agents as much as possible.', '((No one with leadership is to change the spawn point of a vehicle, without permission from R8+))', 'Place contracts.', 1, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 255, 7891410, 5854644, 187404501, 100000, 7994, 0, 344.64, -1522.93, 33.18, 'Probationary Agent', 'Agent', 'Senior Agent', 'Special Agent', 'Supervisory Special Agent', 'Assistant Special Agent I.C.', 'Special Agent I.C.', 'Assistant Director', 'Deputy Director', 'Director', 0, 37500, 45000, 52500, 65000, 80000, 100000, 110000, 120000, 130000, '', 'IA', 'ACDMY', 'NSB', 'CID', 'OPS', 'HON', 'TNR', 'FO', 'ADM', 'SSB', 29, 2500, 3, 1, 41, 1, 24, 4, 25, 3, 29, 5, 32, 2, 28, 5, 31, 6, 34, 5, 33, 5, 27, 8, 46, 1, 17, 2, 44, 2, 45, 2, 30, 5, 59, 6, 2, 299, -1518, 25, 0, 0, 255, -1, 1, 0, 12912921, 0, 0, 0, 0, 0, 1, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 40862, 20806, 41405, 42795, 7629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 1),
(3, 1, 'DoC', '--------- Check the Prison OPs announcement for daily information and upates. -------', 'Golden Rules: Don''t go into CB-A alone & address by badge, not name.', '------------------Badge revamp, learn yours and others.--------------------', 1, 6, 0, 0, 5, 1, 1, 0, 0, 0, 3, 255, 255, 9590872, 10642275, 138517986, 50000, 8562, 0, -2053.25, -141.91, 15.06, 'Trainee Officer', 'Correctional Officer I', 'Correctional Officer II', 'Corporal', 'Sergeant', 'Lieutenant', 'Captain', 'Commander', 'Deputy Warden', 'Warden', 25000, 35000, 40000, 45000, 50000, 55000, 60000, 250, 250, 250, '', 'HR', 'G.D', 'OPS', 'HON', 'CMD', 'IA', 'none', '', '', '', 0, 0, 3, 1, 41, 1, 24, 4, 25, 3, 34, 5, 29, 5, 17, 2, 23, 1, 0, 0, 0, 0, 46, 1, 42, 2, 43, 1, 27, 8, 30, 5, 31, 6, 29, 255, 4, -2033, -162, 15, 0, 4, 0, 2, 255, 0, 6987353, 0, 0, 0, 0, 0, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49360, 44519, 48311, 48301, 7236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, -1, -1, -1, 0, 255, 0, 255, 255),
(4, 1, 'SASD', 'Be sure you are all checking your email DAILY.', 'Ensure your actions are exemplary - we''re being monitored by federal agencies.', 'Intereted in RETU? Send Sergeant Stryker an email john.stryker@sasdonline.com', 1, 3, 0, 0, 5, 1, 1, 0, 0, 0, 2, 255, 255, 14329120, 4286945, 128045552, 100000, 8731, 0, -553.09, -1022.84, 24.04, 'Recruit', 'Deputy', 'Senior Deputy', 'Field Training Deputy', 'Corporal', 'Sergeant', 'Lieutenant', 'Captain', 'Undersheriff', 'Sheriff', 5000, 15000, 18000, 20000, 25000, 35000, 40000, 50000, 60000, 70000, '', 'PATROL', 'LEGAL', 'PROB', 'HON', 'RETU', 'OPS', 'MCU', 'COMM CTR', 'DSU', 'PROSCTR', 24, 2500, 3, 1, 41, 1, 24, 4, 25, 3, 29, 5, 31, 6, 34, 5, 27, 8, 42, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 255, 4, 624, -596, 17, 0, 1, 255, -1, 6, 0, 14329120, 0, 0, 0, 0, 0, 1, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49090, 3775, 49562, 49821, 9400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, -1, -1, -1, 0, 255, 0, 255, 255),
(5, 7, 'Frontier Transportation', 'Keep up the good work! - Teamspeak password: ftsondutycomms1', 'When going on duty use /fare 2000', 'HR is recruiting, contact HR Manager Paysinger.', 0, 255, 0, 255, 7, 255, 255, 255, 255, 255, 255, 255, 255, 16776960, 16753479, 29159846, 0, 0, 2, 1814.29, -1900.64, 13.56, 'Trainee', 'Rookie Operator', 'Operator', 'Dispatcher', 'Supervisor', 'Assistant Manager', 'Manager', 'General Manager', 'Vice President', 'President', 2000, 6000, 7000, 8000, 9000, 10000, 15000, 15000, 15000, 1, '', 'Gen. Transport', 'Rapid Transit', 'HR', 'IA', 'FO', 'CEO', 'Executive VP', 'MPS', 'Honorary', 'Conductor', 0, 0, 22, 1000, 43, 500, 46, 200, 25, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 255, 255, 1795, -1909, 13, 255, 255, 255, -1, 255, 0, 16776985, 0, 0, 0, 0, 0, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10000, 10000, 10000, 10000, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(6, 5, 'San Andreas', '.', 'No more invites, SS has been purged and shut down.', '.', 1, 255, 0, 1, 5, 255, 255, 255, 255, 255, 255, 255, 255, 8421504, 13413209, 46856575, 0, 16000, 1, 1251.81, -2062.87, 59.84, 'Intern', 'Staff', 'Agent', 'Senior Agent', 'Deputy Secretary', 'Director', 'Secretary', 'Chief of Staff', 'Vice President', 'President', 1000, 5000, 15000, 35000, 35000, 75000, 75000, 80000, 95000, 250000, '', 'Secret Service', 'Justice', 'Defense', 'Treasury', 'HON', 'Legislative', 'G.D.', 'ADM', 'Public Works', '', 0, 0, 41, 100, 24, 5000, 25, 1000, 0, 0, 0, 0, 43, 100, 46, 100, 42, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 1, 1259, -2033, 59, 255, 255, 255, -1, 255, 0, 16741657, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49630, 27980, 49566, 49520, 9931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(7, 8, 'SATR', 'We are back within SA''s /dept for now, pending a new contract when president is elected.', 'New HQ is behind LSPD. Orange Safety vests whilst on duty ((R4 & below))', 'Do not kill SA LEOs (You will be kicked). Ticket up to 100k.', 1, 255, 0, 0, 6, 255, 1, 1, 1, 1, 1, 255, 255, 288419, 288419, 118292410, 10000, 10197, 0, 1639, -1683.78, 13.52, 'Trainee', 'Probationer', 'Employee', 'Senior Employee', 'Foreman', 'Engineer', 'Manager', 'Committee Member', 'Managing Director', 'Owner', 35000, 50000, 50000, 50000, 50000, 50000, 0, 0, 0, 0, '', 'EXEC', 'HR', 'HON', 'VET', 'TOW', 'NSS', 'CBD', 'none', '', '', 0, 0, 42, 2, 41, 1, 3, 1, 22, 3, 24, 4, 25, 5, 6, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 255, 4, 1658, -1708, 16, 255, 1, 255, -1, 6, 0, 10053171, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 2, 255, 255),
(8, 2, 'Hitman Agency', 'Agency has been purged.', 'Agency has been purged.', 'Agency has been purged.', 84, 0, 0, 255, 255, 0, 0, 0, 0, 0, 0, 0, 255, 16711422, 6724095, 6646013, 0, 1337, 2, 810.59, -1081.55, 24.29, 'Freelancer', 'Agent', 'Marksman', 'Operative', 'Specialist', 'Vice Director', 'Director', 'Admin', '', '', 69, 69, 69, 69, 69, 70, 71, 0, 0, 0, '', 'HON', 'Admin Inv', 'CMD', 'G.D', 'Trial', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 0, 0, 9, 0, 41, 0, 42, 0, 3, 0, 17, 0, 18, 0, 32, 0, 28, 0, 26, 0, 4, 0, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 255, 255, -721, 2480, 10021, 2, 255, 255, -1, 255, 0, 3394764, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44120, 32842, 47165, 46703, 9760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 255),
(9, 5, 'New Robada', 'Payouts have been adjusted due to financial situation', '100 mil+tank+hunter =settlement for war', 'OMASHALA!', 2, 255, 0, 0, 4, 255, 3, 2, 2, 3, 5, 255, 255, 1159104, 1159104, 846682, 0, 9513, 0, 988.9, 1148, 10.81, 'Volunteer', 'Intern', 'Staff', 'Senior Staff', 'Advisor', 'Director', 'Council Member', 'Auditor General', 'Vice Chancellor', 'Chancellor', 0, 10000, 35000, 40000, 45000, 60000, 65000, 70000, 100000, 200000, '', 'DC', 'GC', 'GOV', 'GOV) (GC', 'Security', 'K³', 'W.I.U.', 'AA', 'RISB', 'none', 0, 0, 24, 4, 25, 3, 29, 5, 41, 1, 34, 5, 23, 1, 46, 1, 43, 1, 30, 5, 31, 6, 42, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -8, 255, 4, 1375, -1664, 1087, 255, 255, 255, -1, 255, 0, 12655383, 0, 0, 0, 0, 0, 255, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 0, 24650, 4281, 31125, 38139, 9800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, -1, -1, -1, 0, 255, 4, 255, 255),
(10, 3, 'FDSA', 'TeamSpeak is required! Password is ''fdsaisback2016''.', 'Create a personnel file at (( fdsa.ng-gaming.net ))', 'Bonus for each patient saved has increased.', 1, 255, 0, 0, 7, 255, 1, 0, 0, 0, 0, 255, 255, 16737894, 16737894, 11364, 200000, 8222, 0, 672.13, -1543.91, 14.85, 'Trainee', 'EMT/FF G1', 'EMT/FF G2', 'EMT/FF G3', 'Specialist', 'Supervisor', 'Lieutenant', 'Captain', 'Deputy Chief', 'Fire Chief', 10000, 35000, 40000, 45000, 50000, 55000, 60000, 65000, 100, 100, '', 'EMS', 'F&R', 'R&T', 'IAD', 'CMD', 'none', 'none', 'none', 'none', 'HON', 0, 0, 3, 1, 41, 1, 42, 2, 46, 1, 0, 0, 0, 0, 22, 1, 24, 4, 25, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 92, 255, 4, 1276, -2574, 14, 255, 255, 255, 0, 255, 0, 16751001, 0, 0, 0, 0, 0, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 0, 7, 255),
(11, 1, 'RAF', 'CONDUCT REGULAR PATROLS, ESPECIALLY IN AND AROUND THE BORDER', 'SOME WEAPONIZED VEHICLES HAVE BEEN MOVED AROUND INCASE OUR DD IS DESTROYED, ASK HC WHERE TO FIND', 'LEADERS - DO NOT RANDOMLY INVITE PEOPLE. THEY WILL BE KICKED.', 2, 3, 0, 0, 7, 3, 2, 0, 1, 1, 3, 3, 255, 21301, 21301, 42927464, 125000, 9525, 0, 1279.41, 1359.56, 10.81, 'Private', 'Private First Class', 'Lance Corporal', 'Corporal', 'Sergeant', 'Lieutenant', 'Captain', 'Major', 'Colonel', 'General', 6000, 10000, 15000, 20000, 25000, 32000, 37000, 42000, 55000, 65000, '', 'PIT', 'Militia', 'Marine Corps', 'NIS', 'Command', 'Veteran', 'HON', 'HR', 'Infantry', '', 0, 0, 3, 0, 41, 1, 22, 1, 23, 1, 24, 4, 33, 5, 25, 3, 29, 5, 0, 0, 30, 5, 31, 6, 34, 5, 27, 8, 46, 1, 42, 2, 0, 0, 0, 6, 4, 3614, 2148, 13, 0, 1, 255, 8, 255, 0, 23782, 0, 0, 0, 0, 0, 1, 255, 255, 255, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 49770, 4323, 49630, 49410, 8752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 1, -1, -1, -1, -1, -1, 0, 255, 2, 3, 0),
(12, 1, 'SAAS', '-----------------------------------------------------------------------------------------------------------------------', 'PLEASE DRIVE LIKE HUMANS DURING CONVOYS.', '-----------------------------------------------------------------------------------------------------------------------', 1, 4, 0, 0, 5, 1, 1, 1, 1, 1, 3, 1, 255, 6200341, 6393600, 191619699, 100000, 10344, 0, 1528.43, -1635.28, 13.38, 'Recruit', 'Private First Class', 'Corporal', 'Sergeant', 'Sergeant Major', 'Lieutenant', 'Captain', 'Major', 'Colonel', 'General', 10000, 15000, 20000, 25000, 30000, 35000, 40000, 45000, 50000, 100000, '', '28th', 'MED-CERT', 'AIR-CERT', 'Veteran', 'MA', 'TANK-CERT', 'CMD', 'MP', 'RSV', 'G4S', 0, 0, 6, 1, 17, 2, 23, 1, 24, 4, 25, 3, 29, 5, 31, 6, 30, 5, 34, 5, 46, 1, 3, 1, 41, 1, 27, 8, 42, 2, 44, 2, 45, 2, 94, 5, 5, 2783, -2865, 14, 0, 3, 255, 1, 7, 0, 9416646, 0, 0, 0, 0, 0, 1, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49850, 8427, 49289, 48997, 7896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 1, -1, -1, -1, -1, -1, 0, 255, 0, 3, 255),
(13, 4, 'San Andreas News', 'Welcome to SANews everyone! I hope you''re having a great day', 'Make sure to apply for the SANews usergroup on the forums', 'No taking money from the vault', 0, 255, 0, 255, 255, 255, 255, 4, 5, 4, 255, 255, 255, 4895123, 4895123, 555687150, 0, 0, 2, 0, 0, 0, 'Intern', 'Journalist', 'Reporter', 'Anchor', 'Supervisor', 'Assistant Manger', 'Manager', 'Managing Director', 'COO', 'CEO', 15000, 20000, 30000, 40000, 50000, 60000, 70000, 150000, 170000, 190000, '', 'HR', 'G.D', 'PR', 'ENT', 'Probation', 'ST', 'Princess', 'Teacher', 'Executive', '', 0, 0, 0, 0, 46, 100, 43, 0, 0, 0, 22, 500, 25, 2000, 24, 5000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 759, -1359, 13, 255, 255, 255, -1, 255, 0, 10733757, 0, 0, 0, 0, 0, 255, 255, 1, 1, 1, 8, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(14, 9, 'Sex Money Murda', 'We are RIVALS with 1323 MARKET MOBB again, you''re able to KOS with your /repfam on', 'DONT CAPTURE MORE THAN 3 POINTS, Alliance with Ballas freq 912 / TS PW bloodinbloodout', 'Taking sniper unless its point/turf=r0!i dont wanna defend ur retardism on the forums,stop breaking rules - Daniel', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 14877700, 14877700, 138217, 0, 0, 2, 1295.14, -912.51, 40.27, ' Hood Rat', 'Soldier', 'Young Blood', 'Street Hustla', 'Certified Blood', 'ShotCaller', 'SMM OG', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'Riders', 'Schneider Squad', 'Rollin\\'' 80\\''s ', 'SquadFullKillaz', 'D-Boys', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 255, 255, 1164, 1314, 11, 0, 255, 255, -1, 255, 0, 393215, 8801, 8310, 225, 0, 0, 5, 5, 6, 5, 6, 1, 255, 6, 19, 22, 67, 144, 180, 183, 195, 6, 90, 24, 1010, 0, 0, 0, 0, 0, 0, 0, 3730, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1274, 1, 16, 21, -1, -1, -1, 0, 255, 255, 255, 255),
(15, 6, 'Judicial', 'No /badge on, no /dept unless needed and don''t take faction cars.', 'We''re low on budget with 0 income so you best not be fucking up.', 'If you''re arrested/charged by any San Andrean LEA, you will be terminated.', 1, 255, 0, 1, 7, 255, 255, 255, 255, 255, 255, 255, 255, 9746616, 9746616, 176439866, 50, 3194, 0, 1397.42, -1649.43, 13.35, 'Intern', 'Deputy Marshal', 'Marshal', 'Attorney', 'Chief Marshal', 'Judge', 'Senior Judge', 'Chief Judge', 'Justice', 'Chief Justice', 12000, 45000, 50000, 35000, 60000, 80000, 90000, 100000, 130000, 0, '', 'ADM', 'SUPREME', 'CoJ', 'DAA', 'EMERITUS', 'REDSANDS', 'PROB.', 'none', 'none', '', 0, 0, 25, 3, 46, 1, 43, 1, 24, 4, 15, 1, 41, 1, 42, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 4, 1410, -1670, 11, 255, 255, 255, -1, 255, 0, 8345447, 0, 0, 0, 0, 0, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30000, 30000, 30000, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(16, 9, '', 'I''m leaving for a bit, ill be back in a couple of days going back to mbc for a bit-MOH', 'Chill out with turfs and keep RPing.', '((/setfreq 912)) Allies with Ballas and SMM.', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 0, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 255, 255, 3328, 206, 31, 255, 255, 255, -1, 255, 0, 4251856, 0, 0, 0, 0, 0, 5, 255, 7, 6, 6, 0, 0, 114, 115, 116, 173, 175, 41, 46, 292, 273, 44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(17, 9, '1323 Market Mobb', 'Have the fam skin, do not rs at block - TS IP: marketmobb1323.teamspeak3.org', 'Allies: TBS/MOHAGREEN - Invite lvl 5 or higher only', 'Avoid the frapsbait. Do not kos/dm. spas12s are for r4+. Rp on the blocc', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 9077, 10092390, 4000, 0, 5998, 0, 992.65, -1254.27, 15.02, 'Mobb Rat', 'B.G', 'Street Soldier', 'B.K', 'Mobb Runna', 'Shot Caller', 'H.N.I.C', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'Mobb', 'Fayta Line', 'Brooks Line', 'Mofujohn Line', 'Demon Line', 'Mayhem Line', 'Hyde Line', 'Atlantic Drive', 'Market BloCC', 'Marina Avenue', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, 255, 255, -2039, -154, 15, 255, 255, 255, -1, 255, 0, 4516837, 10746, 4105, 15, 0, 0, 5, 5, 5, 6, 5, 0, 0, 21, 24, 25, 69, 143, 156, 176, 177, 297, 7, 0, 1073877, 0, 10000, 110698, 9390, 9989, 10000, 0, 3330, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, 38, 31, 13, -1, -1, 0, 0, 255, 255, 255),
(18, 9, '', '-', '-', '-', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 0, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, -2032, 131, 29, 255, 255, 255, -1, 255, 0, 31743, 0, 0, 0, 0, 0, 7, 7, 8, 5, 8, 8, 5, 50, 23, 29, 211, 233, 93, 188, 192, 299, 217, 0, 0, 0, 5906, 12165, 5652, 14307, 9730, 0, 0, 271, 0, 60, 0, 0, 0, 0, 0, 634, 10335, 633, 642, 645, 20620, 10580, 639, 587, 906, 638, 12360, 100753, 0, 0, 639, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(19, 1, 'Classified', '---------------------------------', 'Shhh...we don''t exist.', '---------------------------------', 1, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 255, 4541012, 25600, 64534640, 0, 899940, 0, 0, 0, 0, 'A/I', 'Agent', 'Special Agent', 'Vice Director', 'Director', '', '', '', '', '', 0, 70000, 70000, 0, 0, 0, 0, 0, 0, 0, '', 'Field Ops', 'CMD', '', '', '', '', '', '', '', '', 0, 0, 24, 0, 27, 0, 31, 0, 34, 0, 3, 0, 17, 0, 23, 0, 29, 0, 30, 0, 41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1649, -1238, 15, 0, 0, 0, -1, 0, 0, 16711680, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21109, 0, 24806, 24200, 8054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 0),
(20, 1, 'Administration Team', 'Houses are unfrozen. House placements and moves may now be processed by SA+.', 'Stay at MHC if you aren''t on a report. Watch /levelones if you have nothing to do.', 'Don''t fall for impersonators! Always voice verify if someone tells you to do something.', 1, 6, 0, 0, 255, 0, 0, 0, 0, 0, 0, 255, 255, 1044771, 16711680, 37265932, 0, 9998, 2, 1680.16, 1454.68, 1145.77, 'Moderator', 'Junior Administrator', 'General Administrator', 'Lead General Administrator', 'Senior Administrator', 'Head Administrator', 'Executive Administrator', 'Senior Gang Moderator', 'Director of Game Affairs', 'Administrator', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 'DGA', 'TECH', 'HR', 'Personnel', 'OED', 'SECURITY', 'BA', 'CR', 'OIG', '', 0, 0, 4, 0, 31, 0, 2, 0, 27, 0, 32, 0, 34, 0, 40, 0, 39, 0, 24, 0, 10, 0, 35, 0, 28, 0, 30, 0, 29, 0, 25, 0, 0, 0, 1, 6, 0, 1678, 1478, 1146, 0, 0, 0, 0, 0, 0, 1045042, 0, 0, 0, 0, 0, 255, 255, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 123, 0, 0, 24, 0, 0, 9997828, 9989933, 9993357, 9998301, 10000069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 0, 0, 0, 255),
(21, 1, 'Department of Game Affairs', 'Welcome to the Brixton Social Club.', 'Make sure to behave yourselves, we''re on probation. Don''t use /b during roleplay scenes.', 'Allies: San Andreas Crime Commision, El Cartel De New Eire   Enemies: None as of yet', 0, 9, 9, 9, 255, 255, 0, 255, 255, 0, 255, 255, 255, 16711680, 16726731, 11432853, 0, 0, 1, 1605.16, 1461.01, 1145.04, '', '', '', '', '', '', '', '', '', 'Administrator', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'N/A', '', '', '', '', '', '', '', '', '', '', 0, 0, 2, 0, 26, 1000000, 24, 0, 27, 0, 29, 0, 30, 0, 31, 0, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 0, 0, 0, 255, 255, 255, -1, 255, 0, 6710886, 0, 0, 0, 0, 0, 5, 0, 6, 255, 255, 255, 255, 6, 150, 291, 295, 299, 259, 250, 22, 0, 0, 24, 0, 1, 759320, 759320, 759320, 759320, 9000, 0, 0, 783, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 1400, 0, 0, 28, 0, 0, 51, 0, 0, 0, -1, 19525, 1, -1, -1, -1, -1, -1, 0, 255, 0, 9, 9),
(22, 9, 'Knocknaheeny Disciples', 'NO POINT PUSSYSS -- ALLIES WITH BHT AND CRIPS', 'DONT OVERUSE SPAS12/SNIPER - RIVALS WITH BALLAS,BLOODS,ELMOHAGREEN', 'WE CAN FIGHT CRIPS AT TURF, JUST NOT AGAINST BHT - PR 1337', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 32768, 16749645, 12477185, 0, 0, 0, 1125.22, -1202.93, 17.79, 'Hangaround', 'Associate', 'Member', 'SoladacH', 'Tricolour', 'Knacker', 'King Knacker', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RGT', 'Joyce', 'Summyoke', 'Stokes', 'IRA', 'Kushfam', 'none', 'none', 'none', 'none', 'none', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 1126, -1203, 18, 255, 255, 255, -1, 255, 0, 32768, 3806, 3245, 6440, 0, 0, 5, 5, 6, 6, 5, 0, 0, 2, 299, 29, 100, 247, 248, 183, 230, 211, 237, 24, 250000, 1, 0, 0, 0, 0, 7087, 0, 1270, 4, 900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 44, 0, -1, 0, 1, 38, 27, 25, 13, -1, 0, 0, 255, 255, 255),
(23, 9, 'Grove Street Families', '/SETFREQ -8036 - NO RIVALS - ALLIES: EL MOHAGREEN - BHT - DEAD END DEMINOS ', 'Roleplay before you shoot, don''t KOS, let people start shooting and then murk em, unless u suck at shootin.', 'DONT DO POINTS ! WE ARE ON 2/3 STRIKES - one fuck up and we''re gone.', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 39168, 588288, 473890, 0, 0, 2, 2429.55, -1641.56, 13.47, 'Lil Grove', 'G Street Soulja', 'G Street Hustla', 'G Street Ryder', 'G Street Banger', 'Certified Gangsta', 'Original Gangsta', 'Grove OG', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Baby Grove', 'Old School', 'GSR', 'Jefferson St\\''', 'Ganton Blvd', 'GBK', 'KlipMoBBB', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 549, -1461, 15, 255, 255, 255, -1, 255, 0, 32768, 290, 459, 295, 8, 0, 5, 5, 6, 6, 4, 0, 1, 0, 105, 106, 107, 269, 270, 271, 195, 293, -1, 24, 4000, 0, 46159, 15786, 36354, 32730, 795, 0, 240, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 18898, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(24, 9, 'The Ancelotti Crew', 'Allies - (Grove, Hilltop and Commission) - Freq (-1036). Post roleplay scenarios on daily-basis. = Promotion', 'Ancelotti are creating new ideas and opportunites for RP every day. But we encourage you all to do it yourselves!', 'Italian last name IS required to reach ANY rank above (2)Trusted Associate.', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 11119017, 15384929, 4211245, 0, 0, 2, 1019.69, -1930.29, 12.59, 'Outsider', 'Associate', 'Trusted Associate', 'Soldier', 'Made-Man', 'Caporegime', 'Underboss', 'Boss', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Bratva', 'Narcotics', 'Top Loans', 'Cipriani', 'Steel', 'Legal', 'Cross', 'Right-Hand', 'Legend', 'WAA', 'Social Bar', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 2279, 271, 21, 255, 255, 255, -1, 255, 0, 5800698, 11116, 2650, 1671, 0, 0, 5, 5, 6, 5, 0, 0, 2, 72, 216, 223, 119, 127, 258, 29, 126, 124, 217, 24, 17429, 0, 6900, 2070, 1833, 3858, 20508, 0, 1420, 13137, 940, 30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 71, 0, 399, 195, 0, 0, 0, 0, 0, 160, -1, 19036, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(25, 9, 'Dead End Demonios', 'I WANT EVERYONE TO READ THE HANDBOOK HERE >> LD852.COM << check it daily', 'We''re on probation so don''t be stupid ! - Do NOT take M4''s or SPAS12''s out of the locker!', 'Be professional at any time! - We''re allies with GSF and El Mohagreen - setfreq -8036', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 8776158, 7207789, 224625, 0, 0, 0, 1938.57, -2032.67, 13.55, 'Outsider', 'Diablito', 'Bandolero', 'Soldado de Aztlan', 'El Capitan', 'El Comandante', 'El Jefe', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Soviets', 'Asesino Locos', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 1965, -1563, 14, 255, 255, 255, -1, 255, 0, 65535, 1736, 110, 161, 0, 0, 5, 255, 6, 5, 5, 1, 0, 114, 115, 116, 173, 174, 175, 292, 0, 0, 0, 24, 0, 1, 36081, 0, 0, 33864, 4726, 0, 160, 1910, 0, 786, 0, 0, 0, 0, 0, 20012, 19546, 19218, 9801, 19801, 9961246, 3255, 11539, 10234, 14145, 10597, 9020317, 9914263, 0, 2790, 20000, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(26, 9, 'El Mohagreen', 'Don''t break the rules // Make sure to read the handbook in our channel description (TS)!', 'Allies: Hilltop & DED & Grove (/setfreq -8036) --- Rivals: Ballas', 'Stay at the HQ most of the time to avoid getting into troubles // It''s recommended to be on TS, PW: Mohager', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 15015291, 15015291, 3229975, 0, 0, 2, 1785.2, -2022.91, 13.47, 'Saby', 'Tager', 'Mostasmr', 'Mokhber', 'Moshrif', 'Kaed', 'Mosheer', 'Prince', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'HR', 'Trese', 'OG', 'Drug Dealers', 'Weapon Dealers', 'Bodyguard', 'Bartender', 'none', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 174, -145, 1, 255, 255, 255, -1, 255, 0, 3079927, 4700, 4600, 405, 4, 0, 5, 5, 7, 7, 7, 4, 0, 2, 42, 29, 119, 217, 192, 93, 46, 67, 216, 24, 0, 0, 218, 1761, 0, 54, 5178, 2634, 2400, 30, 1900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, 38, 21, -1, -1, -1, 0, 255, 255, 255, 255),
(27, 9, '', 'We''re now offically allied with Grove street, don''t kill them and use the freq 1089 to contact them.', 'Rivals: Foxhound and ballas, make sure to check [/myrivals] / Always active! / Follow orders or get kicked.', 'Take heavy weapon from the locker using common sense. We catch you robbing it - you get demoted/kicked.', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 892675, 0, 31, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jovenes', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 255, 255, 255, -1, 255, 0, 15073280, 0, 0, 0, 0, 0, 5, 5, 6, 6, 6, 0, 2, 111, 112, 211, 124, 36, 126, 2, 268, 29, 93, 24, 0, 0, 24257, 0, 0, 18455, 8901, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 34, 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, -1, 0, 1, -1, 36, -1, -1, -1, 0, 255, 255, 255, 255),
(28, 0, '', 'Everyone be nice to strangers who are not offensive!Sun Yee On is not a rival anymore! RECORD KOS AND FC!', 'NO POINTS // Do Not Go To Point // All R3+ Should recruit and Hang out at the Hood', 'Our allies are Grove Street and La Reunion Espanola! The frequency between the three families is 95441', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 0, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Las Colinas', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 255, 255, 255, -1, 255, 0, 15988609, 0, 0, 0, 2, 0, 5, 5, 5, 5, 4, 4, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 24, 0, 1, 5519, 1605, 3247, 2425, 9860, 3880, 0, 400, 0, 0, 0, 0, 0, 0, 0, 18, 86, 3, 3, 3, 9994961, 210000003, 30, 0, 27, 8, 9993000, 9995010, 0, 0, 3, -1, 0, 1, 21, -1, -1, -1, -1, 0, 0, 255, 255, 255),
(29, 9, 'Hilltop Militia', 'Rivals = None,Allies = BHT,El Mohagren,RAF', 'R4''s NEED TO RECRUIT MORE', 'DO NOT use rockets on ground units , Allies Freq : -3490182 (BHT and RAF in it )', 2, 255, 0, 4, 255, 255, 255, 5, 5, 5, 255, 255, 255, 16236161, 4950536, 34409756, 0, 0, 2, 1014.46, -352.07, 73.98, 'Recruit', 'Private', 'Corporal', 'Sergeant', 'Lieutenant', 'General', 'Dictator', 'Head Dictator', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'G.D', 'S.A.W', 'AIR', 'S.E.A.L', 'VET', 'G.D', 'G.D', 'none', 'None', 'none', 'None', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 1297, 761, 11, 255, 255, 255, -1, 255, 0, 16236161, 32272, 16670, 2855, 0, 0, 4, 4, 6, 4, 4, 3, 0, 101, 179, 285, 287, 206, 1, 73, 128, 191, 0, 24, 65324, 0, 48240, 18, 43949, 46229, 7953, 0, 15526, 19571, 130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2048, 1, -1, -1, 36, -1, -1, 0, 255, 255, 255, 255),
(30, 0, '', 'Vagos and Crips are the current allies. /setfreq -314 (/pr) to communicate with them.', 'We are back - Help with Recruiting - CFMC will be active and back in power again.', 'Start posting RP on our thread on forums to stop these kids from bitching on us! It can be a video or some screenshots.', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 695125, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Marina', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 681, -444, 16, 255, 255, 255, -1, 255, 0, 11674146, 0, 0, 0, 0, 0, 5, 7, 7, 7, 7, 4, 3, 128, 181, 42, 100, 217, 247, 248, 179, 160, 72, 24, 0, 1, 9410, 9108, 9239, 9662, 8336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 0, 255, 255, 255),
(31, 9, '', 'none', 'none', 'none', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 0, 0, 5227, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 255, 255, -778, -2014, 18, 255, 255, 255, -1, 255, 0, 26112, 0, 0, 0, 0, 0, 7, 7, 9, 9, 9, 0, 1, 230, 29, 2, 299, 183, 294, 270, 271, 107, 211, 24, 0, 0, 49154, 1425, 39979, 30985, 8850, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 133, 0, 0, 170, 0, 0, 147, 0, 0, 0, 0, 0, 61, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(32, 9, 'The Black Hand Triads', 'Follow the rank rules, Allies: RAF, Hilltop, IRA. Freq -3490182. DON''T BREAK RULES, MBC WILL BE BAITING', 'Don''t make gang FC''s, bring evidence to Leadership - VOTE ROTHSCHILD ON THE FORUMS AND IN GAME', 'LV turf agreement with Hilltop, Cycle- IF YOU DONT PARTICIPATE IN GANG ACTIVITES YOU WILL BE PUNISHED', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 3552822, 10027008, 710436, 0, 600, 0, 1618.68, -1791.81, 13.5, 'Blue Lantern', 'White Lotus', 'Grass Sandal', 'Paper Fan', 'Red Pole', 'Fu Shan', 'Shan Chu', 'Head Shan Chu', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'Bartender', 'IRA', 'Security', 'GLOGIRLZ', 'Head Security', 'Dai Lo', 'FC-PowerPoints', 'Biffin Bridge', 'ror', 'Elder', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 2519, -1467, 24, 255, 255, 255, -1, 255, 0, 65535, 19702, 10269, 135, 26, 0, 5, 5, 5, 5, 5, 1, 2, 294, 117, 208, 49, 120, 59, 186, 224, 169, 228, 24, 175620, 0, 28277, 34480, 44119, 33010, 601, 0, 1883, 3986, 1035, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, 38, 16, 34, -1, -1, 0, 255, 255, 255, 255),
(33, 0, '', 'Always stay in charcter and upload the rp you do on Sacc thread, Leaders are watching it', 'If you haven''t been given a radio in character, you do not have it. Use /settings to toggle it unless you have it.', 'No points. Role play at all times. Stay in fucking character.', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 1327500, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 255, 255, 255, -1, 255, 0, 14395649, 0, 0, 0, 16, 0, 255, 255, 7, 5, 4, 2, 1, 8, 42, 119, 186, 126, 29, 28, 120, 69, 268, 24, 0, 1, 13692, 1095, 3470, 0, 9829, 1, 0, 6, 0, 2700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 64, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 0, 0, 255, 255),
(34, 9, '', 'R4''s can LEAD gang raids/RP events without R5+. /MYRIVALS - BALLAS&VAGOS - ONLY KOS IF YOU BOTH HAVE /REPFAM ON!', 'Chill at the HOOD! DON''T KOS/SHOOT FIRST UNLESS RIVALS! Talk and RP with people! DON''T INVITE PEOPLE THAT GET KICKED!', 'ALLIES: BHT, Ancelotti Crew, Hilltop - /setfreq 6482 - R4''S ARE NOW SUPPLIERS. ASK THEM FOR GUNS AND DON''T WASTE THEM!!', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 2475175, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 255, 255, 255, -1, 255, 0, 39424, 0, 0, 0, 0, 0, 5, 5, 6, 6, 4, 4, 0, 0, 105, 106, 107, 269, 270, 271, 195, 195, 28, 24, 0, 0, 18018, 6842, 16672, 17862, 8264, 270, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, 19, 0, 0, 30, 2000114, 2000522, 100, 123, 50, 20, 2001392, 2000160, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(35, 9, '', '- IMPORTANT: Do not break server rules! Breaking them will result in termination from the group. Act professionally!', '-- REPFAM: If you have "/repfam" ON, you can get shot on sight by our rivals. Use "/repcheck" to make sure you''re safe.', '--- RIVALRY: Our only official rivals are The Black Hand Triads. But we have much more enemies, so, watch out!', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 0, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 1653, 1496, 1144, 255, 255, 255, -1, 255, 0, 65535, 0, 0, 0, 0, 0, 5, 5, 7, 6, 3, 3, 0, 124, 126, 240, 113, 147, 223, 46, 258, 290, 295, 24, 0, 0, 45975, 54105, 37393, 40212, 7785, 48, 0, 284, 0, 815, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, 31, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(36, 9, '', 'We have moved our HQ to Idlewood, Door ID 416. Don''t go to Las Colinas anymore.', 'Keep up the RP thread updated, You can KOS Grove only when your repfam is on and their repfam is on', 'Allies Ballas, Company, Demonios, SMM (/setfreq -56773) rivals Grove // Don''t take spasses, without HC approval.', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 407325, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 255, 255, 255, -1, 255, 0, 14867544, 0, 0, 0, 0, 0, 5, 5, 7, 7, 5, 5, 255, 46, 47, 108, 109, 110, 223, 233, 292, 108, 48, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, -1, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(37, 9, '', 'TSPW:fuckpakis READ GANG MASTER POLICY-DONT LAND AIRPLANS/HELICOPTERS IN HQ', 'FOCUS ON RECRUITING AND DRUG TURFS. READ POINT,  /REPFAM RULES. /MYRIVALS TO SEE RIVALS', 'RESPOND TO BACKUP CALLS OR GET KICKED. R8+ equaly slot holder. Dont be retarded. (((((RP AT FUCKING TURFS.))))) THANKS', 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16777215, 16777215, 112225, 0, 0, 2, 0, 0, 0, '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 255, 255, 255, -1, 255, 0, 2723583, 0, 0, 0, 0, 0, 6, 6, 9, 6, 6, 1, 255, 60, 29, 299, 2, 101, 211, 230, 285, 193, 294, 24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 1, 28, 26, -1, -1, -1, 0, 255, 255, 255, 255),
(38, 9, 'ira swag bois yolo', 'WE''RE ON 2/3. NO POINTS. READ THE GANG MASTER POLICY BEFORE TURFING.', 'Grove Street & Ancelotti are allies; join the new PR freq -1036. No rivals. ', 'Roleplay around the HQ -- We''re not going to lose activity because of our 2/3 strikes.', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 16737894, 16737894, 140045, 0, 0, 2, -1055.06, -696.78, 32.34, 'Associate', 'Soldati', 'Button', 'Mafioso', 'Capodecina', 'Sotto Capo', 'Capofamiglia', 'Famiglia Organizzatore', 'Consigliere', 'Cappo di Tutti Capi', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'I.C.A', 'Board', 'DiColucci Crew', 'Murder Inc.', 'Estacado Family', 'De Fiore Family', 'None', 'Laterza Family', 'Vizzini Family', 'Gambino', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 255, 255, 255, -1, 255, 0, 130303, 13040, 410, 1077, 0, 0, 6, 6, 7, 8, 6, 2, 8, 93, 119, 124, 125, 126, 127, 163, 164, 240, 258, 24, 809, 0, 0, 0, 0, 0, 0, 0, 630, 0, 1155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 373, 1, 38, -1, -1, -1, -1, 0, 255, 255, 255, 255),
(39, 9, 'Ballas', 'Vote Francis Rothschild for President New HQ in Glenpark! USE THE GUNSHOP FOR GUNS And OG''s avoid taking Ecstasy !', 'Dont FC Hilltop. Dont Invite below lv 5, Spas12''s and Sniper''s are R4+ only, Below that = Demote to R0.', 'Don''t FC any one our rivals report it to a r5+ spas/snipers are r4+', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 9055202, 9055202, 6231254, 0, 0, 2, 2122.87, -1598.06, 14.27, 'Busta', 'Hangaround', 'Baby Balla', 'Baller', 'Hustlah', 'OG', 'Shot Caller', 'Double OG', 'Kingpins', 'HNIC', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'OTF', 'Maddox Regiment', 'Teste\\''', 'OG', 'A7ASquad', 'Hustlers', 'HitSquad', 'Dealers', 'TCC', 'NSGWP', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 0, 0, 0, 255, 255, 255, -1, 255, 0, 65535, 71137, 35371, 141, 0, 0, 5, 5, 9, 6, 5, 3, 2, 13, 102, 103, 104, 28, 185, 293, 296, 142, -1, 24, 206, 0, 49610, 48400, 48161, 47985, 0, 0, 13729, 0, 350, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 18899, 1, 16, 31, 37, 25, 21, 0, 255, 255, 255, 255),
(40, 9, 'El Mohagreen', 'We are on 1/3 - YOU CAN ONLY CAP 3 POINTS MAXIMUM!!!', 'Allies: Los Dominos 852 - Rivals: IRA // READ THE NEW RIVALRY RULES, EVERYTHING HAS BEEN CHANGED', 'TS PW: elmoha54 - R5+, START TAKING TURFS AND POINTS OR I''LL HAVE TO REMOVE YOUR LEADERSHIPS ', 0, 255, 0, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 15015291, 15015291, 2414545, 0, 0, 2, 1793.31, -2051.64, 13.6, 'Saby', 'Tager', 'Mostasmr', 'Mokhber', 'Moshrif', 'Kaed', 'Mosheer', 'Prince', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'None', 'HR', 'HIT$QUAD', 'Dios Squad', 'Falcons MC', 'SSG', 'FAFD', 'bellend', 'Assassiyun', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 255, 255, 174, -145, 1, 255, 255, 255, -1, 255, 0, 3079927, 1240, 61197, 4055, 4, 0, 5, 5, 7, 6, 5, 0, 0, 2, 42, 29, 250, 217, 192, 93, 1, 8, 216, 24, 1421780, 0, 218, 1761, 0, 54, 5178, 2634, 6680, 30, 5760, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 3028, 1, 21, -1, -1, -1, -1, 0, 255, 255, 255, 255);

-- --------------------------------------------------------

--
-- Table structure for table `groupvehs`
--

CREATE TABLE `groupvehs` (
  `id` int(11) NOT NULL,
  `SpawnedID` int(11) NOT NULL DEFAULT '65535',
  `vDisabled` tinyint(4) NOT NULL DEFAULT '0',
  `gID` int(11) NOT NULL DEFAULT '-1',
  `gDivID` int(11) NOT NULL DEFAULT '0',
  `vModel` int(11) NOT NULL DEFAULT '0',
  `vPlate` varchar(32) NOT NULL,
  `vMaxHealth` float NOT NULL DEFAULT '1000',
  `vFuel` int(11) NOT NULL DEFAULT '100',
  `vType` int(11) NOT NULL DEFAULT '0',
  `vLoadMax` int(11) NOT NULL DEFAULT '2',
  `vCol1` int(11) NOT NULL DEFAULT '0',
  `vCol2` int(11) NOT NULL DEFAULT '0',
  `vX` float NOT NULL DEFAULT '0',
  `vY` float NOT NULL DEFAULT '0',
  `vZ` float NOT NULL DEFAULT '0',
  `vRotZ` float NOT NULL DEFAULT '0',
  `vUpkeep` int(11) NOT NULL DEFAULT '0',
  `vMod0` int(11) NOT NULL DEFAULT '0',
  `vMod1` int(11) NOT NULL DEFAULT '0',
  `vMod2` int(11) NOT NULL DEFAULT '0',
  `vMod3` int(11) NOT NULL DEFAULT '0',
  `vMod4` int(11) NOT NULL DEFAULT '0',
  `vMod5` int(11) NOT NULL DEFAULT '0',
  `vMod6` int(11) NOT NULL DEFAULT '0',
  `vMod7` int(11) NOT NULL DEFAULT '0',
  `vMod8` int(11) NOT NULL DEFAULT '0',
  `vMod9` int(11) NOT NULL DEFAULT '0',
  `vMod10` int(11) NOT NULL DEFAULT '0',
  `vMod11` int(11) NOT NULL DEFAULT '0',
  `vMod12` int(11) NOT NULL DEFAULT '0',
  `vMod13` int(11) NOT NULL DEFAULT '0',
  `vMod14` int(11) NOT NULL DEFAULT '0',
  `vAttachedObjectModel1` int(11) NOT NULL DEFAULT '65535',
  `vObjectX1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectY1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectZ1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRX1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRY1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRZ1` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectText1` varchar(255) DEFAULT NULL,
  `vObjectMatSize1` int(3) NOT NULL DEFAULT '90',
  `vObjectFont1` varchar(255) NOT NULL DEFAULT 'Arial',
  `vObjectSize1` int(3) NOT NULL DEFAULT '24',
  `vObjectColor1` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `vObjectBGColor1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vAttachedObjectModel2` int(11) NOT NULL DEFAULT '65535',
  `vObjectX2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectY2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectZ2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRX2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRY2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRZ2` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectText2` varchar(255) DEFAULT NULL,
  `vObjectMatSize2` int(3) NOT NULL DEFAULT '90',
  `vObjectFont2` varchar(255) NOT NULL DEFAULT 'Arial',
  `vObjectSize2` int(3) NOT NULL DEFAULT '24',
  `vObjectColor2` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `vObjectBGColor2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vAttachedObjectModel3` int(11) NOT NULL DEFAULT '65535',
  `vObjectX3` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectY3` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectZ3` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRX3` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRY3` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRZ3` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectText3` varchar(255) DEFAULT NULL,
  `vObjectMatSize3` int(3) NOT NULL DEFAULT '90',
  `vObjectFont3` varchar(255) NOT NULL DEFAULT 'Arial',
  `vObjectSize3` int(3) NOT NULL DEFAULT '24',
  `vObjectColor3` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `vObjectBGColor3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vAttachedObjectModel4` int(11) NOT NULL DEFAULT '65535',
  `vObjectX4` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectY4` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectZ4` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRX4` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRY4` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectRZ4` float(11,2) NOT NULL DEFAULT '0.00',
  `vObjectText4` varchar(255) DEFAULT NULL,
  `vObjectMatSize4` int(3) NOT NULL DEFAULT '90',
  `vObjectFont4` varchar(255) NOT NULL DEFAULT 'Arial',
  `vObjectSize4` int(3) NOT NULL DEFAULT '24',
  `vObjectColor4` mediumint(8) UNSIGNED NOT NULL DEFAULT '1',
  `vObjectBGColor4` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `vVW` int(11) NOT NULL DEFAULT '0',
  `vInt` int(11) NOT NULL DEFAULT '0',
  `fID` int(11) NOT NULL DEFAULT '0',
  `rID` int(11) NOT NULL DEFAULT '0',
  `vSiren` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gweapons`
--

CREATE TABLE `gweapons` (
  `id` int(11) NOT NULL,
  `Weapon_ID` int(11) NOT NULL DEFAULT '0',
  `Group_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gweaponsnew`
--

CREATE TABLE `gweaponsnew` (
  `id` int(11) NOT NULL,
  `1` int(11) NOT NULL DEFAULT '0',
  `2` int(11) NOT NULL DEFAULT '0',
  `3` int(11) NOT NULL DEFAULT '0',
  `4` int(11) NOT NULL DEFAULT '0',
  `5` int(11) NOT NULL DEFAULT '0',
  `6` int(11) NOT NULL DEFAULT '0',
  `7` int(11) NOT NULL DEFAULT '0',
  `8` int(11) NOT NULL DEFAULT '0',
  `9` int(11) NOT NULL DEFAULT '0',
  `10` int(11) NOT NULL DEFAULT '0',
  `11` int(11) NOT NULL DEFAULT '0',
  `12` int(11) NOT NULL DEFAULT '0',
  `13` int(11) NOT NULL DEFAULT '0',
  `14` int(11) NOT NULL DEFAULT '0',
  `15` int(11) NOT NULL DEFAULT '0',
  `16` int(11) NOT NULL DEFAULT '0',
  `17` int(11) NOT NULL DEFAULT '0',
  `18` int(11) NOT NULL DEFAULT '0',
  `19` int(11) NOT NULL DEFAULT '0',
  `20` int(11) NOT NULL DEFAULT '0',
  `21` int(11) NOT NULL DEFAULT '0',
  `22` int(11) NOT NULL DEFAULT '0',
  `23` int(11) NOT NULL DEFAULT '0',
  `24` int(11) NOT NULL DEFAULT '0',
  `25` int(11) NOT NULL DEFAULT '0',
  `26` int(11) NOT NULL DEFAULT '0',
  `27` int(11) NOT NULL DEFAULT '0',
  `28` int(11) NOT NULL DEFAULT '0',
  `29` int(11) NOT NULL DEFAULT '0',
  `30` int(11) NOT NULL DEFAULT '0',
  `31` int(11) NOT NULL DEFAULT '0',
  `32` int(11) NOT NULL DEFAULT '0',
  `33` int(11) NOT NULL DEFAULT '0',
  `34` int(11) NOT NULL DEFAULT '0',
  `35` int(11) NOT NULL DEFAULT '0',
  `36` int(11) NOT NULL DEFAULT '0',
  `37` int(11) NOT NULL DEFAULT '0',
  `38` int(11) NOT NULL DEFAULT '0',
  `39` int(11) NOT NULL DEFAULT '0',
  `40` int(11) NOT NULL DEFAULT '0',
  `41` int(11) NOT NULL DEFAULT '0',
  `42` int(11) NOT NULL DEFAULT '0',
  `43` int(11) NOT NULL DEFAULT '0',
  `44` int(11) NOT NULL DEFAULT '0',
  `45` int(11) NOT NULL DEFAULT '0',
  `46` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE `help` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Parameters` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Type` int(11) DEFAULT NULL,
  `Subtype` int(11) DEFAULT NULL,
  `Level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hgbackpacks`
--

CREATE TABLE `hgbackpacks` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `posx` float(20,0) NOT NULL,
  `posy` float(20,0) NOT NULL,
  `posz` float(20,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` int(11) NOT NULL,
  `Owned` int(1) NOT NULL DEFAULT '0',
  `Level` int(11) NOT NULL DEFAULT '999',
  `Description` varchar(16) NOT NULL DEFAULT 'High',
  `OwnerID` int(11) NOT NULL DEFAULT '-1',
  `OwnerName` varchar(24) NOT NULL DEFAULT 'Nobody',
  `Owner` varchar(24) NOT NULL DEFAULT 'No-Owner',
  `ExteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExteriorR` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorX` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorY` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorR` float(10,5) NOT NULL DEFAULT '0.00000',
  `ExtIW` int(11) NOT NULL DEFAULT '0',
  `ExtVW` int(11) NOT NULL DEFAULT '0',
  `IntIW` int(11) NOT NULL DEFAULT '9',
  `IntVW` int(11) NOT NULL DEFAULT '0',
  `Lock` int(1) NOT NULL DEFAULT '0',
  `Rentable` int(1) NOT NULL DEFAULT '0',
  `RentFee` int(11) NOT NULL DEFAULT '0',
  `Value` int(11) NOT NULL DEFAULT '0',
  `SafeMoney` int(11) NOT NULL DEFAULT '0',
  `Pot` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Materials` int(11) NOT NULL DEFAULT '0',
  `Meth` int(11) NOT NULL DEFAULT '0',
  `Ecstasy` int(11) NOT NULL DEFAULT '0',
  `Weapons0` int(11) NOT NULL DEFAULT '0',
  `Weapons1` int(11) NOT NULL DEFAULT '0',
  `Weapons2` int(11) NOT NULL DEFAULT '0',
  `Weapons3` int(11) NOT NULL DEFAULT '0',
  `Weapons4` int(11) NOT NULL DEFAULT '0',
  `GLUpgrade` int(1) NOT NULL DEFAULT '0',
  `PickupID` int(11) NOT NULL DEFAULT '0',
  `CustomInterior` int(1) NOT NULL DEFAULT '0',
  `CustomExterior` int(1) NOT NULL DEFAULT '0',
  `ExteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `InteriorA` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailX` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailY` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailA` float(10,5) NOT NULL DEFAULT '0.00000',
  `MailType` tinyint(4) NOT NULL DEFAULT '0',
  `Heroin` int(11) NOT NULL DEFAULT '0',
  `ClosetX` float(10,5) NOT NULL DEFAULT '0.00000',
  `ClosetY` float(10,5) NOT NULL DEFAULT '0.00000',
  `ClosetZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `SignDesc` varchar(255) NOT NULL DEFAULT 'None',
  `SignX` float(10,5) NOT NULL DEFAULT '0.00000',
  `SignY` float(10,5) NOT NULL DEFAULT '0.00000',
  `SignZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `SignA` float(10,5) NOT NULL DEFAULT '0.00000',
  `SignExpire` int(11) NOT NULL DEFAULT '0',
  `LastLogin` int(11) NOT NULL DEFAULT '0',
  `Expire` int(1) NOT NULL DEFAULT '0',
  `Inactive` int(1) NOT NULL DEFAULT '0',
  `Ignore` int(1) NOT NULL DEFAULT '0',
  `Counter` int(11) NOT NULL DEFAULT '0',
  `Listed` int(1) NOT NULL DEFAULT '0',
  `ListingPrice` int(11) NOT NULL DEFAULT '0',
  `LinkedDoor0` int(11) NOT NULL DEFAULT '0',
  `LinkedDoor1` int(11) NOT NULL DEFAULT '0',
  `LinkedDoor2` int(11) NOT NULL DEFAULT '0',
  `LinkedDoor3` int(11) NOT NULL DEFAULT '0',
  `LinkedDoor4` int(11) NOT NULL DEFAULT '0',
  `PendingApproval` int(1) NOT NULL DEFAULT '0',
  `ListedTimeStamp` int(11) NOT NULL DEFAULT '0',
  `ListingDescription` varchar(128) NOT NULL DEFAULT 'None',
  `LinkedGarage0` int(11) NOT NULL DEFAULT '0',
  `LinkedGarage1` int(11) NOT NULL DEFAULT '0',
  `Ammo0` int(11) NOT NULL DEFAULT '0',
  `Ammo1` int(11) NOT NULL DEFAULT '0',
  `Ammo2` int(11) NOT NULL DEFAULT '0',
  `Ammo3` int(11) NOT NULL DEFAULT '0',
  `Ammo4` int(11) NOT NULL DEFAULT '0',
  `Workbench` int(1) NOT NULL DEFAULT '0',
  `Lights` int(1) NOT NULL DEFAULT '0',
  `HouseBuilder` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `house_closet`
--

CREATE TABLE `house_closet` (
  `id` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `skinid` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `humankills`
--

CREATE TABLE `humankills` (
  `id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `name` varchar(34) NOT NULL DEFAULT 'No-one'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `humansurvivor`
--

CREATE TABLE `humansurvivor` (
  `id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `name` varchar(34) NOT NULL DEFAULT 'No-one'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `impoundpoints`
--

CREATE TABLE `impoundpoints` (
  `id` int(2) NOT NULL,
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `VW` int(5) NOT NULL DEFAULT '0',
  `Int` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ip_bans`
--

CREATE TABLE `ip_bans` (
  `bid` int(10) UNSIGNED NOT NULL,
  `ip` varchar(32) NOT NULL,
  `end_ip` varchar(32) DEFAULT NULL,
  `date` datetime NOT NULL,
  `reason` varchar(128) NOT NULL,
  `admin` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `posx` float NOT NULL DEFAULT '0',
  `posy` float NOT NULL DEFAULT '0',
  `posz` float NOT NULL DEFAULT '0',
  `rot` float NOT NULL DEFAULT '0',
  `delx` float NOT NULL DEFAULT '0',
  `dely` float NOT NULL DEFAULT '0',
  `delz` float NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `vw` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '1',
  `actormodel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobstuff`
--

CREATE TABLE `jobstuff` (
  `id` int(11) NOT NULL,
  `pId` int(11) NOT NULL,
  `junkmetal` int(11) NOT NULL DEFAULT '0',
  `newcoin` int(11) NOT NULL DEFAULT '0',
  `oldcoin` int(11) NOT NULL DEFAULT '0',
  `brokenwatch` int(11) NOT NULL DEFAULT '0',
  `oldkey` int(11) NOT NULL DEFAULT '0',
  `treasure` int(11) NOT NULL DEFAULT '0',
  `goldwatch` int(11) NOT NULL DEFAULT '0',
  `silvernugget` int(11) NOT NULL DEFAULT '0',
  `goldnugget` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_types`
--

CREATE TABLE `jobs_types` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs_vehicles`
--

CREATE TABLE `jobs_vehicles` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL DEFAULT '1',
  `vehid` int(11) NOT NULL DEFAULT '400',
  `posx` float NOT NULL DEFAULT '0',
  `posy` float NOT NULL DEFAULT '0',
  `posz` float NOT NULL DEFAULT '0',
  `rotz` float NOT NULL DEFAULT '0',
  `vw` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `col1` int(11) NOT NULL DEFAULT '0',
  `col2` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jurisdictions`
--

CREATE TABLE `jurisdictions` (
  `id` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '-1',
  `AreaName` varchar(64) DEFAULT NULL,
  `JurisdictionID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kills`
--

CREATE TABLE `kills` (
  `id` int(11) NOT NULL,
  `killerid` int(11) NOT NULL DEFAULT '-1',
  `killedid` int(11) NOT NULL DEFAULT '-1',
  `date` datetime DEFAULT NULL,
  `weapon` varchar(56) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leaderboards`
--

CREATE TABLE `leaderboards` (
  `Username` varchar(36) NOT NULL DEFAULT 'None',
  `seconds` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `letters`
--

CREATE TABLE `letters` (
  `ID` int(11) NOT NULL,
  `Sender_Id` int(11) DEFAULT NULL,
  `Receiver_Id` int(11) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  `Notify` varchar(1) DEFAULT NULL,
  `Delivery_Min` int(11) DEFAULT NULL,
  `Read` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lockers`
--

CREATE TABLE `lockers` (
  `Id` int(11) NOT NULL,
  `Group_ID` int(11) NOT NULL DEFAULT '-1',
  `Locker_ID` int(11) NOT NULL,
  `LockerX` float NOT NULL DEFAULT '0',
  `LockerY` float NOT NULL DEFAULT '0',
  `LockerZ` float NOT NULL DEFAULT '0',
  `LockerVW` int(11) NOT NULL DEFAULT '0',
  `LockerShare` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `locker_restrict`
--

CREATE TABLE `locker_restrict` (
  `id` int(11) NOT NULL,
  `1` int(11) NOT NULL DEFAULT '0',
  `2` int(11) NOT NULL DEFAULT '0',
  `3` int(11) NOT NULL DEFAULT '0',
  `4` int(11) NOT NULL DEFAULT '0',
  `5` int(11) NOT NULL DEFAULT '0',
  `6` int(11) NOT NULL DEFAULT '0',
  `7` int(11) NOT NULL DEFAULT '0',
  `8` int(11) NOT NULL DEFAULT '0',
  `9` int(11) NOT NULL DEFAULT '0',
  `10` int(11) NOT NULL DEFAULT '0',
  `11` int(11) NOT NULL DEFAULT '0',
  `12` int(11) NOT NULL DEFAULT '0',
  `13` int(11) NOT NULL DEFAULT '0',
  `14` int(11) NOT NULL DEFAULT '0',
  `15` int(11) NOT NULL DEFAULT '0',
  `16` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_strikes`
--

CREATE TABLE `login_strikes` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `strike` int(11) DEFAULT '0',
  `date` datetime NOT NULL,
  `ccstrike` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lotto`
--

CREATE TABLE `lotto` (
  `tid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mailboxes`
--

CREATE TABLE `mailboxes` (
  `ID` int(11) NOT NULL,
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `Model` int(11) NOT NULL DEFAULT '3407',
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `Angle` float NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mdc`
--

CREATE TABLE `mdc` (
  `cid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `issuer` varchar(24) NOT NULL,
  `crime` varchar(128) NOT NULL,
  `active` tinyint(2) DEFAULT '1',
  `origin` int(11) NOT NULL DEFAULT '1' COMMENT 'SA = | TR=2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `metaldetectors`
--

CREATE TABLE `metaldetectors` (
  `id` int(11) NOT NULL,
  `posx` float(10,5) NOT NULL DEFAULT '0.00000',
  `posy` float(10,5) NOT NULL DEFAULT '0.00000',
  `posz` float(10,5) NOT NULL DEFAULT '0.00000',
  `rotx` float(10,5) NOT NULL DEFAULT '0.00000',
  `roty` float(10,5) NOT NULL DEFAULT '0.00000',
  `rotz` float(10,5) NOT NULL DEFAULT '0.00000',
  `vw` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `misc`
--

CREATE TABLE `misc` (
  `gMOTD` varchar(256) NOT NULL,
  `aMOTD` varchar(256) NOT NULL,
  `vMOTD` varchar(256) NOT NULL,
  `cMOTD` varchar(256) NOT NULL,
  `pMOTD` varchar(256) NOT NULL,
  `ShopTechPay` float(11,1) NOT NULL DEFAULT '0.5',
  `Safe` int(11) NOT NULL DEFAULT '0',
  `TicketsSold` int(11) NOT NULL DEFAULT '0',
  `GiftCode` varchar(32) NOT NULL DEFAULT 'off',
  `GiftCodeBypass` int(11) NOT NULL DEFAULT '0',
  `TotalCitizens` int(11) NOT NULL DEFAULT '0',
  `TRCitizens` int(11) NOT NULL DEFAULT '0',
  `SecurityCode` varchar(32) NOT NULL DEFAULT 'none',
  `ShopClosed` int(11) NOT NULL DEFAULT '0',
  `RimMod` int(11) NOT NULL DEFAULT '0',
  `CarVoucher` int(11) NOT NULL DEFAULT '0',
  `PVIPVoucher` int(11) NOT NULL DEFAULT '0',
  `GarageVW` int(11) DEFAULT '0',
  `PumpkinStock` int(11) NOT NULL DEFAULT '0',
  `HalloweenShop` int(11) NOT NULL DEFAULT '0',
  `devnews` text NOT NULL,
  `PassComplexCheck` int(11) NOT NULL DEFAULT '0',
  `InactiveStatus` int(11) NOT NULL DEFAULT '0',
  `hInactiveDays` int(11) NOT NULL DEFAULT '90',
  `hCounterHours` int(11) NOT NULL DEFAULT '5',
  `hExpireWeeks` int(11) NOT NULL DEFAULT '2',
  `ddInactiveDays` int(11) NOT NULL DEFAULT '90',
  `ddCounterHours` int(11) NOT NULL DEFAULT '5',
  `ddExpireWeeks` int(11) NOT NULL DEFAULT '2',
  `GunPrice0` int(11) NOT NULL DEFAULT '0',
  `GunPrice1` int(11) NOT NULL DEFAULT '0',
  `GunPrice2` int(11) NOT NULL DEFAULT '0',
  `GunPrice3` int(11) NOT NULL DEFAULT '0',
  `GunPrice4` int(11) NOT NULL DEFAULT '0',
  `GunPrice5` int(11) NOT NULL DEFAULT '0',
  `GunPrice6` int(11) NOT NULL DEFAULT '0',
  `gs_iStock0` int(11) NOT NULL DEFAULT '0',
  `gs_iStock1` int(11) NOT NULL DEFAULT '0',
  `gs_iStock2` int(11) NOT NULL DEFAULT '0',
  `gs_iStock3` int(11) NOT NULL DEFAULT '0',
  `SHIPMENT_MATS_NEEDED` int(11) NOT NULL DEFAULT '60',
  `prisonerMOTD` varchar(255) NOT NULL,
  `prisonerMOTD2` varchar(255) NOT NULL,
  `prisonerMOTD3` varchar(255) NOT NULL,
  `ammoMat0` int(5) NOT NULL,
  `ammoMat1` int(5) NOT NULL,
  `ammoMat2` int(5) NOT NULL,
  `ammoMat3` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nation_queue`
--

CREATE TABLE `nation_queue` (
  `id` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `name` varchar(24) DEFAULT NULL,
  `date` datetime NOT NULL,
  `nation` int(1) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nonrppoints`
--

CREATE TABLE `nonrppoints` (
  `sqlid` int(11) DEFAULT '0',
  `point` int(11) DEFAULT '0',
  `expiration` int(11) DEFAULT '0',
  `reason` varchar(128) DEFAULT NULL,
  `issuer` int(11) DEFAULT '0',
  `active` int(11) DEFAULT '0',
  `manual` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parking_meters`
--

CREATE TABLE `parking_meters` (
  `MeterID` int(11) NOT NULL,
  `MeterActive` int(11) NOT NULL DEFAULT '0',
  `MeterRate` int(11) NOT NULL DEFAULT '500',
  `MeterRange` float(10,5) NOT NULL DEFAULT '0.00000',
  `MeterPosition0` float(10,5) NOT NULL DEFAULT '0.00000',
  `MeterPosition1` float(10,5) NOT NULL DEFAULT '0.00000',
  `MeterPosition2` float(10,5) NOT NULL DEFAULT '0.00000',
  `MeterPosition3` float(10,5) NOT NULL DEFAULT '0.00000',
  `MeterPosition4` float(10,5) NOT NULL DEFAULT '0.00000',
  `MeterPosition5` float(10,5) NOT NULL DEFAULT '0.00000',
  `ParkedPosition0` float(10,5) NOT NULL DEFAULT '0.00000',
  `ParkedPosition1` float(10,5) NOT NULL DEFAULT '0.00000',
  `ParkedPosition2` float(10,5) NOT NULL DEFAULT '0.00000',
  `ParkedPosition3` float(10,5) NOT NULL DEFAULT '0.00000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `paynsprays`
--

CREATE TABLE `paynsprays` (
  `id` int(11) NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  `PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `GroupCost` int(11) NOT NULL DEFAULT '0',
  `RegCost` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payphones`
--

CREATE TABLE `payphones` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `posx` float(10,5) NOT NULL,
  `posy` float(10,5) NOT NULL,
  `posz` float(10,5) NOT NULL,
  `rotz` float(10,5) NOT NULL,
  `vw` int(11) NOT NULL,
  `int` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pcount`
--

CREATE TABLE `pcount` (
  `date` date NOT NULL DEFAULT '0000-00-00',
  `time` time NOT NULL DEFAULT '00:00:00',
  `count` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `phone_contacts`
--

CREATE TABLE `phone_contacts` (
  `sid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `contactnr` int(11) NOT NULL,
  `contactname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `plants`
--

CREATE TABLE `plants` (
  `plantID` int(11) NOT NULL,
  `Owner` int(11) NOT NULL DEFAULT '0',
  `Object` int(11) NOT NULL DEFAULT '0',
  `PlantType` int(11) NOT NULL DEFAULT '0',
  `PositionX` float NOT NULL DEFAULT '0',
  `PositionY` float NOT NULL DEFAULT '0',
  `PositionZ` float NOT NULL DEFAULT '0',
  `Virtual` int(11) NOT NULL DEFAULT '0',
  `Interior` int(11) NOT NULL DEFAULT '0',
  `Growth` int(11) NOT NULL DEFAULT '0',
  `Expires` int(11) NOT NULL DEFAULT '0',
  `DrugsSkill` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

CREATE TABLE `points` (
  `id` int(11) NOT NULL,
  `posx` float(20,5) NOT NULL DEFAULT '0.00000',
  `posy` float(20,5) NOT NULL DEFAULT '0.00000',
  `posz` float(20,5) NOT NULL DEFAULT '0.00000',
  `vw` int(11) NOT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `vulnerable` int(11) NOT NULL DEFAULT '0',
  `matpoint` int(11) NOT NULL DEFAULT '0',
  `owner` varchar(128) DEFAULT NULL,
  `cappername` varchar(24) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `captime` int(11) NOT NULL DEFAULT '0',
  `capfam` int(11) NOT NULL DEFAULT '-1',
  `capname` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `ID` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Options` int(11) DEFAULT '0',
  `Option1` varchar(32) DEFAULT '-',
  `Option2` varchar(32) DEFAULT '-',
  `Option3` varchar(32) DEFAULT '-',
  `Option4` varchar(32) DEFAULT '-',
  `Option5` varchar(32) DEFAULT '-',
  `Option6` varchar(32) DEFAULT '-',
  `OptionResult1` int(11) DEFAULT '0',
  `OptionResult2` int(11) DEFAULT '0',
  `OptionResult3` int(11) DEFAULT '0',
  `OptionResult4` int(11) DEFAULT '0',
  `OptionResult5` int(11) DEFAULT '0',
  `OptionResult6` int(11) DEFAULT '0',
  `PlacedBy` varchar(25) DEFAULT NULL,
  `Interior` int(11) DEFAULT '0',
  `VirtualWorld` int(11) DEFAULT '0',
  `LocationX` float(11,0) DEFAULT '0',
  `LocationY` float(11,0) DEFAULT '0',
  `LocationZ` float(11,0) DEFAULT '0',
  `UniqueKey` varchar(255) DEFAULT NULL,
  `CreationDate` int(11) DEFAULT '0',
  `ExpirationDate` int(11) DEFAULT '0',
  `Type` int(11) DEFAULT '0',
  `TypeRank` int(11) DEFAULT '0',
  `TypeID` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `polls_copy`
--

CREATE TABLE `polls_copy` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Active` int(11) DEFAULT '0',
  `Type` int(11) DEFAULT '0',
  `TypeRank` int(11) DEFAULT '0',
  `TypeID` int(11) DEFAULT '0',
  `Hours` int(11) DEFAULT '0',
  `Options` int(11) DEFAULT '0',
  `Question` varchar(64) DEFAULT '-',
  `Option0` varchar(32) DEFAULT '-',
  `OptionV0` int(11) DEFAULT '0',
  `OptionResult0` int(11) DEFAULT '0',
  `Option1` varchar(32) DEFAULT '-',
  `OptionV1` int(11) DEFAULT '0',
  `OptionResult1` int(11) DEFAULT '0',
  `Option2` varchar(32) DEFAULT '-',
  `OptionV2` int(11) DEFAULT '0',
  `OptionResult2` int(11) DEFAULT '0',
  `Option3` varchar(32) DEFAULT '-',
  `OptionV3` int(11) DEFAULT '0',
  `OptionResult3` int(11) DEFAULT '0',
  `Option4` varchar(32) DEFAULT '-',
  `OptionV4` int(11) DEFAULT '0',
  `OptionResult4` int(11) DEFAULT '0',
  `Option5` varchar(32) DEFAULT '-',
  `OptionV5` int(11) DEFAULT '0',
  `OptionResult5` int(11) DEFAULT '0',
  `Option6` varchar(32) DEFAULT '-',
  `OptionResult6` int(11) DEFAULT '0',
  `OptionV7` int(11) DEFAULT '0',
  `Option8` varchar(32) DEFAULT '-',
  `OptionV8` int(11) DEFAULT '0',
  `Option9` varchar(32) DEFAULT '-',
  `OptionV9` int(11) DEFAULT '0',
  `PlacedBy` varchar(25) DEFAULT NULL,
  `Interior` int(11) DEFAULT '0',
  `VirtualWorld` int(11) DEFAULT '0',
  `LocationX` float(11,0) DEFAULT '0',
  `LocationY` float(11,0) DEFAULT '0',
  `LocationZ` float(11,0) DEFAULT '0',
  `CreationDate` int(11) DEFAULT '0',
  `ExpirationDate` int(11) DEFAULT '0',
  `UniqueKey` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pvehpositions`
--

CREATE TABLE `pvehpositions` (
  `id` int(11) NOT NULL DEFAULT '-1',
  `pv0ModelId` int(11) NOT NULL DEFAULT '0',
  `pv0PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv0PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv0PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv0PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv1ModelId` int(11) NOT NULL DEFAULT '0',
  `pv1PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv1PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv1PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv1PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv2ModelId` int(11) NOT NULL DEFAULT '0',
  `pv2PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv2PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv2PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv2PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv3ModelId` int(11) NOT NULL DEFAULT '0',
  `pv3PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv3PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv3PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv3PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv4ModelId` int(11) NOT NULL DEFAULT '0',
  `pv4PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv4PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv4PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv4PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv5ModelId` int(11) NOT NULL DEFAULT '0',
  `pv5PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv5PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv5PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv5PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv6ModelId` int(11) NOT NULL DEFAULT '0',
  `pv6PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv6PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv6PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv6PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv7ModelId` int(11) NOT NULL DEFAULT '0',
  `pv7PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv7PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv7PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv7PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv8ModelId` int(11) NOT NULL DEFAULT '0',
  `pv8PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv8PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv8PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv8PosAngle` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv9ModelId` int(11) NOT NULL DEFAULT '0',
  `pv9PosX` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv9PosY` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv9PosZ` float(10,5) NOT NULL DEFAULT '0.00000',
  `pv9PosAngle` float(10,5) NOT NULL DEFAULT '0.00000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rentedcars`
--

CREATE TABLE `rentedcars` (
  `id` int(11) NOT NULL,
  `sqlid` int(11) DEFAULT '0',
  `modelid` int(11) DEFAULT '0',
  `posx` float DEFAULT '0',
  `posy` float DEFAULT '0',
  `posz` float DEFAULT '0',
  `posa` float DEFAULT '0',
  `spawned` int(11) DEFAULT '0',
  `hours` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `requestcomments`
--

CREATE TABLE `requestcomments` (
  `id` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `requestedBy` varchar(255) NOT NULL,
  `time` int(255) NOT NULL,
  `details` text NOT NULL,
  `gdoc` text NOT NULL,
  `assignedTo` varchar(255) NOT NULL DEFAULT 'Miguel',
  `priority` int(2) NOT NULL,
  `value` int(50) NOT NULL,
  `status` int(2) NOT NULL,
  `progress` int(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rewardcalc`
--

CREATE TABLE `rewardcalc` (
  `pID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rflteams`
--

CREATE TABLE `rflteams` (
  `id` int(5) NOT NULL,
  `name` varchar(64) NOT NULL DEFAULT 'Not Used',
  `used` int(2) NOT NULL DEFAULT '0',
  `laps` int(5) NOT NULL DEFAULT '0',
  `leader` varchar(26) NOT NULL DEFAULT 'None',
  `members` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `Month` datetime NOT NULL,
  `TotalSold0` int(11) NOT NULL DEFAULT '0',
  `AmountMade0` int(11) NOT NULL DEFAULT '0',
  `TotalSold1` int(11) NOT NULL DEFAULT '0',
  `AmountMade1` int(11) NOT NULL DEFAULT '0',
  `TotalSold2` int(11) NOT NULL DEFAULT '0',
  `AmountMade2` int(11) NOT NULL DEFAULT '0',
  `TotalSold3` int(11) NOT NULL DEFAULT '0',
  `AmountMade3` int(11) NOT NULL DEFAULT '0',
  `TotalSold4` int(11) NOT NULL DEFAULT '0',
  `AmountMade4` int(11) NOT NULL DEFAULT '0',
  `TotalSold5` int(11) NOT NULL DEFAULT '0',
  `AmountMade5` int(11) NOT NULL DEFAULT '0',
  `TotalSold6` int(11) NOT NULL DEFAULT '0',
  `AmountMade6` int(11) NOT NULL DEFAULT '0',
  `TotalSold7` int(11) NOT NULL DEFAULT '0',
  `AmountMade7` int(11) NOT NULL DEFAULT '0',
  `TotalSold8` int(11) NOT NULL DEFAULT '0',
  `AmountMade8` int(11) NOT NULL DEFAULT '0',
  `TotalSold9` int(11) NOT NULL DEFAULT '0',
  `AmountMade9` int(11) NOT NULL DEFAULT '0',
  `TotalSold10` int(11) NOT NULL DEFAULT '0',
  `AmountMade10` int(11) NOT NULL DEFAULT '0',
  `TotalSold11` int(11) NOT NULL DEFAULT '0',
  `AmountMade11` int(11) NOT NULL DEFAULT '0',
  `TotalSold12` int(11) NOT NULL DEFAULT '0',
  `AmountMade12` int(11) NOT NULL DEFAULT '0',
  `TotalSold13` int(11) NOT NULL DEFAULT '0',
  `AmountMade13` int(11) NOT NULL DEFAULT '0',
  `TotalSold14` int(11) NOT NULL DEFAULT '0',
  `AmountMade14` int(11) NOT NULL DEFAULT '0',
  `TotalSold15` int(11) NOT NULL DEFAULT '0',
  `AmountMade15` int(11) NOT NULL DEFAULT '0',
  `TotalSold16` int(11) NOT NULL DEFAULT '0',
  `AmountMade16` int(11) NOT NULL DEFAULT '0',
  `TotalSold17` int(11) NOT NULL DEFAULT '0',
  `AmountMade17` int(11) NOT NULL DEFAULT '0',
  `TotalSold18` int(11) NOT NULL DEFAULT '0',
  `AmountMade18` int(11) NOT NULL DEFAULT '0',
  `TotalSold19` int(11) NOT NULL DEFAULT '0',
  `AmountMade19` int(11) NOT NULL DEFAULT '0',
  `TotalSold20` int(11) NOT NULL DEFAULT '0',
  `AmountMade20` int(11) NOT NULL DEFAULT '0',
  `TotalSold21` int(11) NOT NULL DEFAULT '0',
  `AmountMade21` int(11) NOT NULL DEFAULT '0',
  `TotalSold22` int(11) NOT NULL DEFAULT '0',
  `AmountMade22` int(11) NOT NULL DEFAULT '0',
  `TotalSold23` int(11) NOT NULL DEFAULT '0',
  `AmountMade23` int(11) NOT NULL DEFAULT '0',
  `TotalSold24` int(11) NOT NULL DEFAULT '0',
  `AmountMade24` int(11) NOT NULL DEFAULT '0',
  `TotalSold25` int(11) NOT NULL DEFAULT '0',
  `AmountMade25` int(11) NOT NULL DEFAULT '0',
  `TotalSold26` int(11) NOT NULL DEFAULT '0',
  `AmountMade26` int(11) NOT NULL DEFAULT '0',
  `TotalSold27` int(11) NOT NULL DEFAULT '0',
  `AmountMade27` int(11) NOT NULL DEFAULT '0',
  `TotalSold28` int(11) NOT NULL DEFAULT '0',
  `AmountMade28` int(11) NOT NULL DEFAULT '0',
  `TotalSold29` int(11) NOT NULL DEFAULT '0',
  `AmountMade29` int(11) NOT NULL DEFAULT '0',
  `TotalSold30` int(11) NOT NULL DEFAULT '0',
  `AmountMade30` int(11) NOT NULL DEFAULT '0',
  `TotalSold31` int(11) NOT NULL DEFAULT '0',
  `AmountMade31` int(11) NOT NULL DEFAULT '0',
  `TotalSold32` int(11) NOT NULL DEFAULT '0',
  `AmountMade32` int(11) NOT NULL DEFAULT '0',
  `TotalSold33` int(11) NOT NULL DEFAULT '0',
  `AmountMade33` int(11) NOT NULL DEFAULT '0',
  `TotalSold34` int(11) NOT NULL DEFAULT '0',
  `AmountMade34` int(11) NOT NULL DEFAULT '0',
  `TotalSold35` int(11) NOT NULL DEFAULT '0',
  `AmountMade35` int(11) NOT NULL DEFAULT '0',
  `TotalSold36` int(11) NOT NULL DEFAULT '0',
  `AmountMade36` int(11) NOT NULL DEFAULT '0',
  `TotalSold37` int(11) NOT NULL DEFAULT '0',
  `AmountMade37` int(11) NOT NULL DEFAULT '0',
  `TotalSold38` int(11) NOT NULL DEFAULT '0',
  `AmountMade38` int(11) NOT NULL DEFAULT '0',
  `TotalSold39` int(11) NOT NULL DEFAULT '0',
  `AmountMade39` int(11) NOT NULL DEFAULT '0',
  `TotalSold40` int(11) NOT NULL DEFAULT '0',
  `AmountMade40` int(11) NOT NULL DEFAULT '0',
  `TotalSoldMicro` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `AmountMadeMicro` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `TotalSold41` int(11) NOT NULL,
  `AmountMade41` int(11) NOT NULL,
  `TotalSold42` int(11) NOT NULL,
  `AmountMade42` int(11) NOT NULL,
  `TotalSold43` int(11) NOT NULL,
  `AmountMade43` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `scp_passchange`
--

CREATE TABLE `scp_passchange` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `rpname` varchar(128) NOT NULL,
  `pass_cp` int(1) NOT NULL DEFAULT '0',
  `pass_ig` int(1) NOT NULL DEFAULT '0',
  `addinfo` varchar(255) DEFAULT NULL,
  `passall` int(1) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0',
  `adminname` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sec_questions`
--

CREATE TABLE `sec_questions` (
  `userid` int(11) NOT NULL,
  `question` varchar(256) NOT NULL,
  `answer` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL DEFAULT '',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `quantity` int(4) NOT NULL DEFAULT '0',
  `delivered` tinyint(1) NOT NULL DEFAULT '0',
  `updatedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deliveruser` varchar(32) NOT NULL DEFAULT '',
  `ip` varchar(32) NOT NULL DEFAULT '',
  `email` varchar(256) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shopprices`
--

CREATE TABLE `shopprices` (
  `Price0` int(11) NOT NULL DEFAULT '0',
  `Price1` int(11) NOT NULL DEFAULT '0',
  `Price2` int(11) NOT NULL DEFAULT '0',
  `Price3` int(11) NOT NULL DEFAULT '0',
  `Price4` int(11) NOT NULL DEFAULT '0',
  `Price5` int(11) NOT NULL DEFAULT '0',
  `Price6` int(11) NOT NULL DEFAULT '0',
  `Price7` int(11) NOT NULL DEFAULT '0',
  `Price8` int(11) NOT NULL DEFAULT '0',
  `Price9` int(11) NOT NULL DEFAULT '0',
  `Price10` int(11) NOT NULL DEFAULT '0',
  `Price11` int(11) NOT NULL DEFAULT '0',
  `Price12` int(11) NOT NULL DEFAULT '0',
  `Price13` int(11) NOT NULL DEFAULT '0',
  `Price14` int(11) NOT NULL DEFAULT '0',
  `Price15` int(11) NOT NULL DEFAULT '0',
  `Price16` int(11) NOT NULL DEFAULT '0',
  `Price17` int(11) NOT NULL DEFAULT '0',
  `Price18` int(11) NOT NULL DEFAULT '0',
  `Price19` int(11) NOT NULL DEFAULT '0',
  `Price20` int(11) NOT NULL DEFAULT '0',
  `Price21` int(11) NOT NULL DEFAULT '0',
  `Price22` int(11) NOT NULL DEFAULT '0',
  `Price23` int(11) NOT NULL DEFAULT '0',
  `Price24` int(11) NOT NULL DEFAULT '0',
  `Price25` int(11) NOT NULL DEFAULT '0',
  `Price26` int(11) NOT NULL DEFAULT '0',
  `Price27` int(11) NOT NULL DEFAULT '0',
  `Price28` int(11) NOT NULL DEFAULT '0',
  `Price29` int(11) NOT NULL DEFAULT '0',
  `Price30` int(11) NOT NULL DEFAULT '0',
  `Price31` int(11) NOT NULL DEFAULT '0',
  `Price32` int(11) NOT NULL DEFAULT '0',
  `Price33` int(11) NOT NULL DEFAULT '0',
  `Price34` int(11) NOT NULL DEFAULT '0',
  `Price35` int(11) NOT NULL DEFAULT '0',
  `Price36` int(11) NOT NULL DEFAULT '0',
  `Price37` int(11) NOT NULL DEFAULT '0',
  `Price38` int(11) NOT NULL DEFAULT '0',
  `Price39` int(11) NOT NULL DEFAULT '0',
  `Price40` int(11) NOT NULL DEFAULT '0',
  `MicroPrices` varchar(255) NOT NULL DEFAULT '0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0',
  `Price41` int(11) NOT NULL,
  `Price42` int(11) NOT NULL,
  `Price43` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shoptech`
--

CREATE TABLE `shoptech` (
  `id` int(11) NOT NULL DEFAULT '0',
  `total` int(11) NOT NULL DEFAULT '0',
  `dtotal` float(11,1) NOT NULL DEFAULT '0.0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_orders`
--

CREATE TABLE `shop_orders` (
  `id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL,
  `GiftVoucher` int(12) NOT NULL DEFAULT '0',
  `CarVoucher` int(12) NOT NULL DEFAULT '0',
  `VehVoucher` int(12) NOT NULL DEFAULT '0',
  `SVIPVoucher` int(12) NOT NULL DEFAULT '0',
  `GVIPVoucher` int(12) NOT NULL DEFAULT '0',
  `PVIPVoucher` int(12) NOT NULL DEFAULT '0',
  `credits_spent` int(12) NOT NULL DEFAULT '0',
  `status` int(12) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sig_stats`
--

CREATE TABLE `sig_stats` (
  `user_id` int(11) NOT NULL DEFAULT '-1',
  `enabled` int(1) NOT NULL DEFAULT '0',
  `field1` int(1) NOT NULL DEFAULT '1',
  `field2` int(1) NOT NULL DEFAULT '1',
  `field3` int(1) NOT NULL DEFAULT '1',
  `field4` int(1) NOT NULL DEFAULT '1',
  `field5` int(1) NOT NULL DEFAULT '1',
  `field6` int(1) NOT NULL DEFAULT '1',
  `field7` int(1) NOT NULL DEFAULT '1',
  `field8` int(1) NOT NULL DEFAULT '1',
  `field9` int(1) NOT NULL DEFAULT '1',
  `field10` int(1) NOT NULL DEFAULT '1',
  `field11` int(1) NOT NULL DEFAULT '1',
  `field12` int(1) NOT NULL DEFAULT '1',
  `field13` int(1) NOT NULL DEFAULT '1',
  `field14` int(1) NOT NULL DEFAULT '1',
  `field15` int(1) NOT NULL DEFAULT '1',
  `field16` int(1) NOT NULL DEFAULT '1',
  `field17` int(1) NOT NULL DEFAULT '1',
  `field18` int(1) NOT NULL DEFAULT '1',
  `field19` int(1) NOT NULL DEFAULT '1',
  `field20` int(1) NOT NULL DEFAULT '1',
  `field21` int(1) NOT NULL DEFAULT '1',
  `field22` int(1) NOT NULL DEFAULT '1',
  `field23` int(1) NOT NULL DEFAULT '1',
  `field24` int(1) NOT NULL DEFAULT '1',
  `field25` int(1) NOT NULL DEFAULT '1',
  `field26` int(1) NOT NULL DEFAULT '1',
  `field27` int(1) NOT NULL DEFAULT '1',
  `field28` int(1) NOT NULL DEFAULT '1',
  `field29` int(1) NOT NULL DEFAULT '1',
  `field30` int(1) NOT NULL DEFAULT '1',
  `field31` int(1) NOT NULL DEFAULT '1',
  `field32` int(1) NOT NULL DEFAULT '1',
  `field33` int(1) NOT NULL DEFAULT '1',
  `field34` int(1) NOT NULL DEFAULT '1',
  `field35` int(1) NOT NULL DEFAULT '1',
  `field36` int(1) NOT NULL DEFAULT '1',
  `field37` int(1) NOT NULL DEFAULT '1',
  `field38` int(1) NOT NULL DEFAULT '1',
  `field39` int(1) NOT NULL DEFAULT '1',
  `field40` int(1) NOT NULL DEFAULT '1',
  `field41` int(1) NOT NULL DEFAULT '1',
  `field42` int(1) NOT NULL DEFAULT '1',
  `field43` int(1) NOT NULL DEFAULT '1',
  `field44` int(1) NOT NULL DEFAULT '1',
  `field45` int(1) NOT NULL DEFAULT '1',
  `field46` int(1) NOT NULL DEFAULT '1',
  `field47` int(1) NOT NULL DEFAULT '1',
  `field48` int(1) NOT NULL DEFAULT '1',
  `field49` int(1) NOT NULL DEFAULT '1',
  `field50` int(1) NOT NULL DEFAULT '1',
  `field51` int(1) NOT NULL DEFAULT '1',
  `field52` int(1) NOT NULL DEFAULT '1',
  `field53` int(1) NOT NULL DEFAULT '1',
  `field54` int(1) NOT NULL DEFAULT '1',
  `field55` int(1) NOT NULL DEFAULT '1',
  `field56` int(1) NOT NULL DEFAULT '1',
  `field57` int(1) NOT NULL DEFAULT '1',
  `field58` int(1) NOT NULL DEFAULT '1',
  `field59` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(11) NOT NULL,
  `sender` varchar(24) DEFAULT NULL,
  `senderid` int(11) NOT NULL DEFAULT '-1',
  `sendernumber` int(11) NOT NULL DEFAULT '0',
  `receiver` varchar(24) DEFAULT NULL,
  `receiverid` int(11) NOT NULL DEFAULT '-1',
  `receivernumber` int(11) NOT NULL DEFAULT '0',
  `message` varchar(128) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sobeitkicks`
--

CREATE TABLE `sobeitkicks` (
  `sqlID` int(11) NOT NULL DEFAULT '0',
  `Kicks` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `speed_cameras`
--

CREATE TABLE `speed_cameras` (
  `id` int(10) NOT NULL,
  `pos_x` float(10,5) NOT NULL,
  `pos_y` float(10,5) NOT NULL,
  `pos_z` float(10,5) NOT NULL,
  `rotation` float(10,5) NOT NULL,
  `range` float(10,5) NOT NULL,
  `speed_limit` float(10,5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains data regarding speed cameras.';

-- --------------------------------------------------------

--
-- Table structure for table `staffbans`
--

CREATE TABLE `staffbans` (
  `id` int(11) NOT NULL,
  `details` varchar(256) DEFAULT NULL,
  `issuer` int(11) NOT NULL DEFAULT '0',
  `playerid` int(11) NOT NULL DEFAULT '0',
  `expiredate` int(21) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `text_labels`
--

CREATE TABLE `text_labels` (
  `id` int(11) NOT NULL,
  `Text` varchar(128) NOT NULL DEFAULT '0',
  `PosX` float NOT NULL DEFAULT '0',
  `PosY` float NOT NULL DEFAULT '0',
  `PosZ` float NOT NULL DEFAULT '0',
  `VW` int(11) NOT NULL DEFAULT '0',
  `Int` int(11) NOT NULL DEFAULT '0',
  `Color` int(11) NOT NULL DEFAULT '0',
  `PickupModel` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `Department` int(11) NOT NULL DEFAULT '0',
  `Guest` int(1) NOT NULL DEFAULT '0',
  `Verified` int(1) NOT NULL DEFAULT '0',
  `Userid` int(11) NOT NULL DEFAULT '0',
  `Email` text,
  `Username` varchar(32) DEFAULT NULL,
  `Forum` text,
  `IP` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `TicketId` int(16) NOT NULL DEFAULT '0',
  `Code` varchar(16) NOT NULL DEFAULT '0',
  `Subject` text,
  `Status` varchar(24) NOT NULL DEFAULT 'Open',
  `Locked` int(11) NOT NULL DEFAULT '0',
  `Created` int(11) NOT NULL DEFAULT '0',
  `LastDate` int(11) NOT NULL DEFAULT '0',
  `Priority` varchar(24) NOT NULL DEFAULT 'Low'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_ban`
--

CREATE TABLE `ticket_ban` (
  `id` int(11) NOT NULL,
  `Type` int(11) NOT NULL DEFAULT '0',
  `Method` varchar(32) DEFAULT NULL,
  `Value` text,
  `Wildcard` int(1) NOT NULL DEFAULT '0',
  `Created` int(11) NOT NULL DEFAULT '0',
  `CreatedBy` int(11) NOT NULL DEFAULT '0',
  `Reason` text,
  `Expire` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_responses`
--

CREATE TABLE `ticket_responses` (
  `id` int(11) NOT NULL,
  `TicketId` int(11) NOT NULL DEFAULT '0',
  `PostId` int(11) NOT NULL DEFAULT '0',
  `Guest` int(1) NOT NULL DEFAULT '0',
  `Staff` int(1) NOT NULL DEFAULT '0',
  `UserId` int(11) NOT NULL DEFAULT '0',
  `Username` varchar(32) DEFAULT NULL,
  `IP` varchar(32) NOT NULL DEFAULT '0.0.0.0',
  `Message` text,
  `Created` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens_call`
--

CREATE TABLE `tokens_call` (
  `id` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hour` int(2) DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens_report`
--

CREATE TABLE `tokens_report` (
  `id` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens_request`
--

CREATE TABLE `tokens_request` (
  `id` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tokens_wd`
--

CREATE TABLE `tokens_wd` (
  `id` int(11) NOT NULL,
  `playerid` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `toolaccess`
--

CREATE TABLE `toolaccess` (
  `uid` int(11) NOT NULL,
  `AccessLevel` tinyint(4) UNSIGNED DEFAULT NULL,
  `IP` int(11) UNSIGNED DEFAULT NULL,
  `subnet` tinyint(4) NOT NULL DEFAULT '32'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `toys`
--

CREATE TABLE `toys` (
  `id` int(11) NOT NULL,
  `player` int(11) NOT NULL DEFAULT '0',
  `modelid` int(11) NOT NULL DEFAULT '0',
  `bone` int(11) NOT NULL DEFAULT '0',
  `posx` float NOT NULL DEFAULT '0',
  `posy` float NOT NULL DEFAULT '0',
  `posz` float NOT NULL DEFAULT '0',
  `rotx` float NOT NULL DEFAULT '0',
  `roty` float NOT NULL DEFAULT '0',
  `rotz` float NOT NULL DEFAULT '0',
  `scalex` float NOT NULL DEFAULT '0',
  `scaley` float NOT NULL DEFAULT '0',
  `scalez` float NOT NULL DEFAULT '0',
  `tradable` int(11) NOT NULL DEFAULT '0',
  `special` int(11) NOT NULL DEFAULT '0',
  `autoattach` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_backdoor`
--

CREATE TABLE `track_backdoor` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `door_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_gate`
--

CREATE TABLE `track_gate` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `gate_id` int(11) NOT NULL,
  `gate_move` int(1) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_gvip`
--

CREATE TABLE `track_gvip` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `vipm` varchar(11) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `expiration` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `forum_link` varchar(128) NOT NULL,
  `tsuid` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_house`
--

CREATE TABLE `track_house` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `house_move` int(2) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_pvip`
--

CREATE TABLE `track_pvip` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `vipm` varchar(10) DEFAULT NULL,
  `restrict_veh` varchar(10) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `forum_link` varchar(128) NOT NULL,
  `ts_id` varchar(60) NOT NULL,
  `money_link` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_ts`
--

CREATE TABLE `track_ts` (
  `id` int(11) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `database_id` int(11) DEFAULT NULL,
  `channel_name` varchar(128) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `forum_link` varchar(128) NOT NULL,
  `tsuid` varchar(50) NOT NULL,
  `type` varchar(6) NOT NULL,
  `channel_no` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `track_vip`
--

CREATE TABLE `track_vip` (
  `id` int(11) NOT NULL,
  `player_id` int(11) NOT NULL,
  `vip` int(1) NOT NULL,
  `order_id` varchar(11) NOT NULL,
  `vipm` int(11) NOT NULL,
  `expiration` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `turfs`
--

CREATE TABLE `turfs` (
  `id` int(11) NOT NULL,
  `data` varchar(255) NOT NULL DEFAULT 'None|-1|0|0|12|0.000000|0.000000|0.000000|0.000000' COMMENT 'Name|OwnerID|Locked|Special|Vulnerable|MinX|MinY|MaxX|MaxY'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usergroups`
--

CREATE TABLE `usergroups` (
  `id` int(11) NOT NULL,
  `Title` varchar(128) NOT NULL DEFAULT 'Not Defined',
  `Start` varchar(128) NOT NULL DEFAULT '<span>',
  `End` varchar(128) NOT NULL DEFAULT '</span>'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_leaves`
--

CREATE TABLE `user_leaves` (
  `id` int(8) NOT NULL,
  `uid` varchar(9) NOT NULL,
  `date_leave` date NOT NULL,
  `date_return` date NOT NULL,
  `reason` varchar(512) NOT NULL,
  `status` int(9) NOT NULL,
  `accept_uid` int(9) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_notes`
--

CREATE TABLE `user_notes` (
  `id` int(6) NOT NULL,
  `uid` varchar(256) NOT NULL,
  `note` varchar(512) NOT NULL,
  `addDate` date NOT NULL,
  `invokeid` varchar(256) NOT NULL,
  `type` int(6) NOT NULL,
  `points` int(6) NOT NULL,
  `status` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `sqlID` int(11) NOT NULL DEFAULT '0',
  `pvModelId` int(11) NOT NULL DEFAULT '0',
  `pvPosX` float NOT NULL DEFAULT '0',
  `pvPosY` float NOT NULL DEFAULT '0',
  `pvPosZ` float NOT NULL DEFAULT '0',
  `pvPosAngle` float NOT NULL DEFAULT '0',
  `pvLock` int(11) NOT NULL DEFAULT '0',
  `pvLocked` int(11) NOT NULL DEFAULT '0',
  `pvPaintJob` int(11) NOT NULL DEFAULT '0',
  `pvColor1` int(11) NOT NULL DEFAULT '0',
  `pvColor2` int(11) NOT NULL DEFAULT '0',
  `pvPrice` int(11) NOT NULL DEFAULT '0',
  `pvTicket` int(11) NOT NULL DEFAULT '0',
  `pvRestricted` int(11) NOT NULL DEFAULT '0',
  `pvWeapon0` int(11) NOT NULL DEFAULT '0',
  `pvWeapon1` int(11) NOT NULL DEFAULT '0',
  `pvWeapon2` int(11) NOT NULL DEFAULT '0',
  `pvWepUpgrade` int(11) NOT NULL DEFAULT '0',
  `pvFuel` float NOT NULL DEFAULT '0',
  `pvImpound` int(11) NOT NULL DEFAULT '0',
  `pvDisabled` int(11) NOT NULL DEFAULT '0',
  `pvPlate` varchar(32) NOT NULL DEFAULT 'None',
  `pvMod0` int(11) NOT NULL DEFAULT '0',
  `pvMod1` int(11) NOT NULL DEFAULT '0',
  `pvMod2` int(11) NOT NULL DEFAULT '0',
  `pvMod3` int(11) NOT NULL DEFAULT '0',
  `pvMod4` int(11) NOT NULL DEFAULT '0',
  `pvMod5` int(11) NOT NULL DEFAULT '0',
  `pvMod6` int(11) NOT NULL DEFAULT '0',
  `pvMod7` int(11) NOT NULL DEFAULT '0',
  `pvMod8` int(11) NOT NULL DEFAULT '0',
  `pvMod9` int(11) NOT NULL DEFAULT '0',
  `pvMod10` int(11) NOT NULL DEFAULT '0',
  `pvMod11` int(11) NOT NULL DEFAULT '0',
  `pvMod12` int(11) NOT NULL DEFAULT '0',
  `pvMod13` int(11) NOT NULL DEFAULT '0',
  `pvMod14` int(11) NOT NULL DEFAULT '0',
  `pvVW` int(11) NOT NULL DEFAULT '0',
  `pvInt` int(11) NOT NULL DEFAULT '0',
  `pvCrashFlag` int(11) NOT NULL DEFAULT '0',
  `pvCrashY` float NOT NULL DEFAULT '0',
  `pvCrashZ` float NOT NULL DEFAULT '0',
  `pvCrashAngle` float NOT NULL DEFAULT '0',
  `pvCrashX` float NOT NULL DEFAULT '0',
  `pvCrashVW` int(11) NOT NULL DEFAULT '0',
  `pvAlarm` int(11) NOT NULL DEFAULT '0',
  `pvLastLockPickedBy` varchar(24) NOT NULL DEFAULT 'Empty',
  `pvLocksLeft` int(11) NOT NULL DEFAULT '5',
  `pvHealth` float NOT NULL DEFAULT '1000',
  `Lsd` int(11) NOT NULL DEFAULT '0',
  `Cannabis` int(11) NOT NULL DEFAULT '0',
  `Meth` int(11) NOT NULL DEFAULT '0',
  `Heroin` int(11) NOT NULL DEFAULT '0',
  `Cocaine` int(11) NOT NULL DEFAULT '0',
  `Crack` int(11) NOT NULL DEFAULT '0',
  `Opium` int(11) NOT NULL DEFAULT '0',
  `Ecstasy` int(11) NOT NULL DEFAULT '0',
  `Speed` int(11) NOT NULL DEFAULT '0',
  `Alcohol` int(11) NOT NULL DEFAULT '0',
  `Demerol` int(11) NOT NULL DEFAULT '0',
  `Morphine` int(11) NOT NULL DEFAULT '0',
  `Haloperidol` int(11) NOT NULL DEFAULT '0',
  `Aspirin` int(11) NOT NULL DEFAULT '0',
  `Pot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `watchdog_reports`
--

CREATE TABLE `watchdog_reports` (
  `id` int(11) NOT NULL,
  `reporter` int(11) NOT NULL DEFAULT '0',
  `report` text NOT NULL,
  `reported` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '1 = DM Alert | 2 = Refer',
  `time` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zombie`
--

CREATE TABLE `zombie` (
  `id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zombieheals`
--

CREATE TABLE `zombieheals` (
  `id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zombiekills`
--

CREATE TABLE `zombiekills` (
  `id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT 'NOTNULL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `zombiesurvivor`
--

CREATE TABLE `zombiesurvivor` (
  `id` int(11) NOT NULL DEFAULT '0',
  `num` int(11) NOT NULL DEFAULT '0',
  `name` varchar(34) NOT NULL DEFAULT 'No-one'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `911calls`
--
ALTER TABLE `911calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ac`
--
ALTER TABLE `ac`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`DBID`) USING BTREE;

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid` (`id`) USING BTREE,
  ADD KEY `username` (`Username`) USING BTREE,
  ADD KEY `admin` (`AdminLevel`) USING BTREE,
  ADD KEY `disabled` (`Disabled`) USING BTREE,
  ADD KEY `group` (`Member`) USING BTREE,
  ADD KEY `phone` (`PhoneNr`) USING BTREE,
  ADD KEY `helper` (`Helper`) USING BTREE,
  ADD KEY `ips` (`IP`,`SecureIP`) USING BTREE,
  ADD KEY `permband` (`PermBand`) USING BTREE,
  ADD KEY `business` (`Business`) USING BTREE,
  ADD KEY `famed` (`Famed`) USING BTREE,
  ADD KEY `dedicated` (`pDedicatedPlayer`) USING BTREE;

--
-- Indexes for table `anticheat`
--
ALTER TABLE `anticheat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_admins`
--
ALTER TABLE `app_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `app_todo`
--
ALTER TABLE `app_todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arenas`
--
ALTER TABLE `arenas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arrestreports`
--
ALTER TABLE `arrestreports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `issuer` (`copid`) USING BTREE,
  ADD KEY `suspect` (`suspectid`) USING BTREE;

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backpacks`
--
ALTER TABLE `backpacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ban`
--
ALTER TABLE `ban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid, create, active` (`bannedid`,`creatorid`,`active`) USING BTREE,
  ADD KEY `liftdate` (`liftdate`) USING BTREE;

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blackmarkets`
--
ALTER TABLE `blackmarkets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bugcomments`
--
ALTER TABLE `bugcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `businesssales`
--
ALTER TABLE `businesssales`
  ADD PRIMARY KEY (`bID`);

--
-- Indexes for table `countrysec`
--
ALTER TABLE `countrysec`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD UNIQUE KEY `userid` (`user_id`) USING BTREE;

--
-- Indexes for table `cp_access`
--
ALTER TABLE `cp_access`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `userid` (`user_id`) USING BTREE;

--
-- Indexes for table `cp_admin_notes`
--
ALTER TABLE `cp_admin_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_advisor`
--
ALTER TABLE `cp_advisor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`Userid`) USING BTREE;

--
-- Indexes for table `cp_advisor_notes`
--
ALTER TABLE `cp_advisor_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_advisor_tracker`
--
ALTER TABLE `cp_advisor_tracker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`Userid`) USING BTREE;

--
-- Indexes for table `cp_advisor_zones`
--
ALTER TABLE `cp_advisor_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_alerts`
--
ALTER TABLE `cp_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid, expire` (`Userid`,`Expire`) USING BTREE;

--
-- Indexes for table `cp_cache_email`
--
ALTER TABLE `cp_cache_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_cache_passreset`
--
ALTER TABLE `cp_cache_passreset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_cache_sec_questions`
--
ALTER TABLE `cp_cache_sec_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_casino_log`
--
ALTER TABLE `cp_casino_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_faction`
--
ALTER TABLE `cp_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_family`
--
ALTER TABLE `cp_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_info_states`
--
ALTER TABLE `cp_info_states`
  ADD PRIMARY KEY (`state_id`);

--
-- Indexes for table `cp_info_temp`
--
ALTER TABLE `cp_info_temp`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `cp_leave`
--
ALTER TABLE `cp_leave`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid, type` (`user_id`,`type`) USING BTREE;

--
-- Indexes for table `cp_log_access`
--
ALTER TABLE `cp_log_access`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_log_cr`
--
ALTER TABLE `cp_log_cr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_log_cron`
--
ALTER TABLE `cp_log_cron`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`Userid`) USING BTREE;

--
-- Indexes for table `cp_log_faction`
--
ALTER TABLE `cp_log_faction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_log_family`
--
ALTER TABLE `cp_log_family`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_log_general`
--
ALTER TABLE `cp_log_general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_log_security`
--
ALTER TABLE `cp_log_security`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_log_staff`
--
ALTER TABLE `cp_log_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_mass_email`
--
ALTER TABLE `cp_mass_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_misc`
--
ALTER TABLE `cp_misc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `from, status` (`from`,`status`) USING BTREE;

--
-- Indexes for table `cp_misc_track`
--
ALTER TABLE `cp_misc_track`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`Userid`) USING BTREE;

--
-- Indexes for table `cp_perms`
--
ALTER TABLE `cp_perms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_profile`
--
ALTER TABLE `cp_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`Userid`) USING BTREE;

--
-- Indexes for table `cp_punishment`
--
ALTER TABLE `cp_punishment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid, status` (`player_id`,`status`) USING BTREE;

--
-- Indexes for table `cp_refund`
--
ALTER TABLE `cp_refund`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid, status` (`user_id`,`status`) USING BTREE;

--
-- Indexes for table `cp_restricted_archive`
--
ALTER TABLE `cp_restricted_archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_security_files`
--
ALTER TABLE `cp_security_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_security_notes`
--
ALTER TABLE `cp_security_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_security_profiles`
--
ALTER TABLE `cp_security_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_session`
--
ALTER TABLE `cp_session`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid, expire` (`Userid`,`Expire`) USING BTREE;

--
-- Indexes for table `cp_shifts`
--
ALTER TABLE `cp_shifts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`user_id`) USING BTREE,
  ADD KEY `shiftid` (`shift_id`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `cp_shift_blocks`
--
ALTER TABLE `cp_shift_blocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `shiftid` (`shift_id`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `cp_shift_leader`
--
ALTER TABLE `cp_shift_leader`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`user_id`) USING BTREE;

--
-- Indexes for table `cp_stat`
--
ALTER TABLE `cp_stat`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `id` (`user_id`) USING BTREE,
  ADD KEY `timezone` (`timezone`) USING BTREE,
  ADD KEY `userid` (`user_id`) USING BTREE;

--
-- Indexes for table `cp_store`
--
ALTER TABLE `cp_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_store_cart`
--
ALTER TABLE `cp_store_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_store_items`
--
ALTER TABLE `cp_store_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `StoreId` (`StoreId`);

--
-- Indexes for table `cp_store_manage`
--
ALTER TABLE `cp_store_manage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_store_orders`
--
ALTER TABLE `cp_store_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_store_tracker`
--
ALTER TABLE `cp_store_tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_support_faq`
--
ALTER TABLE `cp_support_faq`
  ADD PRIMARY KEY (`faq_id`),
  ADD UNIQUE KEY `title_2` (`question`) USING BTREE,
  ADD KEY `dept_id` (`category`) USING BTREE,
  ADD KEY `active` (`isenabled`) USING BTREE;
ALTER TABLE `cp_support_faq` ADD FULLTEXT KEY `title` (`question`,`answer`);

--
-- Indexes for table `cp_support_faq_category`
--
ALTER TABLE `cp_support_faq_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_support_items`
--
ALTER TABLE `cp_support_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_support_tickets`
--
ALTER TABLE `cp_support_tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD UNIQUE KEY `email_extid` (`ticketID`,`email`) USING BTREE,
  ADD KEY `staff_id` (`p_id`) USING BTREE,
  ADD KEY `status` (`status`) USING BTREE,
  ADD KEY `priority_id` (`area`) USING BTREE,
  ADD KEY `created` (`created`) USING BTREE,
  ADD KEY `closed` (`closed`) USING BTREE,
  ADD KEY `duedate` (`duedate`) USING BTREE;

--
-- Indexes for table `cp_support_tickets_response`
--
ALTER TABLE `cp_support_tickets_response`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `ticket_id` (`ticket_id`) USING BTREE,
  ADD KEY `staff_id` (`p_id`) USING BTREE;
ALTER TABLE `cp_support_tickets_response` ADD FULLTEXT KEY `response` (`response`);

--
-- Indexes for table `cp_track`
--
ALTER TABLE `cp_track`
  ADD PRIMARY KEY (`Logins`);

--
-- Indexes for table `cp_username`
--
ALTER TABLE `cp_username`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid, status` (`Userid`,`Status`) USING BTREE;

--
-- Indexes for table `cp_weekly_reports`
--
ALTER TABLE `cp_weekly_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_whitelist`
--
ALTER TABLE `cp_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crate_facility`
--
ALTER TABLE `crate_facility`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crate_orders`
--
ALTER TABLE `crate_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crate_vehicles`
--
ALTER TABLE `crate_vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crimesdata`
--
ALTER TABLE `crimesdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ddoors`
--
ALTER TABLE `ddoors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `Ownerid` (`Owner`) USING BTREE;

--
-- Indexes for table `dedi_april`
--
ALTER TABLE `dedi_april`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `devcpbans`
--
ALTER TABLE `devcpbans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devcplogs`
--
ALTER TABLE `devcplogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dmap`
--
ALTER TABLE `dmap`
  ADD PRIMARY KEY (`PlayerID`,`Username`);

--
-- Indexes for table `dmapicons`
--
ALTER TABLE `dmapicons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drugpool`
--
ALTER TABLE `drugpool`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dynpoints`
--
ALTER TABLE `dynpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electionresults`
--
ALTER TABLE `electionresults`
  ADD PRIMARY KEY (`accountid`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_hungergames-2013-10`
--
ALTER TABLE `event_hungergames-2013-10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fallintofun`
--
ALTER TABLE `fallintofun`
  ADD PRIMARY KEY (`player`);

--
-- Indexes for table `families`
--
ALTER TABLE `families`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `id` (`fid`) USING BTREE,
  ADD KEY `userid` (`id`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `freegift`
--
ALTER TABLE `freegift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `furniturecatalog`
--
ALTER TABLE `furniturecatalog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gangtags`
--
ALTER TABLE `gangtags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `garages`
--
ALTER TABLE `garages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `id` (`ID`) USING BTREE,
  ADD KEY `houseid` (`HID`) USING BTREE;

--
-- Indexes for table `gcrates`
--
ALTER TABLE `gcrates`
  ADD PRIMARY KEY (`iCrateID`),
  ADD UNIQUE KEY `iCrateID` (`iCrateID`);

--
-- Indexes for table `giftpage_dec`
--
ALTER TABLE `giftpage_dec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `govgunsales`
--
ALTER TABLE `govgunsales`
  ADD PRIMARY KEY (`wepid`);

--
-- Indexes for table `groupbans`
--
ALTER TABLE `groupbans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `playerid` (`PlayerID`) USING BTREE;

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `groupvehs`
--
ALTER TABLE `groupvehs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gweapons`
--
ALTER TABLE `gweapons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gweaponsnew`
--
ALTER TABLE `gweaponsnew`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help`
--
ALTER TABLE `help`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hgbackpacks`
--
ALTER TABLE `hgbackpacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`OwnerID`) USING BTREE;

--
-- Indexes for table `house_closet`
--
ALTER TABLE `house_closet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humankills`
--
ALTER TABLE `humankills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `humansurvivor`
--
ALTER TABLE `humansurvivor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `impoundpoints`
--
ALTER TABLE `impoundpoints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_bans`
--
ALTER TABLE `ip_bans`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `id` (`bid`) USING BTREE,
  ADD KEY `ipaddress` (`ip`) USING BTREE;

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobstuff`
--
ALTER TABLE `jobstuff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD UNIQUE KEY `userid` (`pId`) USING BTREE;

--
-- Indexes for table `jobs_types`
--
ALTER TABLE `jobs_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_vehicles`
--
ALTER TABLE `jobs_vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `jurisdictions`
--
ALTER TABLE `jurisdictions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kills`
--
ALTER TABLE `kills`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `killer` (`killerid`) USING BTREE,
  ADD KEY `killed` (`killedid`) USING BTREE;

--
-- Indexes for table `leaderboards`
--
ALTER TABLE `leaderboards`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `letters`
--
ALTER TABLE `letters`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lockers`
--
ALTER TABLE `lockers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `locker_restrict`
--
ALTER TABLE `locker_restrict`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_strikes`
--
ALTER TABLE `login_strikes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `ip` (`ip_address`) USING BTREE;

--
-- Indexes for table `lotto`
--
ALTER TABLE `lotto`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `mailboxes`
--
ALTER TABLE `mailboxes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `mdc`
--
ALTER TABLE `mdc`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `id` (`cid`) USING BTREE,
  ADD KEY `userid` (`id`) USING BTREE;

--
-- Indexes for table `metaldetectors`
--
ALTER TABLE `metaldetectors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nation_queue`
--
ALTER TABLE `nation_queue`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `user_id` (`playerid`) USING BTREE;

--
-- Indexes for table `nonrppoints`
--
ALTER TABLE `nonrppoints`
  ADD KEY `id` (`sqlid`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parking_meters`
--
ALTER TABLE `parking_meters`
  ADD PRIMARY KEY (`MeterID`);

--
-- Indexes for table `paynsprays`
--
ALTER TABLE `paynsprays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payphones`
--
ALTER TABLE `payphones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pcount`
--
ALTER TABLE `pcount`
  ADD PRIMARY KEY (`date`,`time`);

--
-- Indexes for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plantID`);

--
-- Indexes for table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `polls_copy`
--
ALTER TABLE `polls_copy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pvehpositions`
--
ALTER TABLE `pvehpositions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rentedcars`
--
ALTER TABLE `rentedcars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestcomments`
--
ALTER TABLE `requestcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rflteams`
--
ALTER TABLE `rflteams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scp_passchange`
--
ALTER TABLE `scp_passchange`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_questions`
--
ALTER TABLE `sec_questions`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Indexes for table `shopprices`
--
ALTER TABLE `shopprices`
  ADD PRIMARY KEY (`Price0`);

--
-- Indexes for table `shoptech`
--
ALTER TABLE `shoptech`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`user_id`) USING BTREE;

--
-- Indexes for table `sig_stats`
--
ALTER TABLE `sig_stats`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `sender` (`senderid`) USING BTREE,
  ADD KEY `receiver` (`receiverid`) USING BTREE;

--
-- Indexes for table `sobeitkicks`
--
ALTER TABLE `sobeitkicks`
  ADD PRIMARY KEY (`sqlID`);

--
-- Indexes for table `speed_cameras`
--
ALTER TABLE `speed_cameras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staffbans`
--
ALTER TABLE `staffbans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `playerid` (`playerid`) USING BTREE;

--
-- Indexes for table `text_labels`
--
ALTER TABLE `text_labels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `department` (`Department`) USING BTREE,
  ADD KEY `guest,verified` (`Guest`,`Verified`) USING BTREE;

--
-- Indexes for table `ticket_ban`
--
ALTER TABLE `ticket_ban`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `type` (`Type`) USING BTREE;

--
-- Indexes for table `ticket_responses`
--
ALTER TABLE `ticket_responses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `ticketid` (`TicketId`) USING BTREE,
  ADD KEY `guest,userid` (`Guest`,`UserId`) USING BTREE;

--
-- Indexes for table `tokens_call`
--
ALTER TABLE `tokens_call`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens_report`
--
ALTER TABLE `tokens_report`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`playerid`) USING BTREE;

--
-- Indexes for table `tokens_request`
--
ALTER TABLE `tokens_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`playerid`) USING BTREE;

--
-- Indexes for table `tokens_wd`
--
ALTER TABLE `tokens_wd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toolaccess`
--
ALTER TABLE `toolaccess`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `toys`
--
ALTER TABLE `toys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`player`) USING BTREE;

--
-- Indexes for table `track_backdoor`
--
ALTER TABLE `track_backdoor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_gate`
--
ALTER TABLE `track_gate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_gvip`
--
ALTER TABLE `track_gvip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_house`
--
ALTER TABLE `track_house`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_pvip`
--
ALTER TABLE `track_pvip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_ts`
--
ALTER TABLE `track_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_vip`
--
ALTER TABLE `track_vip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `turfs`
--
ALTER TABLE `turfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usergroups`
--
ALTER TABLE `usergroups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Start` (`Start`),
  ADD KEY `End` (`End`);

--
-- Indexes for table `user_leaves`
--
ALTER TABLE `user_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_notes`
--
ALTER TABLE `user_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`) USING BTREE,
  ADD KEY `userid` (`sqlID`) USING BTREE;

--
-- Indexes for table `watchdog_reports`
--
ALTER TABLE `watchdog_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zombie`
--
ALTER TABLE `zombie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zombieheals`
--
ALTER TABLE `zombieheals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zombiekills`
--
ALTER TABLE `zombiekills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zombiesurvivor`
--
ALTER TABLE `zombiesurvivor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `911calls`
--
ALTER TABLE `911calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ac`
--
ALTER TABLE `ac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `anticheat`
--
ALTER TABLE `anticheat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_admins`
--
ALTER TABLE `app_admins`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `app_todo`
--
ALTER TABLE `app_todo`
  MODIFY `id` int(254) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `arenas`
--
ALTER TABLE `arenas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `arrestreports`
--
ALTER TABLE `arrestreports`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ban`
--
ALTER TABLE `ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `blackmarkets`
--
ALTER TABLE `blackmarkets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `bugcomments`
--
ALTER TABLE `bugcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `businesssales`
--
ALTER TABLE `businesssales`
  MODIFY `bID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `countrysec`
--
ALTER TABLE `countrysec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_admin_notes`
--
ALTER TABLE `cp_admin_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_advisor`
--
ALTER TABLE `cp_advisor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_advisor_notes`
--
ALTER TABLE `cp_advisor_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_advisor_tracker`
--
ALTER TABLE `cp_advisor_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_advisor_zones`
--
ALTER TABLE `cp_advisor_zones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_alerts`
--
ALTER TABLE `cp_alerts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_cache_email`
--
ALTER TABLE `cp_cache_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_cache_passreset`
--
ALTER TABLE `cp_cache_passreset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_cache_sec_questions`
--
ALTER TABLE `cp_cache_sec_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_casino_log`
--
ALTER TABLE `cp_casino_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_info_states`
--
ALTER TABLE `cp_info_states`
  MODIFY `state_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'PK: Unique state ID', AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `cp_leave`
--
ALTER TABLE `cp_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_log_access`
--
ALTER TABLE `cp_log_access`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_log_cr`
--
ALTER TABLE `cp_log_cr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_log_cron`
--
ALTER TABLE `cp_log_cron`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_log_faction`
--
ALTER TABLE `cp_log_faction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_log_family`
--
ALTER TABLE `cp_log_family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_log_general`
--
ALTER TABLE `cp_log_general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_log_security`
--
ALTER TABLE `cp_log_security`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_log_staff`
--
ALTER TABLE `cp_log_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_mass_email`
--
ALTER TABLE `cp_mass_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cp_misc`
--
ALTER TABLE `cp_misc`
  MODIFY `id` int(32) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_misc_track`
--
ALTER TABLE `cp_misc_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_perms`
--
ALTER TABLE `cp_perms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_profile`
--
ALTER TABLE `cp_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_punishment`
--
ALTER TABLE `cp_punishment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_refund`
--
ALTER TABLE `cp_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_restricted_archive`
--
ALTER TABLE `cp_restricted_archive`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_security_files`
--
ALTER TABLE `cp_security_files`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_security_notes`
--
ALTER TABLE `cp_security_notes`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_security_profiles`
--
ALTER TABLE `cp_security_profiles`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_session`
--
ALTER TABLE `cp_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_shifts`
--
ALTER TABLE `cp_shifts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_shift_blocks`
--
ALTER TABLE `cp_shift_blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `cp_shift_leader`
--
ALTER TABLE `cp_shift_leader`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_store`
--
ALTER TABLE `cp_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_store_cart`
--
ALTER TABLE `cp_store_cart`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_store_items`
--
ALTER TABLE `cp_store_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_store_orders`
--
ALTER TABLE `cp_store_orders`
  MODIFY `id` int(24) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_store_tracker`
--
ALTER TABLE `cp_store_tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_support_faq`
--
ALTER TABLE `cp_support_faq`
  MODIFY `faq_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_support_faq_category`
--
ALTER TABLE `cp_support_faq_category`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_support_items`
--
ALTER TABLE `cp_support_items`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_support_tickets`
--
ALTER TABLE `cp_support_tickets`
  MODIFY `ticket_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_support_tickets_response`
--
ALTER TABLE `cp_support_tickets_response`
  MODIFY `response_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_username`
--
ALTER TABLE `cp_username`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_weekly_reports`
--
ALTER TABLE `cp_weekly_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_whitelist`
--
ALTER TABLE `cp_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crates`
--
ALTER TABLE `crates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
--
-- AUTO_INCREMENT for table `crate_facility`
--
ALTER TABLE `crate_facility`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `crate_orders`
--
ALTER TABLE `crate_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `crate_vehicles`
--
ALTER TABLE `crate_vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crimesdata`
--
ALTER TABLE `crimesdata`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `ddoors`
--
ALTER TABLE `ddoors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devcpbans`
--
ALTER TABLE `devcpbans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devcplogs`
--
ALTER TABLE `devcplogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dmapicons`
--
ALTER TABLE `dmapicons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;
--
-- AUTO_INCREMENT for table `drugpool`
--
ALTER TABLE `drugpool`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dynpoints`
--
ALTER TABLE `dynpoints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event_hungergames-2013-10`
--
ALTER TABLE `event_hungergames-2013-10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `families`
--
ALTER TABLE `families`
  MODIFY `ID` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `flags`
--
ALTER TABLE `flags`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `freegift`
--
ALTER TABLE `freegift`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `furniturecatalog`
--
ALTER TABLE `furniturecatalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;
--
-- AUTO_INCREMENT for table `garages`
--
ALTER TABLE `garages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3001;
--
-- AUTO_INCREMENT for table `gates`
--
ALTER TABLE `gates`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4001;
--
-- AUTO_INCREMENT for table `giftpage_dec`
--
ALTER TABLE `giftpage_dec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=640;
--
-- AUTO_INCREMENT for table `groupbans`
--
ALTER TABLE `groupbans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=421;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `groupvehs`
--
ALTER TABLE `groupvehs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=700;
--
-- AUTO_INCREMENT for table `gweapons`
--
ALTER TABLE `gweapons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11291;
--
-- AUTO_INCREMENT for table `help`
--
ALTER TABLE `help`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=430;
--
-- AUTO_INCREMENT for table `hgbackpacks`
--
ALTER TABLE `hgbackpacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;
--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5501;
--
-- AUTO_INCREMENT for table `house_closet`
--
ALTER TABLE `house_closet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `impoundpoints`
--
ALTER TABLE `impoundpoints`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `ip_bans`
--
ALTER TABLE `ip_bans`
  MODIFY `bid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
--
-- AUTO_INCREMENT for table `jobstuff`
--
ALTER TABLE `jobstuff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `jurisdictions`
--
ALTER TABLE `jurisdictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;
--
-- AUTO_INCREMENT for table `kills`
--
ALTER TABLE `kills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
--
-- AUTO_INCREMENT for table `letters`
--
ALTER TABLE `letters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lockers`
--
ALTER TABLE `lockers`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;
--
-- AUTO_INCREMENT for table `login_strikes`
--
ALTER TABLE `login_strikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `lotto`
--
ALTER TABLE `lotto`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mailboxes`
--
ALTER TABLE `mailboxes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `mdc`
--
ALTER TABLE `mdc`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nation_queue`
--
ALTER TABLE `nation_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parking_meters`
--
ALTER TABLE `parking_meters`
  MODIFY `MeterID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `phone_contacts`
--
ALTER TABLE `phone_contacts`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plants`
--
ALTER TABLE `plants`
  MODIFY `plantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `points`
--
ALTER TABLE `points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `polls_copy`
--
ALTER TABLE `polls_copy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rentedcars`
--
ALTER TABLE `rentedcars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=266;
--
-- AUTO_INCREMENT for table `requestcomments`
--
ALTER TABLE `requestcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `rflteams`
--
ALTER TABLE `rflteams`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `scp_passchange`
--
ALTER TABLE `scp_passchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `shop_orders`
--
ALTER TABLE `shop_orders`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `speed_cameras`
--
ALTER TABLE `speed_cameras`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `staffbans`
--
ALTER TABLE `staffbans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `text_labels`
--
ALTER TABLE `text_labels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket_ban`
--
ALTER TABLE `ticket_ban`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ticket_responses`
--
ALTER TABLE `ticket_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tokens_call`
--
ALTER TABLE `tokens_call`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tokens_report`
--
ALTER TABLE `tokens_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tokens_request`
--
ALTER TABLE `tokens_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tokens_wd`
--
ALTER TABLE `tokens_wd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `toys`
--
ALTER TABLE `toys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `track_backdoor`
--
ALTER TABLE `track_backdoor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `track_gate`
--
ALTER TABLE `track_gate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `track_gvip`
--
ALTER TABLE `track_gvip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `track_house`
--
ALTER TABLE `track_house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `track_pvip`
--
ALTER TABLE `track_pvip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `track_ts`
--
ALTER TABLE `track_ts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `track_vip`
--
ALTER TABLE `track_vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `turfs`
--
ALTER TABLE `turfs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `usergroups`
--
ALTER TABLE `usergroups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `user_leaves`
--
ALTER TABLE `user_leaves`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
--
-- AUTO_INCREMENT for table `user_notes`
--
ALTER TABLE `user_notes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=417;
--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `watchdog_reports`
--
ALTER TABLE `watchdog_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `Prune CP Login Strikes` ON SCHEDULE EVERY 15 MINUTE STARTS '2016-03-05 11:00:00' ON COMPLETION PRESERVE ENABLE DO DELETE FROM `login_strikes` WHERE `date` + INTERVAL 15 MINUTE <= NOW()$$

CREATE DEFINER=`root`@`localhost` EVENT `Quarterly Player Count` ON SCHEDULE EVERY 15 MINUTE STARTS '2016-04-09 00:00:00' ON COMPLETION PRESERVE ENABLE DO INSERT INTO `pcount` (`date`, `time`, `count`) SELECT CURDATE(), CURTIME(), COUNT(*) FROM `accounts` WHERE `Online` > 0$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
