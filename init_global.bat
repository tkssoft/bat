@pushd %~dp0\..
:: global
@call npm install -g browserify
@call npm install -g less 
@call npm install -g watchify
::@call npm install -g uglify-js
@popd
