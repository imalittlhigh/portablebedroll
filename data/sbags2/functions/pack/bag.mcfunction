##
 # bag.mcfunction
 # 
 #
 # Created by .
##
execute as @s[tag=sbags2.south] at @s run fill ~ ~2 ~ ~ ~2 ~1 air replace #sbags2:carpets
execute as @s[tag=sbags2.north] at @s run fill ~ ~2 ~ ~ ~2 ~-1 air replace #sbags2:carpets
execute as @s[tag=sbags2.east] at @s run fill ~ ~2 ~ ~1 ~2 ~ air replace #sbags2:carpets
execute as @s[tag=sbags2.west] at @s run fill ~ ~2 ~ ~-1 ~2 ~ air replace #sbags2:carpets

execute as @s[tag=sbags2.south] at @s run fill ~ ~3 ~1 ~ ~3 ~1 air replace barrier
execute as @s[tag=sbags2.north] at @s run fill ~ ~3 ~-1 ~ ~3 ~-1 air replace barrier
execute as @s[tag=sbags2.east] at @s run fill ~1 ~3 ~ ~1 ~3 ~ air replace barrier
execute as @s[tag=sbags2.west] at @s run fill ~-1 ~3 ~ ~-1 ~3 ~ air replace barrier

execute at @s[tag=sbags2.colour.white] run kill @e[type=item,nbt={Item:{id:"minecraft:white_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.villager] run kill @e[type=item,nbt={Item:{id:"minecraft:white_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.orange] run kill @e[type=item,nbt={Item:{id:"minecraft:orange_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.magenta] run kill @e[type=item,nbt={Item:{id:"minecraft:magenta_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.light_blue] run kill @e[type=item,nbt={Item:{id:"minecraft:light_blue_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.yellow] run kill @e[type=item,nbt={Item:{id:"minecraft:yellow_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.lime] run kill @e[type=item,nbt={Item:{id:"minecraft:lime_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.pink] run kill @e[type=item,nbt={Item:{id:"minecraft:pink_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.gray] run kill @e[type=item,nbt={Item:{id:"minecraft:gray_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.light_gray] run kill @e[type=item,nbt={Item:{id:"minecraft:light_gray_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.cyan] run kill @e[type=item,nbt={Item:{id:"minecraft:cyan_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.purple] run kill @e[type=item,nbt={Item:{id:"minecraft:purple_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.blue] run kill @e[type=item,nbt={Item:{id:"minecraft:blue_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.brown] run kill @e[type=item,nbt={Item:{id:"minecraft:brown_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.green] run kill @e[type=item,nbt={Item:{id:"minecraft:green_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.red] run kill @e[type=item,nbt={Item:{id:"minecraft:red_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]
execute at @s[tag=sbags2.colour.black] run kill @e[type=item,nbt={Item:{id:"minecraft:black_carpet",Count:1b},Age:0s},limit=1,sort=nearest,distance=..3.5]

execute at @s[tag=sbags2.colour.white] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"White Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:0s}}}
execute at @s[tag=sbags2.colour.orange] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Orange Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:1s}}}
execute at @s[tag=sbags2.colour.magenta] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Magenta Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:2s}}}
execute at @s[tag=sbags2.colour.light_blue] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Light Blue Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:3s}}}
execute at @s[tag=sbags2.colour.yellow] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Yellow Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:4s}}}
execute at @s[tag=sbags2.colour.lime] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Lime Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:5s}}}
execute at @s[tag=sbags2.colour.pink] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Pink Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:6s}}}
execute at @s[tag=sbags2.colour.gray] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Gray Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:7s}}}
execute at @s[tag=sbags2.colour.light_gray] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Light Gray Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:8s}}}
execute at @s[tag=sbags2.colour.cyan] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Cyan Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:9s}}}
execute at @s[tag=sbags2.colour.purple] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Purple Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:10s}}}
execute at @s[tag=sbags2.colour.blue] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Blue Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:11s}}}
execute at @s[tag=sbags2.colour.brown] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Brown Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:12s}}}
execute at @s[tag=sbags2.colour.green] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Green Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:13s}}}
execute at @s[tag=sbags2.colour.red] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Red Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:14s}}}
execute at @s[tag=sbags2.colour.black] run summon item ~ ~1.5 ~ {Tags:["sbags2.item.done"],Item:{id:"minecraft:saddle",Count:1b,tag:{display:{Name:'{"text":"Black Sleeping Bag","italic":false}',Lore:['{"text":"Drop this to place","color":"gray"}','{"text":"your Sleeping Bag","color":"gray"}']},HideFlags:127,sbag:1b,sbag_colour:15s}}}

execute at @s run kill @e[type=armor_stand,tag=sbags2.armorstand.pillow,distance=..1.5,limit=1,sort=nearest]

tp @s ~ ~-500 ~

tag @p remove sbags2.sleeping

kill @s