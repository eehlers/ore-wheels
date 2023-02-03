import os

os.environ['ORE']='/home/runner/work/ore-wheels/ore-wheels/ore'
ORE=os.environ['ORE']
print(f'ORE={ORE}')
ql_compile_args = os.popen('./oreanalytics-config --cflags').read()[:-1].split()
print('ql_compile_args={}'.format(ql_compile_args))

