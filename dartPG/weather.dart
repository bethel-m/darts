enum weather {
  rainy,
  cloudy,
  sunny,
  windy
}

void main(){
  weather day = weather.cloudy;
  switch (day){
    case weather.cloudy:
    print("its cloudy today");
    break;
    case weather.rainy:
    print("its might rain today");
    break;
    case weather.sunny:
    print("its quite hot today");
    break;
    case weather.windy:
    print("the wind blows all out today");
    break;
    default:
    print("its a normal weather");
    break;
  }
}