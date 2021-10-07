#-------------------------------------------------
# FileName: make.sh
# Author: Safin (zhaoqid@zsc.edu.cn)
# Version: 0.1
# Date: 2020-05-12
# Description: xelatex + bibtex + xelatex*2
# Others: 需要一个tmp目录，存放编译结果和中间文件
#         Linux，mac直接运行
#         windows请安装cmder再运行 
# History: origin
#-------------------------------------------------

# 1
xelatex -synctex=1 -interaction=nonstopmode -output-directory=tmp main.tex 

# 2 编译参考文献
bibtex tmp/main

# 3
xelatex -synctex=1 -interaction=nonstopmode -output-directory=tmp main.tex 

# 4
xelatex -synctex=1 -interaction=nonstopmode -output-directory=tmp main.tex 
