document.addEventListener('DOMContentLoaded', function() {
    const carrito = JSON.parse(localStorage.getItem('carrito')) || [];
    const contenidoCarrito = document.getElementById('contenidoCarrito');
    
    if (carrito.length === 0) {
        contenidoCarrito.innerHTML = "<p>No hay productos en el carrito.</p>";
    } else {
        let total = 0;
        carrito.forEach(item => {
            total += item.precio * item.cantidad;
            contenidoCarrito.innerHTML += `
                <p>${item.nombre} - ${item.cantidad} x $${item.precio}</p>
            `;
        });
        contenidoCarrito.innerHTML += `<h3>Total: $${total}</h3>`;
    }

    // Vaciar carrito
    document.getElementById('vaciarCarrito').addEventListener('click', () => {
        localStorage.removeItem('carrito');
        contenidoCarrito.innerHTML = "<p>No hay productos en el carrito.</p>";
    });

    // Comprar
    document.getElementById('comprarButton').addEventListener('click', () => {
        // Vaciar el carrito
        localStorage.removeItem('carrito');
        
        // Redirigir a la página de gracias
        window.location.href = 'gracias.html';
    });
});
