##
 # tick.mcfunction
 # 
 #
 # Created by imalittlhigh
##

execute as @a[tag=pbroll.player.sleeping] if score @s pbroll.awake matches 100.. run effect give @s blindness 2 0 true
execute as @a[tag=pbroll.player.sleeping] if score @s pbroll.awake matches 100.. run effect give @s slowness 1 255 true

execute as @a if score @s pbroll.sleeping matches 1.. run tag @s add pbroll.player.sleeping
execute as @a if score @s pbroll.sleeping matches 0 run tag @s remove pbroll.player.sleeping
execute as @a if score @s pbroll.sleeping matches 1.. if score @s pbroll.awake matches 1.. run scoreboard players remove @s pbroll.sleeping 1


execute as @a[scores={pbroll.left=1..}] run function pbroll:use/wake