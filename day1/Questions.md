# <a id="questions"> 🙋 Questions </a>
1. How much is the current memory capacity of a canister? 
A: 48GB, according to proposal 92573
2. What is the issue with the following code sample?
```
actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}
```
A: 'let' is an immutable type, instead use 'var' to define the variable "counter"
3. What is the issue with the following code sample?
```
actor {
  var message : Text = 0;
  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}
```
A: async () -- return value undefined, what are the brackets?
4.  False or True: we can remove the keyword **async** for return argument of a query function since queries are faster to answer.
A: No, you cannot...
# <a id="coding-challenges"> 🥊 Coding challenges </a>
1. Write a function **multiply** that takes two natural numbers and returns the product. 
```
multiply(n : Nat, m : Nat) -> async Nat
```
A:
```
actor {
var n : Nat = 0;
  var m : Nat = 0;
  var result : Nat = 0;

   public query func multiply(n : Nat, m : Nat) : async Nat {
    result := n*m;
    return result;
  };
}

```
2. Write a function **volume** that takes a natural number n and returns the volumte of a cube with side length n.
A:
```
actor {
  public query func volume(n : Nat) : async Nat {
    var result : Nat = n*n*n;
    result;
  };

  // public query func greet(name : Text) : async Text {
  //   return "Hello, " # name # "!";
  // };
 }
```
3. Write a function **hours_to_minutes** that takes a number of hours n and returns the number of minutes.
A:
```
actor {
  public query func hours_to_minutes(n : Nat) : async Nat {
    var result : Nat = n*60;
    result;
  } 
}} 
```
4. Write two functions **set_counter** & **get_counter** .

- set_counter sets the value of counter to n.
- get_counter returns the current value of counter.
```

set_counter(n : Nat) : async ()
get_counter() -> async Nat
```
A:
```
actor {
  var counter : Nat = 0;
  public func set_counter(n : Nat) : async () {
    counter := n;
   };
  public query func get_counter() : async Nat {
    counter;
  };
}
```
5. Write a function **test_divide** that takes two natural numbers n and m and returns a boolean indicating if n divides m.
```
test_divide(n: Nat, m : Nat) -> async Bool
if(m/n > 0)
n = true
```
A:
```
actor {
 public query func test_divide(n: Nat, m : Nat) : async Bool {
    if(m/n > 0)
    (
      return true
    )
    else
      false;
  };
};
```
6. Write a function **is_even** that takes a natural number n and returns a boolean indicating if n is even.
```
is_even(n : Nat) -> async Bool 
```
A:
```
actor {
 public query func test_divide(n: Nat) : async Bool {
    if(n/2 > 0)
    (
      return true
    )
    else
      false;
  };
};
```