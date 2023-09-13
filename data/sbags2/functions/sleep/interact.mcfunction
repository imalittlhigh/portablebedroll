##
 # interact.mcfunction
 # 
 #
 # Created by .
##


execute at @s[predicate=!sbags2:dimension/overworld] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] run summon creeper ~ ~1.5 ~ {CustomNameVisible:0b,Fuse:0,ignited:1b,CustomName:'{"text":"[Intentional Game Design]","italic":false}'}
execute at @s[predicate=!sbags2:dimension/overworld] as @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] run function sbags2:pack/bag



execute at @s[tag=sbags2.sleeping] if entity @e[predicate=sbags2:villager/sbag,distance=..1.5] run tag @s add sbags2.wake
execute at @s[tag=!sbags2.sleeping] unless entity @e[type=#sbags2:hostile,distance=..10] if entity @e[predicate=sbags2:villager/sbag,distance=..1.5] if predicate sbags2:time/sleeping run tag @s add sbags2.sleeping
execute at @s[tag=!sbags2.sleeping] if entity @e[predicate=sbags2:villager/sbag,distance=..1.5] unless predicate sbags2:time/sleeping run title @s actionbar {"text":"You can only sleep at night or during thunderstorms"}
execute at @s[tag=!sbags2.sleeping] if entity @e[type=#sbags2:hostile,distance=..10] if entity @e[predicate=sbags2:villager/sbag,distance=..1.5] if predicate sbags2:time/sleeping run title @s actionbar {"text":"You may not rest now; there are monsters nearby"}

tag @s[tag=sbags2.wake] remove sbags2.sleeping

execute as @s[tag=sbags2.wake] at @s run function sbags2:sleep/wake

execute store result score sbags2.playercount sbags2.playercount run tag @a[predicate=sbags2:dimension/overworld] add sbags.playercount
tag @a remove sbags.playercount
execute store result score sbags2.playercount sbags2.sleepcount run tag @a[tag=sbags2.sleeping,tag=!sbags2.wake] add sbags.playercount
tag @a remove sbags.playercount

scoreboard players operation sbags2.playercount sbags2.playercount *= sbags2.playercount sbags2.math
scoreboard players operation sbags2.playercount sbags2.playercount /= sbags2.playercount sbags2.minsleep


execute as @a[tag=sbags2.sleeping] run effect give @s slowness 1 254 true
#execute as @a[tag=sbags2.sleeping] run effect give @s blindness 1 0 true
execute as @a[tag=sbags2.sleeping] run effect give @s resistance 1 254 true

execute as @s[tag=sbags2.sleeping] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.west] run tp @s ~-0.5 ~1.2 ~
execute as @s[tag=sbags2.sleeping] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.west] run setblock ~-1 ~3 ~ barrier

execute as @s[tag=sbags2.sleeping] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.east] run tp @s ~0.5 ~1.2 ~
execute as @s[tag=sbags2.sleeping] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.east] run setblock ~1 ~3 ~ barrier

execute as @s[tag=sbags2.sleeping] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.north] run tp @s ~ ~1.2 ~-0.5
execute as @s[tag=sbags2.sleeping] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.north] run setblock ~ ~3 ~-1 barrier

execute as @s[tag=sbags2.sleeping] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.south] run tp @s ~ ~1.2 ~0.5
execute as @s[tag=sbags2.sleeping] at @e[predicate=sbags2:villager/sbag,limit=1,sort=nearest] if entity @e[type=villager,tag=sbags2.villager.interact,distance=..0.5,tag=sbags2.south] run setblock ~ ~3 ~1 barrier

execute as @s[tag=sbags2.sleeping] run function sbags2:get/sleepcount

advancement revoke @s only sbags2:villager/interact
