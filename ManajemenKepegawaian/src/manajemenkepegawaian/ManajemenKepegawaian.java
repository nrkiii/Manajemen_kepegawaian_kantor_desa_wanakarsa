/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package manajemenkepegawaian;
import config2210010252_pbo2.configDB;
import javax.swing.JOptionPane;

/**
 *
 * @author asus
 */
public class ManajemenKepegawaian {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
       new Gui.MainFrame().setVisible(true);
       
//       configDB objekku = new configDB();
//       if (objekku.DuplicateKey("Cuti", "Id", "22")){
//           JOptionPane.showMessageDialog(null, "Data sudah ada");
//       }else{
//           JOptionPane.showMessageDialog(null, "Data berhasil ditambahkan");
//       }
    }
    
}
