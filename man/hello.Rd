###################################################################
############################## PRACTICA DE RECONOCIMIENTO #######
############################## REALIZADO POR MABEL ANGUISACA#######
############################## FECHA 13/02/A:3pm          #########
##################################################################
# Función para realizar operaciones básicas y calcular potencias
calculadora <- function() {
  repeat {
    cat("\nSeleccione una opción:\n")
    cat("1: Sumar\n")
    cat("2: Restar\n")
    cat("3: Multiplicar\n")
    cat("4: Dividir\n")
    cat("5: Potencia\n")
    cat("6: Salir\n")

    opcion <- as.integer(readline(prompt = "Ingrese su opción: "))

    if (opcion == 6) {
      cat("Saliendo del programa...\n")
      break
    }

    if (opcion >= 1 && opcion <= 5) {
      if (opcion <= 4) {
        a <- as.numeric(readline(prompt = "Ingrese el primer número: "))
        b <- as.numeric(readline(prompt = "Ingrese el segundo número: "))
      }

      switch(opcion,
             {
               resultado <- a + b
               cat("Resultado de la suma:", resultado, "\n")
             },
             {
               resultado <- a - b
               cat("Resultado de la resta:", resultado, "\n")
             },
             {
               resultado <- a * b
               cat("Resultado de la multiplicación:", resultado, "\n")
             },
             {
               if (b == 0) {
                 cat("Error: División por cero\n")
               } else {
                 resultado <- a / b
                 cat("Resultado de la división:", resultado, "\n")
               }
             },
             {
               base <- as.numeric(readline(prompt = "Ingrese la base: "))
               exponente <- as.numeric(readline(prompt = "Ingrese el exponente: "))
               resultado <- base ^ exponente
               cat("Resultado de", base, "elevado a", exponente, "es:", resultado, "\n")
             }
      )
    } else {
      cat("Opción no válida. Intente de nuevo.\n")
    }
  }
}
