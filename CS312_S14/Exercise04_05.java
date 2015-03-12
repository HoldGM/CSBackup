import java.util.*;

public class Exercise04_05
{
  public static void main (String[] args)
  {
    Scanner sc = new Scanner (System.in);
    System.out.print ("Enter the number of sides: ");
    double n = sc.nextDouble();
    System.out.print ("Enter the side: ");
    double s = sc.nextDouble();
    double area = (n * Math.pow(s,2)) / (4 * Math.tan(Math.PI / n));
    System.out.println ("The area of the polygon is " + area);
  }
}
