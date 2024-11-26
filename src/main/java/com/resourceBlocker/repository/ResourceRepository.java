package com.resourceBlocker.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.resourceBlocker.model.Resource;

public interface ResourceRepository extends JpaRepository<Resource,Integer>{
	

}
