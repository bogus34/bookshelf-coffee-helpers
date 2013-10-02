pollute_function_prototype = ->
    for name, f of @__helpers_fp
        Function::[name] = f

cleanup_function_prototype = ->
    for name of @__helpers_fp
        delete Function::[name]

module.exports = (instance) ->
    instance.pollute_function_prototype = pollute_function_prototype
    instance.cleanup_function_prototype = cleanup_function_prototype
