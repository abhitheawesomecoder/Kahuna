Steps to add react-native-kahuna :

IOS :

step 1) add
"react-native-kahuna": "git+https://github.com/abhitheawesomecoder/Kahuna.git"
to package json of your project
2) fire command react-native link react-native-kahuna
3) create pod file and add   pod 'Kahuna-Swift' to pod file and fire command pod install
4) add line [Kahuna launchWithKey:@"58f2fa20810e46afb2e9f62ccbc19bf0"];
to AppDelegate.m
5) add header #import <Kahuna/Kahuna.h>
to AppDelegate.m
6) add path
$(PROJECT_DIR)/../node_modules/react-native-kahuna/ios/Frameworks
to project framework search path
7) add path $(SRCROOT)/Frameworks
to package framework search path

Usage
import RNKahuna from 'react-native-kahuna';

// TODO: What to do with the module?
RNKahuna;

Android :
step 1) add
"react-native-kahuna": "git+https://github.com/abhitheawesomecoder/Kahuna.git"
to package json of your project
2) fire command react-native link react-native-kahuna
3) add line classpath 'com.google.gms:google-services:3.0.0'
to {project}/android/build.gradle like this :
dependencies {
        classpath 'com.android.tools.build:gradle:3.1.4'
        classpath 'com.google.gms:google-services:3.0.0'

        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files
    }
4) add line maven { url "https://kahuna.github.io/kahuna-android/sdk" }
to {project}/android/build.gradle like this :
allprojects {
    repositories {
        mavenLocal()
        jcenter()
        maven {
            // All of React Native (JS, Obj-C sources, Android binaries) is installed from npm
            url "$rootDir/../node_modules/react-native/android"
        }
        maven { url "https://kahuna.github.io/kahuna-android/sdk" }
        google()
    }
}
add   <uses-permission android:name="android.permission.INTERNET" />
to AndroidManifest.xml
