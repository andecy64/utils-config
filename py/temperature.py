import psutil
print(psutil.sensors_temperatures())
templist = psutil.sensors_temperatures()
for ref, obj in templist.items():
    print(ref)
