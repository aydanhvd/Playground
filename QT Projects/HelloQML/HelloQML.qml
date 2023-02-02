import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: page
        width: 640
        height: 480
        color: "darkgrey"

        Text {
            id: helloText
            text: "Hello World"
            anchors.horizontalCenter: page.horizontalCenter
            font.pixelSize: 20
            font.bold: true
            color: "white"
            y: 40

            MouseArea { id: mouseArea; anchors.fill: parent }

            states: State {
                name: "down"; when: mouseArea.pressed === true
                PropertyChanges {
                     // @disable-check M16
                    helloText {
                        y: 160
                        rotation: 180
                        color: "red"
                    }
                }
            }

            transitions: Transition {
                from: ""; to: "down"; reversible: true
                ParallelAnimation {
                    NumberAnimation {
                        properties: "y.rotation"
                        duration: 500
                        easing.type: Easing.InOutQuad
                    }

                    ColorAnimation { duration: 500 }
                }

            }
        }

        Grid {
           id: colorPicker
           x: 4; anchors.bottom: page.bottom; anchors.bottomMargin: 4
           rows: 2; columns: 3; spacing: 3

           Cell { cellColor: "red"; onClicked: page.color = cellColor }
           Cell { cellColor: "green"; onClicked: page.color = cellColor }
           Cell { cellColor: "blue"; onClicked: page.color = cellColor }
           Cell { cellColor: "yellow"; onClicked: page.color = cellColor }
           Cell { cellColor: "steelblue"; onClicked: page.color = cellColor }
           Cell { cellColor: "black"; onClicked: page.color = cellColor }
        }
    }
}
