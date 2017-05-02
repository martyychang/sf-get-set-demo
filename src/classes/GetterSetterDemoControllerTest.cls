@isTest
private class GetterSetterDemoControllerTest {

    @isTest
    private static void loadDemoPage() {

        // Instantiate the controller
        Test.setCurrentPage(Page.GetterSetterDemo);

        GetterSetterDemoController controller =
                new GetterSetterDemoController();

        // Run the test
        Test.startTest();

        String longhandName = controller.longhand.getName();
        String longhandFunny = controller.longhand.getFunny();
        String shorthandName = controller.shorthand.name;
        String shorthandFunny = controller.shorthand.funny;

        // Validate expected results
        Test.stopTest();

        System.assertEquals('longhand', longhandName);
        System.assertEquals('funny__chicken', longhandFunny);
        System.assertEquals('shorthand', shorthandName);
        System.assertEquals('funny__chicken__funny', shorthandFunny);
    }
}