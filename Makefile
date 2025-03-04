ASM = nasm
ASM_FLAGS = -f bin
SRC = src/boot.asm
OUT = bin/boot.bin

all: $(OUT)

$(OUT): $(SRC)
	$(ASM) $(ASM_FLAGS) -o $(OUT) $(SRC)

clean:
	rm -f $(OUT)