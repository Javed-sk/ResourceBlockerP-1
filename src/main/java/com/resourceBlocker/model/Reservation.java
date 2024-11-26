package com.resourceBlocker.model;

import java.time.LocalDateTime;

import com.resourceBlocker.Enums.ReservationStatusEnum;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "reservations")
public class Reservation {
	

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private Long id;

	    @Column(name = "employee_id")
	    private Long employeeId;

	    @Column(name = "resource_id")
	    private Long resourceId;

	    @Column(name = "start_time")
	    private LocalDateTime startTime;

	    @Column(name = "end_time")
	    private LocalDateTime endTime;

	    @Enumerated(EnumType.STRING)
	    private ReservationStatusEnum status;

	    
	    public Reservation() {
	    	
		}


		public Reservation(Long id, Long employeeId, Long resourceId, LocalDateTime startTime, LocalDateTime endTime,
				ReservationStatusEnum status) {
			super();
			this.id = id;
			this.employeeId = employeeId;
			this.resourceId = resourceId;
			this.startTime = startTime;
			this.endTime = endTime;
			this.status = status;
		}


		// constructors, getters and setters

	    public Long getId() {
			return id;
		}


		public void setId(Long id) {
			this.id = id;
		}


		public Long getEmployeeId() {
			return employeeId;
		}


		public void setEmployeeId(Long employeeId) {
			this.employeeId = employeeId;
		}


		public Long getResourceId() {
			return resourceId;
		}


		public void setResourceId(Long resourceId) {
			this.resourceId = resourceId;
		}


		public LocalDateTime getStartTime() {
			return startTime;
		}


		public void setStartTime(LocalDateTime startTime) {
			this.startTime = startTime;
		}


		public LocalDateTime getEndTime() {
			return endTime;
		}


		public void setEndTime(LocalDateTime endTime) {
			this.endTime = endTime;
		}


		public ReservationStatusEnum getStatus() {
			return status;
		}


		public void setStatus(ReservationStatusEnum status) {
			this.status = status;
		}


		@Override
		public String toString() {
			return "Reservation [id=" + id + ", employeeId=" + employeeId + ", resourceId=" + resourceId
					+ ", startTime=" + startTime + ", endTime=" + endTime + ", status=" + status + "]";
		}

	}

