/*
Writing the Parent class without the VIRTUAL keyword
It displays 2 ERRORS
1. Non-virtual and non-abstract type cannot be extended: Marker
2. Non-virtual, non-abstract methods cannot be overridden: void YellowMarker.write()

Writing the class without the OVERRIDE keyword but Parent class has VIRTUAL keyword
It displays an ERROR when DEPLOYing to Org saying - must use OVERRIDE keyword
*/
// public class YellowMarker extends Marker{
//     public void write(){
//         system.debug('Writing with yellow marker.');
//     }
// }

// Writing the class with the OVERRIDE keyword

public class YellowMarker extends Marker{
    public override void write(){
        system.debug('Writing with yellow marker.');
    }
}