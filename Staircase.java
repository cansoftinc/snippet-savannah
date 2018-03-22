/*
* Complete the staircase function below.
     #
    ##
   ###
  ####
 #####
######
*
*/
    public class Staircase{
    
    
    public static void Main(String[] args){
      Scanner scanner = new Scanner(System.in);
      int n = Integer.parseInt(scanner.nextLine().trim());
      stairs(n);      
    }
    
    static void stairs(int n){
      for(int x=0;x<n;x++){
        for(int y=0;y<n;y++){
          if(y<n-1-x){
            System.out.print(" ");
          }else{
            System.out.print("#");
          }
          
        }
        System.out.println();
      }
    }
   }
