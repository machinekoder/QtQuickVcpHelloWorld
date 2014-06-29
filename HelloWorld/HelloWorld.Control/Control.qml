/****************************************************************************
**
** Copyright (C) 2014 Alexander Rössler
** License: LGPL version 2.1
**
** This file is part of QtQuickVcp.
**
** All rights reserved. This program and the accompanying materials
** are made available under the terms of the GNU Lesser General Public License
** (LGPL) version 2.1 which accompanies this distribution, and is available at
** http://www.gnu.org/licenses/lgpl-2.1.html
**
** This library is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
** Lesser General Public License for more details.
**
** Contributors:
** Alexander Rössler @ The Cool Tool GmbH <mail DOT aroessler AT gmail DOT com>
**
****************************************************************************/
import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import Machinekit.Controls 1.0
import Machinekit.HalRemote.Controls 1.0
import Machinekit.HalRemote 1.0
import QtQuick 2.1

HalApplicationWindow {
    id: main

    name: "control"
    title: qsTr("Control")

    RowLayout {
        id: columnLayout1
        height: 100
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10

        HalRoundGauge {
            id: roundGauge1
            name: "rate"
            x: 65
            y: 16
            maximumValue: 20
        }

        HalLed {
            name: "ledGV"
            onColor: "#00d217"

        }

        HalLed {
            name: "ledYV"
            onColor: "#e4c000"

        }

        HalLed {
            name: "ledRV"
            onColor: "#ff0404"

        }

        Item {
            Layout.fillWidth: true
        }
    }

    HalRadioButton {
        id: radioButton1
        name: "button1"
        x: 73
        y: 169
        text: qsTr("Button 1")
    }

    HalRadioButton {
        id: radioButton2
        name: "button2"
        x: 73
        y: 204
        text: qsTr("Button 2")
    }

    HalButton {
        id: button1
        name: "ledG"
        x: 212
        y: 142
        text: qsTr("Green")
        checkable: true
    }

    HalButton {
        id: button2
        name: "ledY"
        x: 212
        y: 173
        text: qsTr("Yellow")
        checkable: true
    }

    HalButton {
        id: button3
        name: "ledR"
        x: 212
        y: 204
        text: qsTr("Red")
        checkable: true
    }

}

