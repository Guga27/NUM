package com.example.grading_system;

import javafx.application.Platform;
import javafx.beans.property.ReadOnlyDoubleProperty;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;

import javafx.beans.property.StringProperty;

import java.text.DecimalFormat;

public class GradeSysController {

    @FXML
    private TextField Att10;

    @FXML
    private TextField Att20;
    void Att20Text(ActionEvent event){

    }

    @FXML
    private TextField AttEG;

    @FXML
    private Button ComputeBtn;

    @FXML
    private Button DeleteBtn;

    @FXML
    private Button ExitBtn;

    @FXML
    private Button LoadBtn;

    @FXML
    private TextField PQ20;

    @FXML
    private TextField PQ50;

    @FXML
    private TextField PQEG;

    @FXML
    private Button SaveBtn;

    @FXML
    private Button ShowBtn;

    @FXML
    private Button UpdateBtn;

    @FXML
    private TextField WQ10;

    @FXML
    private TextField WQ50;

    @FXML
    private TextField WQEG;

    @FXML
    private Button clearBtn;

    @FXML
    private TableColumn<?, ?> col1;

    @FXML
    private TableColumn<?, ?> col10;

    @FXML
    private TableColumn<?, ?> col11;

    @FXML
    private TableColumn<?, ?> col12;

    @FXML
    private TableColumn<?, ?> col13;

    @FXML
    private TableColumn<?, ?> col14;

    @FXML
    private TableColumn<?, ?> col15;

    @FXML
    private TableColumn<?, ?> col16;

    @FXML
    private TableColumn<?, ?> col17;

    @FXML
    private TableColumn<?, ?> col18;

    @FXML
    private TableColumn<?, ?> col19;

    @FXML
    private TableColumn<?, ?> col2;

    @FXML
    private TableColumn<?, ?> col20;

    @FXML
    private TableColumn<?, ?> col3;

    @FXML
    private TableColumn<?, ?> col4;

    @FXML
    private TableColumn<?, ?> col5;

    @FXML
    private TableColumn<?, ?> col6;

    @FXML
    private TableColumn<?, ?> col7;

    @FXML
    private TableColumn<?, ?> col8;

    @FXML
    private TableColumn<?, ?> col9;

    @FXML
    private Button endBtn;

    @FXML
    private TextField firstName;

    @FXML
    private TextField grade;

    @FXML
    private TextField lastName;

    @FXML
    private Button nextBtn;

    @FXML
    private TextField prelim100;

    @FXML
    private TextField prelim30;

    @FXML
    private TextField prelimEG;

    @FXML
    private Button prevBtn;

    @FXML
    private TextField project100;

    @FXML
    private TextField project30;

    @FXML
    private TextField projectEG;

    @FXML
    private TextField remarks;

    @FXML
    private Button s;

    @FXML
    private TextField studentId;

    @FXML
    private TableView<?> table;
//    class attendance ( String ){
//
//    }

    @FXML
    void ClearAllGrades(ActionEvent event) {
        Att10.clear();
        Att20.clear();
        AttEG.clear();
        WQ10.clear();
        WQ50.clear();
        WQEG.clear();
        PQEG.clear();
        PQ20.clear();
        PQ50.clear();
        projectEG.clear();
        project30.clear();
        project100.clear();
        prelimEG.clear();
        prelim100.clear();
        prelim30.clear();
        grade.clear();
        remarks.clear();
        studentId.clear();
        firstName.clear();
        lastName.clear();
    }

    @FXML
    void ComputeGrades(ActionEvent event) {

    }

    @FXML
    void DeleteRecord(ActionEvent event) {

    }

    @FXML
    void ExitProgram(ActionEvent event) {
        Platform.exit();
    }

    @FXML
    void LoadStudents(ActionEvent event) {

    }

    @FXML
    void SaveRecord(ActionEvent event) {

    }

    @FXML
    void ShowDetails(ActionEvent event) {

    }

    @FXML
    void TableStart(ActionEvent event) {

    }

    @FXML
    void UpdateRecord(ActionEvent event) {

    }

    @FXML
    void next(ActionEvent event) {

    }

    @FXML
    void prev(ActionEvent event) {

    }

    @FXML
    void tableEnd(ActionEvent event) {

    }

}
