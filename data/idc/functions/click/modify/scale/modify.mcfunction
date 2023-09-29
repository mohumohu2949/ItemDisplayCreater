#> idc:click/modify/scale/modify
#   # 実際に設置！
# @within function  idc:click/modify/scale/add
#                   idc:click/modify/scale/remove

### storageを参照して実行
## x => scale.x
## y => scale.y
## z => scale.z
# scale適応
    $data modify entity @s transformation.scale set value [$(x)f,$(y)f,$(z)f]