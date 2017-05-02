@isTest
private class ShorthandExampleTest {

    @isTest
    private static void useSimpleImplicitGetterAndSetter() {

        // Construct the object
        ShorthandExample ex = new ShorthandExample('foobar');

        // Run the test to set a value
        Test.startTest();

        // Trying to call the implied setter does not work.
        // You will get an error, "Method does not exist
        // or incorrect signature: void setName(String)"
        //
        //     ex.setName('barfoo');
        //
        // Instead you have to access the property directly like it was
        // a public field.
        ex.name = 'barfoo';

        // Validate expected results
        Test.stopTest();

        // Trying to call the implied getter also does not work.
        // You will get an error, "Method does not exist
        // or incorrect signature: void getName()"
        //
        //     System.assertEquals('barfoo', ex.getName());
        //
        // Again you have to access the property directly like it was
        // a public field.
        System.assertEquals('barfoo', ex.name);
    }

    @isTest
    private static void testAssignmentInConstructor() {

        // Run the test to set a value
        Test.startTest();

        // Construct the object.
        // Remember we're setting the `funny` property directly
        // in the constructor.
        ShorthandExample ex = new ShorthandExample('foobar');

        // Validate expected results
        Test.stopTest();

        // Does this surprise you?
        System.assertEquals('funny__chicken__funny', ex.funny);
    }
}