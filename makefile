vpath %.c src
vpath %.h include
vpath %.a lib
vpath %.so lib
all: $(ALL)

%bj.o: 
	gcc -fPIC -c $< 
%le.o: 
	gcc -c $<
%e2.o: 
	gcc -c $< -L./lib -I./include
%oO.a: 
	ar rs $@ $<
%bj.so: 
	gcc -shared -o $@ $<
%e2:
	gcc -o $@ $^	-L./lib -I./include
Code2.o: Code2.c biblioObj.h biblioO.h
obj.o: obj.c
pole.o: pole.c
biblioO.a: pole.o
biblioObj.so: obj.o
Code2: Code2.o biblioO.a biblioObj.so
clean:
	rm -f ./bin/Code2 *.o ./lib/*.a ./lib/*.so
movefiles:
	mv biblioObj.so ./lib
	mv biblioO.a ./lib
	mv Code2 ./bin
