##
 # night.mcfunction
 # 
 #
 # Created by .
##


execute store result score sbags2.playercount sbags2.playercount run tag @a add sbags.playercount
tag @a remove sbags.playercount
execute store result score sbags2.playercount sbags2.sleepcount run tag @a[tag=sbags2.sleeping,tag=!sbags2.wake] add sbags.playercount
tag @a remove sbags.playercount

scoreboard players operation sbags2.playercount sbags2.playercount *= sbags2.playercount sbags2.math
scoreboard players operation sbags2.playercount sbags2.playercount /= sbags2.playercount sbags2.minsleep

execute if score sbags2.playercount sbags2.sleepcount matches 1.. if score sbags2.playercount sbags2.playercount <= sbags2.playercount sbags2.sleepcount run time set 0

execute if score sbags2.playercount sbags2.sleepcount matches 1.. if score sbags2.playercount sbags2.playercount <= sbags2.playercount sbags2.sleepcount run execute if predicate sbags2:weather/storm run weather clear

execute if score sbags2.playercount sbags2.sleepcount matches 1.. if score sbags2.playercount sbags2.playercount <= sbags2.playercount sbags2.sleepcount run execute as @a[tag=sbags2.sleeping] run tag @s add sbags2.wake
execute if score sbags2.playercount sbags2.sleepcount matches 1.. if score sbags2.playercount sbags2.playercount <= sbags2.playercount sbags2.sleepcount run execute as @a[tag=sbags2.sleeping] run function sbags2:sleep/wake
