
package upeu.dao;

import java.util.List;
import upeu.entity.Tablas;

public interface TablaDAO {
     int create(Tablas tablita);

    int update(Tablas tablita);

    int delete(int idventa);

    Tablas read(int idventa);

    List<Tablas> readAll();
}
