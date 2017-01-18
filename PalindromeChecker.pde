public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    String test=noSpaces(lines[i]);
    String test2=noCapitals(test);
    String test3 = areLetters(test2);

    if(palindrome(test3)==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public String noCapitals(String word){
   String newString = "";
  for(int i =0; i<word.length();i++){
    String lowerC = word.substring(i,i+1);
    String lowerCase = lowerC.toLowerCase();
    newString += lowerCase;
  }
  return newString;
}

public String noSpaces(String word){
   String newString ="";
  for(int i =0; i<word.length(); i++){
    String pointer = word.substring(i,i+1);
    if(pointer.equals(" ")){
      newString += "";
    }
    else{
      newString += pointer;
    }
  }
  return newString;
}

public String areLetters(String word){
  String newString ="";
  for(int i =0; i<word.length();i++){
    if(Character.isLetter(word.charAt(i))){
      newString += word.charAt(i);
    }
  }
  return newString;
}

public boolean palindrome(String word)
{
  //your code here
  if(word.equals(reverse(word))){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length()-1; i>=0; i--){
      sNew += str.substring(i,i+1);
    }
    //your code here
    return sNew;
}


