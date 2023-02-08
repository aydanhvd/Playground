import QtQuick

Item {
    id: movieCell
    property alias name: movieName.text

    Rectangle {
        color: "lightblue"
        width: 30
        height: 70
    }

    Text {
        id: movieName
        text: qsTr("gay")
    }
}
