function NERDTreeMyOpenInTab(node)
    call a:node.open({'reuse': "all", 'where': 't'})
	NERDTreeMirrorOpen
	wincmd w
endfunction
call NERDTreeAddKeyMap({'key': 't', 'callback': 'NERDTreeMyOpenInTab', 'scope': 'FileNode', 'override': 1 })
