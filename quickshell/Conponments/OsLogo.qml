import Quickshell
import QtQuick

Item{
    id: root

    implicitWidth:  28
    implicitHeight: 28

    Rectangle {
        id: logo

        width:  28
        height: 28
        radius: 360
        color: "#FFFFFF"

        border {
            width: 2
            color: "transparent"
        }


        Rectangle {
            anchors.fill: parent

            color: mouseArea.containsMouse ? "#808000FF" : "transparent"

            radius: root.radius
        }

        Text {
        anchors.centerIn: parent
        text: ""
        color: "#8000FF"
        font {
            family: "JetBrainsMono Nerd Font Propo"
            pixelSize: 20
        }
    }


        MouseArea {
            id: mouseArea
            anchors.fill: parent
            hoverEnabled: true

            onClicked: Quickshell.execDetached(["wofi", "--show", "drun"])
        }
    }
}
