/*
 * Copyright (C) 2013 Robert Ancell <robert.ancell@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 3 of the License, or (at your option) any later
 * version. See http://www.gnu.org/copyleft/gpl.html the full text of the
 * license.
 */

import QtQuick 2.0
import QtMultimedia 5.0
import Ubuntu.Components 1.1

UbuntuShape {
    id: box
    antialiasing: true
    radius: "medium"
    property alias color: box.color
    property alias imageSource: image.source
    property alias soundSource: sound.source

    Image {
        id: image
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        width: parent.width * 0.8
        height: parent.height * 0.8
        fillMode: Image.PreserveAspectFit
    }

    Audio {
        id: sound
    }

    SequentialAnimation {
        id: animation
        RotationAnimation {
            target: box
            properties: "rotation"
            duration: 100
            to: 10
            easing.type: Easing.OutQuad
        }
        RotationAnimation {
            target: box
            properties: "rotation"
            duration: 200
            to: -10
            easing.type: Easing.OutQuad
        }
        RotationAnimation {
            target: box
            properties: "rotation"
            duration: 100
            to: 0
            easing.type: Easing.OutQuad
        }
    }

    MouseArea {
        anchors.fill: parent
        onPressed: { animation.start(); sound.play(); }
    }
}
