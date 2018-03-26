/*
*
Given a time in 12-hour AM/PM format, convert it to military (24-hour) time.

Note: Midnight is 12:00:00AM on a 12-hour clock, and 00:00:00 on a 24-hour clock. Noon is 12:00:00PM on a 12-hour clock, 
and 12:00:00 on a 24-hour clock.

Input Format

A single string s containing a time in 12-hour clock format (i.e.:hh:mm:ss AM  or hh:mm:ss PM ), where 01<=hh<=12  and 00<=mm,ss<=59.

Output Format

Convert and print the given time in -hour format, where .

Sample Input

07:05:45PM
Sample Output

19:05:45


*
*/
import java.io.*;
import java.math.*;
import java.text.*;
import java.util.*;
import java.util.regex.*;

public class Solution {

    /*
     * Complete the timeConversion function below.
     */
    static String timeConversion(String s) {
        /*
         * Write your code here.
         */
        String[] tx = s.split(":");
        String hour = tx[0];
        String min = tx[1];
        String sec = tx[2].substring(0,2);
        String dayEve = tx[2].substring(2,4);
        String rx ="";    
      if(dayEve.equals("AM")){
          rx=(hour.equals("12")?"00":hour)+":"+min+":"+sec;
      } else{
          rx=((hour.equals("12")?hour:(Integer.parseInt(hour)+12))+":"+min+":"+sec);
      }
         return rx;   

    }

    private static final Scanner scan = new Scanner(System.in);

    public static void main(String[] args) throws IOException {
        BufferedWriter bw = new BufferedWriter(new FileWriter(System.getenv("OUTPUT_PATH")));

        String s = scan.nextLine();

        String result = timeConversion(s);

        bw.write(result);
        bw.newLine();

        bw.close();
    }
}
