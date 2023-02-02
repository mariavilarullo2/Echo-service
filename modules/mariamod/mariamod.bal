# Prints `Hello` with input string name.
#
# + name - the input sting name
# + return - "Hello, " with the input string name
# 
configurable string names = ?;

public function hello(string name) returns string {
    if !(name is "") {
        return "Hello, " + name;
    }
    return "Hello, World!";
}
