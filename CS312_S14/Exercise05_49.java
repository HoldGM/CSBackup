import java.util.*;

public class Exercise05_49
{
  public static void main (String[] args)
  {
    Scanner sc = new Scanner (System.in);
    System.out.print ("Enter a string: ");
    String input = sc.nextLine();
    int length = input.length();
    int vowels = 0;
    int cons = 0;

    for (int i = 0; i<length; i++)
    {
      switch(input.charAt(i))
      {
         case 'a': case 'A': vowels++; break;
         case 'b': case 'B': 
         case 'c': case 'C': 
         case 'd': case 'D': cons++; break;
         case 'e': case 'E': vowels++; break;
         case 'f': case 'F': 
         case 'g': case 'G':
         case 'h': case 'H': cons++; break;
         case 'i': case 'I': vowels++; break;
         case 'j': case 'J': 
         case 'k': case 'K':
         case 'l': case 'L':
         case 'm': case 'M':
         case 'n': case 'N': cons++; break;
         case 'o': case 'O': vowels++; break;
         case 'p': case 'P':
         case 'q': case 'Q':
         case 'r': case 'R':
         case 's': case 'S':
         case 't': case 'T': cons++; break;
         case 'u': case 'U': vowels++; break;
         case 'v': case 'V': 
         case 'w': case 'W':
         case 'x': case 'X':
         case 'y': case 'Y':
         case 'z': case 'Z': cons++; break;
         default: break;
      }
    }
    System.out.println("The number of vowels is " + vowels);
    System.out.println("The number of consonants " +cons);
  }
}
