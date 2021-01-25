package dr_Link.prescription;

import dr_Link.doctorProfile.DoctorDTO;
import dr_Link.dto.DepartmentDTO;
import dr_Link.dto.MedicineDTO;
import dr_Link.dto.PatientDTO;
import dr_Link.dto.TreatmentRecordDTO;

/*
  prescription_num number(4) CONSTRAINT prescription_num_pk primary key,
    patient_num number,
    doctor_num number,
    medicine_num number, -- REFERENCES treatment_record (start_treatment_time)
    payment_check char(2),
    treatment_num number,
    dosage varchar2(20), --투여량
    quantity varchar2(20), --횟수
    taking_date varchar2(20), --일수
    prescription_date varchar2(50),
*/
public class PrescriptionDTO {
	
	private int prescription_num, patient_num,doctor_num,treatment_num,price;
	private String payment_check,prescription_date,prescription_time;
	private String dsg,qty,tdate,medi_num,pre_date; //jsp 페이지에서 넘어오는 값
	private String [] medicine_num,dosage,quantity,taking_date;
	private TreatmentRecordDTO treatmentRecordDTO;
	private MedicineDTO medicineDTO;
	private DoctorDTO doctorDTO;
	private PatientDTO patientDTO;
	private DepartmentDTO departmentDTO;

	
	public String getPre_date() {
		return pre_date;
	}
	public void setPre_date(String pre_date) {
		
		this.pre_date = pre_date;
	}
	public String getDsg() {
		return dsg;
	}
	public void setDsg(String dsg) {
		this.dsg = dsg;
	}
	public String getQty() {
		return qty;
	}
	public void setQty(String qty) {
		this.qty = qty;
	}
	public String getTdate() {
		return tdate;
	}
	public void setTdate(String tdate) {
		this.tdate = tdate;
	}
	public String getMedi_num() {
		return medi_num;
	}
	public void setMedi_num(String medi_num) {
		this.medi_num = medi_num;
	}
	
	
	
	public DepartmentDTO getDepartmentDTO() {
		return departmentDTO;
	}
	public void setDepartmentDTO(DepartmentDTO departmentDTO) {
		this.departmentDTO = departmentDTO;
	}
	public TreatmentRecordDTO getTreatmentRecordDTO() {
		return treatmentRecordDTO;
	}
	public void setTreatmentRecordDTO(TreatmentRecordDTO treatmentRecordDTO) {
		this.treatmentRecordDTO = treatmentRecordDTO;
	}
	public MedicineDTO getMedicineDTO() {
		return medicineDTO;
	}
	public void setMedicineDTO(MedicineDTO medicineDTO) {
		this.medicineDTO = medicineDTO;
	}
	public DoctorDTO getDoctorDTO() {
		return doctorDTO;
	}
	public void setDoctorDTO(DoctorDTO doctorDTO) {
		this.doctorDTO = doctorDTO;
	}
	public PatientDTO getPatientDTO() {
		return patientDTO;
	}
	public void setPatientDTO(PatientDTO patientDTO) {
		this.patientDTO = patientDTO;
	}
	
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPrescription_num() {
		return prescription_num;
	}
	public void setPrescription_num(int prescription_num) {
		this.prescription_num = prescription_num;
	}
	public int getPatient_num() {
		return patient_num;
	}
	public void setPatient_num(int patient_num) {
		this.patient_num = patient_num;
	}
	public int getDoctor_num() {
		return doctor_num;
	}
	public void setDoctor_num(int doctor_num) {
		this.doctor_num = doctor_num;
	}
	/*
	public int getMedicine_num() {
		return medicine_num;
	}
	public void setMedicine_num(int medicine_num) {
		this.medicine_num = medicine_num;
	}
	*/
	public int getTreatment_num() {
		return treatment_num;
	}
	public void setTreatment_num(int treatment_num) {
		this.treatment_num = treatment_num;
	}
	public String getPayment_check() {
		return payment_check;
	}
	public void setPayment_check(String payment_check) {
		this.payment_check = payment_check;
	}
	public String getPrescription_date() {
		return prescription_date;
	}
	public void setPrescription_date(String prescription_date) {
		//2020-12-21,06:01 오후
		if(prescription_date.contains(",")) {
			this.prescription_time = prescription_date.split(",")[1];
			this.prescription_date = prescription_date.split(",")[0];
		}else {
			this.prescription_date = prescription_date;
		}
	}
	public String getPrescription_time() {
		return prescription_time;
	}
	public void setPrescription_time(String prescription_time) {
		this.prescription_time = prescription_time;
	}
	
	public String[] getMedicine_num() {
		this.medicine_num = this.medi_num.split(",");
		return this.medicine_num;
	}
	public String[] getQuantity() {
		this.quantity = this.qty.split(",");
		return this.quantity;
	}
	public String[] getTaking_date() {
		this.taking_date = this.tdate.split(",");
		return this.taking_date;
	}
	public String[] getDosage() {
		this.dosage = this.dsg.split(",");
		return this.dosage;
	}
} 
