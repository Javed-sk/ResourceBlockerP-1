package com.resourceBlocker.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.resourceBlocker.Enums.ReservationStatusEnum;
import com.resourceBlocker.model.Reservation;
import com.resourceBlocker.repository.ReservationRepository;



@Service
	public class ReservationServiceImpl implements ReservationService {

	    @Autowired
	    private ReservationRepository reservationRepository;

	    @Override
	    public List<Reservation> getPendingReservations() {
	        return reservationRepository.findByStatus(ReservationStatusEnum.PENDING);
	    }

	    public Reservation approveReservation(long reservationId) {
	        Reservation reservation = reservationRepository.findById(reservationId).orElseThrow(() -> new IllegalArgumentException("Invalid reservation ID"));
	        reservation.setStatus(ReservationStatusEnum.APPROVED);
	        return reservationRepository.save(reservation);
	    }

	    @Override
	    public Reservation rejectReservation(long reservationId) {
	        Reservation reservation = reservationRepository.findById(reservationId).orElseThrow(() -> new IllegalArgumentException("Invalid reservation ID"));
	        reservation.setStatus(ReservationStatusEnum.REJECTED);
	        return reservationRepository.save(reservation);
	    }
	    @Override
	    public List<Reservation> getAllReservations() {
	        return reservationRepository.findAll();
	    }
	}

