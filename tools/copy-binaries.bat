copy /y "..\ext\ffmpeg\amd64\bin\avcodec*.dll" "..\dist\Debug-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\avutil*.dll" "..\dist\Debug-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\swscale*.dll" "..\dist\Debug-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\avfilter*.dll" "..\dist\Debug-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\avformat*.dll" "..\dist\Debug-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\postproc*.dll" "..\dist\Debug-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\swresample*.dll" "..\dist\Debug-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\avresample*.dll" "..\dist\Debug-amd64\"

copy /y "..\ext\ffmpeg\amd64\bin\avcodec*.dll" "..\dist\Release-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\avutil*.dll" "..\dist\Release-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\swscale*.dll" "..\dist\Release-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\avfilter*.dll" "..\dist\Release-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\avformat*.dll" "..\dist\Release-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\postproc*.dll" "..\dist\Release-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\swresample*.dll" "..\dist\Release-amd64\"
copy /y "..\ext\ffmpeg\amd64\bin\avresample*.dll" "..\dist\Release-amd64\"

copy /y "..\ext\ffmpeg\x86\bin\avcodec*.dll" "..\dist\Debug-x86\"
copy /y "..\ext\ffmpeg\x86\bin\avutil*.dll" "..\dist\Debug-x86\"
copy /y "..\ext\ffmpeg\x86\bin\swscale*.dll" "..\dist\Debug-x86\"
copy /y "..\ext\ffmpeg\x86\bin\avfilter*.dll" "..\dist\Debug-x86\"
copy /y "..\ext\ffmpeg\x86\bin\avformat*.dll" "..\dist\Debug-x86\"
copy /y "..\ext\ffmpeg\x86\bin\postproc*.dll" "..\dist\Debug-x86\"
copy /y "..\ext\ffmpeg\x86\bin\swresample*.dll" "..\dist\Debug-x86\"
copy /y "..\ext\ffmpeg\x86\bin\avresample*.dll" "..\dist\Debug-x86\"

copy /y "..\ext\ffmpeg\x86\bin\avcodec*.dll" "..\dist\Release-x86\"
copy /y "..\ext\ffmpeg\x86\bin\avutil*.dll" "..\dist\Release-x86\"
copy /y "..\ext\ffmpeg\x86\bin\swscale*.dll" "..\dist\Release-x86\"
copy /y "..\ext\ffmpeg\x86\bin\avfilter*.dll" "..\dist\Release-x86\"
copy /y "..\ext\ffmpeg\x86\bin\avformat*.dll" "..\dist\Release-x86\"
copy /y "..\ext\ffmpeg\x86\bin\postproc*.dll" "..\dist\Release-x86\"
copy /y "..\ext\ffmpeg\x86\bin\swresample*.dll" "..\dist\Release-x86\"
copy /y "..\ext\ffmpeg\x86\bin\avresample*.dll" "..\dist\Release-x86\"

copy /y "regsvrex64.exe" "..\dist\Debug-amd64\" 
copy /y "regsvrex64.exe" "..\dist\Release-amd64\" 

copy /y "regsvrex32.exe" "..\dist\Debug-x86\" 
copy /y "regsvrex32.exe" "..\dist\Release-x86\" 
