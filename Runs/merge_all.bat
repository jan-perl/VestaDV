Set Run1=Run4Combi_2016_Referentie
Set Run2=Run4Combi_2016_Referentie_Verhoging50cent

REM Set Run3=NaamExtraScenario1
REM Set Run4=NaamExtraScenario2
REM Set Run5=NaamExtraScenario3

call python linenumbers.py %Run1% mut_allflow_%Run1%.csv mut_lijst
call python linenumbers.py %Run1% mut_allstock_%Run1%.csv mut_allstock_lijst
call python linenumbers.py %Run1% matrix_allflow_%Run1%.csv matrix_allflow
call python linenumbers.py %Run1% matrix_allstock_%Run1%.csv matrix_allstock
call python linenumbers.py %Run1% flow_%Run1%.csv NL
call python linenumbers.py %Run1% Gebiedsmaatregelen_%Run1%.csv gebiedsmaatregelen
call python linenumbers.py %Run1% Opwekking_%Run1%.csv opwekking
call python linenumbers.py %Run1% Verbetering_%Run1%.csv verbetering
call python linenumbers.py %Run1% mut_bebouwing_allflow_%Run1%.csv mut_bebouwing_allflow
call python linenumbers.py %Run1% mut_bebouwing_allstock_%Run1%.csv mut_bebouwing_allstock

call python linenumbers.py %Run2% mut_allflow_%Run2%.csv mut_lijst
call python linenumbers.py %Run2% mut_allstock_%Run2%.csv mut_allstock_lijst
call python linenumbers.py %Run2% matrix_allflow_%Run2%.csv matrix_allflow
call python linenumbers.py %Run2% matrix_allstock_%Run2%.csv matrix_allstock
call python linenumbers.py %Run2% flow_%Run2%.csv NL
call python linenumbers.py %Run2% Gebiedsmaatregelen_%Run2%.csv gebiedsmaatregelen
call python linenumbers.py %Run2% Opwekking_%Run2%.csv opwekking
call python linenumbers.py %Run2% Verbetering_%Run2%.csv verbetering
call python linenumbers.py %Run2% mut_bebouwing_allflow_%Run2%.csv mut_bebouwing_allflow
call python linenumbers.py %Run2% mut_bebouwing_allstock_%Run2%.csv mut_bebouwing_allstock

REM call python linenumbers.py %Run3% mut_allflow_%Run3%.csv mut_lijst
REM call python linenumbers.py %Run3% mut_allstock_%Run3%.csv mut_allstock_lijst
REM call python linenumbers.py %Run3% matrix_allflow_%Run3%.csv matrix_allflow
REM call python linenumbers.py %Run3% matrix_allstock_%Run3%.csv matrix_allstock
REM call python linenumbers.py %Run3% flow_%Run3%.csv NL
REM call python linenumbers.py %Run3% Gebiedsmaatregelen_%Run3%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run3% Opwekking_%Run3%.csv opwekking
REM call python linenumbers.py %Run3% Verbetering_%Run3%.csv verbetering
REM call python linenumbers.py %Run3% mut_bebouwing_allflow_%Run3%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run3% mut_bebouwing_allstock_%Run3%.csv 

REM call python linenumbers.py %Run4% mut_allflow_%Run4%.csv mut_lijst
REM call python linenumbers.py %Run4% mut_allstock_%Run4%.csv mut_allstock_lijst
REM call python linenumbers.py %Run4% matrix_allflow_%Run4%.csv matrix_allflow
REM call python linenumbers.py %Run4% matrix_allstock_%Run4%.csv matrix_allstock
REM call python linenumbers.py %Run4% flow_%Run4%.csv NL
REM call python linenumbers.py %Run4% Gebiedsmaatregelen_%Run4%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run4% Opwekking_%Run4%.csv opwekking
REM call python linenumbers.py %Run4% Verbetering_%Run4%.csv verbetering
REM call python linenumbers.py %Run4% mut_bebouwing_allflow_%Run4%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run4% mut_bebouwing_allstock_%Run4%.csv mut_bebouwing_allstock

REM call python linenumbers.py %Run5% mut_allflow_%Run5%.csv mut_lijst
REM call python linenumbers.py %Run5% mut_allstock_%Run5%.csv mut_allstock_lijst
REM call python linenumbers.py %Run5% matrix_allflow_%Run5%.csv matrix_allflow
REM call python linenumbers.py %Run5% matrix_allstock_%Run5%.csv matrix_allstock
REM call python linenumbers.py %Run5% flow_%Run5%.csv NL
REM call python linenumbers.py %Run5% Gebiedsmaatregelen_%Run5%.csv gebiedsmaatregelen
REM call python linenumbers.py %Run5% Opwekking_%Run5%.csv opwekking
REM call python linenumbers.py %Run5% Verbetering_%Run5%.csv verbetering
REM call python linenumbers.py %Run5% mut_bebouwing_allflow_%Run5%.csv mut_bebouwing_allflow
REM call python linenumbers.py %Run5% mut_bebouwing_allstock_%Run5%.csv mut_bebouwing_allstock



