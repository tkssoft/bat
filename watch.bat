@watchify %1 -o %2 -t [ babelify --presets [ @babel/preset-env @babel/preset-react ] --plugins [ @babel/plugin-proposal-class-properties ] ] -g [ envify --NODE_ENV developement ] -v -d
