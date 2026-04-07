package org.example.kiemtra1;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EmployeeController {

    @GetMapping("/employees")
    public String getEmployees(Model model) {
        List<Employee> employeeList = new ArrayList<>();
        employeeList.add(new Employee(1, "Nguyễn Văn A", "Kỹ thuật", 12000));
        employeeList.add(new Employee(2, "Trần Thị B", "Marketing", 15000));
        employeeList.add(new Employee(3, "Lê Văn C", "Nhân sự", 9000));

        model.addAttribute("employees", employeeList);
        return "employee-list";
    }
}
