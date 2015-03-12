import java.util.*;

public class E05_09
{
  public static void main (String[] args)
  {
    Scanner sc = new Scanner (System.in);
    System.out.print ("Enter the number of students: ");
    int numst = sc.nextInt();
    String[] names = new String[numst];
    int[] grades = new int[numst];
    for (int i = 0; i < numst; i++)
    {
      System.out.print ("Enter the name of student #" + (i+1) + ": ");
      names[i] = sc.next();
      System.out.print ("Enter the grade of student #" + (i+1) + ": ");
      grades[i] = sc.nextInt();
    }

    int high=0;
    int sec=0;
    int f = 0;
    int s = 0;

    if (numst > 0)
    {
      high = grades[0];
      sec = 0;

      for (int i=1; i <numst; i++)
      {
        if (grades[i] > high)
        {
          sec = high;
	  high = grades[i];
        }
        else if (grades[i] > sec && grades[i] < high)
        {
          sec = grades[i];
        }
      }
    }
    for (int i = 0; i<numst; i++)
    {
      if (high == grades[i])
      {
        f = i;
      }
      if (sec == grades[i])
      {
        s = i;
      }
    }
    System.out.println (high + " first " + names[f]);
    System.out.println (sec + " second " + names[s]);
  }
}
