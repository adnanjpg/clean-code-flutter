clean() {
    cd $1
    flutter clean
    rm -r .dart_tool
    rm -r android/.gradle
    rm -rf android/gradlew
    rm -rf android/gradlew.bat
    rm -rf android/local.properties
    rm -rf ios/.symlinks
    rm -rf ios/Pods
    rm -rf pubspec.lock
    flutter pub get
    cd ../
}

clean data/
clean domain/
clean presentation/