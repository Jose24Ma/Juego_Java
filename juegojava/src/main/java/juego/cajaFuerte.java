package juego;

import java.util.Arrays;
import  java.util.Scanner;

public class cajaFuerte 
{
  public static void main(String[] args) 
  {
    Scanner sc = new Scanner(System.in);
    int n; // número de dígitos de la combinación
              
    System.out.print("¿Cuántas cifras quieres para la combinación secreta? ");
    n = sc.nextInt();
              
    int c[] = new int[n]; // Creo un arrays con n posiciones que será la clave.
    int s[] = new int[n]; // Aquí guardo la respuesta del usuario por teclado.
              
    for (int i = 0; i < c.length; i++) 
    { // Genero la clave.          
      c[i] = (int) ((Math.random() * 6));
    }
    System.out.println("La combinación tiene " + n + " dígitos, cada uno de ellos entre 0 y 5.");
              
    while (Arrays.equals(c, s) == false) 
    { // Mientras no se acierte se permanece en el bucle While
      System.out.println("Introduce los dígitos uno a uno pulsando intro: ");
                  
      for (int j = 0; j < s.length; j++) 
      {        
        s[j] = sc.nextInt();
      }           
      for (int v = 0; v < c.length; v++) 
      { // Este bucle compara dígito a digito y te dice si es < ó >      
        if (s[v] > c[v]) 
        {
          System.out.println("La clave " + (v+1) + " es menor.");
        }
        else if (s[v] == c[v]) 
        {
          System.out.println("La clave " + (v+1) + " es CORRECTA");
        }
        else
        { 
          System.out.println("La clave " + (v+1) + " es mayor.");
        }		
      }             
    } // While         
    System.out.println("¡Enhorabuena, acertaste! La combinación era " + Arrays.toString(c));   
    sc.close(); 
    }    
}
