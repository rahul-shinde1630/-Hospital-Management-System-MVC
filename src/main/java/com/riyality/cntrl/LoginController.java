package com.riyality.cntrl;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.riyality.Dto.LoginRequestDto;
import com.riyality.Dto.LoginResponceDto;
import com.riyality.service.AppointmentService;
import com.riyality.service.CotService;
import com.riyality.service.LoginService;
import com.riyality.service.PatientService;
import com.riyality.service.StaffService;
import com.riyality.service.WardService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginservice;
	@Autowired
	private PatientService patientService;

	@Autowired
	private WardService wardService;

	@Autowired
	private CotService cotService;
	@Autowired
	private AppointmentService appointmentService;

	@Autowired
	private StaffService staffService;

	@GetMapping("login")
	public String login() {
		return "common/home";
	}

	@PostMapping("/login-user")
	public String loginUser(@ModelAttribute @Valid LoginRequestDto loginDto, Model model, HttpSession session) {
		LoginResponceDto dto = loginservice.login(loginDto);
		if (dto == null) {
			model.addAttribute("errorMsg", "invalid cred...");
			return "login";
		} else {
			session.setAttribute("loginId", dto.getLoginId());
			session.setAttribute("name", dto.getName());
			session.setAttribute("role", dto.getRole());
			session.setAttribute("username", dto.getUsername());
			session.setAttribute("status", dto.getStatus());
			session.setAttribute("branchId", dto.getBranchId());
			session.setAttribute("branchName", dto.getBranchName());

			long patientsCount = patientService.getPatientCount();
			System.out.println("count" + patientsCount);
			model.addAttribute("patientCount", patientsCount);

			long staffCount = staffService.getStaffCount();

			model.addAttribute("staffCount", staffCount);

			long cotCount = cotService.getCotCount();
			model.addAttribute("cotcount", cotCount);
			Integer branchId = (Integer) session.getAttribute("branchId");
			List<Long> wardCounts = wardService.allAvailableWardsAndOccupiedWardCount(branchId);
			model.addAttribute("totalWards", wardCounts.get(0));
			model.addAttribute("occupiedWards", wardCounts.get(1));
			long loginId = (long) session.getAttribute("loginId");

			long CountForHR = appointmentService.getTodaysAppointmentCountForHR(branchId);
			if (CountForHR == 0) {
				model.addAttribute("appointmentsForHR", "0");
			}
			model.addAttribute("appointmentsForHR", CountForHR);

			long a = appointmentService.getTodaysAppointmentCountForDoctor(loginId, branchId);
			System.out.println(a + "AppointmentsCount");
			if (a == 0) {
				model.addAttribute("appointments", "0");
			}
			model.addAttribute("appointments", a);

			System.out.println("APTMNT:" + a);
			return "common/home";
		}
	}

	@GetMapping("/logout")
	public String logOut(HttpSession session) {
		session.invalidate();
		return "login";
	}

}
