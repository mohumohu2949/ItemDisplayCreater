#> idc:click/modify/scale/x/add
#   # scaleの設定 add
# @within function idc:click/modify/scale/x/

# スコアを1加算
    scoreboard players add @s idc.scale.x 1
# storageに移動
    execute store result storage idc: scale.x double 0.1 run scoreboard players get @s idc.scale.x
    execute store result storage idc: scale.y double 0.1 run scoreboard players get @s idc.scale.y
    execute store result storage idc: scale.z double 0.1 run scoreboard players get @s idc.scale.z
# stringで余計な部分を切り抜き
    data modify storage idc: scale.x set string storage idc: scale.x 0 -1
    data modify storage idc: scale.y set string storage idc: scale.y 0 -1
    data modify storage idc: scale.z set string storage idc: scale.z 0 -1

# data適応
    function idc:click/modify/scale/modify with storage idc: scale

# 事後処理
    data remove storage idc: scale