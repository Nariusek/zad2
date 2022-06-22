ALL = Code2 Code2.o pole.o obj.o biblioO.a biblioObj.so 
.PHONY: clean

all: $(ALL)

%bj.o: 
	gcc -fPIC -c $<
%le.o: 
	gcc -c $<
%e2.o: 
	gcc -c $<
%le.a: 
	ar rs $@ $<
%bj.so: 
	gcc -shared -o $@ $<
%e2:
	gcc -o $@ $^	
Code2.o: Code2.c biblioObj.h biblioO.h
obj.o: obj.c
pole.o: pole.c
biblioO.a: pole.o
biblioObj.so: obj.o
Code2: Code2.o biblioO.a biblioObj.so
clean:
	rm -f Code2 *.o *.a *.so
