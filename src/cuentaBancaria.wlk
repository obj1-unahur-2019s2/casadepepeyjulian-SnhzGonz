object cuentaCorriente {
	var saldo = 0
	method depositar(importe){
		saldo = saldo + importe
	}
	method extraer(importe){
		saldo = saldo - importe
	}
	method saldo(){
		return saldo
	}
}

object cuentaConGastos {
	var saldo = 0
	method depositar(importe){
		saldo = saldo + (importe - 20)
	}
	method extraer(importe){
		if (importe <= 1000){saldo = saldo - (importe + 20)}
		else {saldo = saldo - (importe + importe/50) }
	}
	method saldo(){
		return saldo
	}
}

object cuentaCombinada {
	var cuentaPrincipal = 0
	var cuentaSecundaria = 0
	method depositar(importe){
		cuentaPrincipal = cuentaPrincipal + importe
	}
	method extraer(importe){
		if (cuentaPrincipal >= importe){cuentaPrincipal = cuentaPrincipal - importe}
		else {cuentaSecundaria = cuentaSecundaria - importe}
	}
	method saldo(){
		return cuentaPrincipal + cuentaSecundaria
	}
}

