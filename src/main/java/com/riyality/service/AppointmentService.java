package com.riyality.service;

import java.util.List;

import com.riyality.Dto.appointments.AppointmentRequestDto;
import com.riyality.Dto.appointments.AppointmentResponseDto;

public interface AppointmentService {

	String addAppointment( AppointmentRequestDto dto );

	List<AppointmentResponseDto> getTodaysAppointment( Integer branchId);

	AppointmentResponseDto getAppointmentById( Long id );

	String updateAppointment( AppointmentRequestDto dto );

	List<AppointmentResponseDto> getTodaysAppointmentsForDoctor( Integer branchId, Long loginId );

	AppointmentResponseDto updateStatus(int id);

	long getTodaysAppointmentCountForDoctor(Long doctorId, int branchId);

	long getTodaysAppointmentCountForHR(Integer branchId);


//	List<AppointmentResponseDto> getTodaysAppointmentsCountForDoctor(Integer branchId, Long loginId);

}
