import QtQuick 2.5
import QtQuick.Controls


ApplicationWindow {
    width: 640
    height: 480
    visible: true
    id: rootwin
    title: "Hello World"

    function onChecked(checked){
        if(checked) {
            rootwin.title = "Hey You"
        } else {
            rootwin.title = " "
        }
    }

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
            y: 400

            MouseArea { id: mouseArea; anchors.fill: parent }

            states: State {
                name: "down"; when: mouseArea.pressed === true
                PropertyChanges {
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

            NumberAnimation on x { to: 250; duration: 1000 }
        }

        Canvas {
            anchors.fill: parent

            onPaint: {

                var ctx = getContext("2d");
                ctx.fillStyle = "lightslategray"

                ctx.beginPath();
                ctx.fillRect(10, 10, 80, 50);

                ctx.beginPath();
                ctx.fillRect(120, 10, 70, 70);

                ctx.beginPath();
                ctx.ellipse(230, 10, 90, 70);
                ctx.fill();

                ctx.beginPath();
                ctx.ellipse(10, 110, 70, 70);
                ctx.fill();

                ctx.beginPath();
                ctx.roundedRect(120, 110, 70, 70, 10, 10);
                ctx.fill();

                ctx.beginPath();
                ctx.moveTo(230, 110);
                ctx.arc(230, 110, 70, 0, Math.PI * 0.5, false);
                ctx.fill();
            }
        }

        Button {
            x: 20
            y: 300
            text: "Hello"
            onClicked: Qt.quit()
        }

        CheckBox {
            x: 20
            anchors.verticalCenter: page.verticalCenter
            text: "Show title"
            checked: true
            onClicked: rootwin.onChecked(checked)
        }

        Row {
            id: row
            x: 220
            y: 220
            Slider {
                id: slider
//                maximumValue: 100
//                minimumValue: 0
            }

            Label {
                text: Math.floor(slider.value)
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

    TextInput {
        id: textElement
        x: 200
        y: 100
        text: "Hi Gay!"
        font.family: "Helvetica"
        font.pixelSize: 40
    }

    Rectangle {
        x: 200
        y: 145
        width: textElement.width
        height: 5
        color: "lightgreen"
    }
}
