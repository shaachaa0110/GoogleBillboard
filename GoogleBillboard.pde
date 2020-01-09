public final static String e = "2.7182818284590452353602874713526624977572470936999595749669676277240766303535475945713821785251664274274663919320030599218174135966290435";  
public void setup()  
{            
    String digits = "7182818284";
    double dNum = Double.parseDouble(digits);
    while(!isPrime(dNum)){
    	for(int i = 2; i < e.length() - 10; i++){
    		digits = new String(e.substring(i, i+10));
    		dNum = Double.parseDouble(digits);
    		if(isPrime(dNum) == true){
    			break;
    		}
    	}
    }
    System.out.println(dNum);
}  
public boolean isPrime(double dNum)  
{   
    boolean isPrime = true;
  	for(int i = 2; i <= Math.sqrt(dNum); i++){
    	if((dNum % i) == 0){
      		isPrime = false;
    	}
  	}
  	if(dNum <= 1){
    	isPrime = false;
  	}
  	return isPrime; 
} 
