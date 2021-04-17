package com.minhan.dao;

import com.minhan.model.PhoneEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.ArrayList;
import java.util.List;

public class PhoneDao {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");
    EntityManager em = emf.createEntityManager();

    public void insertPhone(PhoneEntity phone){
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(phone);
        em.getTransaction().commit();
        em.close();
    }
    public List<PhoneEntity> getlistPhone(){
        List<PhoneEntity> list = new ArrayList<>();
        try{
            em = emf.createEntityManager();
            em.getTransaction().begin();
            list = em.createQuery("select p from PhoneEntity p", PhoneEntity.class).getResultList();

            em.getTransaction().commit();
            em.close();
        }catch (Exception ex){
            ex.toString();
        }
        return list;
    }
}
