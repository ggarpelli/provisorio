@isTest
public class novaContaTeste {

    @isTest
    public static void chamaMetodo() {
        // Cria uma nova conta
        Account acc = novaConta.newAccount();
        
        // Atualiza a conta
        novaConta.attCampos();
        
        // Cria um novo contato
        Contact cont = novaConta.newContact();
        
        // Verifica se o contato foi criado com sucesso só sucesso!
        Contact result = [SELECT Id, FirstName, LastName FROM Contact WHERE Id = :cont.Id LIMIT 1];
        System.assertNotEquals(null, result, 'Contato não encontrado.');
        System.assertEquals('Guilherme', result.FirstName, 'Nome do contato não corresponde.');
        System.assertEquals('Parise', result.LastName, 'Sobrenome do contato não corresponde.');
    }
}
