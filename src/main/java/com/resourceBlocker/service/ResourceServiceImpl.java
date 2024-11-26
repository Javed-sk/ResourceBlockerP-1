package com.resourceBlocker.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resourceBlocker.model.Resource;
import com.resourceBlocker.repository.ResourceRepository;


@Service
public class ResourceServiceImpl implements ResourceService{
	
	
	
	
	@Autowired
	private ResourceRepository resourceRepo;

	@Override
	public String upsert(Resource resource) {
		resourceRepo.save(resource);
		return "Resource Added";
		
	}

	@Override
	public Resource getById(Integer rid) {
		Optional<Resource> findById = resourceRepo.findById(rid);
		if(findById.isPresent()) {
			return findById.get();
		}
		return null;
	}

	@Override
	public List<Resource> getAll() {
		
		return resourceRepo.findAll();
	}

	@Override
	public void deleteById(Integer rid) {
		resourceRepo.deleteById(rid);
	}
		
		


}
