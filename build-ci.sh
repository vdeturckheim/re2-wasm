git clone https://github.com/emscripten-core/emsdk.git
cd emsdk
python emsdk.py install latest
./emsdk.py activate latest
source ./emsdk_env.sh

cd ..
rm -rf build
mkdir build
cd build
emcmake cmake ..
make
cd ..
cp ./build/re2_wasm.js ./re2-wasm/re2_wasm.js
cp ./build/re2_wasm.wasm ./re2-wasm/re2_wasm.wasm
