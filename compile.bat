@echo off

set PATH=..\node_modules\.bin;%PATH%

if "%3X"=="debugX" (
    @echo building debug version
    @browserify %1 -t [ babelify --presets [ @babel/preset-env @babel/preset-react ] --plugins [ @babel/plugin-proposal-class-properties ] ]  > %2
) else (
    @echo building production version
    @browserify %1 -t [ babelify --presets [ @babel/preset-env @babel/preset-react ] --plugins [ @babel/plugin-proposal-class-properties ] ] -g [ envify --NODE_ENV production ] -g uglifyify   | uglifyjs --compress --mangle > %2
)

::"build": "browserify ./src/index.js -o ./build/bundle.js -t babelify -p [ css-modulesify --before postcss-nested --before postcss-simple-vars -o build/main.css ]"
