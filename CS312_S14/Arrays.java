import java.util.*;

public class Arrays
{
  public static void main (String[] args)
  {
    int[] ar = {1, 3, 5};
    int sum = 0;
    for (int j = 0; j < ar.length; j++)
    {
      sum += ar[j];
    }
    System.out.println (sum);
    sum = 0;
    for(int d: ar)
    {
      sum +=d;
    }
    System.out.println (sum);
  }
}
