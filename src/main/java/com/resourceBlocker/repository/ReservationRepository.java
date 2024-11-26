package com.resourceBlocker.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.resourceBlocker.Enums.ReservationStatusEnum;
import com.resourceBlocker.model.Reservation;


@Repository
	public interface ReservationRepository extends JpaRepository<Reservation, Long> {
	    List<Reservation> findByEmployeeId(long employeeId);
	    List<Reservation> findByResourceId(long resourceId);
	    List<Reservation> findByStatus(ReservationStatusEnum pending);
	}
