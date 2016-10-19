import QtQuick 2.5
import QtQuick.Window 2.2

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 360
    property alias button: button

    MouseArea {
        id: mouseArea
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 0
        anchors.fill: parent

        Text {
            id: text1
            x: 15
            y: 191
            width: 115
            height: 45
            text: qsTr("0")
            style: Text.Outline
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 32
        }

        Rectangle {
            id: button
            x: 15
            y: 303
            width: 337
            height: 39
            color: "#ffffff"
            border.width: 2

            Text{
                id: buttonLabel
                anchors.centerIn: parent
                text: "Calculate"
            }

            MouseArea{
                id: buttonMouseArea
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0

                anchors.fill: parent //anchor all sides of the mouse area to the rectangle's anchors
//                onClicked: console.log(buttonLabel.text + " clicked" ) //onClicked handles valid mouse button clicks
            }
        }

        Rectangle {
            id: recop0
            x: 15
            y: 13
            width: 115
            height: 46
            color: "#ffffff"
            border.width: 2

            TextEdit {
                id: textEdit1
                x: 0
                y: 5
                width: 115
                height: 41
                text: qsTr("0")
                font.pixelSize: 32
                transformOrigin: Item.Center
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: recop1
            x: 15
            y: 83
            width: 115
            height: 41
            color: "#ffffff"
            border.width: 2

            TextEdit {
                id: textEdit2
                x: 0
                y: 0
                width: 115
                height: 41
                text: qsTr("0")
                transformOrigin: Item.Center
                font.pixelSize: 32
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: recplus
            x: 209
            y: 13
            width: 41
            height: 46
            color: "#ffffff"
            objectName:"plus"

            Text {
                id: text2
                x: 0
                y: 0
                text: qsTr("+")
                anchors.centerIn: parent
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseArea1
                x: 0
                y: 0
                width: 41
                height: 46
                onClicked: recplus.border.width = 2
            }
        }

        Rectangle {
            id: recminus
            x: 289
            y: 13
            width: 41
            height: 46
            color: "#ffffff"
            Text {
                id: text3
                x: 0
                y: 0
                text: qsTr("-")
                anchors.centerIn: parent
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseArea2
                x: 0
                y: 0
                width: 41
                height: 46
            }
        }

        Rectangle {
            id: recmul
            x: 209
            y: 81
            width: 41
            height: 46
            color: "#ffffff"
            Text {
                id: text4
                x: 0
                y: 0
                text: qsTr("*")
                anchors.centerIn: parent
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseArea3
                x: 0
                y: 0
                width: 41
                height: 46
            }
        }

        Rectangle {
            id: recdev
            x: 289
            y: 81
            width: 41
            height: 46
            color: "#ffffff"
            Text {
                id: text5
                x: 0
                y: 0
                text: qsTr("/")
                anchors.centerIn: parent
                font.pixelSize: 12
            }

            MouseArea {
                id: mouseArea4
                x: 0
                y: 0
                width: 41
                height: 46
            }
        }
    }
}
