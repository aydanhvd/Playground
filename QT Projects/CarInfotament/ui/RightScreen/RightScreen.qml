import QtQuick 2.15
import QtLocation 5.12
import QtPositioning 5.12

Rectangle { //TODOL: fix moving
    id: rightScreen
    anchors {
        top: parent.top
        right: parent.right
        bottom: tabBar.top
    }
    width: parent.width * 2/3

    Plugin {
        id: mapPlugin
        name: "osm"
    }

    Map {
        anchors.fill: parent
        plugin: mapPlugin
        center: QtPositioning.coordinate(40.41, 49.87) // Azerbaijan Baku
        zoomLevel: 14
    }

    Image {
        id: lockIcon
        source: ( systemHandler.carLocked ? "qrc:/CarInfotament/lock.png" : "qrc:/CarInfotament/unlock.png" )
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
        }
        width: parent.width / 40
        fillMode: Image.PreserveAspectFit

        MouseArea {
            anchors.fill: parent
            onClicked: systemHandler.setCarLocked( ! systemHandler.carLocked )
        }
    }

    Text {
        id: dateTimeDisplay

        anchors {
            left: lockIcon.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color: "black"
        text: systemHandler.currentTime
    }

    Text {
        id: outdoorTemeratureDisplay

        anchors {
            left: dateTimeDisplay.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color: "black"
        text: systemHandler.outdoorTemp + "°C"
    }

    Image {
        id: userIconDisplay
        source: "qrc:/CarInfotament/user.png"
        anchors {
            left: outdoorTemeratureDisplay.right
            leftMargin: 40
            bottom: lockIcon.bottom
        }
        width: parent.width / 42
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: userNameDisplay

        anchors {
            left: userIconDisplay.right
            leftMargin: 10
            bottom: lockIcon.bottom
        }
        font.pixelSize: 14
        font.bold: true
        color: "black"
        text: systemHandler.userName
    }

    NavigationSearchBox {
        id: navSearchBox

        anchors {
            left: lockIcon.left
            top: lockIcon.bottom
            topMargin: 20
        }

        width: parent.width / 3
        height: parent.height / 12
    }
}
