require.config({ paths: { 'vs': 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.44.0/min/vs' } })

window.MonacoEnvironment = {
  getWorkerUrl: function (workerId, label) {
    return `data:text/javascript;charset=utf-8,${encodeURIComponent(`
      self.MonacoEnvironment = {
        baseUrl: 'https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.44.0/min/'
      };
      importScripts('https://cdnjs.cloudflare.com/ajax/libs/monaco-editor/0.44.0/min/vs/base/worker/workerMain.min.js');`
    )}`
  }
}

require(['vs/editor/editor.main'], function () {

  // const initialCode = `const x = 2\n\nif (x < 5) {\n  console.log("Es menor a 5")\n} else {\n  console.log("Es mayor a 5")\n}\n\nfunction saludar (name) {\n  console.log('Hola ' + name)\n}\n\nsaludar("Anna")`

  initialCode = initialCode ?? ""


  const jsEditor = monaco.editor.create(document.getElementById('jsMonacoEditor'), {
    value: initialCode,
    language: 'javascript',

    automaticLayout: true,
    minimap: false,
    scrollBeyondLastLine: false,
    roundedSelection: false,
    overviewRulerLanes: 0,
    fixedOverflowWidgets: true,
    wordWrap: 'on',
    padding: {
      top: 16
    },
    theme: 'vs-dark'
  })

  const MS_UPDATE_DEBOUNCED_TIME = 200
  const debouncedUpdate = debounce(update, MS_UPDATE_DEBOUNCED_TIME)

  jsEditor.onDidChangeModelContent(debouncedUpdate)


  function update() {
    const javascriptCode = jsEditor.getValue();
    const codeOutput = document.getElementById("codeOutput");
  
    try {
      // Create an iframe element
      const iframe = document.createElement("iframe");
      iframe.style.display = "none";
      document.body.appendChild(iframe);
  
      // Capture console messages in the iframe's context
      iframe.contentWindow.console.log = function(message) {
        consoleMessages.push(message);
      };
  
      const consoleMessages = [];
  
      // Execute the code within the iframe's context
      iframe.contentWindow.eval(javascriptCode);
  
      // Display the captured console messages
      codeOutput.textContent = consoleMessages.join('\n');
  
      // Remove the iframe after execution
      document.body.removeChild(iframe);
    } catch (error) {
      codeOutput.textContent = 'Revisa tu código. Hay un error de sintaxis ☝😊'
    }
  }

  function debounce (func, msWait) {
    let timeout
    return function (...args) {
      const context = this
      clearTimeout(timeout)
      timeout = setTimeout(() => func.apply(context, args), msWait)
    }
  }

  // Initial Rendering
  update()

})
