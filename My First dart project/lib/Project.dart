import 'dart:io';
void main ()
{
 List <int> m=[0,0,0,0,0,0];
 get_org_msg(m);
 print("the recived data using EPG :");
 EPG(m); //input: (111001) expected output:(1110010)
 print("the recived data using OPG :");
 OPG(m); // expected output(1110011)
}
//get_org_msg method aims to
//take input from user and check if there is input contain numbers otherwise 1 or 0
void get_org_msg (List<int> orgmsg)
{
  for(int i=0; i <orgmsg.length;i++)
    {
      print("enter number");
     orgmsg[i]=int.parse(stdin.readLineSync()!);
     if(orgmsg[i] >1)
       {
         print("cannot contain this numbers");
         break;
       }
    }

}
//OPG method Odd parity check
//in this method we check the number of ones(1's) if odd we add 0 in the last element in the list
//if even we add 1 in the last element in the list
void OPG (List<int> orgmsg)
{
  int ones_counter=0;
  for(int i=0;i<orgmsg.length;i++)
    {
      if(orgmsg[i]==1)
        {
          ones_counter ++;
        }
    }
  if(ones_counter%2==0)
    {
      orgmsg.add(1);
    }
  else if(ones_counter%2!=0)
  {
    orgmsg.add(0);
  }
    print("original msg after append =" + orgmsg.toString());
}
//EPG method Even parity check
//in this method we check the number of ones(1's) if even we add 0 in the last element in the list
//if odd we add 1 in the last element in the list
void EPG (List<int> orgmsg)
{
  int ones_counter=0;
  for(int i=0;i<orgmsg.length;i++)
  {
    if(orgmsg[i]==1)
    {
      ones_counter ++;
    }
  }
  if(ones_counter%2==0)
  {
    orgmsg.add(0);
  }
  else if(ones_counter%2!=0)
  {
    orgmsg.add(1);
  }
  print("original msg after append =" + orgmsg.toString());
}
