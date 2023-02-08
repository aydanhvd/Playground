import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: background
        width: 400
        height: 400
        color: "#00a3fc"

        Image {
            id: rocket
            x: 150; y: 150
            source: "../rocket/images/redRocket.png"
        }
    }
}
