playsound minecraft:block.stone_button.click_on block @a ~ ~ ~ 1 0.5
summon minecraft:area_effect_cloud ~ ~-0.5 ~ {Tags:[CC-crafting],Particle:"smoke",Radius:0.1f,Duration:1}
data modify entity @s ItemRotation set value 0b