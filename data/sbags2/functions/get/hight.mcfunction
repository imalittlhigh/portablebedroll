##
 # test.mcfunction
 # 
 #
 # Created by .
##


execute store result score @s sbags2.pos run data get entity @s Pos[1] 10

scoreboard players operation @s sbags2.pos %= sbags2.dummy.pos sbags2.math

tag @s add sbags2.hight