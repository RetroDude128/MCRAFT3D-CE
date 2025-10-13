# Compute a sine table in 8.8 fixed point values
import math

print("{")
for i in range(1024):
    if i % 16 == 0 and i != 0:
        print("")
    val = int(round(math.sin((math.tau) * (i / 1024)) * 256))
    val = val
    if i != 1023:
        print(val,end=', ')
    else:
        print(val)
print("};")