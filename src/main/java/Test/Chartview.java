package Test;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.event.ActionEvent;

import org.primefaces.model.chart.Axis;
import org.primefaces.model.chart.AxisType;
import org.primefaces.model.chart.LineChartModel;
import org.primefaces.model.chart.LineChartSeries;

@ManagedBean
@SessionScoped
public class Chartview implements Serializable {
	
	
	
	private LineChartModel model;
    
    public ArrayList<LineChartModel> getModel() {
    	Datapsy data1= new Datapsy();
    	
    	ArrayList<LineChartSeries> series=new ArrayList<LineChartSeries>();
    	for(int i=0;i<4;i++) {
    		LineChartSeries serie=new LineChartSeries();
    		series.add(serie);
    	}
    	ArrayList<LineChartModel>  models=new ArrayList<LineChartModel>();
    	for(int i=0;i<4;i++) {
    	model = new LineChartModel();
       
        series.get(i).setLabel("Series"+i);
        
        try {
			series.get(i).set(1, data1.getForm2().get(i).getName1());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			series.get(i).set(2, data1.getForm2().get(i).getName2());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        try {
			series.get(i).set(3, data1.getForm2().get(i).getName3());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
       
    	   
       
        model.addSeries(series.get(i));
 
        
        model.setLegendPosition("e");
        Axis yAxis = model.getAxis(AxisType.Y);
        yAxis.setMin(0);
        yAxis.setMax(10);
        
       
       models.add(model);
    	
    }
        return models;
    }
   
	
}

