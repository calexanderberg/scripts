# scripts
A collection of personal scripts I have built and use.

Below is a small description of these scripts:

### basher
Takes a file of the users choice, copies it, makes the file executable, and moves it to the usr/locale/bin folder.

Obviously this command is a security risk as it will allow anyone to make a file executable. This is why I forced it to use sudo (even though I am aware it has security risks as well) and added mulitple places where the user could stop the script from being run. 

I wanted a quick and easy way for me to add files to said directory automatically, so this was the result. If you find any problems with it or know how to make it better, feel free to hit me up!

### cleaner
A file used to clean up certain columns in csv files. Used to clean up data that will be used for a future AI project of mine.

### gits
Git pulls and checks the status of the git repository, then asks if the user wants to update it. It wll then asks for an input text, then runs git add, commit, and push with said message. 

This was created for personal projects where I got tired of writitng three commands when I am the only programmer of said repository.

Update: I watched soem tutorials to make git easier to use, for example using alias and "git commit -am" instead of "git add .; git commit -m". Therefore I will not use this as to get more familiar with the industry standard.
