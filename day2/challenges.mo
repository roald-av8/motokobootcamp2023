import Int "mo:base/Int";
import Nat "mo:base/Nat";
import Debug "mo:base/Debug";
import Array "mo:base/Array";
import Iter "mo:base/Iter";
import Text "mo:base/Text";
import Nat64 "mo:base/Nat64";
import Buffer "mo:base/Buffer";

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
   public func count_character(t : Text, c : Char) : async Nat {
        Iter.size(Iter.filter(t.chars(), func (c1 : Char) : Bool { c == c1 }));
    };

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
    
    //5 find_duplicates(a : [Nat]) -> async [Nat] { Iter.filter( a.chars(),func (c : Nat) : Bool { c == ' '})
    /*duplicates : 
    public func find_duplicates(a : [Nat]) async [Nat] {
        Iter.filter( a.chars(), func (c: Nat) : Bool {c =})
    };
    if c = Iter.filter(a) then add to array }
    
    public func find_duplicates(a : [Nat]) : async [Nat] {

        let a_ = Buffer.fromArray<Nat>(a);

        //let dupes = Buffer.clone(a_);
        //dupes.sort(Nat.compare);
        let dupes1 = Buffer.groupBy(a_, Nat.equal);
        dupes1.filterEntries(
            func (_, e) {
                let final = Buffer.Buffer<Nat>(0);
                if (e.size() > 1)  {  final.add(e); return true} else {return false}}
        );

        let flattened = Buffer.flatten(dupes1);

        let final = Buffer.Buffer<Nat>(0);
        for (n in a.vals()) {
            if (Buffer.contains(flattened, n, Nat.equal)
            and not Buffer.contains(final, n, Nat.equal)
            ) {
                final.add(n);
            }
        };

        Buffer.toArray(final);
    };
    */
 //TESTs
  public shared func test() : async() {
   
    //1
    let q1 = await array_avg([1, 2, 3, 4, 5]);
    assert (q1 == 3); 
    Debug.print("Q1 pass");

    //2
    let q2 = await count_character(Motoko, o);
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
