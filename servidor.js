var d = new Date();

// Ejemplo de JavaScript de inicio para deshabilitar el envío de formularios si hay campos no válidos
(() => {
    'use strict'
  
    // Obtener todos los formularios a los que queremos aplicar estilos de validación de Bootstrap personalizados
    const forms = document.querySelectorAll('.needs-validation')
  
    // Bucle sobre ellos y evitar la presentación
    Array.from(forms).forEach(form => {
      form.addEventListener('submit', event => {
        if (!form.checkValidity()) {
          event.preventDefault()
          event.stopPropagation()
        }
  
        form.classList.add('was-validated')
      }, false)
    })
  })()



