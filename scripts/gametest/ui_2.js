import * as ui from 'mojang-minecraft-ui'
import { world } from 'mojang-minecraft'

//form creation
let form2 = new ui.ModalFormData()
form2.title("Grimoire")
//starts at 0
form2.textField("Input Incantation", "Type Incantation")

world.events.beforeItemUse.subscribe(eventData => {
    let player = eventData.source
    let item = eventData.item

    if (item.id == "sp:abominationgrimoire") {
        form2.show(player).then(result => {

            if (result.isCanceled) return;

            let textField = result.formValues

            if (textField == "away") {
                player.runCommand(
                    "function staff/awaypalisman"
                )
            }
            if (textField == "return") {
                player.runCommand(
                    "function staff/returnpalisman"
                )
            }
            if (textField == "blast") {
                player.runCommand(
                    "give @p sp:loadstaffabominationblast"
                )
            }
            if (textField == "rise") {
                player.runCommand(
                    "give @p sp:loadstaffabominationrise"
                )
            }
            if (textField == "flow") {
                player.runCommand(
                    "give @p sp:loadstaffabominationflowmanipulation"
                )
            } 
            if (textField == "shield") {
                player.runCommand(
                    "give @p sp:loadstaffabominationshield"
                )
            } 
            if (textField == "spike") {
                player.runCommand(
                    "give @p sp:loadstaffabominationspike"
                )
            } 
            if (textField == "trap") {
                player.runCommand(
                    "give @p sp:loadstaffabominationtrap"
                )
            }
            
        }).catch(e => {
            console.error(e, e.stack)
        })
    }
})