### Archivo preparacion.jl
### Version 2020, curso MA4702.
### Universidad de Chile.


#Funciones auxiliares

function dibuja(coordx,coordy,arcos)
## Recibe dos arreglos de N valores donde (coordx[i],coordy[i]) son las coordenadas de la ciudad i
## Recibe además una matriz arcos de N x N, donde arcos[i,j] es el peso del arco [i,j]
## Dibuja los N puntos en el plano y dibuja los arcos con ancho de linea proporcional al peso.
    N=length(coordx)
    scatter(coordx,coordy,txt=text.(1:N,10,:bottom))
    for k in findall(!iszero, arcos)
        plot!([coordx[k[1]],coordx[k[2]]],[coordy[k[1]],coordy[k[2]]],arrow = true,lc=:blue, linewidth = 2*arcos[k[1],k[2]])
    end
    display(plot!(leg=false))
end

function(lee_archivo(nombre_archivo))
## Recibe un archivo con las coordenadas de N ciudades, devolviendo N, las coordenadas x, las coordenadas y.
    archivo = open(nombre_archivo)
    Lineas = readlines(archivo)
    n = length(Lineas)
        coordx = []
        coordy = []
    for i in 1:n
        x,y=split(Lineas[i])
        push!(coordx,parse(Float64,x))
        push!(coordy,parse(Float64,y))
    end
    return n,coordx,coordy
end;

function encuentra_ciclo(arcos)
    N = size(arcos)[1]
    # Avanzo desde indice 1
    Visitados=[1]
    while true
        valor, siguiente = findmax(arcos[Visitados[end],1:N])
        if siguiente == 1
            break
        else
            push!(Visitados,siguiente)
        end
    end
    return Visitados;
end
