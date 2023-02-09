var departmentManagerRole = "Department Manager";
var requestDate;

if (!$.context.History) {
    requestDate = new Date().toISOString().slice(0, 10);
   $.context.History = [];
   var decision = {
       "Role": "Requester",
       "Comment": $.context.WorkflowDetails.comment,
       "RequestDate": requestDate,
       "User": $.info.startedBy,
       "Decision": "Initial Request"
   };
   $.context.History.push(decision);
   $.context.WorkflowDetails.currentRole = departmentManagerRole;

   var car = $.context.CarOrder.make + " " + $.context.CarOrder.model;
   var office = $.context.CarOrder.officeCity + " " + $.context.CarOrder.officeStreet;
   var priceWithCurrencyCode = $.context.CarOrder.rent + " " +$.context.CarOrder.CurrencyCode_code;
   var totalPriceWithCurrencyCode = $.context.CarOrder.totalPrice + " " + $.context.CarOrder.CurrencyCode_code;
   var totalLocalPriceWithLocalCurrencyCode = $.context.CarOrder.totalLocal + " " + $.context.CarOrder.LocalCurrencyCode_code;
   
   $.context.CarOrderCalcFields = {
        car: car,
        office: office,
        priceWithCurrencyCode: priceWithCurrencyCode,
        totalPriceWithCurrencyCode : totalPriceWithCurrencyCode,
        totalLocalPriceWithLocalCurrencyCode: totalLocalPriceWithLocalCurrencyCode
   }
}

function prepare_decision (task)
{
    requestDate = new Date().toISOString().slice(0, 10);
    var decision = {
        "Role": $.context.WorkflowDetails.currentRole,
        "Comment": $.context.WorkflowDetails.comment,
        "RequestDate": requestDate,
        "User": task.processor,
        "Decision": task.decision
    };

    $.context.History.push(decision);
}
