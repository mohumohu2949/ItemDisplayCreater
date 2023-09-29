#> idc:click/modify/summon/block_display
#   # summonしたitem_displayが実行する処理
# @within function idc:click/modify/summon/

# 中心にtp
    execute align xyz run tp @s ~ ~ ~
# Tags
    tag @s add idc.item_display
    tag @s add idc.select
# 選択用発光
    data modify entity @s Glowing set value true
# Data Modify
    execute unless data storage idc: Summon{id:"minecraft:player_head"} run data modify entity @s block_state.Name set from storage idc: Summon.id
    execute if data storage idc: Summon{id:"minecraft:player_head"} run tellraw @a[scores={idc.click.modify=1..}] [{"text": "item_displayでsummonしてください","color": "yellow"}]
    execute if data storage idc: Summon{id:"minecraft:player_head"} run kill @s
    execute if data entity @s block_state{Name:"minecraft:air"} run tellraw @a[scores={idc.click.modify=1..}] [{"text": "item_displayでsummonしてください","color": "yellow"}]
    execute if data entity @s block_state{Name:"minecraft:air"} run kill @s
# scaleの設定
    scoreboard players set @s idc.scale.x 10
    scoreboard players set @s idc.scale.y 10
    scoreboard players set @s idc.scale.z 10