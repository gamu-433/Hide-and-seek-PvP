tellraw @a [{"color":"green","text":"✼••┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈••"},{"color":"yellow","text":"Announce"},{"color":"green","text":"••┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈••✼"},{"bold":true,"color":"white","text":"\n5分が経過したため、各大将の座標が公開されます。"}]
execute as @a at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1
schedule function pvp:location/main2 3s replace



