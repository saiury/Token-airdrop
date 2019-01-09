import os
import sys
import json

os.system('truffle compile ' + sys.argv[1])

# name = sys.argv[1].rpartition('/')[2][:-4]
#
# f = open('./build/contracts/' + name + '.json')
# data = json.loads(f.read())
#
# f = open('./src/js/abi/' + name + '.js', 'w')
# f.write(name.upper() + ' = ' + json.dumps(data['abi']) + ';')

