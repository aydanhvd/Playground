import QtQuick 2.5
import QtQuick.Controls
import "file:/MovieCell.qml" as MovieCell

Window {
    width: 800
    height: 800
    visible: true
    title: Movies

    Item {
        id: page
        width: 640
        height: 480
        anchors.fill: parent

        Grid {
            id: grid
            rows: 3
            columns: 5
            spacing: 20

            Repeater {
                model: 15
                MovieCell{ name: "gay" }
            }
        }
    }
}
