import QtQuick

Item {
    property string fontColor: "#f0eded"
    property var hvacController

    width: 90 * ( parent.width / 1280 )

    Rectangle {
        id: decrementButton
        anchors {
            left: parent.left
            top: parent.top
            bottom: parent.bottom
        }

        width: height / 2
        color: "black"

        Text {
            id: decrementText
            color: fontColor
            anchors.centerIn: parent
            text: "<"
            font.pixelSize: 12

        }

        MouseArea {
            anchors.fill: parent
            onClicked: hvacController.incrementTargetTemperature(-1)
        }
    }

    Text {
        id: targetTemparatureText
        anchors {
            left: decrementButton.right
            leftMargin: 15
            verticalCenter: parent.verticalCenter
         }
        color: fontColor
        font.pixelSize: 24
        text: hvacController.targetTemperature
    }

    Rectangle {
        id: incrementButton
        anchors {
            left: targetTemparatureText.right
            top: parent.top
            leftMargin: 15
            bottom: parent.bottom
        }

        width: height / 2
        color: "black"

        Text {
            id: incrementText
            color: fontColor
            anchors.centerIn: parent
            text: ">"
            font.pixelSize: 12

        }

        MouseArea {
            anchors.fill: parent
            onClicked: hvacController.incrementTargetTemperature(1)
        }
    }
}
