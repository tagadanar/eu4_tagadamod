-- ALL VALUES HERE COME FROM : https://eu4.paradoxwikis.com/Defines
-- old value are always kept in comment like this : -- oldvalue -- other comment on effect of the value

-- the goal of this is to allow more time to recover from a big loss (aka 100% warscore) making it more hard to farm a dying country without breaking truce
NDefines.NDiplomacy.SCALED_TRUCE_YEARS = 15 -- 10 -- Additional years of truce based on % of warscore taken in war (100% warscore = full scaled truce years) Base truce is 5years+scaledyears
-- making revanchism last a little bit longer too, to slightly help recovery
NDefines.NDiplomacy.REVANCHISM_MONTHLY_DECAY = 0.555 -- 0.833 -- original comment: Decay for the Revanchism modifier. About 20 years to decay all of it by default.
-- seems to me that 20years for 0.833 is a mistake ! 0.833*120 = 99.96% => so revanchism last 10year top, making it 15 ftm


-- increasing warcost & aggressive expansion vs ally not fully called in war
-- goal is to make it hard to hurt someone by targeting is weak ally to have him alone without is strong allys
-- this will protect dumb ia from weak alliance problem vs player, make it safer to join a call to war to defend/offend other, you risk to lose less in peace offer (still you are hurt eco&military when you do war so it can still cost a lot)
NDefines.NDiplomacy.ALLY_PEACE_COST_MULT = 3 -- 2 -- Taking things from allies that are not fully called into the war costs this much more
NDefines.NDiplomacy.ALLY_AE_MULT = 2 -- 1.5 -- Taking things from allies that are not fully called into the war generates this much more AE

-- reducing AE to 50% instead of 75% for defender, as it's seems more fair to expand as a retaliation against agression
-- not so sure about this
-- NDefines.NDiplomacy.DEFENDER_AE_MULT = 0.75 -- (Infamy multiplied by this for defenders in peace treaties, unless the CB is "mutual" )


-- real formula here I think: https://docs.google.com/spreadsheets/d/10irAIGGEAPrB3_ykj14S-sCzyJxyEqciZ7-bq6XrT4w/edit#gid=0
-- goal is to increase aggressive expansion to make the game more diplomatic, harder to blob well without creating coalition and enemies
-- ideally I would like things to stay the way they are inside hre, as it is quite hard to expand in it already, but increase AE everywhere else
-- increasing AE from diff religion or distance base seems interesting to do so, but require some testing as I dont know the real formula...
-- trying to understand how it work, so my estimation on different dev prov (ignoring distance_base, attacker_dev.. as I dont understand where to put the added value):
-- casus_belli_AE is 1 for conquest, 0.75 for imperialism & deusvult, 0.5 for nationalism
-- annexion formula for conquest:
-- province_dev * PO_DEMAND_PROVINCES_AE * casus_belli_AE * (1+AE_impact) * ALLY_AE_MULT if not fully called
-- 												dev anex basecost samecult samerel hreintern
-- samecult+samerel+hreintern 30dev province => 30*.75 * (.75  +  0.5   +  0.5  +  0.5) = 50.625 AE			(reminder: caped at 30dev per prov)
-- samecult+samerel+hreintern 20dev province => 20*.75 * (.75  +  0.5   +  0.5  +  0.5) = 33.75 AE
-- samecult+samerel+hreintern 10dev province => 10*.75 * (.75  +  0.5   +  0.5  +  0.5) = 16.875 AE
-- 									dev anex basecost  diffrel
-- diffcult+diffrel 30dev province => 30*.75 * (0.75  -  0.5) = 5.625 AE
-- 
-- a random dude on reddit say this 6year ago (they want to reduce AE) current value for dist is .75, they seems to imply it was .5 back then from a 1.0 from earlier, so trying 0.25 for now
-- EDIT: Raising "AE_DISTANCE_BASE" reduces your AE from demands. However, doubling it to 1.0 counter what they said they did doesn't really change much so I'd suggest increasing it a bit higher to 1.25 or reducing the AE you get from demanding provinces which can be found a bit lower in the defines.lua
-- other info on it : https://forum.paradoxplaza.com/forum/threads/1-6-1-what-actually-changed-in-the-data.779493/
-- current try :
-- NDefines.NDiplomacy.AE_OTHER_CONTINENT = 10 -- I DONT UNDERSTAND HOW THIS VALUE IS USED INGAME -- Affects Aggressive Expansion gain with other countries on a different continent. 
-- NDefines.NDiplomacy.AE_SAME_CULTURE = 0.5 -- Affects Aggressive Expansion gain with other countries with the same culture.
-- NDefines.NDiplomacy.AE_SAME_CULTURE_GROUP = 0.25 -- Affects Aggressive Expansion gain with other countries with the same culture group.
-- slightly more for infidel
NDefines.NDiplomacy.AE_INFIDEL_CONQUEST = 0.3 -- 0.25 -- Affects Aggressive Expansion gain with other countries when different religion group conquered same religion province.
-- NDefines.NDiplomacy.AE_SAME_RELIGION = 0.5 -- Affects Aggressive Expansion gain with other countries with the same religion.
-- same rel group feel a little bit concerned
NDefines.NDiplomacy.AE_SAME_RELIGION_GROUP = 0.15 -- 0.0 -- Affects Aggressive Expansion gain with other countries with the same religious group.
NDefines.NDiplomacy.AE_DIFFERENT_RELIGION = 0.0 -- -0.5 -- Affects Aggressive Expansion gain with other countries with a different religion.
-- NDefines.NDiplomacy.AE_HRE_INTERNAL = 0.5 -- Affects Aggressive Expansion gain with other countries within the Holy Roman Empire.

-- 0.02 make it cap at 50% at 500dev instead of 1kdev
NDefines.NDiplomacy.AE_ATTACKER_DEVELOPMENT = 0.02 -- 0.01 -- Affects Aggressive Expansion gain with other countries for the attacker upon taking a province. Scales with development, +50% cap (at 1000 development)
-- NDefines.NDiplomacy.AE_DEFENDER_DEVELOPMENT = 0.01 -- Affects Aggressive Expansion gain with other countries for the defender upon taking a province. Scales with development, +50% cap (at 1000 development)

-- increasing AE with far away country to make faraway country more concerned about a big blobing country
NDefines.NDiplomacy.AE_DISTANCE_BASE = 0.25 -- 0.75 -- Affects Aggressive Expansion gain with other countries based on the distance they are from the actor. (from internet, lower value is more ae far away)
-- NDefines.NDiplomacy.AE_PROVINCE_CAP = 30 -- Province development above this will not count for AE (also used for warscore cost cap).
NDefines.NDiplomacy.AE_THREATEN_WAR = 0.75 -- 1.0 -- Aggressive Expansion gained upon the taking a province with the Threaten War action. Scales per development.
-- NDefines.NDiplomacy.PO_DEMAND_PROVINCES_AE = 0.75 -- (Per development)
-- NDefines.NDiplomacy.PO_RETURN_CORES_AE = 0.75 -- (Per development, only applied if returning cores to vassals of winner)
-- NDefines.NDiplomacy.PO_FORM_PU_AE = 0.1 -- (Per development)
-- NDefines.NDiplomacy.PO_CONCEDE_COLONIAL_AE = 0.25 -- 
-- NDefines.NDiplomacy.PO_BECOME_VASSAL_AE = 0.5 -- (Per development)
-- NDefines.NDiplomacy.PO_TRANSFER_VASSAL_AE = 0.33 -- 

-- PEACE OFFER cost, goal is to slightly reduce releasing country against conquering, so dismantling big country is more tempting than conquering it when you want to weaker someone
-- NDefines.NDiplomacy.PEACE_COST_DEMAND_PROVINCE = 1 -- Demand a province (scales by province wealth, also used for annex)
-- NDefines.NDiplomacy.PEACE_COST_CONCEDE_PROVINCE = 1 -- Demand colonial area province concession.
-- NDefines.NDiplomacy.PEACE_COST_BECOME_VASSAL = 1 -- Vassalize a country (scales by province wealth)
-- NDefines.NDiplomacy.PEACE_COST_RETURN_CORE = 1 -- Return a core (scales by province wealth)
-- NDefines.NDiplomacy.PEACE_COST_REVOKE_CORE = 0.5 -- Revoke a core (scales by province wealth)
-- release annexed is 75% warscore cost instead of 100%, so might be more interesting than annex
NDefines.NDiplomacy.PEACE_COST_RELEASE_ANNEXED = 0.75 -- 1 -- Release annexed nation (scales by province wealth)
-- NDefines.NDiplomacy.PEACE_COST_RELEASE_VASSAL = 0.5 -- Release vassal (scales by province wealth)
-- NDefines.NDiplomacy.PEACE_COST_CONVERSION = 1 -- scaled with countrysize for forced conversion in peace.
-- TODO test if this is linked to diplocost of release :
-- NDefines.NDiplomacy.PEACE_COST_RELEASE = 1 -- 2 -- Peace cost for releasing an annexed country (also increases with nr of provinces)

-- about overextension : should I increase those ?
-- NDefines.NCountry.OVEREXTENSION_FACTOR = 1.0 -- todo test if this augment overextension per dev
-- NDefines.NCountry.OVEREXTENSION_OVERSEAS_FACTOR = 0.5 -- Modifier to overextension from overseas provinces

-- goal is to add more intervention during wars between great power
NDefines.NDiplomacy.NUM_OF_GREAT_POWERS = 10 -- 8

-- moar diplo play
NDefines.NDiplomacy.VASSALIZE_BASE_DEVELOPMENT_CAP = 300 -- 100	Countries with more total development than this cannot be vassalized.
NDefines.NDiplomacy.MARCH_BASE_DEVELOPMENT_CAP = 600 -- 200