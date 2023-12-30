#> idc:tick
#   # 常時実行する処理
# @within tag/function minecraft:tick

## mode
    execute as @a at @s if data entity @s {SelectedItem:{tag:{idc:rod}}} if score @s idc.click.mode matches 1.. run function idc:click/mode/
## modify
    execute as @a at @s if data entity @s {SelectedItem:{tag:{idc:rod}}} if score @s idc.click.modify matches 1.. run function idc:click/modify/
## selecteditem
    execute as @a at @s if data entity @s {SelectedItem:{tag:{idc:rod}}} run function idc:actionber

## score消さないとだめだった
    execute as @a if score @s idc.click.mode matches 1.. run scoreboard players reset @s idc.click.mode
    execute as @a if score @s idc.click.modify matches 1.. run scoreboard players reset @s idc.click.modify