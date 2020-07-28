-- ALL VALUES HERE COME FROM : https://eu4.paradoxwikis.com/Defines
-- old value are always kept in comment like this : -- oldvalue -- other comment on effect of the value

-- if there is no old value kept in comment, value is original, just here for information
-- trying to slighly improve rebels on late game to make them more of a threat :
-- 2% moral per tech instead of 1%, I did test 3%, was nice for normal rebel but a bit too much for pretender who also got *1.25bonus moral
-- 0.05 size per tech instead of 0.03 (so there is slighly more rebels in late game, for artillery, see next line)
-- rebel artillery after lvl16 upped to 0.25 from 0.15, in hope off more canon in late game rebels without touching too much on infantry/cavalry
-- NDefines.NCountry.REVOLT_SIZE_DEVELOPMENT_MULTIPLIER = 0.1 -- Multiplied with the province's development. --WAS .3 in 1.29
-- NDefines.NCountry.REVOLT_SIZE_BASE = 5 -- 5 unit mini + dev multiplier --WAS 4 in 1.29
NDefines.NCountry.REVOLT_TECH_IMPACT = 0.05 -- 0.03 -- % each tech increases size of rebels by this percent.
NDefines.NCountry.REVOLT_TECH_MORALE = 0.02 -- 0.01 -- 1% per tech level.
-- NDefines.NCountry.REBEL_ARTILLERY_INCREASE_LEVEL_1_TECH = 11 -- Tech level at which REBEL_ARTILLERY_INCREASE_LEVEL_1_SIZE is applied.
-- NDefines.NCountry.REBEL_ARTILLERY_INCREASE_LEVEL_1_SIZE = 0.1 -- The increase in artillery as fraction of total troops given to rebels.
-- NDefines.NCountry.REBEL_ARTILLERY_INCREASE_LEVEL_2_TECH = 16 -- Tech level at which REBEL_ARTILLERY_INCREASE_LEVEL_2_SIZE is applied.
NDefines.NCountry.REBEL_ARTILLERY_INCREASE_LEVEL_2_SIZE = 0.25 -- 0.15 -- The increase in artillery as fraction of total troops given to rebels (does not stack with level 1).
