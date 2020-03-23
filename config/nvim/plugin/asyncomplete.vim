
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'whitelist': ['*'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))

call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

call asyncomplete#register_source(asyncomplete#sources#necosyntax#get_source_options({
    \ 'name': 'necosyntax',
    \ 'whitelist': ['*'],
    \ 'completor': function('asyncomplete#sources#necosyntax#completor'),
    \ }))

call asyncomplete#register_source(asyncomplete#sources#emoji#get_source_options({
    \ 'name': 'emoji',
    \ 'whitelist': ['markdown', 'txt', 'gitcommit'],
    \ 'completor': function('asyncomplete#sources#emoji#completor'),
    \ }))

call asyncomplete#register_source(asyncomplete#sources#nextword#get_source_options({
    \ 'name': 'nextword',
    \ 'whitelist': ['*'],
    \ 'args': ['-g'],
    \ 'completor': function('asyncomplete#sources#nextword#completor')
    \ }))
