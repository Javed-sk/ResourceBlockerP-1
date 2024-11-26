package com.resourceBlocker.service;

import java.util.List;

import com.resourceBlocker.model.Reservation;

public interface ReservationService {
    List<Reservation> getPendingReservations();
    Reservation approveReservation(long reservationId);
    Reservation rejectReservation(long reservationId);
    List<Reservation> getAllReservations();
}
