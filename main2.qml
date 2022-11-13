import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 1440
    height: 880
    visible: true
    color: "#00000000"
    title: qsTr("Hello World")


    Rectangle {
        id: rectangle2
        width: 1440
        height: 880

        color: "#29143e"
        anchors.fill: parent
        anchors.margins: 10
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Rectangle {
            id: left_menu_col
            width: 70
            color: "#140a1e"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0
        }

        Rectangle {
            id: top_bar_app
            height: 22
            color: "#140a1e"
            anchors.left: left_menu_col.right
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
        }

        Rectangle {
            id: top_bar_title_and_channel
            height: 48
            color: "#200e2f"
            border.color: "#000000"
            anchors.left: left_menu_col.right
            anchors.right: parent.right
            anchors.top: top_bar_app.bottom
            clip: true
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Rectangle {
                id: rectangle
                x: 212
                y: -23
                color: "#1f0f2e"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.bottomMargin: 1
                anchors.topMargin: 0
            }
        }

        Rectangle {
            id: content_area
            color: "#00000000"
            anchors.left: left_menu_col.right
            anchors.right: parent.right
            anchors.top: top_bar_title_and_channel.bottom
            anchors.bottom: parent.bottom
            clip: true
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
