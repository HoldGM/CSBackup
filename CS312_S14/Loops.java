import java.util.*;

public class Loops
{
  public static void main (String[] args)
  {
    Scanner sc = new Scanner (System.in);
    System.out.print ("Enter number of interations: ");
    int n = sc.nextInt();
    
    int sum = 0;
    //for loop
    for ( int i = 1; i <= n; i++)
    {
      sum += i*i;
    }
    System.out.println (sum);
    int i = 1;
    sum = 0;
    while (i <= n)
    {
      sum += i*i;
      i++;
    }
    System.out.println (sum);
   /* while (true)
    {
      int x = sc.nextInt();
      if ( x == 5)
      {
        continue;
      }
      else if (x == 3)
      {
        break;
      }
      System.out.println ("X = " + x);
    } */
    //do while, executes once no matter condition, check condition at end of loop.
    int k = 1;
    sum = 0;
    do
    {
      sum += k*k;
      k++;
    } while( k<=n );
    System.out.println (sum);
    //S(n) = 1 + (1+2) + (1+2+3)+ ... + (1+...+n)
    sum = 0;
    for ( i = 1; i<=n; i++)
    {
      for ( int j = 1; j<=i; j++)
      {
        sum += j;
      }
    }
    System.out.println (sum);
  }
}

