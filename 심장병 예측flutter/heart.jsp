<%@page import="org.rosuda.REngine.Rserve.RConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	double HighBP = Double.parseDouble(request.getParameter("HighBP"));
	double HighChol = Double.parseDouble(request.getParameter("HighChol"));
	double CholCheck = Double.parseDouble(request.getParameter("CholCheck"));
	double BMI = Double.parseDouble(request.getParameter("BMI"));
	double Smoker = Double.parseDouble(request.getParameter("Smoker"));
	double Stroke = Double.parseDouble(request.getParameter("Stroke"));
	double Diabetes = Double.parseDouble(request.getParameter("Diabetes"));
	double PhysActivity = Double.parseDouble(request.getParameter("PhysActivity"));
	double Fruits = Double.parseDouble(request.getParameter("Fruits"));
	double Veggies = Double.parseDouble(request.getParameter("Veggies"));
	double HvyAlcoholConsump = Double.parseDouble(request.getParameter("HvyAlcoholConsump"));
	double NoDocbcCost = Double.parseDouble(request.getParameter("NoDocbcCost"));
	double GenHlth = Double.parseDouble(request.getParameter("GenHlth"));
	double MentHlth = Double.parseDouble(request.getParameter("MentHlth"));
	double PhysHlth = Double.parseDouble(request.getParameter("PhysHlth"));
	double DiffWalk = Double.parseDouble(request.getParameter("DiffWalk"));
	double Sex = Double.parseDouble(request.getParameter("Sex"));

	
	RConnection conn = new RConnection();
	
	conn.voidEval("library(randomForest)");
	conn.voidEval("rf <- readRDS('/Library/Tomcat/webapps/ROOT/Flutter/heart.rds2')");
	

	conn.voidEval("HeartDiseaseorAttack <- as.character(predict(rf, (list(HighBP=" + HighBP + ", HighChol=" + HighChol + ",CholCheck=" + CholCheck + ",BMI=" + BMI + ",Smoker=" + Smoker + ",Stroke =" + Stroke + ",Diabetes=" + Diabetes + ",PhysActivity=" + PhysActivity + ",Fruits =" + Fruits + ",Veggies=" + Veggies + ",HvyAlcoholConsump=" + HvyAlcoholConsump + ",NoDocbcCost=" + NoDocbcCost + ",GenHlth=" + GenHlth + ",MentHlth=" + MentHlth + ",PhysHlth=" + PhysHlth + ",DiffWalk=" + DiffWalk + ",Sex=" + Sex + "))))");
	

	String HeartDiseaseorAttack = conn.eval("HeartDiseaseorAttack").asString();
//	System.out.println(HeartDiseaseorAttack);

%>
{"HeartDiseaseorAttack":"<%=HeartDiseaseorAttack %>"}	
