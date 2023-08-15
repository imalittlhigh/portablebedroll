##
 # crafted_node_stone.mcfunction
 # 
 #
 # Created by imalittlhigh
##

#revoking the recipe
recipe take @s pbroll_crafting:bedrolls/light_blue

#revoking the advancement
advancement revoke @s only pbroll_crafting:bedrolls/light_blue

#clearing the crafted knowledge book
clear @s minecraft:knowledge_book

loot give @s loot pbroll:rolls/light_blue