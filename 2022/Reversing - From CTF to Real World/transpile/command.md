# Installing McSema

```shell
# download remill and adjust for LLVM-9
git clone --single-branch --branch master https://github.com/lifting-bits/remill.git
git checkout -b remill-build d97e452aaf00ad650012160e9b9580d92ee10e3b

# download mcsema and adjust for LLVM-9
git clone --single-branch --branch master https://github.com/lifting-bits/mcsema.git
git checkout -b mcsema-build 6e9e9f1bcbea410064ce31cc74639d2f940a1203

# download anvill and adjust for LLVM-9
git clone --branch master https://github.com/lifting-bits/anvill.git
( cd anvill && git checkout -b release_bc3183b bc3183b )

export CC="$(which clang)"
export CXX="$(which clang++)"

# Download cxx-common, build Remill. 
./remill/scripts/build.sh --llvm-version 9 --download-dir ./
pushd remill-build
sudo cmake --build . --target install
popd

# Build and install Anvill
mkdir anvill-build
pushd anvill-build
# Set VCPKG_ROOT to whatever directory the remill script downloaded
cmake -DCMAKE_BUILD_TYPE=Release -DVCPKG_ROOT=$(pwd)/../vcpkg_ubuntu-20.04_llvm-9_amd64 ../anvill
sudo cmake --build . --target install
popd

# Build and install McSema
mkdir mcsema-build
pushd mcsema-build
cmake -DCMAKE_BUILD_TYPE=Release -DVCPKG_ROOT=$(pwd)/../vcpkg_ubuntu-20.04_llvm-9_amd64 ../mcsema
sudo cmake --build . --target install
```

# building CFG

```powershell
$IDA_ROOT = "D:\IDA7.5"
$MCSEMA_ROOT = "G:\build\mcsema"

& "$($IDA_ROOT)\ida64.exe" -S"$($MCSEMA_ROOT)\tools\mcsema_disass\ida7\get_cfg.py --output maze.aarch64.cfg --log_file \\.\nul --arch aarch64 --os linux --entrypoint main" maze.aarch64
```

# lifting

```
mcsema-lift-9.0 --cfg maze.aarch64.cfg --output maze.aarch64.bc --os linux --arch aarch64 --explicit_args
```

# disassembly bitcode

```
llvm-dis maze.aarch64.bc -o maze.ll
llvm-link maze.ll -o maze.recompiled.bc
```

# compile

```
remill-clang-9 -o maze.recomp.amd64 maze.aarch64.bc
```