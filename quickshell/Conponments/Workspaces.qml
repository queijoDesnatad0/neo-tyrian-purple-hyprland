import Quickshell
import Quickshell.Hyprland
import QtQuick

Column {
    id: root
    spacing: 4

    Repeater {
        model: Hyprland.workspaces

        delegate: Rectangle {
            required property var modelData

            width:  28
            height: 20
            radius: 7
            color: modelData.focused ? "#FFFFFF" : "#80FFFFFF"

            Text {
                anchors.centerIn: parent
                text: modelData.name
                color: modelData.focused ? "#8000ff" : "transparent"
                font{
                    pixelSize: 14
                    weight: 777
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: modelData.activate()
            }
        }
    }
}