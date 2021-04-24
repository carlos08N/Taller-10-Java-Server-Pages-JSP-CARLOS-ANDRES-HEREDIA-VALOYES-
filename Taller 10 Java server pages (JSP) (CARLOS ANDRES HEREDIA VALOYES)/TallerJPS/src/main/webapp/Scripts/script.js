function myFunction() {
    let n1 = document.getElementById("n1").value; 
    if(n1 == ""){
        alert("Debe introducir dos valores numericos");	
    }else{
        if(!/^([0-9])*$/.test(n1)){
            alert("Los valores ingresados deben ser numericos");
        }else{
            document.getElementById("Env").submit();
        }
    }
}
/*CARLOS ANDRES HEREDIA VALOYES*/