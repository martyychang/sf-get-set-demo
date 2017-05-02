/**
 * Controller used to back the getterSetterDemoApp stand-alone Lightning app.
 */
public with sharing class GetterSetterDemoAuraController {

    @AuraEnabled
    public static LonghandExample newLonghandExample() {
        return new LonghandExample('longhand');
    }

    @AuraEnabled
    public static ShorthandExample newShorthandExample() {
        return new ShorthandExample('shorthand');
    }
}