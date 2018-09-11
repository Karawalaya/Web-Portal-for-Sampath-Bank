package DAO_SERVICE.queries;

public class EHPMQueries {
	public static final String EHPMquery0001 = "SELECT nextEmployeeId FROM next_primary_keys WHERE primaryKey=1;";
	public static final String EHPMquery0002 = "UPDATE next_primary_keys SET nextEmployeeId=? WHERE primaryKey=1;";
//	public static final String EHPMquery0003 = "SELECT customerPrimaryKey FROM next_primary_keys WHERE primaryKey=1;";
	public static final String EHPMquery0004 = "SELECT nextOnlineEmployeeId FROM next_primary_keys WHERE primaryKey=1;";
	public static final String EHPMquery0005 = "UPDATE next_primary_keys SET nextOnlineEmployeeId=? WHERE primaryKey=1;";
	public static final String EHPMquery0006 = "SELECT nextOnlineSecurityId FROM next_primary_keys WHERE primaryKey=1;";
	public static final String EHPMquery0007 = "UPDATE next_primary_keys SET nextOnlineSecurityId=? WHERE primaryKey=1;";
	public static final String EHPMquery0008 = "INSERT INTO online_security_key(onlineSecurityId, onlineSecurityKey) VALUES(?, ?);";
	public static final String EHPMquery0009 = "INSERT INTO online_employee_credentials(onlineEmployeeId, employeeId, username, password) VALUES(?, ?, ?, ?);";
	public static final String EHPMquery0010 = "UPDATE person SET onlineRegistrationDate=?, onlineSecurityId=? WHERE personId=?";
	public static final String EHPMquery0011 = "SELECT * FROM gender;";
	public static final String EHPMquery0012 = "SELECT * FROM nationality;";
//	public static final String EHPMquery0013 = "SELECT * FROM permission;";
	public static final String EHPMquery0014 = "SELECT * FROM branch;";
	public static final String EHPMquery0015 = "SELECT * FROM department;";
	public static final String EHPMquery0016 = "SELECT * FROM designation;";
	public static final String EHPMquery0017 = "SELECT * FROM leave_days;";
	public static final String EHPMquery0018 = "SELECT * FROM leave_details WHERE employeeId=?;";
	public static final String EHPMquery0019 = "SELECT leaveRequestId FROM next_primary_keys WHERE primaryKey=1;";
	public static final String EHPMquery0020 = "UPDATE next_primary_keys SET leaveRequestId=? WHERE primaryKey=1;";
	public static final String EHPMquery0021 = "INSERT INTO leave_request(employeeId, leaveRequestId, leaveType, leaveDescription, leaveRequestedDate, leaveStartDate, leaveDuration, leaveStatus) VALUES(?,?,?,?,?,?,?,?);";
	public static final String EHPMquery0022 = "SELECT * FROM leave_request WHERE employeeId=?;";
	public static final String EHPMquery0023 = "SELECT * FROM leave_request WHERE employeeId=? AND leaveStatus=?;";
	public static final String EHPMquery0024 = "INSERT INTO person(personId, firstName, middleName, lastName, otherNames, addressStreet01, addressStreet02, addressCity, addressProvince, addressZipCode, nic, dateOfBirth, personalEmail, physicalRegistrationDate, genderId, nationalityId, branchId) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);";
	public static final String EHPMquery0025 = "INSERT INTO employee(employeeId, departmentId, companyEmail, designationId, employeeType) VALUES(?, ?, ?, ?, ?);";
	public static final String EHPMquery0026 = "INSERT INTO person_contact(personId, contactNumber, type) VALUES(?, ?, ?);";
	public static final String EHPMquery0027 = "INSERT INTO leave_details(employeeId, noOfLeavesLeft, lastEffectiveLeaveDate) VALUES(?, ?, ?);";
	public static final String EHPMquery0028 = "SELECT * FROM person p INNER JOIN employee e ON p.personId = e.employeeId WHERE p.onlineRegistrationDate IS NULL;";
}
