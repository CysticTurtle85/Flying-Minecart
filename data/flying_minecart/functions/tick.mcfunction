execute as @e[type=minecart,tag=!fly,name="Flying Minecart"] at @s if block ~ ~ ~ air if block ~ ~ ~-1 rail[shape=north_south] run function flying_minecart:convertnorth
execute as @e[type=minecart,tag=!fly,name="Flying Minecart"] at @s if block ~ ~ ~ air if block ~1 ~ ~ rail[shape=east_west] run function flying_minecart:converteast
execute as @e[type=minecart,tag=!fly,name="Flying Minecart"] at @s if block ~ ~ ~ air if block ~ ~ ~1 rail[shape=north_south] run function flying_minecart:convertsouth
execute as @e[type=minecart,tag=!fly,name="Flying Minecart"] at @s if block ~ ~ ~ air if block ~-1 ~ ~ rail[shape=east_west] run function flying_minecart:convertwest
# Activates convert when minecart is in the air with a rail behind

execute as @e[type=minecart,tag=flynorth] at @s run function flying_minecart:flynorth
execute as @e[type=minecart,tag=flyeast] at @s run function flying_minecart:flyeast
execute as @e[type=minecart,tag=flysouth] at @s run function flying_minecart:flysouth
execute as @e[type=minecart,tag=flywest] at @s run function flying_minecart:flywest
#  Activates fly when a minecart has the fly tag

execute as @e[type=minecart,tag=fly] at @s unless block ~ ~ ~ air run function flying_minecart:removetags
# Removes fly tags when there is a block at the minecart position