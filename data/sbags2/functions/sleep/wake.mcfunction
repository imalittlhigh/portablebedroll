##
 # wake.mcfunction
 # 
 #
 # Created by .
##


execute at @e[predicate=sbags2:villager/sbag] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.west] run fill ~-1 ~3 ~ ~-1 ~3 ~ air replace barrier
execute at @e[predicate=sbags2:villager/sbag] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.east] run fill ~1 ~3 ~ ~1 ~3 ~ air replace barrier
execute at @e[predicate=sbags2:villager/sbag] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.north] run fill ~ ~3 ~-1 ~ ~3 ~-1 air replace barrier
execute at @e[predicate=sbags2:villager/sbag] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.south] run fill ~ ~3 ~1 ~ ~3 ~1 air replace barrier

tag @s remove sbags2.wake
tag @s remove sbags2.sleeping
