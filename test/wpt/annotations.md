# Annotations

Annotation is a user-defined column in WPA tables. WPA provides two types of annotation: **Dynamic Annotation** and **Legacy Annotation**. Dynamic annotation allows for users to annotate based on AQS queries. Multiple annotation columns can be added and configured independently. Annotations and queries can be persisted in WPA profiles as a part of presets. Legacy Annotation supports annotating on a per-row basis. There can be only one legacy annotation for each row.

## Dynamic Annotation UI
### Configure Annotations From View Editor
In **Analysis View**, open **View Editor**. Select existing annotation columns or drag a new one from **Available Columns**. In **Column Details** view, add new or edit/remove existing annotation-query pairs. 

   <img src="images/wpa-annotation-openvieweditor.jpg" alt="Open View Editor"> 
   
#### Add Annotation
1. Enter an annotation and a query. E.g. Annotate "edge" on all processes that contains "edge". Then Click "Add" to update the annotation and query to **Column Details**

2. You can edit the order and the visibilty of columns in the **View Editor**. Remember to check "visible" for the annotation columns that you want to see in the **Analysis View**. Then click on "OK" to apply your annotations. 
   
   <img src="images/wpa-annotation-addnew.jpg" alt="Add new annotation." height="450"> 
   
   Annotation is updated to **Current Annotations**
   
   <img src="images/wpa-annotation-addnew1.jpg" alt="Column details." height="250"></br>
   Annotation is applied to table based on the query result. 
   
   <img src="images/wpa-annotation-addresult.jpg" alt="Add result.">
   
#### Edit/Remove Annotation
Double click on an annotation-query row and the **Annotation Settings** will pop up and allow you to edit the annotaion-query pair. To remove an annotation-query pair, just select it and click the "trash" button.

   <img src="images/wpa-annotation-edit.jpg" alt="Edit annotation." width="250">     <img src="images/wpa-annotation-remove.jpg" alt="Edit annotation." width="250"> 
   
