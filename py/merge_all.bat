set tmpcsv=tmpcsv
md %tmpcsv%

REM Geef pad naar Results-folder in de LD-map
set "padtoresults=Schijfletter:\LD\%confignaam%\Results\"

set "Run1=Run4Combi_2016_Referentie"
set "Run1_pad=%padtoresults%%Run1%" 

REM set "Run2=Run4Combi_2016_Referentie_Verhoging25cent"
REM Set Run2_pad=%padtoresults%%Run2%" 

set "Run3=Run4Combi_2016_Referentie_Verhoging50cent"
Set Run3_pad=%padtoresults%%Run3%" 

REM set "Run4=Run4Combi_2016_Referentie_Verhoging100cent"
REM Set Run4_pad=%padtoresults%%Run4%" 

REM set "Run5=Run4Combi_2016_Referentie_Verhoging150cent"
REM Set Run5_pad=%padtoresults%%Run5%" 

call python linenumbers.py %Run1_pad% %tmpcsv%/mut_allflow_%Run1%.csv mut_lijst
call python linenumbers.py %Run1_pad% %tmpcsv%/mut_allstock_%Run1%.csv mut_allstock_lijst
call python linenumbers.py %Run1_pad% %tmpcsv%/matrix_allflow_%Run1%.csv matrix_allflow
call python linenumbers.py %Run1_pad% %tmpcsv%/matrix_allstock_%Run1%.csv matrix_allstock
call python linenumbers.py %Run1_pad% %tmpcsv%/flow_%Run1%.csv NL
call python linenumbers.py %Run1_pad% %tmpcsv%/NL_emission_%Run1%.csv NL_emission
call python linenumbers.py %Run1_pad% %tmpcsv%/Gebiedsmaatregelen_%Run1%.csv gebiedsmaatregelen
call python linenumbers.py %Run1_pad% %tmpcsv%/Opwekking_%Run1%.csv opwekking
call python linenumbers.py %Run1_pad% %tmpcsv%/Verbetering_%Run1%.csv verbetering
call python linenumbers.py %Run1_pad% %tmpcsv%/mut_bebouwing_allflow_%Run1%.csv mut_bebouwing_allflow
call python linenumbers.py %Run1_pad% %tmpcsv%/mut_bebouwing_allstock_%Run1%.csv mut_bebouwing_allstock

REM call python linenumbers.py %Run2_pad% %tmpcsv%/mut_allflow_%Run2%.csv mut_lijst
REM call python linenumbers.py %Run2_pad% %tmpcsv%/mut_allstock_%Run2%.csv mut_allstock_lijst
REM call python linenumbers.py %Run2_pad% %tmpcsv%/matrix_allflow_%Run2%.csv matrix_allflow
REM call python linenumbers.py %Run2_pad% %tmpcsv%/matrix_allstock_%Run2%.csv matrix_allstock
REM call python linenumbers.py %Run2_pad% %tmpcsv%/flow_%Run2%.csv NL
REM call python linenumbers.py %Run2_pad% %tmpcsv%/NL_emission_%Run2%.csv NL_emission
REM call python linenumbers.py %Run2_pad% %tmpcsv%/Gebiedsmaatregelen_%Run2%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run2_pad% %tmpcsv%/Opwekking_%Run2%.csv opwekking
REM call python linenumbers.py %Run2_pad% %tmpcsv%/Verbetering_%Run2%.csv verbetering
REM call python linenumbers.py %Run2_pad% %tmpcsv%/mut_bebouwing_allflow_%Run2%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run2_pad% %tmpcsv%/mut_bebouwing_allstock_%Run2%.csv mut_bebouwing_allstock

call python linenumbers.py %Run3_pad% %tmpcsv%/mut_allflow_%Run3%.csv mut_lijst
call python linenumbers.py %Run3_pad% %tmpcsv%/mut_allstock_%Run3%.csv mut_allstock_lijst
call python linenumbers.py %Run3_pad% %tmpcsv%/matrix_allflow_%Run3%.csv matrix_allflow
call python linenumbers.py %Run3_pad% %tmpcsv%/matrix_allstock_%Run3%.csv matrix_allstock
call python linenumbers.py %Run3_pad% %tmpcsv%/flow_%Run3%.csv NL
call python linenumbers.py %Run3_pad% %tmpcsv%/NL_emission_%Run3%.csv NL_emission
call python linenumbers.py %Run3_pad% %tmpcsv%/Gebiedsmaatregelen_%Run3%.csv gebiedsmaatregelen
call python linenumbers.py %Run3_pad% %tmpcsv%/Opwekking_%Run3%.csv opwekking
call python linenumbers.py %Run3_pad% %tmpcsv%/Verbetering_%Run3%.csv verbetering
call python linenumbers.py %Run3_pad% %tmpcsv%/mut_bebouwing_allflow_%Run3%.csv mut_bebouwing_allflow
call python linenumbers.py %Run3_pad% %tmpcsv%/mut_bebouwing_allstock_%Run3%.csv mut_bebouwing_allstock

REM call python linenumbers.py %Run4_pad% %tmpcsv%/mut_allflow_%Run4%.csv mut_lijst
REM call python linenumbers.py %Run4_pad% %tmpcsv%/mut_allstock_%Run4%.csv mut_allstock_lijst
REM call python linenumbers.py %Run4_pad% %tmpcsv%/matrix_allflow_%Run4%.csv matrix_allflow
REM call python linenumbers.py %Run4_pad% %tmpcsv%/matrix_allstock_%Run4%.csv matrix_allstock
REM call python linenumbers.py %Run4_pad% %tmpcsv%/flow_%Run4%.csv NL
REM call python linenumbers.py %Run4_pad% %tmpcsv%/NL_emission_%Run4%.csv NL_emission
REM call python linenumbers.py %Run4_pad% %tmpcsv%/Gebiedsmaatregelen_%Run4%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run4_pad% %tmpcsv%/Opwekking_%Run4%.csv opwekking
REM call python linenumbers.py %Run4_pad% %tmpcsv%/Verbetering_%Run4%.csv verbetering
REM call python linenumbers.py %Run4_pad% %tmpcsv%/mut_bebouwing_allflow_%Run4%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run4_pad% %tmpcsv%/mut_bebouwing_allstock_%Run4%.csv mut_bebouwing_allstock

REM call python linenumbers.py %Run5_pad% %tmpcsv%/mut_allflow_%Run5%.csv mut_lijst
REM call python linenumbers.py %Run5_pad% %tmpcsv%/mut_allstock_%Run5%.csv mut_allstock_lijst
REM call python linenumbers.py %Run5_pad% %tmpcsv%/matrix_allflow_%Run5%.csv matrix_allflow
REM call python linenumbers.py %Run5_pad% %tmpcsv%/matrix_allstock_%Run5%.csv matrix_allstock
REM call python linenumbers.py %Run5_pad% %tmpcsv%/flow_%Run5%.csv NL
REM call python linenumbers.py %Run5_pad% %tmpcsv%/NL_emission_%Run5%.csv NL_emission
REM call python linenumbers.py %Run5_pad% %tmpcsv%/Gebiedsmaatregelen_%Run5%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run5_pad% %tmpcsv%/Opwekking_%Run5%.csv opwekking
REM call python linenumbers.py %Run5_pad% %tmpcsv%/Verbetering_%Run5%.csv verbetering
REM call python linenumbers.py %Run5_pad% %tmpcsv%/mut_bebouwing_allflow_%Run5%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run5_pad% %tmpcsv%/mut_bebouwing_allstock_%Run5%.csv mut_bebouwing_allstock


cd tmpcsv
copy flow_*.csv ..\flow.csv
copy NL_emission_*.csv ..\NL_emission.csv
copy *Gebiedsmaatregelen*.csv ..\Gebiedsmaatregelen.csv
copy *matrix_allflow*.csv ..\matrix_allflow.csv
copy *matrix_allstock*.csv ..\matrix_allstock.csv
copy *mut_allflow*.csv ..\mut_allflow.csv
copy *mut_allstock*.csv ..\mut_allstock.csv
copy *mut_bebouwing_allflow*.csv ..\mut_bebouwing_allflow.csv
copy *mut_bebouwing_allstock*.csv ..\mut_bebouwing_allstock.csv
copy *Opwekking*.csv ..\Opwekking.csv
copy *Verbetering*.csv ..\Verbetering.csv

del *.csv
PAUSE

