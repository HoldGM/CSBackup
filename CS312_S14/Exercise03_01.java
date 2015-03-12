import java.util.Scanner;

public class Exercise03_01
{
  public static void main (String[] args)
  {
    Scanner sc = new Scanner (System.in);
    System.out.print(" Enter a, b, c: ");
    double a = sc.nextDouble();
    double b = sc.nextDouble();
    double c = sc.nextDouble();
    double disc = Math.pow( Math.pow(b, 2) - 4 * a * c, 0.5);
    if ( disc == 0 )
    {
      double r = -b / (2 * a);
      r = Math.round(r * 1)/1;
      System.out.println("The equation has one root: " + r);
    }
    else if ( disc > 0 )
    {
      double r1 = (-b + Math.pow(Math.pow(b, 2) - (4 * a * c), 0.5)) / (2 * a);
      double r2 = (-b - Math.pow(Math.pow(b, 2) - (4 * a * c), 0.5)) / (2 * a);
      r1 = Math.round(r1 * 1000000)/1000000;
      r2 = Math.round(r2 * 100000)/100000;
      System.out.println ("The equation has two roots " + r1 + "  and " + r2); 
    }
    else
    {
      System.out.println ("The equation has no real roots");
    }
  }
}

