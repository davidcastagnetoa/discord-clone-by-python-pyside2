import QtQuick 2.15
import QtQuick.Controls 2.15
import "../components"
import "../js/FuncitonsJS.js" as FunctionJS

Item {
    width: 1200
    height: 780

    Rectangle {
        id: rectangle
        color: "#341952"
        anchors.fill: parent

        Rectangle {
            id: left_home_page
            width: 240
            color: "#2a123f"
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0


            Column {
                id: left_column
                anchors.fill: parent

                // Loader Left Top Box
                Item{
                    id: leftModuleHome
                    width: 240
                    height: 240

                    //Loader Top Left Module
                    Loader{
                        anchors.fill: parent
                        source: Qt.resolvedUrl("../components/modules/leftBoxHome.qml")
                    }


                    //Close Button
                    IconButton {
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.topMargin: 10
                        anchors.rightMargin: 15
                        onClicked: FunctionJS.deleteComponentAndChildren(leftModuleHome)
                    }
                }

                // Separator
                Item{
                    width: 240
                    height: 20
                }

                //Channel Rules
                Item{
                    width: 240
                    height: 32
                    LeftMenuChannel{
                        x: -5
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.verticalCenterOffset: 0
                        iconPath: "../../images/svg_icons/icon_rules.svg"
                        btnText: "rules"
                        onClicked: console.log("Rules channel pressed")
                        hoverEnabled: true
                        onHoveredChanged: this.hovered ? this.children[2].visible = true : this.children[2].visible = false

                        MouseArea{
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onPressed: mouse.accepted = false
                        }

                        Row{
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 15
                            visible: false

                            IconButton{
                                iconColor: "#b9bbbe"
                                iconPath: "../../images/svg_icons/icon_user_plus.svg"
                                onClicked: console.log("Create Invite")
                            }
                            IconButton{
                                iconColor: "#b9bbbe"
                                iconPath: "../../images/svg_icons/icon_settings.svg"
                                onClicked: console.log("Edit Channel")
                            }

                        }
                    }
                }

                //Channel Moderator
                Item{
                    width: 240
                    height: 32
                    LeftMenuChannel{
                        x: -5
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.verticalCenterOffset: 0
                        iconPath: "../../images/svg_icons/icon_channel_lock.svg"
                        btnText: "moderator-only"
                        onClicked: console.log("Moderator channel pressed")
                        hoverEnabled: true
                        onHoveredChanged: this.hovered ? this.children[2].visible = true : this.children[2].visible = false

                        MouseArea{
                            anchors.fill: parent
                            cursorShape: Qt.PointingHandCursor
                            onPressed: mouse.accepted = false
                        }

                        Row{
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            anchors.rightMargin: 15
                            visible: false

                            IconButton{
                                iconColor: "#b9bbbe"
                                iconPath: "../../images/svg_icons/icon_user_plus.svg"
                                onClicked: console.log("Create Invite")
                            }
                            IconButton{
                                iconColor: "#b9bbbe"
                                iconPath: "../../images/svg_icons/icon_settings.svg"
                                onClicked: console.log("Edit Channel")
                            }
                        }
                    }
                }

                // Separator
                Item{
                    width: 240
                    height: 20
                }

                //Text Channels
                AccordionMenu{
                    id: textChannels
                    totalSubMenus: FunctionJS.count(this.children[2])

                    //Icon Plus
                    IconButton{
                        iconWidth: 12
                        iconHeight: 12
                        iconPath: "../../images/svg_icons/plus_icon.svg"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.rightMargin: 15
                        anchors.topMargin: 5
                        iconColor: "#b9bbbe"

                        onClicked: console.log("Create Channel")
                    }
                    Column{
                        id: columnTextChannels
                        anchors.top: parent.top
                        anchors.topMargin: 32

                        //Channel Chat
                        Item{
                            width: 240
                            height: 32

                            LeftMenuChannel{
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.verticalCenterOffset: 0
                                iconPath: "../../images/svg_icons/icon_channel.svg"
                                btnText: "chat"
                                onClicked: console.log("Moderator channel pressed")
                                hoverEnabled: true
                                onHoveredChanged: this.hovered ? this.children[2].visible = true : this.children[2].visible = false

                                MouseArea{
                                    anchors.fill: parent
                                    cursorShape: Qt.PointingHandCursor
                                    onPressed: mouse.accepted = false
                                }

                                Row{
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.right: parent.right
                                    anchors.rightMargin: 15
                                    visible: false

                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_user_plus.svg"
                                        onClicked: console.log("Create Invite")
                                    }
                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_settings.svg"
                                        onClicked: console.log("Edit Channel")
                                    }
                                }
                            }
                        }

                        //Channel Python
                        Item{
                            width: 240
                            height: 32

                            LeftMenuChannel{
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.verticalCenterOffset: 0
                                iconPath: "../../images/svg_icons/icon_channel.svg"
                                btnText: "python"
                                onClicked: console.log("Moderator channel pressed")
                                hoverEnabled: true
                                onHoveredChanged: this.hovered ? this.children[2].visible = true : this.children[2].visible = false

                                MouseArea{
                                    anchors.fill: parent
                                    cursorShape: Qt.PointingHandCursor
                                    onPressed: mouse.accepted = false
                                }

                                Row{
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.right: parent.right
                                    anchors.rightMargin: 15
                                    visible: false

                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_user_plus.svg"
                                        onClicked: console.log("Create Invite")
                                    }
                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_settings.svg"
                                        onClicked: console.log("Edit Channel")
                                    }
                                }
                            }
                        }

                        //Channel Qt Quick
                        Item{
                            width: 240
                            height: 32

                            LeftMenuChannel{
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.verticalCenterOffset: 0
                                iconPath: "../../images/svg_icons/icon_channel_lock.svg"
                                btnText: "qt-quick"
                                onClicked: console.log("Moderator channel pressed")
                                hoverEnabled: true
                                onHoveredChanged: this.hovered ? this.children[2].visible = true : this.children[2].visible = false

                                MouseArea{
                                    anchors.fill: parent
                                    cursorShape: Qt.PointingHandCursor
                                    onPressed: mouse.accepted = false
                                }

                                Row{
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.right: parent.right
                                    anchors.rightMargin: 15
                                    visible: false

                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_user_plus.svg"
                                        onClicked: console.log("Create Invite")
                                    }
                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_settings.svg"
                                        onClicked: console.log("Edit Channel")
                                    }
                                }
                            }
                        }
                    }
                }


                // Separator
                Item{
                    width: 240
                    height: 20
                }


                //Voice Channels
                AccordionMenu{
                    id: voiceChannels
                    textMenu: "VOICE CHANNELS"
                    totalSubMenus: FunctionJS.count(this.children[2])

                    //Icon Plus
                    IconButton{
                        iconWidth: 12
                        iconHeight: 12
                        iconPath: "../../images/svg_icons/plus_icon.svg"
                        anchors.right: parent.right
                        anchors.top: parent.top
                        anchors.rightMargin: 15
                        anchors.topMargin: 5
                        iconColor: "#b9bbbe"

                        onClicked: console.log("Create Channel")
                    }
                    Column{
                        id: columnVoiceChannels
                        anchors.top: parent.top
                        anchors.topMargin: 32

                        //Channel Chat 1
                        Item{
                            width: 240
                            height: 32

                            LeftMenuChannel{
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.verticalCenterOffset: 0
                                iconPath: "../../images/svg_icons/icon_voice_channel.svg"
                                btnText: "chat-1"
                                onClicked: console.log("Moderator channel pressed")
                                hoverEnabled: true
                                onHoveredChanged: this.hovered ? this.children[2].visible = true : this.children[2].visible = false

                                MouseArea{
                                    anchors.fill: parent
                                    cursorShape: Qt.PointingHandCursor
                                    onPressed: mouse.accepted = false
                                }

                                Row{
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.right: parent.right
                                    anchors.rightMargin: 15
                                    visible: false

                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_user_plus.svg"
                                        onClicked: console.log("Create Invite")
                                    }
                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_settings.svg"
                                        onClicked: console.log("Edit Channel")
                                    }
                                }
                            }
                        }

                        //Channel Chat 2
                        Item{
                            width: 240
                            height: 32

                            LeftMenuChannel{
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.verticalCenterOffset: 0
                                iconPath: "../../images/svg_icons/icon_voice_channel.svg"
                                btnText: "chat-2"
                                onClicked: console.log("Moderator channel pressed")
                                hoverEnabled: true
                                onHoveredChanged: this.hovered ? this.children[2].visible = true : this.children[2].visible = false

                                MouseArea{
                                    anchors.fill: parent
                                    cursorShape: Qt.PointingHandCursor
                                    onPressed: mouse.accepted = false
                                }

                                Row{
                                    anchors.verticalCenter: parent.verticalCenter
                                    anchors.right: parent.right
                                    anchors.rightMargin: 15
                                    visible: false

                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_user_plus.svg"
                                        onClicked: console.log("Create Invite")
                                    }
                                    IconButton{
                                        iconColor: "#b9bbbe"
                                        iconPath: "../../images/svg_icons/icon_settings.svg"
                                        onClicked: console.log("Edit Channel")
                                    }
                                }
                            }
                        }

                    }
                }

            }
        }
    }
}


