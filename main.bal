import ballerina/http;
import testingdocker.mariamod as _;

service / on new http:Listener(9090) {
    resource function get greeting() returns string {
        string name = "maria";
        if(name is "")
        {
            return "Hello should be directed to someone!";
        }
        return "Hello,"+ name +"!";
    }

}
