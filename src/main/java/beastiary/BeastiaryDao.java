package beastiary;
 
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
 
@Component
public class BeastiaryDao {
    // Injected database connection:
    @PersistenceContext private EntityManager em;
 
    // Stores a new guest:
    @Transactional
    public void persist(Beastiary guest) {
        em.persist(guest);
    }
 
    // Retrieves all the guests:
    public List<Beastiary> getAllGuests() {
    	TypedQuery<Beastiary> query = em.createQuery(
            "SELECT g FROM Guest g ORDER BY g.id", Beastiary.class);
    	return query.getResultList();
    }
}