/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;

/**
 *
 * @author Egamorft
 */
public interface IMethodDAO<T> {

    List<T> getAll();

    T getOne(String id);

    boolean insert(T t);

    boolean update(T t);

    boolean delete(String id);
}
