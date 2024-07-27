@isTest
public class FitnessTest {
    
    @isTest
    public Static void chamaMetodo(){
        
        Fitness chamaClasse = new Fitness();
        Decimal pace =chamaClasse.calculatePace(72, 7);
        Decimal pace2 =chamaClasse.calculatePace(-3, 7);
        Decimal bmi = chamaClasse.calculateBMI(33,158);
        Decimal bmi2 = chamaClasse.calculateBMI(-55,158);
        
        System.debug('Pace :'+ pace.setScale(5));
        System.assertEquals(10.28571, pace, 'Não deu certo o Equals do pace2');
        
        System.debug('Pace2 :'+ pace2.setScale(5));
        System.assertEquals(0.0000, pace2, 'Não deu certo o Equals do pace2');
        
        System.debug('BMI :'+ bmi.setScale(5));
        System.assertEquals(0.00132, bmi, 'Não deu certo o Equals do bmi');
        
        System.debug('BMI2 :'+ bmi2.setScale(5));       
        System.assertEquals(0.0000, bmi2, 'Não deu certo o Equals do bmi2');
        
    }
}