import os
import time
import requests

file = ("https://raw.githubusercontent.com/HocasPocas/DuinoCoin_Miner/main/setup.sh")
r = requests.get(file)
with open("setup.sh", 'wb') as f:
  f.write(r.content)
  f.close()
os.system("clear")
os.system("bash setup.sh")
