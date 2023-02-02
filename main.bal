import ballerina/http;
import testingdocker.mariamod as meh;
configurable string mariasd = ?;
service / on new http:Listener(9090) {
    resource function get greeting() returns string {
        return meh:hello("hola");
    }

}
