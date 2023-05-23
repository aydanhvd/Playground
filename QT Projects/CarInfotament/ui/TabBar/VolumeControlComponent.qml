import QtQuick

Item {
    property string fontColor: "#f0eded"

    Rectangle {
        id: decrementButton
        anchors {
            right: volumeIcon.left
            rightMargin: 15
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
            //onClicked: hvacController.incrementTargetTemperature(-1)
        }
    }

    Image {
        id: volumeIcon
        anchors {
            right: decrementButton.left
            rightMargin: 15
            verticalCenter: parent.verticalCenter
         }
        source: "qrc:/CarInfotament/audio2.png"
        height: parent.height * .35
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: incrementButton
        anchors {
            left: volumeIcon.right
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
            //onClicked: hvacController.incrementTargetTemperature(1)
        }
    }
}
