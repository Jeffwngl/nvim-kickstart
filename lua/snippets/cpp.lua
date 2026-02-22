local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- cp
  s({ trig = 'cpp', snippetType = 'snippet' }, {
    t {
      '#include <iostream>',
      '',
      'using namespace std;',
      '',
      'int main() {',
      '    ios::sync_with_stdio(false);',
      '    cin.tie(nullptr);',
      '',
      '    ',
    },
    i(1),
    t {
      '',
      '    return 0;',
      '}',
    },
  }),

  -- vec
  s('vec', {
    t 'vector<',
    i(1, 'int'),
    t '> ',
    i(2, 'v'),
    t ';',
  }),

  -- for
  s('fori', {
    t 'for (int ',
    i(1, 'i'),
    t ' = 0; ',
    i(1, 'i'),
    t ' < ',
    i(2, 'n'),
    t '; ',
    i(1, 'i'),
    t '++) {',
    t { '', '    ' },
    i(3),
    t { '', '}' },
  }),
}
