set tmpcsv=tmpcsv
md %tmpcsv%

Set Run1=Run4Combi_2016_Referentie
Set Run2=Run4Combi_2016_Referentie_Verhoging50cent

REM Set Run3=NaamExtraScenario1
REM Set Run4=NaamExtraScenario2
REM Set Run5=NaamExtraScenario3

call python linenumbers.py %Run1% %tmpcsv%/mut_allflow_%Run1%.csv mut_lijst
call python linenumbers.py %Run1% %tmpcsv%/mut_allstock_%Run1%.csv mut_allstock_lijst
call python linenumbers.py %Run1% %tmpcsv%/matrix_allflow_%Run1%.csv matrix_allflow
call python linenumbers.py %Run1% %tmpcsv%/matrix_allstock_%Run1%.csv matrix_allstock
call python linenumbers.py %Run1% %tmpcsv%/flow_%Run1%.csv NL
call python linenumbers.py %Run1% %tmpcsv%/Gebiedsmaatregelen_%Run1%.csv gebiedsmaatregelen
call python linenumbers.py %Run1% %tmpcsv%/Opwekking_%Run1%.csv opwekking
call python linenumbers.py %Run1% %tmpcsv%/Verbetering_%Run1%.csv verbetering
call python linenumbers.py %Run1% %tmpcsv%/mut_bebouwing_allflow_%Run1%.csv mut_bebouwing_allflow
call python linenumbers.py %Run1% %tmpcsv%/mut_bebouwing_allstock_%Run1%.csv mut_bebouwing_allstock

call python linenumbers.py %Run2% %tmpcsv%/mut_allflow_%Run2%.csv mut_lijst
call python linenumbers.py %Run2% %tmpcsv%/mut_allstock_%Run2%.csv mut_allstock_lijst
call python linenumbers.py %Run2% %tmpcsv%/matrix_allflow_%Run2%.csv matrix_allflow
call python linenumbers.py %Run2% %tmpcsv%/matrix_allstock_%Run2%.csv matrix_allstock
call python linenumbers.py %Run2% %tmpcsv%/flow_%Run2%.csv NL
call python linenumbers.py %Run2% %tmpcsv%/Gebiedsmaatregelen_%Run2%.csv gebiedsmaatregelen
call python linenumbers.py %Run2% %tmpcsv%/Opwekking_%Run2%.csv opwekking
call python linenumbers.py %Run2% %tmpcsv%/Verbetering_%Run2%.csv verbetering
call python linenumbers.py %Run2% %tmpcsv%/mut_bebouwing_allflow_%Run2%.csv mut_bebouwing_allflow
call python linenumbers.py %Run2% %tmpcsv%/mut_bebouwing_allstock_%Run2%.csv mut_bebouwing_allstock

REM call python linenumbers.py %Run3% %tmpcsv%/mut_allflow_%Run3%.csv mut_lijst
REM call python linenumbers.py %Run3% %tmpcsv%/mut_allstock_%Run3%.csv mut_allstock_lijst
REM call python linenumbers.py %Run3% %tmpcsv%/matrix_allflow_%Run3%.csv matrix_allflow
REM call python linenumbers.py %Run3% %tmpcsv%/matrix_allstock_%Run3%.csv matrix_allstock
REM call python linenumbers.py %Run3% %tmpcsv%/flow_%Run3%.csv NL
REM call python linenumbers.py %Run3% %tmpcsv%/Gebiedsmaatregelen_%Run3%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run3% %tmpcsv%/Opwekking_%Run3%.csv opwekking
REM call python linenumbers.py %Run3% %tmpcsv%/Verbetering_%Run3%.csv verbetering
REM call python linenumbers.py %Run3% %tmpcsv%/mut_bebouwing_allflow_%Run3%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run3% %tmpcsv%/mut_bebouwing_allstock_%Run3%.csv 

REM call python linenumbers.py %Run4% %tmpcsv%/mut_allflow_%Run4%.csv mut_lijst
REM call python linenumbers.py %Run4% %tmpcsv%/mut_allstock_%Run4%.csv mut_allstock_lijst
REM call python linenumbers.py %Run4% %tmpcsv%/matrix_allflow_%Run4%.csv matrix_allflow
REM call python linenumbers.py %Run4% %tmpcsv%/matrix_allstock_%Run4%.csv matrix_allstock
REM call python linenumbers.py %Run4% %tmpcsv%/flow_%Run4%.csv NL
REM call python linenumbers.py %Run4% %tmpcsv%/Gebiedsmaatregelen_%Run4%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run4% %tmpcsv%/Opwekking_%Run4%.csv opwekking
REM call python linenumbers.py %Run4% %tmpcsv%/Verbetering_%Run4%.csv verbetering
REM call python linenumbers.py %Run4% %tmpcsv%/mut_bebouwing_allflow_%Run4%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run4% %tmpcsv%/mut_bebouwing_allstock_%Run4%.csv mut_bebouwing_allstock

REM call python linenumbers.py %Run5% %tmpcsv%/mut_allflow_%Run5%.csv mut_lijst
REM call python linenumbers.py %Run5% %tmpcsv%/mut_allstock_%Run5%.csv mut_allstock_lijst
REM call python linenumbers.py %Run5% %tmpcsv%/matrix_allflow_%Run5%.csv matrix_allflow
REM call python linenumbers.py %Run5% %tmpcsv%/matrix_allstock_%Run5%.csv matrix_allstock
REM call python linenumbers.py %Run5% %tmpcsv%/flow_%Run5%.csv NL
REM call python linenumbers.py %Run5% %tmpcsv%/Gebiedsmaatregelen_%Run5%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run5% %tmpcsv%/Opwekking_%Run5%.csv opwekking
REM call python linenumbers.py %Run5% %tmpcsv%/Verbetering_%Run5%.csv verbetering
REM call python linenumbers.py %Run5% %tmpcsv%/mut_bebouwing_allflow_%Run5%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run5% %tmpcsv%/mut_bebouwing_allstock_%Run5%.csv mut_bebouwing_allstock

cd tmpcsv
copy flow_*.csv ..\flow.csv
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

