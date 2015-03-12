
import java.util.Scanner;

public class Exercise04_07
{
  public static void main (String[] args)
  {
    Scanner sc = new Scanner (System.in);
    System.out.print ("Enter the radius of the bounding circle: ");
    double r = sc.nextDouble();
    double rad = (Math.PI / 2) - ((2 * Math.PI)/5);
    System.out.println (rad);
    while ( rad <= (2 * Math.PI))
    {
    double x = r * Math.cos(rad);
    double y = r * Math.sin(rad);
    System.out.printf ("%6.5f, %4.4f", x, y);
    System.out.println (" ");
    rad = rad + ((2 * Math.PI)/5);
    }
  }
}
