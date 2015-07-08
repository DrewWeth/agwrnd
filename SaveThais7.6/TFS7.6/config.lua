-- The Forgotten Server Config

	-- Account manager
	accountManager = false
	namelockManager = true
	newPlayerChooseVoc = true
	newPlayerSpawnPosX = 32369
	newPlayerSpawnPosY = 32241
	newPlayerSpawnPosZ = 7
	newPlayerTownId = 3
	newPlayerLevel = 8
	newPlayerMagicLevel = 0
	generateAccountNumber = false

	-- Banishments
	notationsToBan = 3
	warningsToFinalBan = 4
	warningsToDeletion = 5
	banLength = 7 * 24 * 60 * 60
	finalBanLength = 30 * 24 * 60 * 60
	ipBanishmentLength = 1 * 24 * 60 * 60
	killsToBan = 10
	maxViolationCommentSize = 200

	-- Battle
	worldType = "pvp"
	protectionLevel = 8
	pvpTileIgnoreLevelAndVocationProtection = true
	killsToRedSkull = 3
	pzLocked = 60 * 1000
	criticalHitChance = 7
	criticalHitMultiplier = 1.1
	displayCriticalHitNotify = false
	removeWeaponAmmunition = true
	removeWeaponCharges = true
	removeRuneCharges = true
	timeToDecreaseFrags = 24 * 60 * 60 * 1000
	whiteSkullTime = 15 * 60 * 1000
	noDamageToSameLookfeet = false
	experienceByKillingPlayers = false
	showHealingDamage = false
	showHealingDamageForMonsters = false

	-- Connection config
	ip = "52.10.244.147"
	port = 7171
	loginTries = 10
	retryTimeout = 5 * 1000
	loginTimeout = 60 * 1000
	maxPlayers = "1000"
	motd = "Welcome to Amera!"
	displayOnOrOffAtCharlist = false
	onePlayerOnlinePerAccount = true
	allowClones = 0
	serverName = "Amera"
	loginMessage = "Welcome to Amera!"
	statusTimeout = 5 * 60 * 1000
	replaceKickOnLogin = true

	-- Database
	-- NOTE: sqlFile is used only by sqlite database
	sqlType = "mysql"
	sqlHost = "localhost"
	sqlPort = 3306
	sqlUser = "agwrnd"
	sqlPass = "96875252Abc"
	sqlDatabase = "tfscrying"
	sqlFile = "forgottenserver.s3db"
	passwordType = "plain"

	-- Deathlist
	deathListEnabled = true
	maxDeathRecords = 5

	-- Guilds
	inGameGuildManagement = true
	levelToFormGuild = 8
	guildNameMinLength = 4
	guildNameMaxLength = 20

	-- Highscores
	highscoreDisplayPlayers = 15
	updateHighscoresAfterMinutes = 60

	-- Houses
	buyableAndSellableHouses = true
	housesPerAccount = 1
	levelToBuyHouse = 1
	houseRentAsPrice = false
	housePriceAsRent = false
	housePriceEachSQM = 1000
	houseRentPeriod = "never"
	houseNeedPremiumAccount = true
	bedsRequirePremium = true

	-- Item usage
	timeBetweenActions = 200
	timeBetweenExActions = 1000

	-- Map
	mapName = "world"
	cleanProtectedZones = true

	-- Miscellaneous
	-- NOTE: defaultPriority works only on Windows
	dataDirectory = "data/"
	kickIdlePlayerAfterMinutes = 15
	allowChangeOutfit = true
	maxMessageBuffer = 4
	displayGamemastersWithOnlineCommand = true
	defaultPriority = "high"
	saveGlobalStorage = true
	bankSystem = true
	displaySkillLevelOnAdvance = false

	-- Premium account
	freePremium = true
	premiumForPromotion = true
	removePremiumOnInit = true

	-- Rates
	rateExp = 35
	rateSkill = 20
	rateLoot = 4
	rateMagic = 6
	rateSpawn = 2

	-- Global save
	-- NOTE: globalSaveHour means like 03:00, not that it will save every 3 hours,
	-- if you want such a system use autoSaveEachMinutes. This save method
	-- may be unstable, we recommend using OTAdmin if you want real saves.
	globalSaveEnabled = true
	globalSaveHour = 8
	shutdownAtGlobalSave = false
	cleanMapAtGlobalSave = true

	-- Spawns
	deSpawnRange = 2
	deSpawnRadius = 50

	-- Summons
	maxPlayerSummons = 2

	-- Status
	ownerName = "Drew"
	ownerEmail = "@otland.net"
	url = "http://otland.net/"
	location = "Europe"
