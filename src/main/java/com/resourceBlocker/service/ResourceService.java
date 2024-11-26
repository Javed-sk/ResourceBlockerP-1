package com.resourceBlocker.service;

import java.util.List;

import com.resourceBlocker.model.Resource;



public interface ResourceService {
	
	public String upsert(Resource resource);
	
	public Resource getById(Integer rid);
	
	public List<Resource> getAll();
	
	public void deleteById(Integer rid);
	

}
