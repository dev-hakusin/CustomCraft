execute if entity @a[scores={CC-sneak=1..}] as @a[scores={CC-sneak=1..}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},distance=..3] as @e[type=item,nbt={Item:{id:"minecraft:crafting_table",Count:1b}},distance=..3] run function custom-craft:item/near-player
execute if entity @e[tag=CC-charge] as @e[tag=CC-charge] at @s run function custom-craft:item/tick

scoreboard players reset @a[scores={CC-sneak=1..}] CC-sneak

execute if entity @e[tag=CC-core,nbt={ItemRotation:1b}] as @e[tag=CC-core,nbt={ItemRotation:1b}] at @s run function custom-craft:core/press
execute if entity @e[tag=CC-success] as @e[tag=CC-success] at @s run function custom-craft:core/success

execute if entity @e[tag=CC-core] as @e[tag=CC-core] at @s unless block ~ ~-0.5 ~ dropper run function custom-craft:core/break