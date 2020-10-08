# eu4_tagadamod

goal is trying to increase the diplomatic aspect of the game, improve AI, and make it harder to megablob in late game
warning : game will be harder, as I improve rebels, ias stability & agressiveness, etc.  
patchnote is the difference between vanilla & the mod

## patchnote

- 10% to 5% for admin_efficiency & dev_efficiency at admin tech 17, 23, 27
- removed coring delay with absolutism
- added 2 greatpower slot, gaining 8 & 5 powerprojection respectively
- spy tech now unlocked every two lvl after lvl 3, except for libertydesire & admin_infiltration
	- may_steal_maps 6 => 5
	- may_study_technology 9 => 7
	- may_slander_merchants 12 => 9
	- may_sabotage_recruitment 15 => 11
	- may_sow_discontent 18 => 13
	- may_sabotage_reputation 21 => 15
	- may_corrupt_officials 24 => 17
	- may_agitate_for_liberty 27 => 24
	- may_infiltrate_administration 30 => 27

### rebels

- rebels from 1% to 2% moral per tech lvl
- rebels from 0.03 to 0.05 size per tech lvl
- rebels artillery 0.15 to 0.25 when above tech lvl16

### buildings

- coastal_defence lvl1 improved: now deals 2% attrition
- ramparts improved: now also add 1 fort lvl

### AI improvement

Almost everything from BetterAI mod (https://github.com/Mxt-dot/BetterAI) and this :
- added 1 diplo slot for ias only
- peace is dishonorable when having more than -15 (instead of original -10)
- refuse a call to arm with caller : 30 trust (was 20)
- refuse a call to arm with everyone else : 10 trust (was 5)
- no land when promised (scale with participation & dev) : 30 trust (was 20)
- separate peace trust penalty : 15 (was 10)

### diplomacy & aggresive expansion

- scaled truce from 10 to 15 year at 100% warscore
- revanchism decay from 100% in 10y to 100% in 15years
- warcost for enemy not called into war : 2 => 3
- aggresive expansion (AE) for enemy not called : 1.5 => 2
- AE with infidel conquest 0.25 => 0.3
- AE with same religion group 0 => 0.15
- AE with different religion -0.5 => 0
- AE distance base 0.75 => 0.25 (should increase ae with far away country)
- AE from gaining a province with threat (no war) 1 => 0.75
- AE increase for attacker scaling to 50% at 500 dev instead of 1k dev
- peace cost for releasing a tag 1 => 0.75
- new disaster from https://forum.paradoxplaza.com/forum/threads/mod-the-balance-of-power-reworking-how-rivals-and-neighbors-react-to-expansion-long-term.1400193/

### multiplayer QOL

- 25 to 15 day for autopause when someone lag
- 10 to 7 day for autoslow when someone lag
- Months before unconditional surrender starts having an effect : 2 => 0
