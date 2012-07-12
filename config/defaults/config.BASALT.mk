# Config File for LINUX and INTEL Compiler
AR       = ar
AR_FLAGS = -rvs
RM       = /bin/rm -rf

FF90     = ifort
FFLAGS    =  -r8 -O2 -fPIC

CC       = gcc
CFLAGS   = -O2 -fPIC

COMPILER_NAME = intele
EXTRA_LIBS = -limf -lifcore

# Optional Things

# CGNS Functionality
#USE_CGNS = -DUSE_CGNS
#CGNS_LIB = -lcgns
#CGNS_INCLUDE = -I/usr/local/include/

# Tecplot Binary IO
# USE_TECIO = -DUSE_TECIO 
# TEC_LIB   = ../tecio/tecio.a
# LIBSTDCpp = -lstdc++

# Combine Flags
# ------------------------------------

FF90_FLAGS = $(FFLAGS) $(USE_CGNS) $(USE_TECIO) $(CGNS_INCLUDE) 
CC_FLAGS   = $(CFLAGS)
USER_LIBS = $(CGNS_LIB) $(TEC_LIB) $(LIBSTDCpp) $(EXTRA_LIBS)