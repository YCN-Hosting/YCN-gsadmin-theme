<div class="navbar">
  <div class="navbar-inner" style="padding-left:5px;">
    <ul class="nav">
      <li><a href="/files/"><i class="icon-home"></i>Home</a></li>
      <li><a href="/files{{$back}}"><i class="icon-arrow-left"></i>Back</a></li>
      <li><a href="/files/upload{{$path}}/"><i class="icon-upload"></i>Upload</a></li>
      <li><a href="javascript:if (fname = prompt('New Folder Name')) window.location='/files/newfolder{{$path}}' + '/'+escape(fname)"><i class="icon-folder-open"></i>New Folder</a></li>
      <li><a href="javascript:if (fname = prompt('New File Name')) window.location='/files/edit{{$path}}' + '/'+escape(fname)"><i class="icon-file"></i>New File</a></li>
    </ul>
  </div>
</div>
<div style="height:5px;"/></div>

<div style="text-align:left;"><i class="icon-folder-open"></i><strong>Location</strong> : {{$path}}</div>

<table class="table table-hover">
	<thead>
		<tr>
			<th>Name</th>
			<th>Size</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
		{foreach from=$files item=file}
			<tr>
				<td>
					<img src="/modules/files/images/{{$file.type}}.gif" align="absmiddle" style="padding-bottom:3px;padding-right:5px;" />&nbsp;
					{if $file.type != "link"}
						<a href="/files{{$file.link}}{{$file.action}}{if $path != '/'}{{$path}}{/if}/{{$file.name}}{if $file.type == 'dir'}/{/if}">
							{{$file.name}}
						</a>
					{else}
						{{$file.name}}
					{/if}
				</td>
				<td>{{$file.size}}</td>
				<td>
					{if $path != "/"}
						{if $file.type == "dir"}
						{else if $file.type == "config" or $file.type == "text"}
							<a title="Tail" href="/files/tail{{$path}}/{{$file.name}}"><i class="icon-play"></i></a>
							<a title="Edit" href="/files/edit{{$path}}/{{$file.name}}"><i class="icon-edit"></i></a>
							<a title="Download" href="/files/download{{$path}}/{{$file.name}}"><i class="icon-download-alt"></i></a>
						{else if $file.type == "zip"}
							<a title="Extract" href="/files/extract{{$path}}/{{$file.name}}"><i class="icon-share"></i></a>
							<a title="Download" href="/files/download{{$path}}/{{$file.name}}"><i class="icon-download-alt"></i></a>
						{else}
							<a title="Download" href="/files/download{{$path}}/{{$file.name}}"><i class="icon-download-alt"></i></a>
						{/if}
						<a title="Move/Rename" href="/files/move{{$path}}/{{$file.name}}"><i class="icon-share-alt"></i></a>
						<a title="Delete" style="cursor:pointer" href="javascript: if(confirm('Delete File/Folder {{$file.name}}?')) { window.location='/files/delete{{$path}}/{{$file.name}}'; }"><i class="icon-trash"></i></a>
					{/if}
				</td>
			</tr>
		{/foreach}
	</tbody>
</table>