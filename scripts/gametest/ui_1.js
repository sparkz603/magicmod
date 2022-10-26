import * as ui from 'mojang-minecraft-ui'
import { world } from 'mojang-minecraft'

//form creation
let form1 = new ui.ActionFormData()
form1.title("Tutorial")
form1.body("Tutorial Body")
//starts at 0
form1.button("Creative Mode")
form1.button("Survival Mode")
form1.button("kill wave")

world.events.beforeItemUse.subscribe(eventData => {
    let player = eventData.source
    let item = eventData.item

    if (item.id == "minecraft:compass") {
        form1.show(player).then(result => {
            let selection = result.selection
            if (selection == 0) {
                player.runCommand(
                    "gamemode c @s"
                )
            }
            if (selection == 1) {
                player.runCommand(
                    "gamemode s @s"
                )
            }
            if (selection == 2) {
                player.runCommand(
                    "kill @e[rm=1]"
                )
            }
        })
    }
})