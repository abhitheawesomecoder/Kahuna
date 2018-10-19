
# react-native-kahuna

## Getting started

`$ npm install react-native-kahuna --save`

### Mostly automatic installation

`$ react-native link react-native-kahuna`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-kahuna` and add `RNKahuna.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNKahuna.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNKahunaPackage;` to the imports at the top of the file
  - Add `new RNKahunaPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-kahuna'
  	project(':react-native-kahuna').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-kahuna/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-kahuna')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNKahuna.sln` in `node_modules/react-native-kahuna/windows/RNKahuna.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Kahuna.RNKahuna;` to the usings at the top of the file
  - Add `new RNKahunaPackage()` to the `List<IReactPackage>` returned by the `Packages` method


## Usage
```javascript
import RNKahuna from 'react-native-kahuna';

// TODO: What to do with the module?
RNKahuna;
```
  