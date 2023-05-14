import QtQuick

Rectangle {
        id: bottomBar
        anchors {
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        color: "black"
        height: parent.height / 12

        Image {
            id: carSettingIcon
            source: "qrc:/TeslaInfotament/ui/assets/sedan-car-front.png"
            anchors {
                left: parent.left
                leftMargin: 30
                verticalCenter: parent.verticalCenter
            }

            height: parent.height * .6
            fillMode: Image.PreserveAspectFit
        }
    }
