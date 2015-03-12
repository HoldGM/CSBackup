import java.util.*;

public class Exercise05_45
{
  public static void main (String[] args)
  {
    Scanner sc = new Scanner (System.in);
    System.out.print ("Enter ten numbers: ");
    double mean = 0;
    double dev = 0;
    double sum = 0;
    double[] inputs = new double[10];
    for (int i = 0; i<10; i++)
    {
      inputs[i] = sc.nextDouble();
    }
    for (int i=0; i<10; i++)
    {
      sum += inputs[i];
    }
    mean = sum/10.0;
    System.out.println ("The mean is " + mean);
    sum = 0;
    for (int i = 0; i<10; i++)
    {
      sum +=Math.pow( (inputs[i]-mean), 2);
    }
    sum = Math.sqrt(sum/9.0);
    System.out.printf ("The standard deviation is %2.5f", sum);
    System.out.println();
  }
}
