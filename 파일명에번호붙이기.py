# -*- coding: utf-8 -*-
#파일명 앞에 번호를 붙여줍니다.

import os
import sys

#directory path
path_dir = '.'

#file sort
file_list = os.listdir(path_dir)
file_list.sort()


cnt = 1
for file in file_list:
    #실행파일은 변경안함
    if sys.argv[0].split("\\")[-1] == file:
        continue
    print(file)

    #파일이름변경
    new_file_name = str(cnt)+"."+file
    os.rename(file,new_file_name)
    cnt += 1
