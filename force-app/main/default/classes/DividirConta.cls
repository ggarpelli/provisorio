public class DividirConta {
    
    public Integer contaIndividual(Integer numeroPedacos){
        
        // Valor da conta
        Integer contaPessoa;
        
        //Tabela de preço
        Integer umaFatia = 8; //para consumo de 1.
        Integer duasOuTres = 7; //para consumo de 2 ou 3.
        Integer quatroFatias = 6; //para consumo de +3.
        
        //Utilizando if - else para imprimir pedaços quando for >0 e !=1, ou pedaço quando foi 1 ou 0 test
        if ((numeroPedacos!=1)&&(numeroPedacos >0)){
            //Ternary operator
            contaPessoa = (numeroPedacos>=4) ? (numeroPedacos*quatroFatias) : (numeroPedacos*duasOuTres);  
        }else {
            contaPessoa = numeroPedacos*umaFatia;   
        }
        return contaPessoa;
    }
}