Interceptor.attach(ptr("%s"), {
    onEnter: function(args) {
        console.log(args[0]);
    }
});