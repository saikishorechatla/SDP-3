package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.klef.jfsd.springboot.model.Profile;

public interface ProfileRepository extends JpaRepository<Profile, Integer> {

	@Query("select e from Profile e where eid=?1")
	public Profile find(String eid);
	
}
