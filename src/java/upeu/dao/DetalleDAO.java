
package upeu.dao;

import java.util.List;
import upeu.entity.Detalles;

public interface DetalleDAO {
     int create(Detalles detalles);
    int update(Detalles detalles);
    int delete(int iddetalles);
    Detalles read(int iddetalles);
    List<Detalles> readAll();
}
