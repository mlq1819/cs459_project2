P=program1
Q=program2
S=program3
CFLAGS= -g -Wall

all: $(P) $(Q) $(S)

$(P): $(P).o
	g++ $(CFLAGS) $(P).o -o $(P)
	
$(P).o: $(P).cpp
	g++ $(CFLAGS) -c $(P).cpp -o $(P).o
	
$(Q): $(Q).o
	g++ $(CFLAGS) $(Q).o -o $(Q)
	
$(Q).o: $(Q).cpp
	g++ $(CFLAGS) -c $(Q).cpp -o $(Q).o

$(S): $(S).o
	g++ $(CFLAGS) $(S).o -o $(S)
	
$(S).o: $(S).cpp
	g++ $(CFLAGS) -c $(S).cpp -o $(S).o
	
clean:
	rm -rf $(P)
	rm -rf $(P).o
	rm -rf $(Q)
	rm -rf $(Q).o
	rm -rf $(S)
	rm -rf $(S).o