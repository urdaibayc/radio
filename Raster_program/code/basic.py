import pandas as pd

file_obj = open('radioDande.txt', 'r')
lines_colec = file_obj.readlines()
#mach_obj = str(lines_colec).find('Color Table (RGB with 256 entries)')
res=0
for l in range(len(lines_colec)):
    tmp = lines_colec[l].find('Color Table (RGB with 256 entries)')
    if(tmp == 2):
        res=l

elfinal = lines_colec[res+1:res+257]
fo = open("cosme.csv","w+")
fo.writelines(elfinal)
fo.close()

df = pd.read_csv("cosme.csv")
print(df.dtypes)
