import QtQuick 2.0
import QtMultimedia 5.0

Item {
    width: 320;
    height: 480;
    
    Grid {
        x: 40;
        y: 40;
        columns: 2;
        spacing: 40;

        AnimalButton {
            width: 100;
            height: 100;
            radius: 10;
            color: "#fce94f";
            imageSource: "cat.png";
            soundSource: "cat.mp3";
        }
        AnimalButton {
            width: 100;
            height: 100;
            radius: 10;
            color: "#8ae234";
            imageSource: "dog.png";
            soundSource: "dog.mp3";
        }
        AnimalButton {
            width: 100;
            height: 100;
            radius: 10;
            color: "#729fcf";
            imageSource: "sheep.png";
            soundSource: "sheep.mp3";
        }
        AnimalButton {
            width: 100;
            height: 100;
            radius: 10;
            color: "#e9b96e";
            imageSource: "goat.png";
            soundSource: "goat.mp3";
        }
        AnimalButton {
            width: 100;
            height: 100;
            radius: 10;
            color: "#fcaf3e";
            imageSource: "elephant.png";
            soundSource: "elephant.mp3";
        }
        AnimalButton {
            width: 100;
            height: 100;
            radius: 10;
            color: "#ad7fa8";
            imageSource: "cow.png";
            soundSource: "cow.mp3";
        }
    }
}
