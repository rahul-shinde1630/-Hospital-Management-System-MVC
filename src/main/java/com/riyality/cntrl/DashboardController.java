 package com.riyality.cntrl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.riyality.service.AppointmentService;
import com.riyality.service.CotService;
import com.riyality.service.PatientService;
import com.riyality.service.StaffService;
import com.riyality.service.WardService;

@Controller
@RequestMapping( "/dashboards" )
public class DashboardController {
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

	
	@RequestMapping( "/" )
	public String hrDashboard(Model model,HttpSession session ) {
		Integer branchId = ( Integer ) session.getAttribute( "branchId" );
		String role=(String) session.getAttribute("role");
		
		
		long patientsCount=patientService.getPatientCount();
		 model.addAttribute("patientCount",patientsCount);
		 long staffCount=staffService.getStaffCount();
		 
		 model.addAttribute("staffCount",staffCount);
		 long cotCount=cotService.getCotCount();
		 model.addAttribute("cotcount",cotCount);
		 List<Long> wardCounts =  wardService.allAvailableWardsAndOccupiedWardCount(branchId);
		    model.addAttribute("totalWards", wardCounts.get(0));
		    model.addAttribute("occupiedWards", wardCounts.get(1));		
		    
		    long CountForHR=appointmentService.getTodaysAppointmentCountForHR(branchId);
		    if(CountForHR==0) {
		    	model.addAttribute( "appointmentsForHR", "0" );
		    }
		    model.addAttribute( "appointmentsForHR", CountForHR );
		  	
			    long loginId = ( long ) session.getAttribute( "loginId" );
			    long a=appointmentService.getTodaysAppointmentCountForDoctor( loginId, branchId );
				if(a==0) {
					model.addAttribute( "appointments", "0" );
				}
				model.addAttribute( "appointments", a );
		   
		return "common/home";
	}
}
