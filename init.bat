@pushd %~dp0\..
@call npm install react react-dom babelify @babel/core @babel/preset-env @babel/preset-react @babel/plugin-proposal-class-properties classnames
@call npm install envify uglify-js uglifyify 
@call npm install react-autocomplete
@call npm install react-select
@popd