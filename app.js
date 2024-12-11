document.addEventListener('DOMContentLoaded', function() {
    fetch('productos.php')
        .then(response => response.json())
        .then(data => {
            const productosContainer = document.getElementById('productos');
            data.forEach(producto => {
                const productoElement = document.createElement('div');
                productoElement.classList.add('producto');
                productoElement.innerHTML = `
                    <img src="${producto.imagen}" alt="${producto.nombre}" class="img123">
                    <h3>${producto.nombre}</h3>
                    <p>${producto.descripcion}</p>
                    <p>Precio: $${producto.precio}</p>
                    <input type="number" min="1" id="cantidad${producto.id}" value="1">
                    <button onclick="agregarAlCarrito(${producto.id}, '${producto.nombre}', ${producto.precio})">Agregar al Carrito</button>
                `;
                productosContainer.appendChild(productoElement);
            });
        });
});

function agregarAlCarrito(id, nombre, precio) {
    const cantidad = parseInt(document.getElementById(`cantidad${id}`).value);
    const producto = { id, nombre, precio, cantidad };

    let carrito = JSON.parse(localStorage.getItem('carrito')) || [];

    const index = carrito.findIndex(item => item.id === id);
    if (index >= 0) {
        carrito[index].cantidad += cantidad;
    } else {
        carrito.push(producto);
    }

    localStorage.setItem('carrito', JSON.stringify(carrito));

    // Mostrar mensaje emergente
    mostrarMensaje("Productos agregados al carrito correctamente");

    // Actualizar el contador del carrito en la página
    actualizarContadorCarrito();
}

// Mostrar mensaje emergente
function mostrarMensaje(mensaje) {
    const toast = document.createElement('div');
    toast.classList.add('toast');
    toast.textContent = mensaje;

    document.body.appendChild(toast);

    // Eliminar el mensaje después de 3 segundos
    setTimeout(() => {
        toast.remove();
    }, 3000);
}

// Actualizar contador de productos en el carrito
function actualizarContadorCarrito() {
    const carrito = JSON.parse(localStorage.getItem('carrito')) || [];
    const cantidadCarrito = carrito.reduce((total, item) => total + item.cantidad, 0);
    const verCarritoLink = document.getElementById('verCarrito');
    verCarritoLink.textContent = ` (${cantidadCarrito})`;
}
