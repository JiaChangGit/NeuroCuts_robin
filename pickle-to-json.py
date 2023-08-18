## python pickle-to-json.py demo.pkl
import pickle
from sys import argv

script, filename = argv

# Load the pickle format file
input_file = open(filename, 'rb')


inf = pickle.load(input_file)
inf=str(inf)
print(inf)
ft = open('test.txt', 'w')  
ft.write(inf)  
