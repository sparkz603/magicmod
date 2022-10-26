execute as @e[tag=Player1AbominationPuddle,tag=!DoneBlowing] run execute as @e[r=3,tag=!Player1,type=!sp:abominationtrapbaseentity,tag=!Player1AbominationMarker] run tag @s add Player1AbominationTrapTarget
execute as @e[tag=Player1AbominationPuddle,tag=!DoneBlowing] run execute as @e[r=3,tag=Player1AbominationTrapTarget] run event entity @e[tag=Player1AbominationPuddle,r=3,tag=!DoneBlowing] BecomeFist

execute as @e[tag=Player1AbominationPuddle,tag=!DoneBlowing] run tp @e[tag=Player1AbominationTrapTarget,r=3.1] ~ ~ ~
execute as @e[tag=Player1AbominationPuddle,tag=DoneBlowing] run tp @e[tag=Player1AbominationTrapTarget,r=3.1] ~ ~1.5 ~

execute as @e[tag=Player1AbominationPuddle,tag=!DoneBlowing,tag=!SaveBubble] run execute as @e[tag=Player1AbominationTrapTarget,tag=!BubbleSaveUsed,r=3,c=1] run tag @e[tag=Player1AbominationPuddle,r=3,c=1] add SaveBubble
execute as @e[tag=Player1AbominationPuddle,tag=!DoneBlowing,tag=!SaveBubble] run execute as @e[tag=Player1AbominationTrapTarget,r=3,c=1] run tag @s add BubbleSaveUsed
execute as @e[tag=Player1AbominationPuddle,tag=SaveBubble] run kill @e[type=sp:abominationtrapbaseentity,tag=!SaveBubble,family=!puddle]

execute as @e[tag=Player1AbominationPuddle] run effect @e[r=3,tag=Player1AbominationTrapTarget] slowness 5 255 true
execute as @e[tag=Player1AbominationPuddle] run effect @e[r=3,tag=Player1AbominationTrapTarget] weakness 5 255 true

