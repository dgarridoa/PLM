### Cutting Stock Problem
### José Soto. PLM 2020
### Universidad de CHile

function(lee_cuttingstock(nombre_archivo_csv))
## Recibe un archivo csv con 2 columnas: "Ancho" y "Demanda"
## La primera fila es el ancho del tronco (solo su ancho. La demanda es 0)
## El resto de las filas son los pedidos 
    df = CSV.read(nombre_archivo_csv)
    s = size(df,1) # numero de filas
    anchotronco = df[1,1] # ancho en primera fila
    ancho = df[2:s,1]
    demanda = df[2:s, 2]
    display(df[2:s,:])
    return anchotronco, ancho, demanda
end;

function grafica(ancho, yvalues, zvalues)
	m=size(zvalues,1)
	N=size(zvalues,2)
	A=zeros(m,N)
	indices= findall(a->a>=1, yvalues)
	ind=size(indices,1)
	for i in 1:m, j in indices
		A[i,j]=zvalues[i,j]*ancho[i]
	end
	display(groupedbar(permutedims(A[1:m,indices]), bar_position = :stack, bar_width=0.7, label = permutedims(string.(1:m).*" : ".*(string.(ancho))), xtick=(1:ind, string.(indices)), legend = :outertopright))
end

function graficapatrones(ancho, patron, xvalues)
	m=size(patron,1)
	N=size(patron,2)
	A=zeros(m,N)
	indices= findall(a->a>=0.01, xvalues)
	ind=size(indices,1)
	for i in 1:m, j in indices
		A[i,j]=patron[i,j]*ancho[i]
	end
	display(groupedbar(permutedims(A[1:m,indices]), bar_position = :stack, bar_width=0.7, label = permutedims(string.(1:m).*" : ".*(string.(ancho))), xtick=(1:ind, string.(xvalues[indices])), legend = :outertopright))
end
	


