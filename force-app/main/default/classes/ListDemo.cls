/*
List Methods:
        - add(listElement)              - add(index, listElement)
        - addAll(fromList)              - addAll(fromSet)
        - clear()                       - clone()
        - contains(listElement)         - equals()
        - get(index)                    - getSObjetType()
        - indexOf()                     - isEmpty()
        - remove(index)                 - set(index,listElement)
        - size()                        - sort()
*/
public class ListDemo{
    public void listMethod(){
        List<String> li1 = new List<String>();
        List<String> li2 = new List<String>();
        Set<String> s1 = new Set<String>();
        List<String> li3 = new List<String>();


        li1.add('India');               //add(listElement)
        li1.add('USA');                 
        li1.add(1,'Australia');         //add(index, listElement)
        
        s1.add('Japan');

        li2.add('UK');    
        li2.clear();                    //clear()
        li2.addAll(li1);                //addAll(fromList)
        li2.addAll(s1);                 //addAll(fromSet)    
        
        li3 = li1.clone();              //clone() -> copy of a list

        System.debug('li1 - '+li1);
        System.debug('li2 - '+li2);
        System.debug('li3 (cloned li1) - '+li3);

        System.debug('UK in li3? '+li3.contains('UK'));     //contains() -> true/false
        System.debug('USA in li3? '+li3.contains('USA'));

        System.debug('li2 == li3? '+li2.equals(li3));       //equals() -> true/false
        System.debug('li1 == li3? '+li1.equals(li3));
    }
}