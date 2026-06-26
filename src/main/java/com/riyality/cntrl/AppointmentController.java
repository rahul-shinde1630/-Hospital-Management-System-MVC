package com.riyality.cntrl;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.riyality.constants.MessageConstants;
import com.riyality.service.AppointmentService;
import com.riyality.service.HrService;
import com.riyality.service.PatientService;
import com.riyality.Dto.appointments.AppointmentRequestDto;
import com.riyality.Dto.appointments.AppointmentResponseDto;
import com.riyality.Dto.doctors.DoctorResponseDto;
import com.riyality.Dto.patients.PatientResponseDto;

@Controller
@RequestMapping("/appointments")
public class AppointmentController {

	@Autowired
	private PatientService patientService;

	@Autowired
	private HrService hrService;

	@Autowired
	private AppointmentService appointmentService;

	@GetMapping("/appointmentForm")
	public String appointmentForm() {
		return "appointments/appointmentForm";
	}

	@ResponseBody
	@GetMapping("/phoneNumber/{phoneNumber}")
	public List<PatientResponseDto> findPatientsByPhoneNumber(HttpSession session, @PathVariable String phoneNumber) {
		Integer branchId = (Integer) session.getAttribute("branchId");
		return patientService.findPatientsByPhoneNumber(branchId, phoneNumber);

	}

	@GetMapping("/bookAppointmentsForm/patient/{id}")
	public String bookAppointmentsForm(Model model, HttpSession session, @PathVariable long id) {
		Integer branchId = (Integer) session.getAttribute("branchId");
		List<DoctorResponseDto> doctors = hrService.allDoctorsList(branchId);
		model.addAttribute("doctors", doctors);

		PatientResponseDto patient = patientService.getPatientById(id);
		model.addAttribute("patient", patient);

		return "appointments/bookAppointmentsForm";
	}

	@PostMapping
	public String addAppointment(@ModelAttribute AppointmentRequestDto dto, Model model, HttpSession session,
			RedirectAttributes ra) {

		String user = (String) session.getAttribute("username");

		if (user != null) {
			Integer branchId = (Integer) session.getAttribute("branchId");
			dto.setBranch(branchId);
			String result = appointmentService.addAppointment(dto);

			if (result.equalsIgnoreCase(MessageConstants.ADD_APPOINMENT_SUCCESS_MESSAGE)) {
				ra.addFlashAttribute("successMessage", MessageConstants.ADD_APPOINMENT_SUCCESS_MESSAGE);
				return "redirect:/appointments/todays";
			} else {
				ra.addFlashAttribute("errorMessage", MessageConstants.ADD_APPOINMENT_ERROR_MESSAGE);
				return "error";
			}

		}
		return "login";
	}

	@GetMapping("/todays")
	public String todaysAppointments(HttpSession session, Model model) {
		Integer branchId = (Integer) session.getAttribute("branchId");
		Long doctorId = (Long) session.getAttribute("doctorId");

		List<AppointmentResponseDto> appointments = appointmentService.getTodaysAppointment(branchId);
		Date date = new Date();

		System.out.println(date);

		model.addAttribute("appointments", appointments);

		return "appointments/todays";
	}

	@GetMapping("/todays/for-doctor")
	public String todaysAppointmentsForDoctor(HttpSession session, Model model) {
		Integer branchId = (Integer) session.getAttribute("branchId");
		Long loginId = (Long) session.getAttribute("loginId");
		Long doctorId = (Long) session.getAttribute("doctorId");
		List<AppointmentResponseDto> appointments = appointmentService.getTodaysAppointmentsForDoctor(branchId, loginId);

		System.out.println(appointments);
		model.addAttribute("appointments", appointments);
		return "appointments/todays";
	}

//	
//	@GetMapping("/todays/count-forDoctor")
//	public String todaysAppointmentsCountForDoctor(HttpSession session, Model model) {
//	    Integer branchId = (Integer) session.getAttribute("branchId");
//	    Long loginId = (Long) session.getAttribute("loginId");
//	
//	    List<AppointmentResponseDto> appointments = appointmentService.getTodaysAppointmentsCountForDoctor(branchId, loginId);
//	    System.out.println(appointments);
//	    model.addAttribute("appointments", appointments);
//	    return "appointments/todays";
//	}

	@GetMapping("/todays/appointment/count")
	public long todaysAppointmentcountForDoctor(@PathVariable Long doctorId, @PathVariable int branchId) {
		return appointmentService.getTodaysAppointmentCountForDoctor(doctorId, branchId);
	}

	@GetMapping("/id/{id}")
	public String getupdateAppointmentForm(@PathVariable Long id, Model model, HttpSession session) {
		AppointmentResponseDto response = appointmentService.getAppointmentById(id);
		PatientResponseDto patient = patientService.getPatientById(response.getPatientId());
		Integer branchId = (Integer) session.getAttribute("branchId");
		List<DoctorResponseDto> doctors = hrService.allDoctorsList(branchId);

		model.addAttribute("doctors", doctors);
		model.addAttribute("patient", patient);
		model.addAttribute("data", response);

		return "appointments/update";
	}

	@GetMapping("/status/id/{id}")
	public String updateStatus(@PathVariable int id) {
		try {
			appointmentService.updateStatus(id);
			System.out.println(id);

			return " successfully";
		} catch (Exception e) {
			return "Error : " + e.getMessage();
		}
	}

	@PostMapping("/update")
	public String updateAppointment(@ModelAttribute AppointmentRequestDto dto, Model model, HttpSession session,
			RedirectAttributes ra) {

		String user = (String) session.getAttribute("username");

		if (user != null) {
			Integer branchId = (Integer) session.getAttribute("branchId");
			dto.setBranch(branchId);
			String result = appointmentService.updateAppointment(dto);

			if (result.equalsIgnoreCase(MessageConstants.UPDATE_APPOINMENT_SUCCESS_MESSAGE)) {
				ra.addFlashAttribute("successMessage", MessageConstants.UPDATE_APPOINMENT_SUCCESS_MESSAGE);
				return "redirect:/appointments/todays";
			} else {
				ra.addFlashAttribute("errorMessage", MessageConstants.UPDATE_APPOINMENT_ERROR_MESSAGE);
				return "error";
			}

		}
		return "login";
	}

}
