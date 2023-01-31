import ballerina/http;
configurable string name=?;

service / on new http:Listener(9090) {
    resource function get greeting() returns string {
        if(name is "")
        {
            return "Hello should be directed to someone!";
        }
        return "Hello,"+ name +"!";
    }

}
