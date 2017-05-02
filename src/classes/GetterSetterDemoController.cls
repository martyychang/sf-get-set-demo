public with sharing class GetterSetterDemoController {

    public LonghandExample longhand { get; set; }

    public ShorthandExample shorthand { get; set; }

    public GetterSetterDemoController() {
        longhand = new LonghandExample('longhand');
        shorthand = new ShorthandExample('shorthand');
    }
}