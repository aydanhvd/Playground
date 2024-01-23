import QtQuick
import QtQuick.Window
import MyLabelLib 1.0

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")

//    MyLabel {
//        id: myLabel
//    }

//    Label {
//        id: helloWorldLabel
//        text: qsTr("Hello World!")
//    }

    Image {
        id: background
        source: "qrc:/images/login_bg.png"
        anchors.fill: parent
    }

    Rectangle {
        id: topPanel
        height: 67
        transformOrigin: Window.Top
        anchors {
            right: parent.right
            rightMargin: 0
            left: parent.left
            leftMargin: 0
            top: parent.top
            topMargin: 0
        }

        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#805bcce9"
            }

            GradientStop {
                position: 1
                color: "#80000000"
            }
        }

        Rectangle {
            id: shutdownButton
            x: 562
            width: 50
            height: 50
            color: "#27a9e3"
            radius: 2
            anchors {
                top: parent.top
                topMargin: 8
                right: parent.right
                rightMargin: 10
            }

            Image {
                id: shutdownImage
                anchors.fill: parent
                source: "qrc:/icons/shutdown_icon.png"
            }
        }

        Rectangle {
            id: restartButton
            x: 684
            width: 50
            height: 50
            color: "#27a9e3"
            radius: 2
            anchors {
                top: parent.top
                topMargin: 8
                right: parent.right
                rightMargin: 66
            }

            Image {
                id: restartImage
                anchors.fill: parent
                source: "qrc:/icons/restart_icon.png"
            }
        }
    }

    Text {
        id: dateTime
        color: "#ffffff"
        text: qsTr("Monday, 26-10-2015 3:14 PM")
         anchors {
            top: parent.top
            topMargin: 26
            left: parent.left
            leftMargin: 26
         }
        font.pixelSize: 14
    }

    Image {
        id: logo
        source: "qrc:/images/logo.png"
        anchors {
            top: dateTime.bottom
            topMargin: 50
            horizontalCenter: parent.horizontalCenter
        }

        width: 512
        height: 200
        fillMode: Image.Stretch
    }

    Rectangle {
        id: loginForm
        width: 360
        height: 300
        color: "#80000000"
        radius: 15
        anchors {
            top: logo.bottom
            verticalCenterOffset: 90
            horizontalCenterOffset: 0
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }

        Row {
            id: usernameRow
            spacing: 10

            anchors {
                top: parent.top
                topMargin: 30
                horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: usernameLabel
                text: qsTr("Username:")
                color: "#ffffff"
                font.pixelSize: 14
            }

            Rectangle {
                id: usernameInputRectangle
                width: 200
                height: 25
                color: "#ffffff"
                radius: 5

               TextInput {
                    id: usernameInput
                    text: qsTr("")
                    font.pixelSize: 14
                    anchors.fill: parent
                }
            }

        }

        Row {
            id: passwordRow
            spacing: 10

            anchors {
                top: usernameRow.bottom
                topMargin: 10
                horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: passwordLabel
                text: qsTr("Password:")
                color: "#ffffff"
                font.pixelSize: 14
            }

            Rectangle {
                id: passwordInputRectangle
                width: 200
                height: 25
                color: "#ffffff"
                radius: 5

               TextInput {
                    id: passwordInput
                    text: qsTr("")
                    font.pixelSize: 14
                    anchors.fill: parent
                }
            }

        }


        MouseArea {
           id: button
           height: 30
           width: 280
           anchors {
            top: passwordRow.bottom
            topMargin: 30
            horizontalCenter: parent.horizontalCenter
           }

           Rectangle {
                id: buttonRectangle
                color: "#27a9e3"
                radius: 5
                anchors.fill: parent

                Text {
                    id: buttonLabel
                    text: qsTr("Login")
                    color: "#ffffff"
                    font.pixelSize: 14

                    anchors {
                        verticalCenter: parent.verticalCenter
                        horizontalCenter: parent.horizontalCenter
                    }
                }
           }
        }

    }
}
