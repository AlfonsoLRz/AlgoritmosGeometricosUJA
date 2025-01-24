cd C:/
C:
if not exist "vcpkg" git clone https://github.com/Microsoft/vcpkg.git
cd vcpkg
./bootstrap-vcpkg.bat
setx PATH "C:\vcpkg\;%PATH%"
setx VCPKG_DEFAULT_TRIPLET "x64-windows"
vcpkg.exe integrate install