ALL = Code2 Code2.o pole.o obj.o biblioO.a biblioObj.so

all: $(ALL)

.c.o: 
	gcc -fPIC -c $<
.o:
	gcc -o $@ $^	
Code2.o: Code2.c
	gcc -c $<

obj.o: obj.c
	gcc -fPIC -c $<

pole.o: pole.c
	gcc -c $<
Code2: Code2.o biblioO.a biblioObj.so
biblioO.a: pole.o
	ar rs $@ $<

biblioObj.so: obj.o
	gcc -shared -o $@ $<

Code2: Code2.o biblioO.a biblioObj.so
	gcc -o $@ $^
	gcc -shared -o $@ $<
