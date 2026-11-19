import QtQuick
import Quickshell

Column {
    id: clockModule

    spacing: 0

    SystemClock {
        id: systemClock
        precision: SystemClock.Minutes
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        text: Qt.formatDateTime(systemClock.date, "hh:mm")
        color: "#FFFFFF"
        font {
            family: "JetBrainsMono Nerd Font Propo"
            pixelSize: 10
        }
    }

    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        text: Qt.formatDateTime(systemClock.date, "dd/MM/yy")
        color: "#FFFFFF"
        font {
            family: "JetBrainsMono Nerd Font Propo"
            pixelSize: 8
        }
    }
}
