import QtQuick 2.5
import QtQuick.Window 2.2

Window {
//    id: mwind
    visible: true
    width: 360
    height: 360
    title: qsTr("Calculator")

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
        }
    }

    function setBorderZer()
    {
        recplus.color = "white"
        recminus.color = "white"
        recmul.color = "white"
        recdev.color = "white"
    }

    MouseArea {
        Rectangle {
            id: recop0
            x: 15
            y: 13
            width: 115
            height: 46
            color: "#ffffff"
            border.width: 2

            TextEdit {
                id: textEdit0
                anchors.fill: parent
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
                id: textEdit1
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
        }

        Rectangle {
            id: button
            x: 15
            y: 303
            width: 337
            height: 39
            color: "#ffffff"
            border.width: 2
            objectName: "button"

            signal btnClc(string text0, string text1, var textFiled)

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

                anchors.fill: parent
                onClicked: button.btnClc(textEdit0.text, textEdit1.text, text1);
            }
        }

        Rectangle {
            id: recsign
            x: 203
            y: 10
            width: 134
            height: 130
            color: "#ffffff"
            border.width: 2

            objectName: "recsign"
            signal qmlSignal(string text)

            Rectangle {
                id: recplus
                x: 10
                y: 10
                width: 40
                height: 40
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
                    x: 10
                    y: 10
                    width: 40
                    height: 40
                    onClicked:{
                        recsign.qmlSignal("+")
                        setBorderZer()
                        recplus.color = "grey"
                    }
                }
            }

            Rectangle {
                id: recdev
                x: 86
                y: 73
                width: 40
                height: 40
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
                    width: 40
                    height: 40
                    onClicked:{
                        recsign.qmlSignal("/")
                        setBorderZer()
                        recdev.color = "grey"
                    }
                }
            }

            Rectangle {
                id: recmul
                x: 6
                y: 73
                width: 40
                height: 40
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
                    width: 40
                    height: 40
                    onClicked: {
                        recsign.qmlSignal("*")
                        setBorderZer()
                        recmul.color = "grey"
                    }
                }
            }

            Rectangle {
                id: recminus
                x: 86
                y: 5
                width: 40
                height: 40
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
                    width: 40
                    height: 40
                    onClicked: {
                        recsign.qmlSignal("-")
                        setBorderZer()
                        recminus.color = "grey"
                    }
                }
            }
        }
    }
}
