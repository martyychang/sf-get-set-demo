({
    initLonghand : function(component, event, helper) {
        var action = component.get('c.newLonghandExample');
        
        action.setCallback(this, function(response) {
            console.log('response: %o', response);
            if (response.getState() === 'SUCCESS') {
                component.set('v.longhand', response.getReturnValue());
            }
        });
        
        $A.enqueueAction(action);
    },
    initShorthand : function(component, event, helper) {
        var action = component.get('c.newShorthandExample');
        
        action.setCallback(this, function(response) {
            console.log('response: %o', response);
            if (response.getState() === 'SUCCESS') {
                component.set('v.shorthand', response.getReturnValue());
            }
        });
        
        $A.enqueueAction(action);
    }})