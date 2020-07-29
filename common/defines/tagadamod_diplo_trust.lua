-- ALL VALUES HERE COME FROM : https://eu4.paradoxwikis.com/Defines
-- old value are always kept in comment like this : -- oldvalue -- other comment on effect of the value

-- make it more hard to leave a war without fighting too much, if you want to leave without fighting, you will have to suffer the penalty
NDefines.NDiplomacy.DISHONORABLE_PEACE_MONTHS = 18 -- 12 --See DISHONORABLE_PEACE_WARSCORE. Set to 0 to entirely disable the feature.
NDefines.NDiplomacy.DISHONORABLE_PEACE_WARSCORE = -15 -- -10 -- If you have more than this amount of individual warscore, peacing out within DISHONORABLE_PEACE_MONTHS of war start counts as a dishonorable act and incurs a CALL_ALLY_DECLINE_PRESTIGE_PENALTY hit (reminder: -25 prestige).

-- increasing cost of trust when being dishonorable with ai
NDefines.NDiplomacy.DISHONOR_CALL_TRUST_CALLER = 30 -- 20 -- How much trust is lost from dishonoring a call to arms (with caller).
NDefines.NDiplomacy.DISHONOR_CALL_TRUST = 10 -- 5 -- How much trust is lost from dishonoring a call to arms (with everyone else).
NDefines.NDiplomacy.TRUST_PENALTY_FOR_NO_LAND = 30 -- 20 -- Trust penalty for not being given as much land as they expected in peace deal (scales with how much they actually got relative to participation).
NDefines.NDiplomacy.TRUST_PENALTY_FOR_SEPARATE_PEACE = 15 -- 10 -- Trust penalty for signing a separate peace
