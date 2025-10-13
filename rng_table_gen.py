# Compute a sine table in 8.8 fixed point values
import random

print("{")
for i in range(256):
    if i % 16 == 0 and i != 0:
        print("")
    val = int(random.randint(0, 65535))
    val = val
    if i != 255:
        print(val,end=', ')
    else:
        print(val)
print("};")