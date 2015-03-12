import java.util.*;

public class E05_19
{
  public static void main (String[] args)
  {

    Scanner sc = new Scanner (System.in);
    System.out.print ("Enter the number of lines: ");
    int lines = sc.nextInt();
    int space_count;

    for (int i = 1; i <= lines; i++)
    {
       for (int j = lines-i; j > 0; j--)
       {
         System.out.print ("    ");
       } 
       
       for (int k = 0 ; k < i ; k++)
       {
          
         System.out.printf ( "%4.0f", Math.pow(2,k));
       }
 
       for (int k =  i-2; k >= 0; k --)
       {
         double temp = Math.pow(2, k);
         System.out.printf ( "%4.0f", temp);

       }
       System.out.println();
    }
  }
}
