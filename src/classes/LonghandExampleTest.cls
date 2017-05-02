@isTest
private class LonghandExampleTest {

    @isTest
    private static void useExplicitGetterAndSetter() {

        // Construct the object
        LonghandExample ex = new LonghandExample('foobar');

        // Run the test to set a value
        Test.startTest();

        // Trying to access the property directly by name does not work.
        // You will get an error, "Variable is not visible"
        //
        //     ex.name = 'barfoo';
        //
        // Instead you have to use the setName(String) method.
        ex.setName('barfoo');

        // Validate expected results
        Test.stopTest();

        // Similarly, trying to access the property value directly by name
        // does not work. You will get an error, "Variable is not visible"
        //
        //     System.assertEquals('barfoo', ex.name);
        //
        // Instead you have to use the getName() method.
        System.assertEquals('barfoo', ex.getName());
    }

    @isTest
    private static void testAssignmentInConstructor() {

        // Run the test to set a value
        Test.startTest();

        // Construct the object.
        // Remember we're setting the `funny` field directly
        // in the constructor.
        LonghandExample ex = new LonghandExample('foobar');

        // Validate expected results
        Test.stopTest();

        // Does this surprise you?
        System.assertEquals('funny__chicken', ex.getFunny());
    }
}