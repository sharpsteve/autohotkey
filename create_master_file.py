# Purpose:    Concatenate all ahk files in folder in to one main file.
# Author:     Stephen Sharp
# Date:       02/19/20
# Notes:

import glob
import shutil
import pathlib
import os

master_filename = 'master.ahk'

# Remove existing master_filename if exists
file = pathlib.Path(master_filename)
if file.exists():
    os.remove(master_filename)

with open(master_filename,'w') as master_file:
    # Add a file header
    master_file.write('; \r\n; master.ahk\r\n; \r\n')

with open(master_filename,'wb') as master_file:

    # Concatenate all files in the ahk_repo folder to the master_filename file
    for file in glob.glob("./ahk_repo/*.ahk"):
        with open(file,'rb') as fd:
            # Add a header for the file being added
            shutil.copyfileobj(fd, master_file)
