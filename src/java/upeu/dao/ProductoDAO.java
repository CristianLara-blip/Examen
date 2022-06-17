
package upeu.dao;

import java.util.List;
import java.util.Map;
import upeu.entity.Productos;

public interface ProductoDAO {
    int create(Productos p);
    int update(Productos p);
    int delete(int id);
    Productos read(int id);
    List<Productos> readAll();
  
}
