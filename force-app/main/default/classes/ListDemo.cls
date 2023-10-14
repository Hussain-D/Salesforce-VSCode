/*
List Methods:
        - add(listElement)              - add(index, listElement)
        - addAll(fromList)              - addAll(fromSet)
        - clear()                       - clone()
        - contains(listElement)         - equals()
        - get(index)                    - getSObjectType()
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
        
        
        System.debug('li1 - '+li1);
        System.debug('li2 - '+li2);
        
        li3 = li1.clone();              //clone() -> copy of a list
        System.debug('li3 (cloned li1) - '+li3);

        System.debug('UK in li3? '+li3.contains('UK'));     //contains() -> true/false
        System.debug('USA in li3? '+li3.contains('USA'));

        System.debug('li2 == li3? '+li2.equals(li3));       //equals() -> true/false
        System.debug('li1 == li3? '+li1.equals(li3));

        System.debug('li1[1] = '+li1.get(1));               //get(index)

        System.debug('Index of UK in li3 - '+li3.indexOf('UK'));        //indexOf()
        System.debug('Index of USA in li3 - '+li3.indexOf('USA'));      
        
        System.debug('li2 empty? '+li2.isEmpty());          //isEmpty() -> true/false

        System.debug('Remove li3[2] - '+li3.remove(2));     //remove(index)
        System.debug('After removing - '+li3);
        
        System.debug('Size of li2 - '+li2.size());          //size()
        
        System.debug('li2 before sort - '+li2);
        li2.sort();
        System.debug('li2 after sort - '+li2);
    }
}