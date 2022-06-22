Aby uruchomic program wszystkie pliki (poza plikami które są spakowane w formie zip) muszą znajdowac sie w jednym folderze, nastepnie w konsoli wpisujemy polecenie make i gdy nie zobaczymy żadnych błędów możemy uruchomić program poleceniem ./Code2 ostatnim krokiem jest wpisanie długosci boku aby program mógł obliczyc pole kwadratu oraz objętość sześcianu.
Jednak Gdy po poleceniu make pojawi sie błąd związany z bibliotekami należy użyc polecenia LD_LIBRARY_PATH=$(pwd), polecenie to powinno naprawić ten problem.
Aby uruchomić ostateczną wersje programu trzeba rozpakowac foldery spakowane w formie zip i dodać je do naszego poprzedniego folderu. Nastepnie uzywamy polecenia make clean, nastepnie znowu make i gdy nie pokazuje nam zadnych błedów mozemy uruchomic nasz program.
Jednak Gdy po poleceniu make pojawi sie błąd związany z bibliotekami należy użyc polecenia export LD_LIBRARY_PATH=/home/student/(folder w którym jestesmy)/lib, polecenie to powinno naprawić ten problem.

commity:
1. plik makefile, ktory tworzy najprostszy program
2. plik makefile, tworzony na podstawie biblioteki statycznej i dynamicznej
3. plik makefile, gdzie wykorzystane sa zmienne autoamtyczne
4. plik makefile, gdzie zastowosane regułe wzorców oraz funkcje usuwajacą plik
5. plik makefile, gdzie zastosowano regułe prefiksów
6. plik makefile, z rozpoznawianiem struktury drzewiastej
