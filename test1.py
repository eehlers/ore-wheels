import os

ORE=os.environ['ORE']
print(f'ORE={ORE}')
ql_compile_args = os.popen('./oreanalytics-config --cflags').read()[:-1].split()
print('ql_compile_args={}'.format(ql_compile_args))

