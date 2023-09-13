##
 # crafted_node_stone.mcfunction
 # 
 #
 # Created by imalittlhigh
##

#revoking the recipe
recipe take @s sbags2_crafting:gray

#revoking the advancement
advancement revoke @s only sbags2_crafting:gray_adv

#clearing the crafted knowledge book
clear @s minecraft:knowledge_book

give @s saddle{display:{Name:'{"text":"Gray Sleeping Bag","italic":false,"color":"white"}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:7s} 1
