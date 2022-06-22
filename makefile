ALL = Code2 Code2.o pole.o obj.o bibloO.a bibloObj.so

all: $(ALL)
Code2.o: Code2.c
	gcc -c Code2.c

obj.o: obj.c
	gcc -fPIC -c obj.c

pole.o: pole.c
	gcc -c pole.c

bibloO.a: pole.o
	ar rs bibloO.a pole.o

bibloObj.so: obj.o
	gcc -shared -o bibloObj.so obj.o

Code2: Code2.o bibloO.a bibloObj.so
	gcc -o Code2 Code2.o bibloObj.so bibloO.a 
