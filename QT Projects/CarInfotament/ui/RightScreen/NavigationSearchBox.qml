import QtQuick 2.15

Rectangle {
    id: navSearchBox
    color: "#ffffff"
    radius: 6

    Image {
        id: searchIcon
        source: "qrc:/CarInfotament/search.png"
        fillMode: Image.PreserveAspectFit
        anchors {
            left: parent.left
            verticalCenter: parent.verticalCenter
            leftMargin: 25
        }
        height: parent.height * .45
    }

    Text {
         id: navigationPlaceHolder
         visible: navigationTextInput.text === ""
         text: "Navigate"
         color: "#696969"

         anchors {
             verticalCenter: parent.verticalCenter
             leftMargin: 20
             left: searchIcon.right
         }
    }

    TextInput {
        id: navigationTextInput
        clip: true

        anchors {
            top: parent.top
            bottom: parent.bottom
            leftMargin: 20
            left: searchIcon.right
            right: parent.right
            rightMargin: 20
        }
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 16
    }

}
