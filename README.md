# PIR – iOS App

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/PIR-IDS/IDS-iOS-App">
    <img src="https://avatars.githubusercontent.com/u/99486891" alt="Logo" width="130">
  </a>

  <p align="center">
    IDS: Code for the iOS App
    <br />
    <a href="https://github.com/PIR-IDS/IDS-iOS-App/releases"><strong>See Releases »</strong></a>
    <br />
    <br />
    <a href="https://github.com/PIR-IDS/research-paper">Research Paper</a>
    ·
    <a href="https://github.com/PIR-IDS/IDS-iOS-App/actions/workflows/test.yml">Test Results</a>
    ·
    <a href="https://github.com/PIR-IDS/.github/blob/main/profile/README.md#usage">See Global Usage</a>
  </p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li>
      <a href="#usage">Usage</a>
      <ul>
        <li><a href="#generation">Generation</a></li>
        <li><a href="#execution">Execution</a></li>
        <li><a href="#tests">Tests</a></li>
        <li><a href="#documentation">Documentation</a></li>
      </ul>
    <li><a href="#tree-structure">Tree Structure</a></li>
    <li><a href="#credits">Credits</a></li>
    <li><a href="#contact">Contact</a></li>

  </ol>
</details>

***

<!-- ABOUT THE PROJECT -->
## About The Project

This code will be used in order to receive the anomalies detected by the Arduino and to check if an event is linked to a distant action.

<p align="center">
    <img src="https://user-images.githubusercontent.com/26198903/186628714-39a440dc-d113-4000-bc4f-f91ea50793e5.png" alt="Screenshot1" width="24%">
</p>

### Built With
* [Swift](https://www.swift.org/)
* [SwiftUI](https://developer.apple.com/documentation/swiftui/)

<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

1. You need [Xcode](https://developer.apple.com/xcode/) on [macOS](https://www.apple.com/macos/) to use this project.
2. Install [Mint](https://github.com/yonaskolb/Mint)
    ```sh
    brew install mint
    ```

### Installation

1. Clone the project
   ```sh
   git clone https://github.com/PIR-IDS/IDS-iOS-App.git
   ```
2. Install the dependencies by typing the following command while being in the project root:
   ```sh
   mint bootstrap
   ```
3. Generate the `.xcodeproj` directory by typing the following command while being in the project root:
   ```sh
   mint run xcodegen generate 
   ```
4. Open the `.xcodeproj` directory in Xcode
   ```sh
   open idsapp.xcodeproj
   ```


<!-- USAGE EXAMPLES -->
## Usage

### Generation

To get the Development Debug `IDS App.app` file in the `build/Debug-iphoneos/` directory, use the following command:
```sh
xcodebuild ONLY_ACTIVE_ARCH=NO -configuration Debug -target idsapp -scheme idsapp
```

To get the Development Release `IDS App.app` file in the `build/Release-iphoneos/` directory, use the following command:
```sh
xcodebuild ONLY_ACTIVE_ARCH=NO -configuration Release -target idsapp -scheme idsapp
```

To get the Release Archive at the `build/IDS App.xcarchive` location (necessary to generate the IPA later with your own certificate), use the following command:
```sh
xcodebuild ONLY_ACTIVE_ARCH=NO -configuration Release -target idsapp -scheme idsapp -archivePath "build/IDS App.xcarchive" archive
```

### Execution

Use Xcode or deploy the generated `.app` with the tool of your choice.

### Tests

To launch the unit tests and the UI tests, use the following command and replace `<destination>` with the destination platform of your choice:
```sh
xcodebuild test -target idsapp -scheme idsapp -destination <destination>
```

### Documentation

To generate the `IDS App.docarchive` documentation file in the `build/Build/Products/Release-iphoneos` directory, use the following command:
```sh
xcodebuild ONLY_ACTIVE_ARCH=NO docbuild -configuration Release -target idsapp -scheme idsapp -derivedDataPath build
```

***

<!-- TREE STRUCTURE -->
## Tree Structure
<details>

_TODO_

</details>

<!-- CREDITS -->
## Credits

Romain Monier [ [GitHub](https://github.com/rmonier) ] – Co-developer
<br>
Noé Chauveau [ [GitHub](https://github.com/Noecv) ] – Co-developer

<!-- CONTACT -->
## Contact

Project Link : [https://github.com/PIR-IDS/IDS-iOS-App](https://github.com/PIR-IDS/IDS-iOS-App)

Organization Link : [https://github.com/PIR-IDS](https://github.com/PIR-IDS)
