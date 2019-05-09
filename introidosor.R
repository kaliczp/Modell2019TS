## CO2
?co2
co2
tsp(co2)
end(co2)
time(co2)
time(co2)[1:13] #Az idő paraméter az első évben
cycle(co2)
as.vector(co2)[1:10] #Koncentráció vektora

plot(co2)

plot(co2,main="Szén-dioxid koncentráció (1959-1997)",xlab="",ylab="[ppm]",xaxs="i",typ="n")
grid(col="grey")
lines(co2,lwd=2)

##Trend idősor nemparamétere szűrővel
co2.ma3=filter(co2,c(1/3,1/3,1/3)) #Mozgó átlag 3 e. ablak

co2.ma3=filter(co2,c(1/3,1/3,1/3)) #Mozgó átlag 3 e. ablak
co2.ma4=filter(co2,c(rep(1/4,4))) #Mozgó átlag 4 e. ablak
co2.ma4jav=filter(co2,c(1/8,rep(1/4,3),1/8)) #Mozgó átlag javított 4 e. ablak
co2.ma12=filter(co2,c(1/24,rep(1/12,11),1/24)) #Mozgó átlag 12 e. ablak
lines(co2.ma12,col=3)

##Dekompozíció mozgóátlaggal
co2.dec <- decompose(co2)
plot(co2.dec)
