# Plantilla para el Pre Procesado de Datos - Datos faltantes
# Importar el dataset
dataset = read.csv('Data.csv')


# Tratamiento de los valores NA
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)
dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)
#otra forma posible:
#dataset$Age[is.na(dataset$Age)] <-mean(dataset$Age,na.rm=T)
#dataset$Salary[is.na(dataset$Salary)] <-mean(dataset$Salary,na.rm=T)