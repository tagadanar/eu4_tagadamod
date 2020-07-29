-- ALL VALUES HERE COME FROM : https://eu4.paradoxwikis.com/Defines
-- old value are always kept in comment like this : -- oldvalue -- other comment on effect of the value

-- IA improvment :
-- slightly lowering engagement limit, making it harder to stay sieging when close to ia stacks without them doing anything to defend
NDefines.NAI.ACCEPTABLE_BALANCE_DEFAULT = 1.5 -- 1.7 -- AI wants this advantage to enter battles typically. (There are some exceptions, e.g. offensives.)
-- NDefines.NAI.ACCEPTABLE_BALANCE_FRIEND_IN_COMBAT = 0.75 -- for info, think this value is ok.

-- testing pressthemfurther ftm
-- NDefines.NAI.PRESS_THEM_FURTHER = 1 -- 0 -- TODO TEST This makes AI that has been promised land require that the enemy is pressed further if they think it is possible. Set to 1 to activate.
-- ia will forget less when you enter in the fog, making it a little harder to trap ia
NDefines.NAI.FOG_OF_WAR_FORGET_CHANCE = 0.5 -- 1 -- Daily percentage chance of AI forgetting a unit that's hidden in Fog of War.

-- increasing ai aggressiveness on easy/hated enemy, since I increase aggressive expansion & make it harder to expand, ia should be more opportunistic to compensate
-- NDefines.NAI.AGGRESSIVENESS = 200 -- Base chance (out of 10000) of AI being willing to start a war each diplomatic tick (~1.5 times a month).
NDefines.NAI.AGGRESSIVENESS_BONUS_EASY_WAR = 600 -- 300 -- Added to aggressiveness if the war is against a weak or particularly hated enemy.

-- delaying a little when this value should double, to improve ia unit composition
-- NDefines.NAI.ARTILLERY_FRACTION = 0.35 -- Ratio of artillery to infantry AI will build.
NDefines.NAI.FORCE_COMPOSITION_CHANGE_TECH_LEVEL = 13 -- 11 -- maybe increase to 13/15/16? -- Tech level at which AI will double its artillery fraction.

-- increasing slightly ia interest distance to improve ia diplomatics
NDefines.NAI.DIPLOMATIC_INTEREST_DISTANCE = 250 -- 150 -- If border distance is greater than this diplomatic AI will have less interest in the country.
NDefines.NAI.CONQUEST_INTEREST_DISTANCE = 150 -- 100 -- Beyond this range AI is less interested in conquest of provinces.

-- increasing pursue distance to improve ia stackwiping potential
NDefines.NAI.PURSUE_DISTANCE = 150 -- 100 -- maybe increase to 150? -- AI will not pursue armies retreating to a province further away than this.

-- lot of PEACE_XXX values to change ia weight to accept peace
-- trying to make ia more stuborn vs excessive demand, should reduce possible abuse when player want to end quickly a war while still getting a lot cuz ai is dumb and dont see some balance change
NDefines.NAI.PEACE_EXCESSIVE_DEMANDS_FACTOR = 0.010 -- 0.005 -- AI unwillingness to peace based on demanding more stuff than you have warscore.
NDefines.NAI.PEACE_EXCESSIVE_DEMANDS_THRESHOLD = 30 -- 20 -- If you have less warscore than this excessive demands will be factored in more highly.
-- adding 5 reason to not make peace when holding wargoal (same as holding their capital)
-- NDefines.NAI.PEACE_WARGOAL_FACTOR = 5 -- 0, -- AI unwillingness to peace based on holding the wargoal
-- NDefines.NAI.PEACE_CAPITAL_FACTOR = 5, -- AI unwillingness to peace based on holding their own capital
-- NDefines.NAI.PEACE_ALLY_WARGOAL_MULT = 1.0 -- 0, -- Multiplies PEACE_WARGOAL_FACTOR for allies in a war
-- NDefines.NAI.PEACE_ALLY_CAPITAL_MULT = 1.0, -- Multiplies PEACE_CAPITAL_FACTOR for allies in a war

-- FIXME exploring this values to make IA see other wars and balance change better
NDefines.NAI.PEACE_OTHER_WAR_FORCE_BALANCE_MULT = 0.75 -- 0.5, -- Multiplies the force balance of other countries who are involved in a different war with either side

-- TODO test those 3 values during a war to improve ia decisionmaking
-- NDefines.NAI.PEACE_WAR_DIRECTION_FACTOR = 0.5, -- AI willingness to peace based on who's making gains in the war
-- NDefines.NAI.PEACE_WAR_DIRECTION_WINNING_MULT = 5.0, -- Multiplies AI emphasis on war direction if it's the one making gains
-- NDefines.NAI.PEACE_FORCE_BALANCE_FACTOR = 0.2, -- AI willingness to peace based on strength estimation of both sides

-- keeping this here to test one day
-- NDefines.NAI.INVADING_BRAVERY = 1.0 -- TODO undestand what this means : -- If (defender strength) / (invader strength) >
-- NDefines.NAI.INVADING_MAX_AWAY_RATIO = 0.45 -- TODO test this -- AI will never send more than this ratio to invade (Measured in strength)

-- added values inspired from https://github.com/Mxt-dot/BetterAI
NDefines.NAI.DEVELOPMENT_CAP_BASE = 50 -- 20
NDefines.NAI.DEVELOPMENT_CAP_MULT = 10 -- 2

NDefines.NAI.PEACE_TERMS_PROVINCE_IMPERIAL_LIBERATION_MULT = 2.0 -- 0.25, --AI Emperor's desire for a province is multiplied by this if this is an Imperial Liberation CB war.
NDefines.NAI.PEACE_TERMS_PROVINCE_NO_CB_MULT = 1.0 -- 0.5, -- AI desire for a province is multiplied by this if it doesn't have a valid cb for it (only used when annexing, not applied to cores)
NDefines.NAI.PEACE_TERMS_PROVINCE_CORE_MULT = 4.0 -- 3.0, -- AI desire for a province is multiplied by this if it has a core on it
NDefines.NAI.PEACE_TERMS_PROVINCE_WARGOAL_MULT = 3.0 -- 2.0, -- AI desire for a province is multiplied by this if it is the wargoal
NDefines.NAI.PEACE_TERMS_PROVINCE_CLAIM_MULT = 3.0 -- 2.0, -- AI desire for a province is multiplied by this if it has a claim on it
NDefines.NAI.PEACE_TERMS_PROVINCE_NOT_CULTURE_MULT = 1.0 -- 0.75, -- AI desire for a province is multiplied by this if it is not the same culture

NDefines.NAI.DIPLOMATIC_ACTION_FABRICATE_CLAIM_BASE_FACTOR = 50 -- 25, -- AI scoring for fabricating claims is always increased by this as long as the province is a conquest priority
NDefines.NAI.DIPLOMATIC_ACTION_FABRICATE_CLAIM_STRATEGY_FACTOR = 1.0 -- 0.5, -- AI scoring for fabricating claims based on strategic conquest priorities
NDefines.NAI.DIPLOMATIC_ACTION_FABRICATE_CLAIM_OTHER_CB_FACTOR = 0.5 -- 0.0, -- AI scoring for fabricating claims if they already have another CB usable on the province
NDefines.NAI.DIPLOMATIC_ACTION_FABRICATE_CLAIM_NOT_ADJACENT_FACTOR = 0.75 -- 0.5, -- AI scoring for fabricating claims if the province is not adjacent

NDefines.NAI.OVER_FORCELIMIT_AVOIDANCE_FACTOR = 5 -- 10 -- The higher this number is, the less willing the AI will be to exceed forcelimits
NDefines.NAI.IMPORANT_PROVINCE_THRESHOLD = 0.02 -- 0.05 -- AI will try to defend provinces under threat worth more than this percentage of total development
NDefines.NAI.IMPORTANT_PROVINCE_THRESHOLD = 0.02 -- 0.05 -- AI will try to defend provinces under threat worth more than this percentage of total development

NDefines.NAI.ESTATE_PRIVILEGE_REVOKE_THRESHOLD = 7.0 -- ESTATE_PRIVILEGE_REVOKE_THRESHOLD = 5.1,
NDefines.NAI.ESTATE_PRIVILEGE_GRANT_THRESHOLD = 7.0 -- ESTATE_PRIVILEGE_GRANT_THRESHOLD = 9.9,
NDefines.NAI.ESTATE_INTERACTION_THRESHOLD = 25.0 -- ESTATE_INTERACTION_THRESHOLD = 49.9,
NDefines.NAI.ESTATE_MAX_WANTED_INFLUENCE = 85.0 -- ESTATE_MAX_WANTED_INFLUENCE = 73.0,
NDefines.NAI.ESTATE_MIN_WANTED_CROWNLAND = 21.0 -- ESTATE_MIN_WANTED_CROWNLAND = 33.0,
NDefines.NAI.ESTATE_MAX_PRIVILEDGES = 4 -- ESTATE_MAX_PRIVILEDGES = 2,

NDefines.NAIEconomy.LOAN_REPAYMENT_SAVINGS_PRIORITY = 0.3 -- 0.1
NDefines.NAI.REPAY_LOAN_BASE_AI_DESIRE = 10.0 -- 5

NDefines.NAI.DEBASE_THRESHOLD = 1000 -- 10000,-- AI will not debase if it has more gold than this.
NDefines.NAI.PEACE_TERMS_WAR_REPARATIONS_MIN_INCOME_RATIO = 0.2 -- 0.5, -- AI only wants war reparations if other country has at least this % of their income
NDefines.NAI.PEACE_TERMS_WAR_REPARATIONS_BASE_MULT = 0.2 -- 0.1 -- AI desire for war reparations through peace
NDefines.NAI.PEACE_TERMS_GOLD_BASE_MULT = 0.2 -- 0.1



