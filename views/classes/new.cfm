<cfoutput>
	<h1>Create a New class</h1>
	#includePartial("showFlash")#
	#errorMessagesFor("class")#
	#startFormTag(action="create")#
		#includePartial("form")#
	#endFormTag()#
	#includePartial("toListing")#
</cfoutput>