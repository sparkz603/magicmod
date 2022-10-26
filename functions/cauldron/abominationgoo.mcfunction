##Setup Ingredient Counters
scoreboard objectives add cauldronbones dummy BonesAdded
execute as @s[tag=BrewingAbominationGoo] run execute as @e[type=item,name=bone,r=2] run tell @p Bone has been to Cauldron
execute as @s[tag=BrewingAbominationGoo] run execute as @e[type=item,name=bone,r=2] run scoreboard players add @e[tag=BrewingAbominationGoo,r=2] cauldronbones 1
execute as @s[tag=BrewingAbominationGoo] run execute as @e[type=item,name=bone,r=2] run tag @e[tag=BrewingAbominationGoo,scores={cauldronbones=2..100}] add EnoughBonesAdded
execute as @s[tag=BrewingAbominationGoo] run execute as @e[type=item,name=bone,r=2] run kill @s

