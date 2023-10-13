/*
Writing the Parent class without the VIRTUAL keyword
It displays 2 ERRORS
1. Non-virtual and non-abstract type cannot be extended: Marker
2. Non-virtual, non-abstract methods cannot be overridden: void YellowMarker.write()
*/
// public class Marker {
//     public void write(){
//         system.debug('Writing with marker.');
//     }
//     public double half(){
//         return 0.5;
//     }
// }

// Writing the Parent class with the VIRTUAL keyword
public virtual class Marker {
    public virtual void write(){
        system.debug('Writing with marker.');
    }
    public virtual double half(){
        return 0.5;
    }
}