# compile icsharp (the awb version)

RUN git clone https://github.com/awb99/icsharp.git \
 && mono ./.nuget/NuGet.exe restore ./ScriptCs.sln \
 && xbuild ./iCSharp.sln /property:Configuration=Release /nologo /verbosity:normal

#Executable is under:  icsharp/Kernel/bin/Release
# mono Kernel/bin/Release/iCSharp.Kernel.exe     will show the aruments not provided; the compilation of iCSharp worked.
