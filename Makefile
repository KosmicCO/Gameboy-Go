ASM=rgbasm
OUT=go.gb
ODIR=build

FIXOPTS = -v -p 0
OBJ = main.o
DIRS = $(ODIR)

%.o: %.asm
	$(ASM) -o $(ODIR)/$@ $<

$(OUT): $(OBJ)
	rgblink -o $(ODIR)/$(OUT) $(ODIR)/$^
	rgbfix $(FIXOPTS) $(ODIR)/$(OUT)

.PHONY: clean

clean:
	rm -rf $(ODIR)

directories: $(ODIR)
	mkdir $(ODIR)
	
$(shell mkdir -p $(DIRS))
