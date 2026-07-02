#---------------------------------------------------------------------------------
# Clear the implicit built in rules
#---------------------------------------------------------------------------------
.SUFFIXES:
#---------------------------------------------------------------------------------
all:
	@$(MAKE) -C libNoRSX --no-print-directory

install:
	@$(MAKE) -C libNoRSX install --no-print-directory

clean:
	@$(MAKE) -C libNoRSX clean --no-print-directory
	@$(MAKE) -C NoRSX_Example clean --no-print-directory
	@rm -rf *~

.PHONY: all install clean

