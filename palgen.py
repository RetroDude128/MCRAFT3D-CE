f = open("palette.txt")
pal = f.read().replace("\n",'')

out = [int(pal[i:i+2], 16) for i in range(0, len(pal), 2)]
r,g,b = out[::3], out[1::3], out[2::3]

r = [int(i*0.25)>>3 for i in r] + [int(i*0.5)>>3 for i in r] + [int(i*0.75)>>3 for i in r] + [i>>3 for i in r]
g = [int(i*0.25)>>3 for i in g] + [int(i*0.5)>>3 for i in g] + [int(i*0.75)>>3 for i in g] + [i>>3 for i in g]
b = [int(i*0.25)>>3 for i in b] + [int(i*0.5)>>3 for i in b] + [int(i*0.75)>>3 for i in b] + [i>>3 for i in b]

r = [i<<10 for i in r]
g = [i<<5 for i in g]

codes = [f"0x{(v + g[i] + b[i]):04x}" for i,v in enumerate(r)]


print(codes)