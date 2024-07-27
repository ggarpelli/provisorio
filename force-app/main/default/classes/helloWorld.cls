// Hello word using Apex Classes

public class helloWorld {
    
    private String saudacoes = 'Seja muito bem vindo';
    
    public void primeiroMetodo(){
        
        System.debug(saudacoes);
        
    }
    
    public void imprimeQlkMensagem(String msg, Integer numb, String msg2){
        
        System.debug(msg + ' ' + numb + ' ' + msg2);
        
    }
    //feature3
    public String imprimeDay(Integer numb){
        
        String diaSemana = '';
        
        switch on numb{
            when 0 {
                diaSemana = 'Domingo';
            }
            when 1 {
                diaSemana = 'Segunda';
            }
            when else{
                diaSemana = 'Valor Invalido';
            }
        }
        
        System.debug(diaSemana);
        return diaSemana;            
    }     
    
    public String imprimeDay(String abreviacao){
        
        String diaSemana = '';
        switch on abreviacao{
            when 'Dom'{
                diaSemana = 'Domingo';
            }
            when 'Seg'{
                diaSemana = 'Segunda';
            }
            when 'Ter'{
                diaSemana = 'Terça';
            } 
            when else{
                diaSemana = 'Valor Invalido';
            }        
        }
        
        System.debug(diaSemana);
        return diaSemana;        
    }
    
}