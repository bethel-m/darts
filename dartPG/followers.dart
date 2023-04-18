main() {
  const minuteConst = 60;
  var mil;
  var th;
  var username = "mad";
  var followerscount = 578578300;
  var followingcount = 10;
  var watchHour = 30.5;
  var bio = "am a soctware enginerre";

  var mils = followerscount.toString().length > 6;
  var thous = followerscount.toString().length > 3;
  var ff = followerscount.toString();
  var milly = followerscount.toString().length - 6;
  var thousy = followerscount.toString().length - 3;
  print("runers");
  if (mils){
    mil = ff.substring(0,milly.toInt());
    var tth = ff.substring(milly.toInt());
    th = tth.substring(0,3);
    var hd = tth.substring(3);
    print ("your followers are ${mil} M, ${th} K, ${hd}");
  }else if (thous){
    print(ff);
    print(thousy);
    th = ff.substring(0,thousy.toInt());
    var hd = ff.substring(thousy.toInt());
    print(" your followers are ${th} K, ${hd}");
    
  }
}