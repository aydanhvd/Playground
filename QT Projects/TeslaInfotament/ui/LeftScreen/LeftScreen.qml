import QtQuick 2.15

Rectangle {
    id: leftScreen

    anchors {
        top: parent.top
        bottom: bottomBar.top
        left: parent.left
        right: rightScreen.left
    }

    color: "white"
    Image {
        id: carRender
        anchors.centerIn: parent
        width: parent.width * .85
        fillMode: Image.PreserveAspectFit
        source: "qrc:/TeslaInfotament/ui/assets/carRender.jpeg"
    }
}

