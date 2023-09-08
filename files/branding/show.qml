import QtQuick 2.0;
import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    function nextSlide() {
        console.log("QML Component (default slideshow) Next slide");
        presentation.goToNextSlide();
    }

    Timer {
        id: advanceTimer
        interval: 5000
        running: presentation.activatedInCalamares
        repeat: true
        onTriggered: nextSlide()
    }

    Slide {
        Image {
            id: background
            source: "slide-laptop.png"
            width: 350; height: 350
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background.horizontalCenter
            anchors.top: background.bottom
            text: "Solus is an operating system that is designed for home computing.<br/>"+
                  "Every tweak enables us to deliver a cohesive computing experience."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background_1
            source: "slide-mate-representation.png"
            width: 350; height: 350
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background_1.horizontalCenter
            anchors.top: background_1.bottom
            text: "Solus provides a multitude of experiences that enable you to get the most out of your hardware.<br/>"+
                  "From our flagship Budgie experience for modern devices to the more traditional MATE experience for lower-end devices, Solus aims to provide the best experience for your device."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background_2
            source: "slide-budgie.png"
            width: 350; height: 350
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background_2.horizontalCenter
            anchors.top: background_2.bottom
            text: "Budgie is a feature-rich, luxurious desktop using the most modern technologies."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background_3
            source: "slide-gnome.png"
            width: 350; height: 350
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background_3.horizontalCenter
            anchors.top: background_3.bottom
            text: "Solus GNOME is a  contemporary desktop experience."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background_4
            source: "slide-plasma.png"
            width: 350; height: 350
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background_4.horizontalCenter
            anchors.top: background_4.bottom
            text: "Solus Plasma is a sophisticated desktop experience for the tinkerers."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Center
        }
    }

    Slide {
        Image {
            id: background_5
            source: "slide-mate.png"
            width: 350; height: 350
            fillMode: Image.PreserveAspectFit
            anchors.centerIn: parent
        }
        Text {
            anchors.horizontalCenter: background_5.horizontalCenter
            anchors.top: background_5.bottom
            text: "Solus MATE is a traditional desktop for advanced users and older hardware."
            wrapMode: Text.WordWrap
            width: presentation.width
            horizontalAlignment: Text.Center
        }
    }

    // When this slideshow is loaded as a V1 slideshow, only
    // activatedInCalamares is set, which starts the timer (see above).
    //
    // In V2, also the onActivate() and onLeave() methods are called.
    // These example functions log a message (and re-start the slides
    // from the first).
    function onActivate() {
        console.log("QML Component (default slideshow) activated");
        presentation.currentSlide = 0;
    }

    function onLeave() {
        console.log("QML Component (default slideshow) deactivated");
    }
}
