local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- cpp
  s({ trig = 'cpp', snippetType = 'snippet' }, {
    t {
      '#include <iostream>',
      '',
      'using namespace std;',
      '',
      'typedef long long ll;',
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

  -- fori
  s('fori', {
    t 'for (int ',
    i(1, 'i'),
    t ' = 0; ',
    i(1, 'i'),
    t ' < ',
    i(2, 'n'),
    t '; ++',
    i(1, 'i'),
    t ') {',
    t { '', '    ' },
    i(3),
    t { '', '}' },
  }),

  -- Linked List Node snippet
  s('llnode', {
    t { 'struct Node {', '\tint data;' },
    t { '', '\tNode* next;' },
    t { '', '\tNode(int val) : data(val), next(nullptr) {}' },
    t { '', '};' },
    i(0),
  }),

  -- Binary Search Tree Node snippet
  s('bstnode', {
    t { 'struct TreeNode {', '\tint val;' },
    t { '', '\tTreeNode* left;' },
    t { '', '\tTreeNode* right;' },
    t { '', '\tTreeNode(int value) : val(value), left(nullptr), right(nullptr) {}' },
    t { '', '};' },
    i(0),
  }),
}
