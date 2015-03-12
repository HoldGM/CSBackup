/**
 *  File: Day.java
 * 
 * Description: To print the day of the week for a given date entered by the user
 * 
 * Student Name: Otis Brower
 * 
 * Student UT EID: ODB234
 * 
 * Course Name: CS 312
 * 
 * Unique Number: 90125
 * 
 * Date Created: 7/2/2014
 * 
 * Date Last Modified: 7/2/2014
 */

import java.util.*;

public class Day
{
    public static void main (String[] args)
    {
        Scanner sc = new Scanner (System.in);
        int year;
        
        //user input for year
        do
        {
            System.out.print ("Enter year: ");
            year = sc.nextInt();
        } while (year < 1900 || year > 2100);

        int year_orig = year;  //keep original input year to check vs currect year
                
        //Leap Year check
        boolean leapYear = (year %4 == 0 && year % 100 !=0) || year % 400 ==0;
               
        //Input for month              
        int month;
        
        do
        {
            System.out.print ("Enter month: ");
            month = sc.nextInt();
        }while (month < 1 || month > 12);

        int month_orig = month; //keep orignal input month to check vs current date

        //adjustment for year if month is January or Febuary
        if (month == 1 || month == 2)
        {
            year--;
        }

        //index change for month
        switch (month)
        {
            case 1: month = 11; break;
            case 2: month = 12; break;
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12: month = month - 2; break;
        }
        
        //input for day
        int day;
        if (leapYear == false && month == 12)
        {
            do
            {
                System.out.print ("Enter day: ");
                day = sc.nextInt();
            }while (day < 1 || day > 28);
        }
        else if (leapYear == true && month == 12)
        {
            do
            {
                System.out.print ("Enter day: ");
                day = sc.nextInt();
            }while (day<1 || day>29);
        }
        else if (month==11 || month==1 || month==3 || month==5 || month==6 || month==8 || month == 10)
        {
            do
            {
                System.out.print ("Enter day: ");
                day = sc.nextInt();
                
            }while (day<1 || day > 31);
        }
        else
        {
            do
            {
                System.out.print ("Enter day: ");
                day = sc.nextInt();
            }while (day<1 || day > 30);
        }
        
        //Calculation for day of the week.
        int a = month;
        int b = day;
        int c = year%100; //year of the century
        int d = year / 100; //century
        int w = ((13 * a)-1) / 5;
        int x = c / 4;
        int y = d / 4;
        int z = w+x+y+b+c-(2*d);
        int r = z%7;
        r = (r+7)%7;
                       
        //Array for days of the week.
        String[] weekday = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
        
        //Current Date info
        Calendar today = Calendar.getInstance(TimeZone.getDefault());
        int today_day = today.get(Calendar.DATE);
        int today_month = today.get(Calendar.MONTH) + 1;
        int today_year = today.get(Calendar.YEAR);

        //Output
        if ( today_year < year_orig || (today_year == year_orig && today_month < month_orig) || (today_year == year_orig && today_month == month_orig && today_day < day))
        {
          System.out.println ("That day will be " + weekday[r]);
        }
        else if ( today_year > year_orig || (today_year == year_orig && today_month > month_orig) || (today_year == year_orig && today_month == month_orig && today_day > day))
        {
          System.out.println ("That day was " + weekday[r]);
        }
        else
        {
          System.out.println ("Today is " + weekday[r]);
        }
    }
}
