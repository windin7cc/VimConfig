"--NERDTree config begin--
"let g:NERDTreeIndicatorMapCustom = {
"    \ "Modified"  : "✹",
"    \ "Staged"    : "✚",
"    \ "Untracked" : "✭",
"    \ "Renamed"   : "➜",
"    \ "Unmerged"  : "═",
"    \ "Deleted"   : "✖",
"    \ "Dirty"     : "✗",
"    \ "Clean"     : "✔︎",
"    \ "Unknown"   : "?"
"    \ }

"graphical interface:
let NERDTreeMinimalUI=1

"whether mark the node when it was bookmarked.
let NERDTreeMarkBookmarks=0

let NERDTreeShowLineNumbers=1

"the same as set statusline:
"let NERDTreeStatusline=%{exists('b:NERDTree')?b:NERDTree.root.path.str():''}
let NERDTreeWinPos='right'

"set the width.
let NERDTreeWinSize=25

"set the indicator before dir.
let NERDTreeDirArrowCollapsible='-'
let NERDTreeDirArrowExpandable='+'

"behavior:
"when disp dirs collapse dirs have only 1 child. (y:1|n:0).
let NERDTreeCascadeSingleChildDir=0

"when opening dir nodes wheather to recursively open dirs that have only 1 child which's also a dir.
let NERDTreeCascadeOpenSingleChildDir=1

let NERDTreeAutoDeleteBuffer=1 "delete buf after del or rename files.
"args used by NERDTree-<CR> to open a file or dir, args're the behavior modifier for them.
let NERDTreeCustomOpenArgs={
			\ 'file': {'reuse': 'all', 'where': 'p'},
			\ 'dir':{'where':'t'}
			\ }

"a list of regexs described file to ignore.
"magic flag: [[file|dir]] append to the end of regexs to identify file or dir.
let NERDTreeIgnore=['\.exe$[[file]]']

"regexs which used to group or sort the nodes under the parent.
"'\/$' match dirs, '*' means all not matched items,
"[[-timestamp]] sort by time newest->oldest. (- means descending).
let NERDTreeSortOrder=['\/$','\.c','.cpp','.h','*','[[-timestamp]]']
"--NERDTree config$--
 
"--NERDTree map:--
map <Leader>ntt :NERDTreeToggle<CR>
map <Leader>ntf :NERDTreeFocus<CR>
map <Leader>ntc :NERDTreeCWD<CR>
"--NERDTree map$--
