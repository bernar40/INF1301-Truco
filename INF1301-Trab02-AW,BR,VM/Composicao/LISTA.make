##################################################
###
### Diretivas de MAKE para o construto: LISTA
### Gerado a partir de: ..\composicao\TesteLista.comp
###
### ----- Arquivo gerado, N�O EDITE!!! -----
###
##################################################

### Nomes globais

NOME            = LISTA


### Nomes de paths

Ph                   = ..\Srcs\LISTA
Pobj                 = ..\Objetos
Perr                 = ..\Produto
PDEFAULT             = ..\Srcs\LISTA
Pc                   = ..\Srcs\LISTA

### Nomes de diret�rios para gera��o

Fh                   = ..\Srcs\LISTA
Fobj                 = ..\Objetos
Ferr                 = ..\Produto
FDEFAULT             = ..\Srcs\LISTA
Fc                   = ..\Srcs\LISTA

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
   $(Fobj)\testlis.obj   $(Fobj)\lista.obj \
   Construto

### Limpar arquivos

limpa :
   ..\Ferramentas\CompileBanner /c$(NOME)
   ..\Ferramentas\CompileBanner /c$(NOME) >$(Ferr)\$(NOME).err


### Depend�ncias de m�dulos objeto a compilar

$(Fobj)\testlis.obj :  {$(Pc)}\testlis.c \
    {$(Ph)}generico.h           {$(Ph)}lerparm.h            {$(Ph)}lista.h              \
    {$(Ph)}tst_espc.h          
   cl $(O) $(OPT) /Fo$(Fobj)\ $(Fc)\$(@B).c >> $(Ferr)\$(NOME).err

$(Fobj)\lista.obj :  {$(Pc)}\lista.c \
    {$(Ph)}lista.h             
   cl $(O) $(OPT) /Fo$(Fobj)\ $(Fc)\$(@B).c >> $(Ferr)\$(NOME).err


### Termina��o

Construto : \
   $(Fobj)\testlis.obj   $(Fobj)\lista.obj
    cd $(Fobj)
    LINK $(L) @$(NOME).build >> $(Ferr)\$(NOME).err

##################################################
###
### Fim de diretivas MAKE para o construto: LISTA
###
##################################################

