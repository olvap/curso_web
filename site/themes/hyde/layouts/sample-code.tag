<sample-code>
  <template ref="original"><yield /></template>

  <div ref='source'></div>

  <iframe width="400" height="300" frameborder="0"
    marginheight="0" marginwidth="0"
    srcdoc="{ code }">
  </iframe>

  <script>
    const self = this

    this.on('mount', function() {
      this.original_code = this.refs.original.content.textContent
      this.update({code: this.original_code})
      CodeMirror(this.refs.source, {
        mode: "text/html",
        lineWrapping: true,
        lineNumbers: true,
        styleActiveLine: true,
        matchBrackets: true,

        extraKeys: {
          "Ctrl-Space": "autocomplete"
        },
        value: this.code,
      }).on('change',function(cm){
        self.update({code: cm.getValue()})
      })
    })

    this.preview = function () {
      this.update({code: this.refs.source.value})
    }
  </script>
</sample-code>
