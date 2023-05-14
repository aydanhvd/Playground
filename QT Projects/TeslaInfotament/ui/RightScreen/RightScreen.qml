import QtQuick 2.15
import QtLocation 5.11
import QtPositioning 5.11

Rectangle {
    id: rightScreen

    anchors {
        top: parent.top
        bottom: bottomBar.top
        right: parent.right
    }

    width: parent.width * 2/3
    color: "lightGrey"

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
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
        }
        width: parent.width / 40
        fillMode: Image.PreserveAspectFit
        source: (systemHandler.carLocked ? "qrc:/TeslaInfotament/ui/assets/lock.png" : "qrc:/TeslaInfotament/ui/assets/unlock.png")
        MouseArea {
            anchors.fill: parent
            onClicked: systemHandler.setCarLocked(!systemHandler.carLocked )
        }
    }
}
