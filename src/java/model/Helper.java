/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author x-e
 */
public class Helper {

    public double convertDouble(String valor) {
        try {
            double retorna = 0;
            retorna = Double.parseDouble(valor);
            return retorna;
        } catch (NumberFormatException ex) {
            double retorna = 0;
            return retorna;
        }
    }
    
    public int convertInt(String valor) {
        try {
            int retorna = 0;
            retorna = Integer.parseInt(valor);
            return retorna;
        } catch (NumberFormatException ex) {
            int retorna = 0;
            return retorna;
        }
    }

}
