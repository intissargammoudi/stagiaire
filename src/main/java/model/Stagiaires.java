package model;


public class Stagiaires {
 String firstname;
 String lastname;	
 String dtn;
 String db_stage;
 String dfin;
 String email;
 String encadreur;
 String sujet;
public Stagiaires() {
	super();
	// TODO Auto-generated constructor stub
}
public Stagiaires(String firstname, String lastname, String dtn, String db_stage, String dfin, String email,
		String encadreur, String sujet) {
	super();
	this.firstname = firstname;
	this.lastname = lastname;
	this.dtn = dtn;
	this.db_stage = db_stage;
	this.dfin = dfin;
	this.email = email;
	this.encadreur = encadreur;
	this.sujet = sujet;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getDtn() {
	return dtn;
}
public void setDtn(String dtn) {
	this.dtn = dtn;
}
public String getDb_stage() {
	return db_stage;
}
public void setDb_stage(String db_stage) {
	this.db_stage = db_stage;
}
public String getDfin() {
	return dfin;
}
public void setDfin(String dfin) {
	this.dfin = dfin;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getEncadreur() {
	return encadreur;
}
public void setEncadreur(String encadreur) {
	this.encadreur = encadreur;
}
public String getSujet() {
	return sujet;
}
public void setSujet(String sujet) {
	this.sujet = sujet;
}
}
