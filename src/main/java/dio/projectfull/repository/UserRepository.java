package dio.projectfull.repository;

import dio.projectfull.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface UserRepository extends JpaRepository<User, Integer> {

    @Query("Select e FROM User e JOIN e.roles WHERE e.username= (:username)")
    public User finByUsername(@Param ("username") String username);

}
