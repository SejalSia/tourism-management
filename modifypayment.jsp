<%-- 
    Document   : modifypayment
    Created on : 8 Mar, 2024, 10:38:28 PM
    Author     : Sejal
--%>

<%@page import="java.sql.*"%>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    ResultSet rs=null; 
    Connection conn=null;
    Statement stmt=null;
    
    try {
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        conn = DriverManager.getConnection("jdbc:derby://localhost:1527/tms","tms","tms");
        stmt = conn.createStatement();
        rs = stmt.executeQuery("select * from payment");
    } catch (SQLException e) {
        e.printStackTrace();
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Payment</title>
<!--    <style>
*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body{
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.container{
    width: 400px;
    border-radius: 8px;
    padding: 40px;
    box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.1),
                0 5px 12px -2px rgba(0, 0, 0, 0.1),
                0 18px 36px -6px rgba(0, 0, 0, 0.1);
}

.container .title{
    font-size: 20px;
    font-family: Arial, Helvetica, sans-serif;
}

.container form input{
    display: none;
}

.container form .category{
    margin-top: 10px;
    padding-top: 20px;

    display: grid;
    grid-template-columns: repeat(2, 1fr);
    grid-gap: 15px;
}

.category label{
    /* width: 100%; */
    /* height: 65px; */
    height: 145px;
    padding: 20px;
    box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.2);
    display: flex;
    /* justify-content: space-between; */
    justify-content: center;
    align-items: center;
    cursor: pointer;
    border-radius: 5px;
    position: relative;
}

/* label:nth-child(2), label:nth-child(3){
    margin: 15px 0;
} */


#visa:checked ~ .category .visaMethod,
#mastercard:checked ~ .category .mastercardMethod,
#paypal:checked ~ .category .paypalMethod,
#AMEX:checked ~ .category .amexMethod{
    box-shadow: 0px 0px 0px 1px #6064b6;
}


#visa:checked ~ .category .visaMethod .check,
#mastercard:checked ~ .category .mastercardMethod .check,
#paypal:checked ~ .category .paypalMethod .check,
#AMEX:checked ~ .category .amexMethod .check{
    display: block;
}


label .imgName{
    display: flex;
    /* justify-content: space-between;
     */
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    flex-direction: column;
    gap: 10px;
}

.imgName span{
    /* margin-left: 20px; */
    font-family: Arial, Helvetica, sans-serif;

    position: absolute;
    top: 72%;
    transform: translateY(-72%);
}

.imgName .imgContainer{
    width: 50px;
    display: flex;
    justify-content: center;
    align-items: center;

    position: absolute;
    top: 35%;
    transform: translateY(-35%);
}

img{
    width: 50px;
    height: auto;
}

.visa img{
    width: 80px;
    /* margin-left: 5px; */
}

.mastercard img{
    width: 65px;
}

.paypal img{
    width: 80px;
}

.AMEX img{
    width: 50px;
}

.check{
    display: none;
    position: absolute;
    top: -4px;
    right: -4px;
}

.check i{
    font-size: 18px;
}
</style>-->
</head>
<body>
    <div class="container">
        <form action="paymentupdate" method="post" enctype="multipart/form-data"> 
            <label>Upload Payment Option:</label><br>
            Select File:<input type="file" name="img"  size='50'><br><br>  
            
            
<!--            <input type="radio" name="payment" id="paytm" onclick="window.location.href='paytm.jsp'">
            <input type="radio" name="payment" id="phonepe" onclick="window.location.href='phonepe.jsp'" >
            <input type="radio" name="payment" id="googlepay" onclick="window.location.href='googlepay.jsp'">-->
            
            
            <input type="submit" name="btn_add" value="ADD">
             <form action="ImageView" method="get">
            <br> <input type="submit" name="btn_view" value="VIEW" >
            <form action="Delete" method="get">
            <br> <input type="submit" name="btn_delete" value="DELETE" >

       
            </table>
        </form>
    </div>
    
</body>
</html>