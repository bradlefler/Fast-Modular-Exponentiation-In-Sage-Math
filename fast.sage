b = 65535
e = 7487842353213287802429186374183
m = 29417527610194982634174753187801
k = []
n = []
a = []
counter = 0
count = 0
n.append(e)
if is_odd(ZZ(e)):
       a.append(1)
if is_even(ZZ(e)):
       a.append(0)
k.append(count)
while n[count] != 1:
       count = count + 1
       k.append(count)
       n.append(floor(n[count - 1]/2))
       if is_odd(ZZ(n[count])):
              a.append(1)
       if is_even(ZZ(n[count])):
              a.append(0)
L = []
L.append(b)

for i in range(count):
       num = L[i]
       L.append(mod(num*num, m))
       counter = counter + 1
res = 1
for i in range(count + 1):
       if a[i] == 1:
              res = res * L[i]

ans = mod(res, m)
counter = counter + 1
print(ans)
print(counter)
