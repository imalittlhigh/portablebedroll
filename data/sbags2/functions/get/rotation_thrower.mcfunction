##
 # rotation_thrower.mcfunction
 # 
 #
 # Created by .
##

execute as @p run function sbags2:get/looking_direction

execute at @s if entity @p[tag=sbags2.south] run tag @s add sbags2.south
execute at @s if entity @p[tag=sbags2.west] run tag @s add sbags2.west
execute at @s if entity @p[tag=sbags2.north] run tag @s add sbags2.north
execute at @s if entity @p[tag=sbags2.east] run tag @s add sbags2.east

tag @s add sbags2.item.hasrotation