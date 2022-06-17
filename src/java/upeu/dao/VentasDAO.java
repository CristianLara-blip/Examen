
package upeu.dao;

import java.util.List;
import upeu.entity.Ventas;

public interface VentasDAO {
     int create(Ventas ventas);
    int update(Ventas ventas);
    int delete(int idventas);
    Ventas read(int idventas);
    List<Ventas> readAll();
}
