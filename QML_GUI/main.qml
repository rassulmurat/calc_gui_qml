import QtQuick 2.5
import QtQuick.Window 2.2

Window {
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
}
