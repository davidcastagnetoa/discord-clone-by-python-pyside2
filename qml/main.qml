import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import "components"
import QtGraphicalEffects 1.15

Window {
    id: mainWindow
    width: 1440
    height: 880
    visible: true
    color: "#00000000"
    title: qsTr("Discord - Python Version")


    // REMOVE TITLE BAR
    flags: Qt.Window | Qt.FramelessWindowHint

    // PROPERTIES
    property int windowStatus: 0
    property int windowMargin: 10

    // INTERNAL FUNCTIONS
    QtObject{
        id: internal

        // Maximize Restore
        function maximizeRestore(){
            if(windowStatus == 0){
                mainWindow.showMaximized()
                windowStatus = 1
                windowMargin = 0
                btn_Maximize_Restore.btnIcon = "../images/svg_icons/restore_icon.svg"
            }
            else{
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                btn_Maximize_Restore.btnIcon = "../images/svg_icons/maximize_icon.svg"
            }
        }

        // If Maximized Restore
        function ifMaximizedRestore(){
            if(windowStatus == 1){
                mainWindow.showNormal()
                windowStatus = 0
                windowMargin = 10
                btn_Maximize_Restore.btnIcon = "../images/svg_icons/maximize_icon.svg"
            }
        }

        // Restore Margins
        function restoreMargins(){
            windowStatus = 0
            windowMargin = 10
            btn_Maximize_Restore.btnIcon = "../images/svg_icons/maximize_icon.svg"
        }

    }


    Rectangle {
        id: bgApp
        width: 1440
        height: 880
        color: "#341952"
        anchors.fill: parent
        anchors.margins: windowMargin
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        z: 1



        Rectangle {
            id: top_bar_app
            height: 30
            color: "#190d28"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            DragHandler{
                onActiveChanged: if(active){
                                     mainWindow.startSystemMove()
                                     internal.ifMaximizedRestore()
                                 }
            }

            Rectangle {
                id: btnTopContent
                x: 1350
                width: 90
                height: 30
                color: "#00000000"
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.rightMargin: 0

                Row{
                    width: 90
                    height: 30
                    layoutDirection: Qt.LeftToRight

                    TopBarButton{
                        id: btn_Minimize
                        height: 30
                        colorMouseOver: "#341952"
                        colorMouseDown: "#4f2677"
                        btnIcon: "../images/svg_icons/minimize_icon.svg"
                        onClicked: {
                            mainWindow.showMinimized()
                            internal.restoreMargins()
                        }
                    }
                    TopBarButton{
                        id: btn_Maximize_Restore
                        height: 30
                        colorMouseOver: "#009029"
                        colorMouseDown: "#195229"
                        btnIcon: "../images/svg_icons/maximize_icon.svg"
                        onClicked: {
                            internal.maximizeRestore()
                        }

                    }
                    TopBarButton{
                        id: btn_Close
                        height: 30
                        colorMouseOver: "#f04747"
                        colorMouseDown: "#8b1b1b"
                        btnIcon: "../images/svg_icons/close_icon.svg"
                        onClicked: {
                            mainWindow.close()
                        }
                    }

                }




            }

            Rectangle {
                id: mouse_area
                width: 1260
                height: 30
                opacity: 1
                color: "#00000000"
                border.color: "#00000000"
                border.width: 1
                anchors.left: parent.left
                anchors.right: btnTopContent.left
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0

                MouseArea{
                    id: mouseArea
                    anchors.fill: parent
                    onDoubleClicked: {
                        internal.maximizeRestore()
                    }
                }
            }

        }

        Rectangle {
            id: left_menu_col
            width: 70
            color: "#190d28"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0

            Image {
                id: topLogo
                y: 0
                height: 30
                anchors.left: parent.left
                anchors.right: parent.right
                source: "../images/images/e7a3b51fdac2aa5ec71975d257d5c405 - copia.png"
                anchors.rightMargin: 0
                anchors.leftMargin: 1
                sourceSize.height: 30
                sourceSize.width: 70
            }

            Column {
                id: column
                anchors.fill: parent
                spacing: 7
                anchors.topMargin: 30

                LeftMenu{
                    bgColorEntered: "#3D6468"
                    useImage: false
                    LeftMenuTooptip{
                        text: "Main - Discord"
                    }
                }

                //DIV Menus
                Rectangle{
                    id: rectangle1
                    width: 70
                    height: 3
                    color: "#00000000"

                    Rectangle{
                        width: 45
                        height: 3
                        radius: 5
                        color: "#241236"
                        anchors.horizontalCenter: parent.horizontalCenter

                    }
                }

                LeftMenu{
                    useImage: true
                    LeftMenuTooptip{
                        text: "David Castagneto - Modern GUI"
                    }
                }
                LeftMenu{
                    iconWidth: 24
                    iconHeight: 24
                    iconPath: "../images/svg_icons/settings_icon.svg"
                    useImage: false
                    LeftMenuTooptip{
                        text: "Add a server"
                    }
                }
                LeftMenu{
                    iconPath: "../images/svg_icons/open_icon.svg"
                    useImage: false
                    LeftMenuTooptip{
                        text: "Open File"
                    }
                }
            }
        }

        Rectangle {
            id: top_bar_title_and_channel
            height: 48
            color: "#200e2f"
            border.color: "#190d28"
            border.width: 1
            anchors.left: left_menu_col.right
            anchors.right: parent.right
            anchors.top: top_bar_app.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            clip: false

            Rectangle {
                id: top_bar_info
                x: 212
                y: -23
                color: "#2c1643"
                border.color: "#00000000"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.rightMargin: -1
                anchors.bottomMargin: 1
                anchors.topMargin: -1

                Rectangle {
                    id: top_bar_left
                    width: 239
                    color: "#190d28"
                    radius: 0
                    border.color: "#13091d"
                    border.width: 0
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    clip: true
                    anchors.topMargin: 0
                    anchors.bottomMargin: -2
                    anchors.leftMargin: 0

                    Rectangle {
                        id: left_top_btn_mask3
                        color: "#301748"
                        radius: 8
                        border.width: 0
                        anchors.fill: parent
                        anchors.topMargin: 0
                        anchors.leftMargin: 0
                        anchors.bottomMargin: -8
                        anchors.rightMargin: -8

                        Rectangle {
                            id: left_top_btn_mask
                            anchors.fill: parent
                            anchors.leftMargin: 0
                            anchors.topMargin: 0
                            anchors.bottomMargin: 0
                            anchors.rightMargin: 0
                            color: "#27133b"
                            width: parent
                            height: parent
                            radius: 8
                            border.width: 0

                            // Enable Layer
                            layer.enabled: true
                            layer.effect: OpacityMask{
                                maskSource: parent
                            }

                            LeftTopButton{
                                id: leftPopupMenu
                                bgColor: "#27133b"
                                bgColorEntered: "#381b59"
                                MouseArea{
                                    anchors.fill: parent
                                    anchors.bottomMargin: 0
                                    cursorShape: Qt.PointingHandCursor
                                    propagateComposedEvents: true
                                    onClicked: {
                                        mouse.accepted = false
                                        if(!leftPopupMenu.activeMenu){
                                            topTitleMenusClicked.running = true
                                        }else{
                                            topTitleMenusExited.running = true
                                        }
                                    }
                                }

                                // Animation
                                PropertyAnimation{
                                    id: topTitleMenusClicked
                                    target: topTittleMenus
                                    properties: "scale"
                                    to: 1
                                    duration: 200
                                    easing.type: Easing.OutQuint
                                }
                                PropertyAnimation{
                                    id: topTitleMenusExited
                                    target: topTittleMenus
                                    properties: "scale"
                                    to: 0
                                    duration: 80
                                    easing.type: Easing.OutQuint
                                }
                            }

                            Connections {
                                target: left_top_btn_mask
                                onClicked: console.log("clicked")
                            }
                        }
                    }
                }
            }
        }

        Rectangle {
            id: content_area
            x: 70
            y: 78
            height: 790
            visible: true
            color: "#00000000"
            border.width: 0
            anchors.left: left_menu_col.right
            anchors.right: parent.right
            anchors.top: top_bar_title_and_channel.bottom
            anchors.bottom: parent.bottom
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            clip: false
            anchors.leftMargin: 0

            //LOADER APP PAGES
            Loader{
                id: page_loader
                visible: true
                anchors.fill: parent
                source: Qt.resolvedUrl("pages/homePage.qml")
                active: true
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
            }


        }

        Rectangle {
            id: topTittleMenus
            width: 220
            height: 370
            color: "#110a1a"
            radius: 5
            anchors.left: left_menu_col.right
            anchors.top: top_bar_title_and_channel.bottom
            clip: true
            scale: 0
            visible: true
            transformOrigin: Item.Top
            anchors.topMargin: 7
            anchors.leftMargin: 10
            z: 100
        }


    }

    DropShadow{
        anchors.fill: bgApp
        horizontalOffset: 0
        verticalOffset: 0
        radius: 10
        samples: 12
        color: "#80000000"
        source: bgApp
        z: 0
    }

}











/*##^##
Designer {
    D{i:0}D{i:33;invisible:true}
}
##^##*/
