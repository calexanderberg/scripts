from pathlib import Path
import pandas as pd  
import os
import sys

# Checks if system path exists and does last checks
path=sys.argv[1]
arg=os.path.abspath(path)
if os.path.exists(path):
  print("Path found, continuing the program.")
  print("\nYour input was:")
  print(arg, '\n')
  check = input("Do you want to continue? [y/n] ")
  if check == "y":
    print("Understood, continuing the program.")
  else:
    print("You selected no or a wrong input, shutting down.")
    exit()
else: 
  print("Path not found, exiting the program.")
  print("Your input was:")
  print(arg)
  exit()
  
# Creates the new directory for the cleaned data, unless otherwise created
try:
  os.mkdir("{}/cleanedData".format(arg))
except OSError as e:
   print("Directory exists\n")

# Uses the argument to read over all csv files in directory
directory=Path(arg)

files = directory.glob('*.csv')
def cleaner(files):
    for file in files:
      data = pd.read_csv(file)
      data.drop(['Volume', 'High', 'Low'], inplace=True, axis=1)
      

      filename=str(file).replace(arg + '/', "")
      data.to_csv(arg + '/cleanedData/' + filename)
      print(filename, 'cleaned and moved to directory \'cleanedData\'')

cleaner(files)
print('\nFiles cleaned and process finished')
print('Have a good day.')