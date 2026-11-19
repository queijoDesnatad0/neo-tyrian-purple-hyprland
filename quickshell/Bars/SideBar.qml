// SideBar Config \\
import Quickshell
import QtQuick
import QtQuick.Effects
import QtQuick.Layouts
import "../Conponments"

PanelWindow {
    id: root

    anchors {
        left: true
        top: true
        bottom: true
    }

    implicitWidth: 40
    color: "transparent"

    Rectangle {
        id: sidebar
        anchors.fill: parent
        color: "#808000ff"

        ColumnLayout {
            anchors {
                fill: parent
                rightMargin: 0
            }

            spacing: 10

            Clock {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    top: parent.top
                    topMargin: 4
                }
            }

            Separator {anchors.horizontalCenter: parent.horizontalCenter}

            Workspaces {anchors.horizontalCenter: parent.horizontalCenter}

            Item {Layout.fillHeight: true}

            Devices {anchors.horizontalCenter: parent.horizontalCenter}

            Notification {anchors.horizontalCenter: parent.horizontalCenter}

            Volume {anchors.horizontalCenter: parent.horizontalCenter}

            Network {anchors.horizontalCenter: parent.horizontalCenter}

            Separator {anchors.horizontalCenter: parent.horizontalCenter}

            OsLogo {
                anchors {
                    horizontalCenter: parent.horizontalCenter
                    bottom: parent.bottom
                    bottomMargin: 4
                }
            }
        }
    }
}
