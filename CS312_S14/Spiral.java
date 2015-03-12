/**
 *  File: Spiral.java
 * 
 *  Description: Create a spiral array, find a value in the array, 
 *               print subarray if value is present and not one outer edge
 * 
 *  Student Name: Otis Brower
 * 
 *  Student UT EID: ODB234
 * 
 *  Course Name: CS 312
 * 
 *  Unique Number: 90125
 * 
 *  Date Created: 7/31/2014
 * 
 *  Date Last Modified: 7/31/2014
 */

import java.util.*;
import java.io.*;
public class Spiral 
{
    public static void matrix(int n, int m)
    {
        //pushes dimension of spiral to odd number if input is even
        if(n % 2 == 0)
        {
            n++;
        }
        
        //create 2D array for spiral
        int[][] spiral = new int[n][n]; //create matrix for spiral
        int fill = n * n; //starting number
       
        //fill spiral of designated size
        int level = 0;
        while ( fill > 0)
        {
            //top rows fill right to left
            for (int i = (spiral.length -1) - level; i >= level; i-- )
            {   
                if(fill == 0)
                {
                    break;
                }            
                spiral[level][i] = fill;
                fill--;
            }
            
            //left columns fill top to bottom
            for (int i = level + 1; i < spiral[level].length-level; i++)
            {
                
                spiral[i][level] = fill;
                fill--;
            }
            
            //bottom rows fill left to right
            for ( int i = level + 1; i < spiral.length-level; i++)
            {
                
                spiral[spiral[0].length - 1 - level][i] = fill;
                fill--;
            }
            
            //right columns fill bottom to top
            for ( int i = spiral[0].length-2-level; i >= 1 + level; i--)
            {
                
                spiral[i][spiral.length-1-level] = fill;
                fill--;
            }
            level++;
        }
        
        //send spiral to seach method
        search(spiral, m);
        
    }
    
    
    //This method will search for the given value and print resulting subArray
    public static void search(int[][] spiral, int m)
    {
        int row = 0;
        int col = 0;
        
        //Find location of value
        for ( int i = row; i < spiral[0].length; i++)
        {
            for (int j = col; j < spiral.length; j++)
            {
                if ( spiral[i][j] == m)
                {
                    row = i;
                    col = j;
                    break;
                }
            }
        }
        
        //Print subArray if value is not on outer edge
        if(row != 0 && row != spiral[0].length -1 && col != 0 && col != spiral.length-1)
        {        
            for( int i = row - 1; i <= row +1; i++)
            {
             for ( int j = col - 1; j <= col + 1; j++)
                {
                    System.out.printf ("%3d, ", spiral[i][j]);
                }
              System.out.println();
            }
        }
        else
        {
            System.out.println("Number on outer edge.");
        }
            
    }
    
    public static void main(String[] args) throws IOException
    {
        // Create File and Scanner to take input
        File input = new File ("spiral.txt");
        Scanner sc = new Scanner (input);
        
        
        int dim = sc.nextInt(); //read dimension of spiral

        int num = sc.nextInt(); //takes in number to find
        
        if( num > dim * dim || num < 1)
        {
            System.out.println("Number not in range of spiral.");
            System.exit(0);
        }
        
        
        matrix(dim, num);
        
    }
    
}
