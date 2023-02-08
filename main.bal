import ballerina/http;
string hi= "hola";
service / on new http:Listener(9090) {
    resource function get greeting() returns string {
        return hi;
    }

}
