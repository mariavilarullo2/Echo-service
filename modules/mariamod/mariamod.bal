
configurable string greatasd = ?;

public function hello(string name) returns string {
    if !(name is "") {
        return "Hello, " + greatasd;
    }
    return greatasd + "Hello, World!";
}
