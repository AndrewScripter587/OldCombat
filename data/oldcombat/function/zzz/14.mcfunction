#This file was generated by MC-Build

scoreboard players set #ifelse mcb.internal 1
summon armor_stand ~ ~ ~ {ShowArms:1b,Tags:["modify_slot"],Marker:true,Invisible:true,Invulnerable:true}
item replace entity @n[type=armor_stand,tag=modify_slot] weapon.mainhand from entity @s weapon.mainhand
data remove entity @n[type=armor_stand,tag=modify_slot] equipment.mainhand.components."minecraft:blocks_attacks"
item replace entity @s weapon.mainhand from entity @n[type=armor_stand,tag=modify_slot] weapon.mainhand
kill @e[type=armor_stand,tag=modify_slot]