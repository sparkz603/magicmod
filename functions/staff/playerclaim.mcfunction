execute as @p[tag=Player1,r=4] positioned ~ ~ ~ run tag @e[tag=CustomProjectile,tag=!PLAYERPROJECTILECLAIMED,r=4] add Player1Projectile
tag @s[tag=Player1Projectile] add PLAYERPROJECTILECLAIMED

execute as @p[tag=Player2,r=4] positioned ~ ~ ~ run tag @e[tag=CustomProjectile,tag=!PLAYERPROJECTILECLAIMED,r=4] add Player2Projectile
tag @s[tag=Player2Projectile] add PLAYERPROJECTILECLAIMED