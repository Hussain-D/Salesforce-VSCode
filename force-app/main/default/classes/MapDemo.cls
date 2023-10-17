/*
Map Methods:
        - put(key,value)                - putAll(fromMap)
        - putAll(sObjectArray)          - remove(key)
        - size()                        - values()
        - clear()                       - clone()
        - containsKey(key)              - equals(map2)
        - get(key)                      - isEmpty()
        - keySet()
*/
public class MapDemo{
    public void mapMethods(){
        Map<Integer,String> intToStr1 = new Map<Integer,String>();
        Map<Integer,String> intToStr2 = new Map<Integer,String>();
        
        intToStr1.put(1,'A');                       //put(key,value)
        intToStr1.put(2,'B');
        System.debug('intToStr1 - '+intToStr1);

        intToStr1.put(2,'C');                        //same key diff value
        System.debug('intToStr1 - '+intToStr1);

        intToStr2.putAll(intToStr1);                //putAll(fromMap)
        System.debug('intToStr2 - '+intToStr2);

        System.debug('removing key 2 from intToStr2 - '+intToStr2.remove(2));  //remove()

        System.debug('size of intToStr2 - '+intToStr2.size());  //size()

        System.debug('get 0 key value - '+intToStr1.get(0));  //get()
        System.debug('get 1 key value - '+intToStr1.get(1));

        List<String> lstOfStrFromMap = new List<String>();
        lstOfStrFromMap = intToStr1.values();
        /*values are stored in list because there can exist duplicate values*/
        System.debug('lstOfStr from intToStr1 - '+lstOfStrFromMap);     //values()
        
        /*keys are stores in set because there cannot be duplicate keys*/
        System.debug('list of keys - '+intToStr1.keySet());     //keyset()

        System.debug('intToStr2 before - '+intToStr2);
        System.debug('intToStr2 before, isEmpty? '+intToStr2.isEmpty());    //isEmpty()
        intToStr2.clear();                                      //clear()
        System.debug('intToStr2 after - '+intToStr2);
        System.debug('intToStr2 after, isEmpty? '+intToStr2.isEmpty());

        intToStr2 = intToStr1.clone();                          //clone()
        System.debug('clone intToStr1 to intToStr2 - '+intToStr2);

        System.debug('intToStr1 == intToStr2? '+intToStr1.equals(intToStr2));   //equals()

        System.debug('intToStr1 - '+intToStr1);
        System.debug('intToStr1 contains key 2? '+intToStr1.containsKey(2));    //containsKey(key)
        System.debug('intToStr1 contains key 3? '+intToStr1.containsKey(3));
    }
}