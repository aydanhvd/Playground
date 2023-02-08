import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: page
        width: 640
        height: 480

        Rectangle {
            id: grey
            anchors.verticalCenter: page.verticalCenter
            anchors.horizontalCenter: page.horizontalCenter
            width: 400
            height: 400
            color: "grey"

            Rectangle {
                id: lightblue
                color: "lightblue"
                width: height * 2
                height: 160
                y: grey.y + 3
                anchors.horizontalCenter: grey.horizontalCenter

                Rectangle {
                    id: white
                    color: "white"
                    width: 50
                    height: width

                    y: lightblue.y + 8
                    x: lightblue.x + 8
                }
            }

            Rectangle {
                id: green
                color: "green"
                width: height * 2
                height: 160
                y: lightblue.y + lightblue.height
                anchors.horizontalCenter: grey.horizontalCenter

                Rectangle {
                    id: darkBlue
                    width:  150
                    height: width / 3
                    color: "blue"

                    y: 80
                    x: 120
                }
            }
        }
    }
}
