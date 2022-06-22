ALL = Code2 Code2.o pole.o obj.o biblioO.a biblioObj.so

all: $(ALL)
Code2.o: Code2.c
	gcc -c Code2.c
	gcc -c $<

obj.o: obj.c
	gcc -fPIC -c obj.c
	gcc -fPIC -c $<

pole.o: pole.c
	gcc -c pole.c
	gcc -c $<
	
biblioO.a: pole.o
	ar rs biblioO.a pole.o
	ar rs $@ $<

biblioObj.so: obj.o
	gcc -shared -o biblioObj.so Objetosc.o
	gcc -shared -o $@ $<

Code2: Code2.o biblioObj.a biblioObj.so
	gcc -o Code2 Code2.o biblioObj.so biblioO.a 
	gcc -o $@ $^ 
