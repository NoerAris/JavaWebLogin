/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.valensi.dao;

import com.valensi.model.Pengguna;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceUnit;
import javax.persistence.Query;
import javax.transaction.Transactional;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Aris
 */
@Repository
@Transactional


public class UserService {
    
    static final Logger logger=Logger.getLogger(UserService.class.getName());
    
@PersistenceUnit
EntityManagerFactory emf;

 private EntityManager em;  
    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }
    
  
   

    public UserService() {
    }
   
      
    //@Transactional
    public void saveUser(Pengguna us){
        em=emf.createEntityManager();
        em.getTransaction().begin();
        this.em.persist(us);
        em.getTransaction().commit();
        em.close();
    }
    
    public Pengguna findByUsername(String username){
        Pengguna pengg=new Pengguna();
        try {
            em=emf.createEntityManager();
            Query query=em.createQuery("Select p from Pengguna p where p.userName=:userName");
            query.setParameter("userName",username);
            pengg=(Pengguna) query.getSingleResult();
        } catch (NoResultException nre) {
            logger.severe("username tidak ada");
        }
        return pengg;
    }
}
