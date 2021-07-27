// @ts-nocheck
/*global QUnit*/

sap.ui.define([
	"de/tit/demo/startrequest/controller/View1.controller",
	"sap/ui/model/json/JSONModel",
    "sap/ui/base/ManagedObject",
	"sap/ui/thirdparty/sinon",
    "sap/ui/thirdparty/sinon-qunit"
], function (Controller, JSONModel, ManagedObject, sinon) {
	"use strict";

	QUnit.module("View1 Controller");

	QUnit.test("I should test the View1 controller", function (assert) {
        var oAppController = new Controller();
        // regular init of a JSON model
		var oJsonModelStub = new JSONModel({
			firstname: "",
            lastname: "",
            email: "",
            apiResponse: ""
		});
        // construct a dummy View
        var oViewStub = new ManagedObject({});
		// regular setting of a model to a View
        oViewStub.setModel(oJsonModelStub, "context");
        
        // stubbing Controller.getView() to return our dummy view object
		var oGetViewStub = sinon.stub(Controller.prototype, "getView").returns(oViewStub);

        
		oAppController.onInit();
		assert.ok(oAppController);
    });
    
    /*function startWorkflowInstanceTestCase(oOptions) {
        
    }*/

});
