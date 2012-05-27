<cfoutput>
	<h1>Listing answers</h1>
	#includePartial("../showFlash")#
	<p>#linkTo(text="New answer", action="new")#</p>
</cfoutput>
<div class="span6">
	<table class="table table-striped table-condensed row">
		<cfoutput query="answers" group="questionid">
			<tr>
				<th colspan="2">#question#</th>
			</tr>
			<tr>
				<th>id</th>
				<th>Answer</th>
				<th>Iscorrect</th>
			</tr>
			<cfoutput>
				<tr>
					<td>#id#</td>
					<td>#answer#</td>
					<td>#IIF(iscorrect, DE("Yes"), DE("No"))#</td>
					#includePartial("../editDelete")#
				</tr>
			</cfoutput>
			<tr>
				<td colspan="5">&nbsp;</td>
			</tr>
		</cfoutput>
	</table>
</div>