# SPDX-FileCopyrightText: 2021 Henrik Sandklef
#
# SPDX-License-Identifier: GPL-3.0-or-later

FLICT_LOGO = flict-logo
FLICT_LOGO_SVG = $(FLICT_LOGO).svg
GENERATED_DIR=generated

SIZES = 2048 1024 512 128 64 

all:
	$(foreach size,$(SIZES), inkscape -w $(size) -h $(size) $(FLICT_LOGO_SVG) -e $(GENERATED_DIR)/$(FLICT_LOGO)-$(size)-$(size).png ;)	

clean:
	rm *~
