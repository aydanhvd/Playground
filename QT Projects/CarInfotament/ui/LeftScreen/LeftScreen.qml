import QtQuick 2.15

Rectangle {
    id: leftScreen
    anchors {
        top: parent.top
        left: parent.left
        right: rightScreen.left
        bottom: tabBar.top
    }

    Image {
        id: carRender
        source: "qrc:/CarInfotament/carRender.jpeg"
        anchors.centerIn: parent
        width: parent.width * .85
        fillMode: Image.PreserveAspectFit
    }
}
