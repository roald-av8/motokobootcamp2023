# Questions 🙋

1. Who controls the ledger canister? 
A: the NNS
2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How much nodes are running this subnet?  
A: SubnetId: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe
running 16 nodes
3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
(this is voting rewards) 10ICP * 13.7% * 2years = 
4. What is wrong with the following code?
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}
```
A: add import Nat "mo:base/Nat";
5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
A: languages is missing an "s" in the brackets of show_languages()
6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```

# Coding challenges 🧑‍💻
1. Write a function **average_array** that takes an array of integers and returns the average value of the elements in the array.
```
average_array(array : [Int]) -> async Int. 
```
2. **Character count**: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
```
count_character(t : Text, c : Char) -> async Nat
```
3. Write a function **factorial** that takes a natural number n and returns the [factorial](https://www.britannica.com/science/factorial) of n.
```
actor {
  public query func factorial(n : Nat) : async Nat {

      func fact(m : Nat) : Nat {

        if (m == 0) {
         return 1;
        } else {
         return m * fact(m - 1);
       };
      };
    return fact(n);
  };
};
```
4.  Write a function **number_of_words** that takes a sentence and returns the number of words in the sentence. (use Tokens and filter for the space " ", it loops over the sentence and counts words)
```
number_of_words(t : Text) : async Nat {
  Text.tokens 
}

```
5. Write a function **find_duplicates** that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.
```
find_duplicates(a : [Nat]) -> async [Nat]
```
6. Write a function **convert_to_binary** that takes a natural number n and returns a string representing the binary representation of n.
```
convert_to_binary(n : Nat) -> async Text 

```