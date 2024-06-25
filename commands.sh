# Write a shell script which will execute the following set of tasks:

# Create a folder named ‘sample’  in your ‘home’ directory
 #mkdir sample

# Inside ‘sample’ folder, create a file called ‘sample.txt’
touch sample.txt

# Add the following content to the file: 

# Hi! This is just a sample text file created using a shell script.
echo "Hi! This is a sample text file created using a shell script" > sample.txt

# Print the contents of the file. 
cat sample.txt

# Print the number of occurrences of letter ‘t’ in ‘sample.txt’
grep -o 't' sample.txt | wc -l 
# Change the owner's permissions to allow all the operations on the file. ( Read, Write, Execute )
chmod u+rwx sample.txt

# check what permissions are given to a file 
#ls -l
# Write a command to append following content in sample.txt file:

# Hi! This is just another sample text added to the file.
echo "Hi! this is another sample text added to the file" >> sample.txt

# Change the group permissions to allow only read operation.
chmod g=r sample.txt
# Change all users permission to deny any sort of access to ‘sample.txt’
chmod u-rwx sample.txt
# Write a command to create a file named sample2.txt with content similar to that of sample.txt
cat sample.txt >> sample2.txt
# Add some random 1000 lines in the sample.txt file.
for i in {1..1000}; do echo "random lines $i" >>sample.txt;done
# Write a command to print the top 50 lines of the file
head -n 50 sample.txt
# Write a command to print the bottom 50 lines of the file
tail -n 50 sample.txt
# Add 5 files in the same folder named: prog1.txt prog2.txt, program.txt, code.txt, info.txt
touch prog1.txt prog2.txt, program.txt, code.txt, info.txt
# Write the command to list files which have “prog” in its name
ls *prog*
# Create an alias of the command used at step o. Such that following command - `list prog`, should have the same output as of command at step o.
alias 'list prog'='ls *prog*'

# What is the difference between the source and sh commands?
# when we call source or . we load and execute a shell script into a current shell process so that we can 
# >read variables set in the sourced script
# >use functions defined within its
# *when we call sh it creates a new subshell and executes the script in this new subshell.
# *This subshell is a complete new shell independent of its parent shell and any changes made by the script persist in the current shell.
# *it is like initiating fork.forking creates your own copy of a repository in a remote location 

# Create two files “a.txt” and “b.txt”. Write a command to get the difference between the contents in two files.
diff a.txt b.txt 
# What is the difference between ls and lsof?
ls is used to list the contents of the current directory. It shows files , directories and their attributes within specified directory.
lsof (list open files) lsof is used to list information about files that are open by processes. It can show which files are being used by which processes, including regular files, directories, network sockets, and more.
# Create directories ./hello/world (World dir is inside hello dir) using mkdir command where neither hello or world exists. It should be a single command without the use of &&. 
mkdir -p hello/world
# How can you permanently set an environment variable using a bash terminal?

# You have some process running on a port in your system. How can you view and then kill the process from the terminal?
to view port Id : echo $$
to kill process : kill PID