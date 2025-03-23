execute as @a[scores={pvp_advance=1..2}] at @s if entity @s[scores={PvP_glowitem=1..}] run function pvp:item/glow
execute as @a[scores={pvp_advance=1..2}] at @s if entity @s[scores={PvP_fireball=1..}] run function pvp:item/fireball
execute as @a[scores={pvp_advance=1..2}] at @s if entity @s[scores={PvP_omen=1..}] run function pvp:item/omen