REM
REM Remove CalcCache (comment-out the following line if intermediate results need to be retained).
REM

if exist %CalcCacheDir%\CacheInfo.dmsdata del %CalcCacheDir%\CacheInfo.dmsdata

REM @USERINPUT: List of runs to process.

REM call Impl\RunOneInstance.bat Referentie_2006_KlimaatConstant             /RunContext/GenerateAll
REM call Impl\RunOneInstance.bat Referentie_2006_KlimaatHistorisch           /RunContext/GenerateAll


call Impl\RunOneInstance.bat Run1Referentie_TrendPrijzen                 /RunContext/GenerateAll
REM call Impl\RunOneInstance.bat Run1Referentie_TrendPrijzen                 /RunContext/Y2050/RegressieTest/Generate

call Impl\RunOneInstance.bat Run1Referentie_TrendPrijzen_KlimaatConstant /RunContext/GenerateAll
REM call Impl\RunOneInstance.bat Run1Referentie_TrendPrijzen_KlimaatConstant /RunContext/Y2050/RegressieTest/Generate

call Impl\RunOneInstance.bat Run2Besparen_TrendPrijzen                   /RunContext/GenerateAll
REM call Impl\RunOneInstance.bat Run2Besparen_TrendPrijzen                   /RunContext/Y2050/RegressieTest/Generate

call Impl\RunOneInstance.bat Run3Warmte_TrendPrijzen                     /RunContext/GenerateAll
REM call Impl\RunOneInstance.bat Run3Warmte_TrendPrijzen                     /RunContext/Y2050/RegressieTest/Generate

call Impl\RunOneInstance.bat Run4Combi_TrendPrijzen    /RunContext/GenerateAll
REM call Impl\RunOneInstance.bat Run4Combi_BreedWLO        /RunContext/GenerateAll


