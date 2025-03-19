# lc joinに向けたアナウンス
scoreboard players set 状況 pvp_advance 4
execute as @a at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.5
tellraw @a [{"color":"green","text":"✼••┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈••"},{"color":"yellow","text":"Announce"},{"color":"green","text":"••┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈┈••✼"},{"bold":true,"color":"white","text":"\nまもなく"},{"bold":true,"color":"gold","text":"大将抽選フェーズ"},{"bold":true,"color":"white","text":"にはいります。"},{"bold":true,"color":"white","text":"\nゲーム参加者は作戦を立てるために"},{"bold":true,"color":"red","text":"チーム内チャット"},{"bold":true,"color":"white","text":"を利用できます。"},{"bold":true,"color":"white","text":"\nこのままグローバルチャット状態でもゲームを遊ぶことは可能です。"},{"bold":true,"color":"white","text":"\nなお、チャットを移動する際には"},{"bold":true,"color":"gold","text":"コマンドを利用して移動"},{"bold":true,"color":"white","text":"してください。\n"},{"bold":true,"clickEvent":{"action":"run_command","value":"/joinc"},"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"ここをクリックでも移動可能","color":"aqua"}]},"text":"\nチーム内に移動"},{"bold":true,"color":"gray","text":"　→　"},{"bold":false,"color":"yellow","text":"/joinc　"},{"bold":true,"color":"green","text":"　グローバルに移動"},{"bold":true,"color":"gray","text":"　→　"},{"color":"yellow","text":"/leave"}]

schedule function pvp:taisho/start 30s replace

# schedule function pvp:standby 30s replace
