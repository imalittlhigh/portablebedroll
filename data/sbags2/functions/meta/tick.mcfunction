##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##

execute as @e[type=villager,tag=sbags2.villager,tag=sbags2.south] at @s unless predicate sbags2:bags/south run function sbags2:pack/bag
execute as @e[type=villager,tag=sbags2.villager,tag=sbags2.north] at @s unless predicate sbags2:bags/north run function sbags2:pack/bag
execute as @e[type=villager,tag=sbags2.villager,tag=sbags2.east] at @s unless predicate sbags2:bags/east run function sbags2:pack/bag
execute as @e[type=villager,tag=sbags2.villager,tag=sbags2.west] at @s unless predicate sbags2:bags/west run function sbags2:pack/bag

execute as @a[tag=sbags2.sleeping] run effect give @s slowness 1 254 true
#execute as @a[tag=sbags2.sleeping] run effect give @s blindness 1 0 true


execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.hasrotation] at @s run function sbags2:get/rotation_thrower