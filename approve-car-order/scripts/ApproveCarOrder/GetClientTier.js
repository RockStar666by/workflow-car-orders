var requestData = {
	request: {
	  RuleServiceId: "3ad96613b0ab4fc9a4d46cdf21614d6d",
	  Vocabulary: [
		{
		  ClientBirthday: {
			birthday: $.context.Client.clientBivalue[0].rthday,
		  },
		},
	  ],
	},
  };
  
  $.context.requestData = requestData;