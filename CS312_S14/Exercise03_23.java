import java.util.Scanner;

public class Exercise03_23
{
  public static void main (String[] args)
  {
    Scanner sc = new Scanner (System.in);
    System.out.print("Enter a point with two coordinates: ");
    double x = sc.nextDouble();
    double y = sc.nextDouble();
    boolean x_i = (x < 5) && (x > -5);
    boolean y_i = (y < 2.5) && (y > -2.5);
    if ( x_i == true && y_i == true)
    {
      System.out.println("Point (" + x + ", " + y + ") is in the rectangle");
    }
    else
    {
      System.out.println("Point (" + x + ", " + y + ") is not in the rectangle");
    }
  }
}
