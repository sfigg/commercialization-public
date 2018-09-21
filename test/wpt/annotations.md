# Annotations

Annotation is a user-defined column in WPA tables. WPA provides **Dynamic Annotation** which allows for users to annotate tables based on AQS queries. Multiple annotation columns can be added and configured independently. Annotations and queries can be persisted in WPA profiles as a part of presets. **Legacy Annotation** is another way of adding annotations in WPA. It supports annotating on a per-row basis. There can be only one legacy annotation for each row.

## Dynamic Annotation UI
### Configure Annotations From View Editor
In **Analysis View**, open **View Editor**. Select existing annotation columns or drag a new one from **Available Columns**. In **Column Details** view, add new or edit/remove existing annotation-query pairs. 

   <img src="images/wpa-annotation-openvieweditor.jpg" alt="Open View Editor"> 
   
#### Add Annotation
Enter an annotation and a query. E.g. Annotate "edge" on all processes that contains "edge". Then Click "Add" to update the annotation and query to **Column Details**

You can edit the order and the visibilty of columns in the **View Editor**. Remember to check "visible" for the annotation columns that you want to see in the **Analysis View**. Then click on "OK" to apply your annotations. 
   
  <img src="images/wpa-annotation-addnew.jpg" alt="Add new annotation." height="450"> 
   
  Annotation is updated to **Current Annotations**.
   
  <img src="images/wpa-annotation-addnew1.jpg" alt="Column details." height="250"></br>
  Annotation is applied to table based on the query result. 
   
  <img src="images/wpa-annotation-addresult.jpg" alt="Add result.">
   
#### Edit/Remove Annotation
Double click on an annotation-query row and the **Annotation Settings** will pop up and allow you to edit the annotaion-query pair. To remove an annotation-query pair, just select it and click the "trash" button.

   <img src="images/wpa-annotation-edit.jpg" alt="Edit annotation." width="250"> &emsp;&emsp;&emsp; <img src="images/wpa-annotation-remove.jpg" alt="Edit annotation." width="250"> 
   
#### Multiple Annotations in One Column
Multiple annotations can be added to the same Annotation column. The annotations that fall into the same cell are separated by a comma.

 <img src="images/wpa-annotation-multipleannot.jpg" alt="Multiple annotation." width="250">
 
 <img src="images/wpa-annotation-multipleannotresult.jpg" alt="Multiple annotation result.">
 
#### Multiple Annotation Columns
**Dynamic Annotation** supports adding multiple Annotation columns. Simply drag a new annotation column in **View Editor** and it can be configured independently of the existing ones. 
 
### Configure Annotations From Right Click
In addition to View Editor, you can configure annotations by performing a right click on the table. 
Select one or more rows in the table and right click, select "Annotate Selection". The pop-up  
 
