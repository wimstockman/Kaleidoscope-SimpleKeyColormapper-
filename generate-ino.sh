UNAME_S= uname -s

if [ UNAME_S == "Darwin" ]; then
AR_DIR=$HOME/Documents/Arduino
else
AR_DIR=$HOME/Arduino
fi

INSTALL_DIR=$AR_DIR/hardware/keyboardio/avr/libraries/Kaleidoscope-SimpleKeyColormapper/
cp $1 temp
awk -f inserter.awk temp > $1
awk -f inserter-color.awk $INSTALL_DIR"Kaleidoscope-SimpleKeyColormapper.gen" > $INSTALL_DIR"Kaleidoscope-SimpleKeyColormapper.cpp"
