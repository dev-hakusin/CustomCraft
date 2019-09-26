# 演出
particle minecraft:enchant ~ ~ ~ 0.2 0.2 0.2 0.5 2 normal @a

execute if entity @s[scores={CC-counter=11}] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 0.5 0.7
execute if entity @s[scores={CC-counter=11}] run particle minecraft:end_rod ~ ~0.4 ~ 0.3 0.2 0.3 0.01 2 normal @a
execute if entity @s[scores={CC-counter=31}] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 0.5 1
execute if entity @s[scores={CC-counter=31}] run particle minecraft:end_rod ~ ~0.4 ~ 0.5 0.2 0.5 0.01 4 normal @a
execute if entity @s[scores={CC-counter=51}] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 0.5 1.3
execute if entity @s[scores={CC-counter=51}] run particle minecraft:end_rod ~ ~0.4 ~ 0.8 0.2 0.8 0.01 8 normal @a
execute if entity @s[scores={CC-counter=71}] run playsound minecraft:block.anvil.use block @a ~ ~ ~ 0.5 2

# 完成
execute if entity @s[scores={CC-counter=71}] run function custom-craft:item/finish


execute unless entity @a[scores={CC-sneak=1..},distance=..3] run scoreboard players reset @s CC-counter
execute unless entity @a[scores={CC-sneak=1..},distance=..3] run tag @s remove CC-charge
execute unless entity @a[scores={CC-sneak=1..},distance=..3] run playsound minecraft:entity.item.break block @a ~ ~ ~ 0.8 1