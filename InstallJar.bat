@echo off
echo Please enter group id, artifact id and version of the jar below....
set /p groupID= Enter Group ID:
set /p artifactID= Enter Artifact ID:
set /p version= Enter Version:
set /p inputFile= Enter path for the jar to install:
mvn install:install-file -DgroupId=%groupID% -DartifactId=%artifactID% -Dversion=%version% -Dpackaging=jar -Dfile=%inputFile% -DlocalRepositoryPath=%~dp0
Pause
