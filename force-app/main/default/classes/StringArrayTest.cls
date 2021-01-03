public with sharing class StringArrayTest {
    public static List<String> generateStringArray(Integer strLen){
        List<String> result = new List<String>();

        for (Integer i = 0; i < strLen; i++) {
            result.add('Test ' + i.format());
        }

        return result;
    }
}
