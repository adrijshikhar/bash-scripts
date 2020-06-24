# bash-scripts

Bash scripts for all cloning and updating git repos under an organization you have access to.

To use the scipts, follow the steps :

1. Copy `cloneall.sh.example` to `cloneall.sh` and `updateall.sh.example` to `updateall.sh`
2. Enter your username and user token in the bash scripts.
3. Change the permissions by running
   ```chmod 755 ./cloneall.sh ./updateall.sh```
4. Run
   ```./cloneall.sh <location> <type of the repo> <user/organization>```
   to clone all the repos
   For eg
   ```./cloneall.sh . private sdslabs```
   to clone all private repos in current directory
5. Run
    ```./updateall.sh <location> <type of the repo> <user/organization>```
   to update the cloned repos
   For eg
   ```./updateall.sh . private sdslabs```
   to update all private repos in current directory
