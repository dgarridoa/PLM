# 1. Instalar Julia

## Opción 1
Instalar solo <a href="https://julialang.org/downloads/">Julia</a>, esta versión permite usar Julia desde una terminal. En la misma página están las instrucciones para añadir Julia a la variable de entorno PATH para así poder llamar julia mediante la terminal a través del comando `julia`.

## Opción 2 (no recomendado para OS Windows)
Descargar JuliaPro v1.3.1-1 a partir del siguiente link:

https://juliacomputing.com/products/juliapro.html

Descargar versión compatible al sistema operativo, al lado del enlace de descarga hay un manual de instalacción (Quick-start Guide) con las instrucciones de instalación y ejecución del programa.

# 2. IDE para Julia

## Jupyter Notebook
Julia cuenta con <a href=https://github.com/JuliaLang/IJulia.jl>IJulia</a>, un paquete que permite utilizar el entorno interactivo de <a href=https://jupyter.org/>Jupyter notebook</a>.

Para abrir Jupyter notebook en el navegador se debe desde la consola de Julia ejecutar los siguientes comandos:

```julia
julia>  using IJulia
julia>  notebook()
```

## JUNO
La distribución JuliaPro viene <a href=https://junolab.org/>Juno</a>, editor de código construido sobre ATOM.

## Otros

También es posible usar Julia con IDEs genéricas, como lo son ATOM, VSCode, etc.

# 3. Instalar Gurobi y JuMP
Descargar gurobi v9.0.1 en el siguiente link, en el mismo link en el archivo README están las instrucciones de instalación:

https://www.gurobi.com/downloads/gurobi-software/

Solicitar la licencia aquí:

https://www.gurobi.com/downloads/end-user-license-agreement-academic/

Para activar la licencia desde un computador con gurobi instalado se debe estar conectado a la red FCFM o conectar a <a href=https://www.cec.uchile.cl/vpn/>VPN</a>. Instrucciones de activación en esta url:

https://www.gurobi.com/downloads/free-academic-license/


Para instalar la API de gurobi de Julia seguir las instrucciones de esta url:

https://github.com/JuliaOpt/Gurobi.jl


Para instalar <a hred="http://www.juliaopt.org/JuMP.jl/stable/">JuMP</a>:
```julia
Pkg.add(PackageSpec(url="https://github.com/JuliaOpt/JuMP.jl/", rev="master"))

```

### Nota:

Los paquetes se pueden instalar desde Jupyter o desde la terminal de Julia, si la instalación falla en Jupyter se sugiere instalar desde la terminal de julia,  al entrar a la terminal escribir `]` para entrar el modo gestor de paquetes, para salir del modo apretar `backspace`, por ejemplo:
```julia
#instalar
pkg> add GLPK #primera opción
pkg> build GLPK #segunda opción si no funciona el primero
#apretar backspace
julia> using GLPK #importar paquete
```

Alternativamente:
```julia
julia>  using Pkg
julia>  Pkg.add("GLPK")  #primera opción
julia>  Pkg.build("GLPK") #segunda opción si no funciona el primero
```

# 4. Documentación y guías

- <a href=https://juliaacademy.com/p/intro-to-julia>Introducción a Julia</a>
- <a href=https://docs.julialang.org/en/v1/>Documentación Julia</a>
- <a href=https://www.gurobi.com/documentation/9.0/refman/index.html>Documentación Gurobi</a>
- <a href="http://www.juliaopt.org/JuMP.jl/stable/">Documentación JuMP</a>
