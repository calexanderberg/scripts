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
  os.mkdir("{}/cleaned".format(arg))
except OSError as e:
   print("Directory exists")

# Uses the argument to read over all csv files in directory
directory=Path(arg)
files = directory.glob('*.csv')
def cleaner(files):
    for file in files:
      data = pd.read_csv(file)
      data.drop(['Volume', 'High', 'Low'], inplace=True, axis=1)
      print(data,'\n')

      """
      Need to simply write the files to the folder

      print(arg)
      print(path)
      print(file)
      #data.to_csv("{}/cleaned".format(arg), "/file")
      """

cleaner(files)



