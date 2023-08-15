##
 # rmb.mcfunction
 # 
 #
 # Created by imalittlhigh.
##
advancement revoke @s only pbroll:rmb_interaction

tag @s add pbroll.player.interacted

execute as @s[tag=pbroll.player.sleeping,tag=pbroll.player.interacted] at @s run function pbroll:use/wake

execute unless predicate pbroll:sleepy_time run tag @s remove pbroll.player.interacted
execute if predicate pbroll:sleepy_time if entity @e[type=#pbroll:monsters,distance=..10] run tag @s remove pbroll.player.interacted

execute as @s[tag=!pbroll.player.interacted] as @e[tag=pbroll.interaction.bedroll,nbt={interaction:{}}] run data remove entity @s interaction

execute if predicate pbroll:sleepy_time as @s[tag=!pbroll.player.sleeping,tag=pbroll.player.interacted] as @e[tag=pbroll.interaction.bedroll,nbt={interaction:{}}] at @s run function pbroll:use/main


execute unless predicate pbroll:sleepy_time run title @s actionbar {"text":"You can sleep only at night or during thunderstorms"}

execute if predicate pbroll:sleepy_time if entity @e[type=#pbroll:monsters,distance=..10] run title @s actionbar {"text":"You may not rest now; there are monsters nearby"}

schedule function pbroll:interacted/skip_test 3s replace