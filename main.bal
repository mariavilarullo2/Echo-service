import ballerina/http;
import module/service as _;

service / on new http:Listener(9090) {
    resource function get greeting() returns string {
        if(name is "")
        {
            return "Hello should be directed to someone!";
        }
        return "Hello,"+ name +"!";
    }

}
