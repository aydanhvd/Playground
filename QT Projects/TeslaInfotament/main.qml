import QtQuick
import "ui/BottomBar"

Window {
    width: 1280
    height: 720
    visible: true
    title: qsTr("Tesla Infotainment")

    BottomBar {
         id: bottomBar
    }
}
