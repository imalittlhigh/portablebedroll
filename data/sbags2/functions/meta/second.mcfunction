##
 # second.mcfunction
 # 
 #
 # Created by .
##
execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=!sbags2.hight] at @s unless block ~ ~-0.2 ~ air run function sbags2:get/hight



execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=sbags2.west,scores={sbags2.pos=0},tag=sbags2.hight] at @s align xzy if block ~ ~ ~ #sbags2:valid_in if block ~-1 ~ ~ #sbags2:valid_in if block ~-1 ~1 ~ air run function sbags2:place/bag
execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=sbags2.west,scores={sbags2.pos=1..},tag=sbags2.hight] at @s align xzy positioned ~ ~1 ~ if block ~ ~ ~ #sbags2:valid_in if block ~-1 ~ ~ #sbags2:valid_in if block ~-1 ~1 ~ air run function sbags2:place/bag

execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=sbags2.east,scores={sbags2.pos=0},tag=sbags2.hight] at @s align xzy if block ~ ~ ~ #sbags2:valid_in if block ~1 ~ ~ #sbags2:valid_in if block ~1 ~1 ~ air run function sbags2:place/bag
execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=sbags2.east,scores={sbags2.pos=1..},tag=sbags2.hight] at @s align xzy positioned ~ ~1 ~ if block ~ ~ ~ #sbags2:valid_in if block ~1 ~ ~ #sbags2:valid_in if block ~1 ~1 ~ air run function sbags2:place/bag

execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=sbags2.north,scores={sbags2.pos=0},tag=sbags2.hight] at @s align xzy if block ~ ~ ~ #sbags2:valid_in if block ~ ~ ~-1 #sbags2:valid_in if block ~ ~1 ~-1 air run function sbags2:place/bag
execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=sbags2.north,scores={sbags2.pos=1..},tag=sbags2.hight] at @s align xzy positioned ~ ~1 ~ if block ~ ~ ~ #sbags2:valid_in if block ~ ~ ~-1 #sbags2:valid_in if block ~ ~1 ~-1 air run function sbags2:place/bag

execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=sbags2.south,scores={sbags2.pos=0},tag=sbags2.hight] at @s align xzy if block ~ ~ ~ #sbags2:valid_in if block ~ ~ ~1 #sbags2:valid_in if block ~ ~1 ~1 air run function sbags2:place/bag
execute as @e[type=item,predicate=sbags2:isbag,tag=!sbags2.item.done,tag=sbags2.item.hasrotation,tag=sbags2.south,scores={sbags2.pos=1..},tag=sbags2.hight] at @s align xzy positioned ~ ~1 ~ if block ~ ~ ~ #sbags2:valid_in if block ~ ~ ~1 #sbags2:valid_in if block ~ ~1 ~1 air run function sbags2:place/bag

effect give @e[type=villager,tag=sbags2.villager] invisibility 5 0 true

schedule function sbags2:meta/second 1s