#> idc:click/mode/
#   # mode変更用をクリックしたときの処理
# @within function idc:tick

# playsound
    playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 2
    
# スニークが押されていなければカウントアップ
    execute unless predicate idc:sneaking run scoreboard players add @s idc.mode 1
# スニークが押されていればカウントダウン
    execute if predicate idc:sneaking run scoreboard players remove @s idc.mode 1

# 一定の値を越したら一周させる
    execute if score @s idc.mode matches 19.. run scoreboard players set @s idc.mode 1
    execute if score @s idc.mode matches ..0 run scoreboard players set @s idc.mode 18

# 事後処理
    advancement revoke @s only idc:mode
    scoreboard players reset @s idc.click.mode