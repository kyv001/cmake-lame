# cmake-lame
Use CMake to compile LAME library.

## Platform support
- Windows (MSVC)
- Windows (MinGW)

## Target support
- lame.exe - OK (Without NASM and libsndfile)
- mp3x.exe - ERROR (No GTK Lib)
- mp3rtp.exe - OK (Without NASM and libsndfile)
- lame_enc.dll - OK (Without NASM and libsndfile)
- mp3lame.dll - OK (Without NASM and libsndfile)
- mp3lame-static.lib - OK (Without NASM and libsndfile)
