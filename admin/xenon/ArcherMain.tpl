<center><a href="./?pages=Archer&type={ArcherTable}&pageType=Add" class="btn btn-secondary">{L_add}</a>[if {D_DisableSort}!=0]<a href="./?pages=Archer&type={ArcherTable}&pageType=Sort&orderBy={LinkOrderBy}" class="btn btn-secondary">{L_"Сортировать"}</a>[/if {D_DisableSort}!=0]</center>
<table id="example-1" class="table table-striped table-bordered" cellspacing="0" width="100%">
<thead>
	<tr>
		{ArcherMind}
	</tr>
</thead>
<tfoot>
	<tr>
		{ArcherMind}
	</tr>
</tfoot>
<tbody>
[foreach block={ArcherPage}]<tr>
	{ArcherData}
	<td>
		<a href="./?pages=Archer&type={ArcherTable}&pageType=Show&viewId={{ArcherPage}.{ArcherFirst}}" class="btn btn-secondary btn-block">{L_view}</a>
		<a href="./?pages=Archer&type={ArcherTable}&pageType=Edit&viewId={{ArcherPage}.{ArcherFirst}}" class="btn btn-edit btn-block">{L_edit}</a>
		<a href="./?pages=Archer&type={ArcherTable}&pageType=Delete&viewId={{ArcherPage}.{ArcherFirst}}" onclick="confirmDelete();" class="btn btn-red btn-block">{L_delete}</a>
	</td>
</tr>[/foreach]
</tbody>
</table>
<script type="text/javascript">
jQuery(document).ready(function() {
	jQuery("#example-1").dataTable({
		aLengthMenu: [
			[10, 25, 50, 100, -1], [10, 25, 50, 100, "Всё"]
		],
		"aoColumnDefs": [{
			'bSortable': false,
			'aTargets': [
				{ArcherNotTouch}
			]
		}]
	});
});
function confirmDelete() {
	if (confirm("{L_"Вы подтверждаете удаление?(Данную операцию невозможно будет обратить)"}")) {
		return true;
	} else {
		return false;
	}
}
</script>