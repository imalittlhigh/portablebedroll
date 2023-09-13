##
 # directions.mcfunction
 # 
 #
 # Created by .
##

tag @a remove sbags2.south
tag @a remove sbags2.west
tag @a remove sbags2.north
tag @a remove sbags2.east

execute as @s[y_rotation=-45..45] run tag @s add sbags2.south

execute as @s[y_rotation=45..135] run tag @s add sbags2.west

execute as @s[y_rotation=135..-135] run tag @s add sbags2.north

execute as @s[y_rotation=-135..-45] run tag @s add sbags2.east

