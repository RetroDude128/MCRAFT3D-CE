# ----------------------------
# Makefile Options
# ----------------------------

NAME = MCRAFT3D
ICON = icon.png
DESCRIPTION = "Minecraft 3D"
COMPRESSED = NO
COMPRESSED_MODE = zx7

CFLAGS = -Wall -Wextra -O3
CXXFLAGS = -Wall -Wextra -O3

# ----------------------------

include $(shell cedev-config --makefile)
