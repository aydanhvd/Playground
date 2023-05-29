import QtQuick

Item {
    property string fontColor: "#f0eded"
    width: 120 * ( parent.width / 1280 )

    Connections {
        target:  audioController

        function onVolumeLevelChanged() {
           visibleTimer.stop()
           volumeIcon.visible  = false
           visibleTimer.start()
        }
    }

    Timer {
        id: visibleTimer
        interval: 1000
        repeat: false
        onTriggered: {
            volumeIcon.visible  = true
        }
    }


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
            onClicked: audioController.incrementVolume( -1 )
        }
    }

    Image {
        id: volumeIcon
        anchors {
            left: decrementButton.right
            leftMargin: 15
            verticalCenter: parent.verticalCenter
         }
        source: {
            if ( audioController.volumeLevel <= 1 )
                return  "qrc:/CarInfotament/mute.png"
            else if (  audioController.volumeLevel <= 20 )
                return "qrc:/CarInfotament/audio1.png"
            else if (  audioController.volumeLevel <= 30 )
                return "qrc:/CarInfotament/audio2.png"
            else
                return "qrc:/CarInfotament/audio3.png"

        }
        height: parent.height * .55
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: volumeTextLabel
        visible: !volumeIcon.visible
        anchors {
            centerIn: volumeIcon
         }
        color: fontColor
        font.pixelSize: 24
        text:  audioController.volumeLevel
    }

    Rectangle {
        id: incrementButton
        anchors {
            right: parent.right
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
           onClicked: audioController.incrementVolume( 1 )
        }
    }
}


