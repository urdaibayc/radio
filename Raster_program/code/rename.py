import os
import shutil

os.chdir('/home/urdaibayc/Programas/Qgis/Raster_program/code')
files = os.listdir('/home/urdaibayc/Programas/Qgis/TestQgis/testfiles')
paises = []
contador_paises = -1
radios = []
contador_radios = -1
contador_global = 0
path = '/home/urdaibayc/Programas/Qgis/TestQgis/Cartes_individuelles/'
path_out = '/home/urdaibayc/Programas/Qgis/TestQgis/out/'
for i in os.walk(path):
    print(i[0])
    if len(i[2]) != 0:
        contador_radios = contador_radios + 1
        contador_global = contador_global + 1
        radio_files = os.listdir(str(i[0]))
        for f in range(len(radio_files)):
             temp = str(contador_global)+'_'+paises[contador_paises-1]+"_"+radio_files[f].replace(' ', '_')
             shutil.copyfile(str(i[0]+"/"+radio_files[f]),
                             str(path_out+temp))
    else:
        print(str(i[1])+'\n')
        if(contador_paises==-1):
            paises = os.listdir(str(i[0]))
            contador_paises = contador_paises + 1
        else:
            radios = os.listdir(str(i[0]))
            contador_radios = -1
            contador_paises = contador_paises + 1
