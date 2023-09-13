##
 # load.mcfunction
 # 
 #
 # Created by imalittlhigh
##

scoreboard objectives add sbags2.villager.interact minecraft.custom:talked_to_villager
scoreboard objectives add sbags2.playercount dummy
scoreboard objectives add sbags2.sleepcount dummy
scoreboard objectives add sbags2.math dummy
scoreboard objectives add sbags2.pos dummy
#editabel / math
scoreboard objectives add sbags2.minsleep dummy

scoreboard players set sbags2.playercount sbags2.math 10
execute unless score sbags2.playercount sbags2.minsleep matches 1.. run scoreboard players set sbags2.playercount sbags2.minsleep 10

scoreboard players set sbags2.dummy.pos sbags2.math 10

function sbags2:meta/second