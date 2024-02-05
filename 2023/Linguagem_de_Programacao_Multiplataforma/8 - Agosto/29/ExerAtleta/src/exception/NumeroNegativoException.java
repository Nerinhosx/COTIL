/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exception;

/**
 *
 * @author aluno
 */
public class NumeroNegativoException extends RuntimeException{
    
    @Override
    public String getMessage(){
        return ("Valores númericos devem ser maiores que 0.");
    }
}
