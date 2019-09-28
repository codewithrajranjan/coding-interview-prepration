* big integer are represented as string format internally
* they are imuutable i.e once created then they ca't be changed
* it is present in util.math.;


# BigInteger b1=new BigInterger("1234"); // note the value of the number is entered in the form of string


# Addition

BigInteger b1=new BigInteger("123");
BigInteger b2=new BigInteger("13");

these are immutable so to store the value we need to create a new BigInteger
BigInteger sum = b1.add(b2);


# multiply

BigInteger b3=b1.multiply(b2);


# adding integer to a BigInteger
int val  = 123456789;
BigInteger C = A.add(BigIntger.valueOf(val)); 

# Extraction of value from BigInteger:
int x   =  A.intValue();   // value should be in limit of int x
long y   = A.longValue();  // value should be in limit of long y
String z = A.toString();  


# biginter to calculate the sum
BigInteger sum = new BigInteger("0");
n=scan.nextLong();
for(int i=3;i<n;i++){
    if(i%3==0 || i%7==0){
        sum=sum.add(BigInteger.valueOf(i));
    }
}
System.out.println(sum);
