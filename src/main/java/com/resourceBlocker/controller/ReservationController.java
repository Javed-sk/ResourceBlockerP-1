package com.resourceBlocker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

import com.resourceBlocker.model.Reservation;
import com.resourceBlocker.service.ReservationService;

import jakarta.servlet.http.HttpServletResponse;


@Controller
public class ReservationController {

    @Autowired
    private ReservationService reservationService;

    @GetMapping("/pendingReservations")
    public ModelAndView getPendingReservations() {
        List<Reservation> pendingReservations = reservationService.getPendingReservations();
        ModelAndView modelAndView = new ModelAndView("pendingReservations");
        modelAndView.addObject("reservations", pendingReservations);
        return modelAndView;
    }

    @GetMapping("/approveReservation/{reservationId}")
    public ModelAndView approveReservation(@PathVariable long reservationId) {
        reservationService.approveReservation(reservationId);
        ModelAndView modelAndView = new ModelAndView("redirect:/pendingReservations");
        return modelAndView;
    }

    @GetMapping("/rejectReservation/{reservationId}")
    public ModelAndView rejectReservation(@PathVariable long reservationId) {
        reservationService.rejectReservation(reservationId);   
        ModelAndView modelAndView = new ModelAndView("redirect:/pendingReservations");
        return modelAndView;
    }
    
    @GetMapping("/reservations")
	public ModelAndView getAllCategories(ModelAndView mv){
		mv=new ModelAndView("AllReservations");
		List<Reservation> allReservation = reservationService.getAllReservations();
		mv.addObject("reservations",allReservation );
		return mv;	
	}
    
    

    @GetMapping("/downloadExcel")
    public void downloadExcel(HttpServletResponse response) throws IOException {
        // Set the response headers
        response.setContentType("application/vnd.ms-excel");
        response.setHeader("Content-Disposition", "attachment; filename=reservations.xls");

        // Get the list of reservations from your service or data source
        List<Reservation> reservations = reservationService.getAllReservations(); // Replace with your actual data retrieval

        // Create a StringBuilder to store the Excel file content
        StringBuilder excelContent = new StringBuilder();

        // Append the column headers
        excelContent.append("Id\tEmployee Id\tResource Id\tStart Time\tEnd Time\tStatus\n");

        // Append the data rows
        for (Reservation reservation : reservations) {
            excelContent.append(reservation.getId()).append("\t")
                .append(reservation.getEmployeeId()).append("\t")
                .append(reservation.getResourceId()).append("\t")
                .append(reservation.getStartTime()).append("\t")
                .append(reservation.getEndTime()).append("\t")
                .append(reservation.getStatus()).append("\n");
        }

        // Write the Excel content to the response stream
        response.getWriter().write(excelContent.toString());
    }

    
}

