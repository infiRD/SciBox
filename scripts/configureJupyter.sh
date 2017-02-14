#!/bin/bash

# This script will generate Jupyter configuration file: 
# ~/.jupyter/jupyter_notebook_config.py as follows:

CONFIG="$HOME/.jupyter/jupyter_notebook_config.py"

echo "# Config generated by Scibox provisioning script" > $CONFIG
echo "" >> $CONFIG

# cannot use absolute paths with $HOME, nor ~ - c.NotebookApp.notebook_dir = ''
# we will have to specify notebook directory at jupyter startup as:
# jupyter notebook --notebook-dir=~/src
printf "%s\n%s\n%s\n%s\n" \
       "c.NotebookApp.ip = '0.0.0.0'" \
       "c.NotebookApp.open_browser = False" \
       "c.NotebookApp.port = 8888" \
       "c.NotebookApp.token = 'scibox'" \
 >> $CONFIG
