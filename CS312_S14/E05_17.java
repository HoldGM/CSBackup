import java.util.*;

public class E05_17
{
  public static void main (String[] args)
  {

    Scanner sc = new Scanner (System.in);
    System.out.print ("Enter the number of lines: ");
    int lines = sc.nextInt();
    int space_count;

    for (int i = 1; i <= lines; i++)
    {
       for (int j = lines -i; j > 0; j--)
       {
         System.out.print ("  ");
       } 
       
       for (int k = i; k > 0; k--)
       {
          System.out.print (k + " ");
       }
       
       for (int k = 2; k <= i; k++)
       {
         System.out.print (k + " ");
       }
       System.out.println();
       // System.out.println ();
    }
    
  }
}
