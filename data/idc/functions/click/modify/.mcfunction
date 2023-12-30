#> idc:click/modify/
#   # modify変更用をクリックしたときの処理
# @within function idc:tick

##  1 : summon
##  2 : 選択
##  3 : 解除
##  4 : 全解除
##  5 : CustomNameVisible
##  6 : billboard
##  7 : Rotation(Yaw)
##  8 : Rotation(Pitch)
##  9 : Pos.x
## 10 : Pos.y
## 11 : Pos.z
## 12 : scale.all
## 13 : scale.x
## 14 : scale.y
## 15 : scale.z
## 16 : copy(Pos以外)
## 17 : paste
## 18 : kill

# summon
    execute if score @s idc.mode matches 1 run function idc:click/modify/summon/
# 選択
    execute if score @s idc.mode matches 2 run function idc:click/modify/select/
# 解除
    execute if score @s idc.mode matches 3 run function idc:click/modify/release/
# 全解除
    execute if score @s idc.mode matches 4 run function idc:click/modify/release/all
# CustomNameVisible
    execute if score @s idc.mode matches 5 run function idc:click/modify/custom_name_visible/
# billboard
    execute if score @s idc.mode matches 6 run function idc:click/modify/billboard/
# Rotation(Yaw)
    execute if score @s idc.mode matches 7 run function idc:click/modify/rotation/yaw
# Rotation(Pitch)
    execute if score @s idc.mode matches 8 run function idc:click/modify/rotation/pitch
# Pos.x
    execute if score @s idc.mode matches 9 run function idc:click/modify/pos/x
# Pos.y
    execute if score @s idc.mode matches 10 run function idc:click/modify/pos/y
# Pos.z
    execute if score @s idc.mode matches 11 run function idc:click/modify/pos/z
# scale.all
    execute if score @s idc.mode matches 12 run function idc:click/modify/scale/all/
# scale.x
    execute if score @s idc.mode matches 13 run function idc:click/modify/scale/x/
# scale.y
    execute if score @s idc.mode matches 14 run function idc:click/modify/scale/y/
# scale.z
    execute if score @s idc.mode matches 15 run function idc:click/modify/scale/z/
# copy
    execute if score @s idc.mode matches 16 run function idc:click/modify/copy/
# paste
    execute if score @s idc.mode matches 17 run function idc:click/modify/paste/
# kill
    execute if score @s idc.mode matches 18 run function idc:click/modify/kill/

# 事後処理
    advancement revoke @s only idc:modify
    scoreboard players reset @s idc.click.modify