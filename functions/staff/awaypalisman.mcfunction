clear @s sp:catstaff
summon sp:catstaffentity
execute as @p[tag=Player1] run tag @e[type=sp:catstaffentity,tag=!PlayerClaimed,r=3] add Player1Palisman
execute as @p[tag=Player1] run tag @e[type=sp:catstaffentity,tag=Player1Palisman,r=3] add PlayerClaimed
