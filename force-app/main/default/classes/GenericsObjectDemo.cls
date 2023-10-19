public class GenericsObjectDemo {
    public void demoMethod() {
        SObject obj;                                        //generic obj
        
        obj = new Account(Name='Test1',Phone='9876543211');  //instantiating
        Account acc1 = (Account) obj;                        //typecasting
        System.debug('obj -> acc1 - '+acc1);

        obj = new Account(Name='Test2',Phone='1123456789');
        Account acc2 = (Account) obj;
        System.debug('obj -> acc2 - '+acc2);
    }
}