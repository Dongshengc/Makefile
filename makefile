CC = g++
objects = main.o print_str.o print_int.o

edit: $(objects)
	$(CC) -o edit $(objects)

main.o: print_int.h print_int.cpp print_str.h print_str.cpp
print_int.o: print_int.h 
print_str.o: print_str.h 


.PHONY = clean
clean:
	@echo "Cleaning up..."
	rm edit $(objects)
