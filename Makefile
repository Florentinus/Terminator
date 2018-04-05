CC = gcc
NORME = 0
FILES = */*.c
CFLAGS = -Wall -Wextra -Werror
EXEC = trace

all: norme compiler

norme:
ifeq ($(NORME),1)
	@echo "Traitement en premier par la norminette"
	#norminette $(FILES)
else
	@echo "Pas de norminette pour toi"
endif

compiler:
	$(CC) -o $(EXEC) $(FILES) $(CFLAGS)
