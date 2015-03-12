
import java.util.*;

public class Sudoku
{

  public static void sector(int[][])
  {
    
  }
  public static void main(String[] args)
  {
     
     int[][] a = new int[9][9];
     Scanner sc = new Scanner (System.in);
     
     for ( int i = 0; i < a[0].length; i++)
     {
       for ( int j = 0; j < a.length; j++)
       {
	 a[i][j] = sc.nextInt();
       }
     }
     
     for ( int i = 0; i < a[0].length; i++)
     {
       for ( int j = 0; i < a.length; j++)
       {
         System.out.print(a[i][j] + " ");
       }
       System.out.println();
     }

     boolean valid = true;
     //for rows
     for (int i = 0; i < a[0].length; i++)
     {
       int[] t = new int[9];
       for ( int j = 0; j < a.length; j++)
       {
         int val = a[i][j];
         
         if (t[val-1] == 1) valid = false;
         else
           a[val-1] = 1;
       }
  }
}
