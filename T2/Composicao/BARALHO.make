##################################################
###
### Diretivas de MAKE para o construto: BARALHO
### Gerado a partir de: ..\composicao\TesteBar.comp
###
### ----- Arquivo gerado, N�O EDITE!!! -----
###
##################################################

### Nomes globais

NOME            = BARALHO


### Nomes de paths

Ph                   = ..\Srcs\BARALHO
Pobj                 = ..\Objetos
Perr                 = ..\Produto
PDEFAULT             = ..\Srcs\BARALHO
Pc                   = ..\Srcs\BARALHO

### Nomes de diret�rios para gera��o

Fh                   = ..\Srcs\BARALHO
Fobj                 = ..\Objetos
Ferr                 = ..\Produto
FDEFAULT             = ..\Srcs\BARALHO
Fc                   = ..\Srcs\BARALHO

### Macros da plataforma


O       = /D_CRT_SECURE_NO_DEPRECATE
OD      = /Zi /Od /D_CRT_SECURE_NO_DEPRECATE
L       =
LD      = /DEBUG /DEBUGTYPE:CV

!IFDEF PRD
O       = /Ox  /D_CRT_SECURE_NO_DEPRECATE
!ENDIF

OPT     = /c /J /W4 /nologo
INCLUDE = $(INCLUDE);$(PDEFAULT)


### Regras de gera��o

all : limpa \
   $(Fobj)\testbar.obj   $(Fobj)\baralho.obj   $(Fobj)\lista.obj \
   Construto

### Limpar arquivos

limpa :
   ..\Ferramentas\CompileBanner /c$(NOME)
   ..\Ferramentas\CompileBanner /c$(NOME) >$(Ferr)\$(NOME).err


### Depend�ncias de m�dulos objeto a compilar

$(Fobj)\testbar.obj :  {$(Pc)}\testbar.c \
    {$(Ph)}baralho.h            {$(Ph)}generico.h           {$(Ph)}lerparm.h            \
    {$(Ph)}tst_espc.h          
   cl $(O) $(OPT) /Fo$(Fobj)\ $(Fc)\$(@B).c >> $(Ferr)\$(NOME).err

$(Fobj)\baralho.obj :  {$(Pc)}\BARALHO.C \
    {$(Ph)}LISTA.H		{$(Ph)}BARALHO.H	             
   cl $(O) $(OPT) /Fo$(Fobj)\ $(Fc)\$(@B).c >> $(Ferr)\$(NOME).err

$(Fobj)\lista.obj :  {$(Pc)}\lista.c \
    {$(Ph)}lista.h             
   cl $(O) $(OPT) /Fo$(Fobj)\ $(Fc)\$(@B).c >> $(Ferr)\$(NOME).err


### Termina��o

Construto : \
   $(Fobj)\testbar.obj   $(Fobj)\baralho.obj   $(Fobj)\lista.obj
    cd $(Fobj)
    LINK $(L) @$(NOME).build >> $(Ferr)\$(NOME).err

##################################################
###
### Fim de diretivas MAKE para o construto: BARALHO
###
##################################################

