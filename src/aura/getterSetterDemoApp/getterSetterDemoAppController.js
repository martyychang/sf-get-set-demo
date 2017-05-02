({
	handleInit : function(component, event, helper) {
        console.log('init');
		helper.initLonghand(component, event, helper);
        helper.initShorthand(component, event, helper);
	}
})