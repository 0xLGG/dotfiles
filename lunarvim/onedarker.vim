" Author: Christian Chiarulli <chrisatmachine@gmail.com>

lua << EOF
package.loaded['onedarker'] = nil
package.loaded['onedarker.highlights'] = nil
package.loaded['onedarker.Treesitter'] = nil
package.loaded['onedarker.markdown'] = nil
package.loaded['onedarker.Whichkey'] = nil
package.loaded['onedarker.Git'] = nil
package.loaded['onedarker.LSP'] = nil

require("onedarker")

EOF

" custom adjustemnts here since not knowing any better solution
" transparency when using LunarVim
hi Normal guibg=NONE ctermbg=NONE
" setting relative numbers
set rnu
