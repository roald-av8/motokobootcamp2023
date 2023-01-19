import Debug "mo:base/Debug";
import Array "mo:base/Array";
import Text "mo:base/Text";
import Iter "mo:base/Iter";

//dfx deploy: dfx canister call challenges test

actor {
  
    //1
    let array : [Int] = [1, 2, 3, 4, 5];
    var sum : Int = 0;
    var avg : Int = 0;

    public func array_avg(array : [Int]) : async Int {
        for (value in array.vals()){
          sum += value;
          
        };
         avg := sum / array.size();
         return avg; 
    };

    //2
    //count_character(t : Text, c : Char) -> async Nat

   // public func count_character(t : Text, c : Char) : async Nat {
     //   Iter.size(Iter.filter(t.chars(), func (c2 : Char) : Bool { c == c2 }));
      
   // };

    //3
    public func factorial(n : Nat) : async Nat {

        func fact(m : Nat) : Nat {

            if (m == 0) {
                return 1;
            } else {
                 return m * fact(m - 1);
            };
        };
            return fact(n);
    };

    //4
    public func number_of_words(t : Text) : async Nat {
        Iter.size(Iter.filter( t.chars(),func (c : Char) : Bool { c == ' '})); // single quotes for Char
    };
    

 //TESTs
  public shared func test() : async() {
   
    //2
    let q2 = await array_avg([1, 2, 3, 4, 5]);
    assert (q2 == 3); 
    Debug.print("Q2 pass");

    //3
    let q3 = await factorial(8);
    assert (q3 == 40320); 
    Debug.print("Q3 pass");
  
     //4
     let q4 = await number_of_words("How many words are in this sentence?");
     assert (q4 == 6); 
     Debug.print("Q4 pass");
  }
};
