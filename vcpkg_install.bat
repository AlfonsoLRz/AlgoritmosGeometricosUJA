cd C:/
C:
if not exist "vcpkg" git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.bat
vcpkg.exe integrate install