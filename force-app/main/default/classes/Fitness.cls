public class Fitness {
    
    public Decimal calculateBMI(Decimal peso, Decimal altura){
        Decimal imc=0;
        
        if((peso <= 0) || (altura <= 0)){
            System.debug('Dados de peso ou altura incompativel!!');  
        } else{
            imc = peso/(altura*altura);
        }
        return imc.setScale(5);
        
    }
    public Decimal calculatePace(Decimal tempoMin, Decimal distanciaKm){
        Decimal pace =0;
        
        if((tempoMin <= 0) || (distanciaKm <= 0)){
            System.debug('Dados de tempo ou distancia incompativel, reveja isso!!');  
        }else{
            //km por min
            pace = tempoMin/distanciaKm;
        }
        return pace.setScale(5);
    }
}