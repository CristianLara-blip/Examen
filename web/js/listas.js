$(document).ready(function () {
    
    listarVentas();
    listarSucursales();
    listarVendedores();
    listarClientes();
    listarProductos();
    
});
let xx;
function listarVentas() {
    
    
    $.get("Tablitauwu", {"opc": 1}, function (data) {
        
        let x = JSON.parse(data);
        $("#tablita tbody tr").remove();
        for (let i = 0; i < x.length; i++) {
            $("#tablita").append(
                    "<tr><td>" + x[i].idventa + "</td><td>" + (i + 1) + "</td><td>" + x[i].sucursal +
                    "</td><td>" + x[i].vendedor + "</td><td>" + x[i].cliente +  "</td><td>" + x[i].fecha + "</td><td><a href='#'><i class='fa-solid fa-eye'></i></a></td>");
       }
        
    });
}
function listarSucursales() {
    $.get("SucursalesController", {"opc": 1}, function (data)
    {
        let x = JSON.parse(data);
        for (let i = 0; i < x.length; i++) {
            
            
            
            $("#sucursal").append($("<option>", {
                value: x[i],
                text: x[i].direccion
                        
            })
                    );
            
            
        }
        
    });
    
}
function listarClientes() {
    $.get("ClientesController", {"opc": 1}, function (data)
    {
        let x = JSON.parse(data);
        for (let i = 0; i < x.length; i++) {
            
            
            
            $("#clientes").append($("<option>", {
                value: x[i],
                text: x[i].nombre
                        
            })
                    );
            
            
        }
        
    });
    
}

function listarVendedores() {
    $.get("VendedoresController", {"opc": 1}, function (data)
    {
        let x = JSON.parse(data);
        for (let i = 0; i < x.length; i++) {
            
            console.log(x);
            
            $("#vendedores").append($("<option>", {
                value: x[i].idvendedor,
                text: x[i].nombre
                        
            })
                    );
            
            
        }
        
    });
    
}



function listarProductos() {
    
    
    
    $.get("ProductosController", {"opc": 1}, function (data)
    {
        let x = JSON.parse(data);
        for (let i = 0; i < x.length; i++) {
            
            
            
            $("#productos").append($("<option>", {
                value: x[i],
                text: x[i].nombre
                        
            })
                    );
            
            
        }
        
    });
    
}
let mostrar = () => {
    const valor = $("#productos :selected").val(),
            texto = $("#productos :selected").text();
    $('#productosP').val(texto);
};


$('#productos').change(mostrar);