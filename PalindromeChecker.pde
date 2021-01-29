public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}

public boolean palindrome(String word)
{
  String o = "";
  String h = "";
  String b = "";
  for(int i = 0; i < word.length(); i++){
    o = o + word.substring(i, i + 1).toLowerCase();
  }
  for(int i = 0; i < o.length(); i++){
    if(o.substring(i, i + 1).equals(" ")){
      
    }else{
      h = h + o.substring(i, i + 1);
    }
  }
  for(int i  = 0; i < h.length(); i++){
    if(Character.isLetter(h.charAt(i))){
      b = b + h.substring(i, i+1);
    }
  }

  String rev = reverse(b);
  
  if(b.equals(rev)){
    return true;
  }
  return false;
}
public String reverse(String str){
  String rev= "";
  for (int i = str.length(); i>0; i--){
    rev += str.substring(i-1,i);
  }
  return rev;
}
