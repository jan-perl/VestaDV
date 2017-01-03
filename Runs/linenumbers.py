import os
import sys


#inputdir = r"Y:\data\Vesta\v2\automatisering\automatisering_juni2016_python\test\Run4Combi_2016_Referentie"
#outfile = r"Y:\data\Vesta\v2\automatisering\automatisering_juni2016_python\test\eindresultaat_mut.csv"
#methodlist = "mut_lijsT"
if (len(sys.argv) != 4):
    print "Give first argument the output directory of VESTA."
    print "Give second argument the filename of the merged output."
    print "Give third argument the naame of the module that contains the sortlist information."
    sys.exit(1)
inputdir = sys.argv[1]
outfile = sys.argv[2]
methodlist = sys.argv[3]

if (methodlist == "mut_lijst"):
    from mut_lijst import *
elif (methodlist == "mut_allstock_lijst"):
    from mut_allstock_lijst import *
elif (methodlist == "matrix_allflow"):
    from matrix_allflow import *
elif (methodlist == "matrix_allstock"):
    from matrix_allflow import *
elif (methodlist == "NL"):
    from NL import *
elif (methodlist == "gebiedsmaatregelen"):
    from gebiedsmaatregelen import *
elif (methodlist == "opwekking"):
    from opwekking import *
elif (methodlist == "verbetering"):
    from verbetering import *
elif (methodlist == "mut_bebouwing_allflow"):
    from mut_bebouwing_allflow import *
elif (methodlist == "mut_bebouwing_allstock"):
    from mut_bebouwing_allstock import *
else:
    raise IOError("Import module is not correct.Specify another sortinglist.")

# Get all objects (years) on the outputdirectory
years = []
filelist = os.listdir(inputdir)
for obj in filelist:
    if (os.path.isdir(os.path.join(inputdir,obj))):
        # Check whether it is a year
        try:
            year = int(obj)
            years.append(year)
        except ValueError:
            # No year, so directory is skipped.
            print obj + " is not a year. Directory is skipped"

# Sort years.
years.sort()

# Sort the filenames
sortlist.sort()

fp_out = open(outfile,"w")
for year in years:
    for item in range(len(sortlist)):
        filename = os.path.join(inputdir,os.path.join(str(year),sortlist[item][1]))
        lexist = True
        if (not os.path.isfile(filename)):
            if (sortlist[item][2]):
                raise IOError("File: " + filename + " does not exist")
            else:
                print "File "+ filename + " is missing."
            lexist = False
            lines = []
        else:
            fp = open(filename,"r")
            lines = fp.readlines()
            fp.close()
        fp_out.write(filename + "\n")
        if (len(lines) > sortlist[item][3]):
            print "Length of file: " + sortlist[item][1] + " is too short."
            print "Length of file: " + sortlist[item][1] + " must be: ", len(lines)
            raise IOError()
        for line in lines:
            fp_out.write(line)
        for item in range(len(lines),sortlist[item][3]):
            fp_out.write("\n")
fp_out.close()