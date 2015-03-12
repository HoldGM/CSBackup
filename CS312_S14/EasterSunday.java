/* File: EasterSunday.java
   Description: Algorithm for computing the month and day of Easter Sunday for a given year
   Student Name: Otis Brower
   Studen UT EID: ODB234
   Course Name: CS312
   Unique Number: 90125
   Date Created: 6/22/14
   Date Last Modified: 6/22/14
*/

import java.util.Scanner;

public class EasterSunday
{
  public static void main(String[] args)
  {
    Scanner input = new Scanner(System.in);
    System.out.print( "Enter year: ");
    int y = input.nextInt();
    int a = y % 19;
    int b = y / 100, c = y % 100;
    int d = b / 4, e = b % 4;
    int g = (8 * b + 13) / 25;
    int h = (( 19 * a ) + b - d - g + 15) % 30;
    int j = c / 4, k = c % 4;
    int m = (a + ( 11 * h )) / 319;
    int r = (( 2 * e ) + ( 2 * j ) - k - h + m + 32) % 7;
    int n = (h - m + r + 90) / 25;
    int p = (h - m + r + n + 19) %  32;
    System.out.print( "In " + y + ", Easter Sunday is on " + p + " ");
    if (n == 4)
    {
      System.out.println("April");
    }
    if (n == 3)
    {
      System.out.println("March");
    }
  }
}
