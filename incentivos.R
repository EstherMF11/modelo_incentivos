#install.packages("dplyr")
library(dplyr)

#Leermos los ficheros
cobros <- read.csv("~/incentivos/data/cobros_gestor.csv")
tasa <- read.csv("~/incentivos/data/tasa_horaria.csv")
dimensionamiento <- read.csv("~/incentivos/data/Dimensionamiento.csv")
vacaciones <- read.csv("~/incentivos/data/vacaciones.csv")
segmento_maestra <- read.csv("~/incentivos/data/segmento_mestra.csv")
absentismo <- read.csv("~/incentivos/data/absentismo.csv")
calidad <- read.csv("~/incentivos/data/calidad.csv")
eficacia <- read.csv("~/incentivos/data/eficacias.csv")
normalizacion <- read.csv("~/incentivos/data/normalizacion.csv")
santander <- read.csv("~/incentivos/data/santandercf.csv")

## Creacion tabla RRHH
# Contiene la información dimensionamiento, presentismo, calidad y factor corrector para cada usuario
rrhh <- merge(dimensionamiento, vacaciones, by='usuario')
rrhh <- merge(rrhh, absentismo, by='usuario')
rrhh$horas_absentismo <- ifelse(rrhh$tipo=='hora', rrhh$total_solicitado, rrhh$total_solicitado*rrhh$horas_dia)
rrhh$horas_no_efectivas <- rrhh$horas_no_efectivas + rrhh$total_dias_solicitado*rrhh$horas_dia
rrhh %>% group_by(usuario, turno, horas_dia, horas_mes
                  0>½ summarise(horas = sum(horas_absentismo))

                                                                    
                                                                      