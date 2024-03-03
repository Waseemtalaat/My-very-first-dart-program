class car
{
  static int? price;
  static String? color;
  static int? number;
  car()
  {
    price=0;
    color=null;
    number=0;
  }
  car1 (int? _price, String? _color, int? _number)
  {
    price=_price;
    color=_color;
    number=_number;
  }

  void printinfo()
  {
    print("color: $color" + "price= $price" + "number= $number");
  }
  void getcolor(String s1)
  {
    color=s1;
  }
  String setcolor()
  {
    return "s";
  }
  void comp (car c, car cc)
  {
    if(c.setcolor() == cc.setcolor())
      {
        print("the two cars are the same");
      }
  }
}