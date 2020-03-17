# 1. Instalar Julia

Descargar JuliaPro v1.3.1-1 a partir del siguiente link:

https://juliacomputing.com/products/juliapro.html

Descargar versión compatible al sistema operativo, al lado del enlace de descarga hay un manual de instalacción (Quick-start Guide) con las instrucciones de instalación y ejecución del programa.

# 2. IDE para Julia
La distribución JuliaPro viene con dos IDE para escribir código en Julia, el primero es <a href=https://junolab.org/>Juno</a> y el segundo es <a href=https://github.com/JuliaLang/IJulia.jl>IJulia</a> el cual posee el entorno interactivo de Jupyter notebook (<a href=https://jupyter.org/>Jupyter notebook</a>).

Para abrir Jupyter notebook en el navegador se debe desde la consola de Julia ejecutar los siguientes comandos:

```julia
julia>  using IJulia
julia>  notebook()
```

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
- <a hred="http://www.juliaopt.org/JuMP.jl/stable/">Documentacipon JuMP</a>
