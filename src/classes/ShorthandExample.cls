public with sharing class ShorthandExample {

    /**
     * The name of the object
     */
    public String name { get; set; }

    /**
     * Custom shorthand get and set methods
     */
    public String funny {

        /**
         * When returning the funny, make sure it's clear by adding the
         * qualifier "funny__" to the front of the funny text.
         */
        get {
            return 'funny__' + this.funny;
        }

        /**
         * When storing a funny, make sure to add the "__funny" suffix
         * so we know it's been properly processed.
         */
        set {
            this.funny = value + '__funny';
        }
    }

    /**
     * Default constructor
     */
    public ShorthandExample(String name) {
        this.name = name;
        this.funny = 'chicken';
    }
}