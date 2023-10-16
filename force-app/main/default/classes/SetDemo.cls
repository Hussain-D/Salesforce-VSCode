/*
List Methods:
        - add(setElement)               - addAll(fromList)              
        - addAll(fromSet)               - clear()                       
        - clone()                       - contains(listElement)
        - containsAll(listToCompare)    - containsAll(setToCompare)
        - equals()                      - size()
        - isEmpty()                     - remove()
        - removeAll(listOfElementsToRemove)
        - removeAll(setOfElementsToRemove)
        - retainAll(listOfElementsToRetain)
        - retainAll(setOfElementsToRetain)

*/
public class SetDemo{
    public void setMethods(){
        List<String> strList = new List<String>{'A','A'};
        Set<String> strSet1 = new Set<String>();
        Set<String> strSet2 = new Set<String>{'B','C'};
        
        strSet1.add('India');                    //add()
        System.debug('strSet1 - '+strSet1);

        strSet1.addAll(strList);                 //addAll(fromList)
        strSet1.addAll(strSet2);                 //addAll(fromSet)
        System.debug('strList - '+strList);
        System.debug('strSet2 - '+strSet2);
        System.debug('strSet1 - '+strSet1);

        System.debug('strSet2 before clear - '+strSet2);
        System.debug('strSet2 isEmpty? '+strSet2.isEmpty());        //isEmpty()
        strSet2.clear();                        //clear()
        System.debug('strSet2 after clear - '+strSet2);
        System.debug('strSet2 isEmpty? '+strSet2.isEmpty());

        strSet2 = strSet1.clone();              //clone()
        System.debug('strSet2 after cloning strSet1 - '+strSet2);

        System.debug('B in strSet1? '+strSet1.contains('B'));       //contains()
        System.debug('All of strSet2 in strSet1? '+strSet1.containsAll(strSet2)); //containsAll()
        System.debug('All of strList in strSet1? '+strSet1.containsAll(strList)); //containsAll()
        
        System.debug('strSet1 equals strSet2? '+strSet1.equals(strSet2));   //equals()
        
        System.debug('strSet2 before removing B - '+strSet2.remove('B'));   //remove()
        strSet2.remove('B');                    //remove()
        System.debug('strSet2 after removing B - '+strSet2);
        System.debug('strSet2 before removing strList - '+strSet2);   //removeAll()
        strSet2.removeAll(strList);
        System.debug('strSet2 after removing strList - '+strSet2);
        
        System.debug('strSet1 before retaining strList - '+strSet1);   //retainAll()
        strSet1.retainAll(strList);
        System.debug('strSet1 after retaining strList - '+strSet1);

        System.debug('size of strSet1 - '+strSet1.size());          //size()

        System.debug('strList - '+strList);
        System.debug('strSet2 - '+strSet2);
        System.debug('strSet1 - '+strSet1);
    }
}