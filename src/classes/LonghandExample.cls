public with sharing class LonghandExample {

    /**
     * The name of the object
     */
    private String name;

    /**
     * Something funny
     */
    private String funny;

    /**
     * Default constructor
     */
    public LonghandExample(String name) {
        this.name = name;
        this.funny = 'chicken';
    }

    /**
     * When returning the funny, make sure it's clear by adding the
     * qualifier "funny__" to the front of the funny text.
     */
    @AuraEnabled
    public String getFunny() {
        return 'funny__' + this.funny;
    }

    @AuraEnabled
    public String getName() {
        return this.name;
    }

    /**
     * When storing a funny, make sure to add the "__funny" suffix
     * so we know it's been properly processed.
     */
    public void setFunny(String value) {
        this.funny = value + '__funny';
    }

    public void setName(String value) {
        this.name = value;
    }
}