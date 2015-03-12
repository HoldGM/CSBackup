public class BubbleSort
{
  public static void main (String[] args)
  {

    int[] a = new int[10];
    a[0] = 4;
    a[1] = 7;
    a[2] = 1;
    a[3] = 5;
    a[4] = 9;
    a[5] = 6;
    a[6] = 3;
    a[7] = 2;
    a[8] = 8;
    a[9] =10;
    boolean sorted = true;
    int pass = 0; 
    do
    {
      sorted = true;
      for (int i = 1; i < a.length - pass ; i++)
      { 
        
        if ( a[i] < a[i-1])
        {
          sorted = false;
          int temp = a[i-1];
          a[i-1] = a[i];
          a[i] = temp;
        } 
      }
      pass++;
    }while ( !sorted );

    for ( int i = 0; i< a.length; i++)
    {
      System.out.print(a[i] + ", ");
    }
    System.out.println();
  }
}
