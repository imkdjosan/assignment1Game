<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="Stylesheet" type="text/css" href="css/mystyle.css" />
    
   
 
 <script language="javascript" type="text/javascript" >
function funValidate1(source,args)
{   
    if(document.getElementById("ctl00_ContentPlaceHolder1_RadioWin1").checked || document.getElementById("ctl00_ContentPlaceHolder1_RadioLoss1").checked )
    {
        args.IsValid = true;
    }
    else
    {
        args.IsValid = false;
    }

}
function funValidate2(source,args)
{   
    if(document.getElementById("ctl00_ContentPlaceHolder1_RadioWin2").checked || document.getElementById("ctl00_ContentPlaceHolder1_RadioLoss2").checked )
    {
        args.IsValid = true;
    }
    else
    {
        args.IsValid = false;
    }

}
function funValidate3(source,args)
{   
    if(document.getElementById("ctl00_ContentPlaceHolder1_RadioWin3").checked || document.getElementById("ctl00_ContentPlaceHolder1_RadioLoss3").checked )
    {
        args.IsValid = true;
    }
    else
    {
        args.IsValid = false;
    }

}
function funValidate4(source,args)
{   
    if(document.getElementById("ctl00_ContentPlaceHolder1_RadioWin4").checked || document.getElementById("ctl00_ContentPlaceHolder1_RadioLoss4").checked )
    {
        args.IsValid = true;
    }
    else
    {
        args.IsValid = false;
    }

}
</script>

 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="width:80%; margin:40px;" >
<div ><h1 style="text-align:center;font-family:Arial;font-size:45px;"> Game Calculator</h1></div>

<div><h4 style="color:Red;text-align:center;font-family:'Comic Sans MS'"> All Fields are required. No ties or draws are allowed.</h4></div>
</div>

<div class="container-fluid">
  
  <div class="row">
  <!-- Start Block For Game 1 -->
    <div class="col-sm-2 mainDiv" style="background-color:lavender;float:left;">
          <div class="gameDiv">
            <h1 style="text-align:center;font-family:Arial">Game 1</h1><br />
               <h4>Result &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioWin1" runat="server" GroupName="result1" Text="&nbsp;&nbsp;Win"/><br />
                                    
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioLoss1" runat="server" GroupName="result1" Text="&nbsp;&nbsp;Loss" /></h4>
                  <h4>Scored &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox1" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4>   
                  <h4>Allowed &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox2" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4> 
                  <h4>Spectators &nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox3" runat="server" style=" width:91px;" required="required"></asp:TextBox></h4>
                   
                   
                   
                        <asp:CustomValidator id="RadioButtonValidator" runat="server" Display="Dynamic" ErrorMessage="Result must be selected" ClientValidationFunction="funValidate1" ></asp:CustomValidator><br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="For and Against must be different" ControlToValidate="TextBox2" ControlToCompare="TextBox1" Operator="NotEqual" Type="Integer"></asp:CompareValidator><br />
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Scored must be 0 or higher" ControlToValidate="TextBox1" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" ErrorMessage="Allow must be 0 or higher" ControlToValidate="TextBox2" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />
                        <asp:RangeValidator ID="RangeValidator3" runat="server" ErrorMessage="Spectators must be 0 or higher" ControlToValidate="TextBox3" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                  
                    
        </div>
        
    </div>
    <!-- End Block For Game 1 -->
    <!-- Start Block For Game 2-->
     <div class="col-sm-2 mainDiv" style="background-color:lavender;float:left;">
          <div class="gameDiv">
            <h1 style="text-align:center;font-family:Arial;">Game 2</h1><br />
               <h4>Result &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioWin2" runat="server" GroupName="result2" Text="&nbsp;&nbsp;Win"/><br />
                                    
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioLoss2" runat="server" GroupName="result2" Text="&nbsp;&nbsp;Loss" /></h4>
                  <h4>Scored &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox4" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4>   
                  <h4>Allowed &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox5" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4> 
                  <h4>Spectators &nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox6" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4>
                   
                   
                   
                        <asp:CustomValidator id="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Result must be selected" ClientValidationFunction="funValidate2" ></asp:CustomValidator><br />
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="For and Against must be different" ControlToValidate="TextBox5" ControlToCompare="TextBox4" Operator="NotEqual" Type="Integer"></asp:CompareValidator><br />
                        <asp:RangeValidator ID="RangeValidator4" runat="server" ErrorMessage="Scored must be 0 or higher" ControlToValidate="TextBox4" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />
                        <asp:RangeValidator ID="RangeValidator5" runat="server" ErrorMessage="Allow must be 0 or higher" ControlToValidate="TextBox5" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />
                        <asp:RangeValidator ID="RangeValidator6" runat="server" ErrorMessage="Spectators must be 0 or higher" ControlToValidate="TextBox6" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                  
                    
        </div>
        
    </div>
    
      <!-- End Block For Game 2 -->
    
    <!-- Start Block For Game 3-->
    
       <div class="col-sm-2 mainDiv" style="background-color:lavender;float:left;">
          <div class="gameDiv">
            <h1 style="text-align:center;font-family:Arial;">Game 3</h1><br />
               <h4>Result &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioWin3" runat="server" GroupName="result3" Text="&nbsp;&nbsp;Win"/><br />
                                    
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioLoss3" runat="server" GroupName="result3" Text="&nbsp;&nbsp;Loss" /></h4>
                  <h4>Scored &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox7" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4>   
                  <h4>Allowed &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox8" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4> 
                  <h4>Spectators &nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox9" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4>
                   
                   
                   
                        <asp:CustomValidator id="CustomValidator2" runat="server" Display="Dynamic" ErrorMessage="Result must be selected" ClientValidationFunction="funValidate3" ></asp:CustomValidator><br />
                        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="For and Against must be different" ControlToValidate="TextBox8" ControlToCompare="TextBox7" Operator="NotEqual" Type="Integer"></asp:CompareValidator><br />
                        <asp:RangeValidator ID="RangeValidator7" runat="server" ErrorMessage="Scored must be 0 or higher" ControlToValidate="TextBox7" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />
                        <asp:RangeValidator ID="RangeValidator8" runat="server" ErrorMessage="Allow must be 0 or higher" ControlToValidate="TextBox8" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />
                        <asp:RangeValidator ID="RangeValidator9" runat="server" ErrorMessage="Spectators must be 0 or higher" ControlToValidate="TextBox9" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                  
                    
        </div>
        
    </div>
    
     
    <!-- End Block For Game 3-->
    <!-- Start Block For Game 4-->
      <div class="col-sm-2 mainDiv" style="background-color:lavender;float:left;">
          <div class="gameDiv">
            <h1 style="text-align:center;font-family:Arial;">Game 4</h1><br />
               <h4>Result &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioWin4" runat="server" GroupName="result4" Text="&nbsp;&nbsp;Win"/><br />
                                    
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="RadioLoss4" runat="server" GroupName="result4" Text="&nbsp;&nbsp;Loss" /></h4>
                  <h4>Scored &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox10" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4>   
                  <h4>Allowed &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox11" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4> 
                  <h4>Spectators &nbsp;&nbsp;&nbsp;
                  <asp:TextBox ID="TextBox12" runat="server" style=" width:90px;" required="required"></asp:TextBox></h4>
                   
                   
                   
                        <asp:CustomValidator id="CustomValidator3" runat="server" Display="Dynamic" ErrorMessage="Result must be selected" ClientValidationFunction="funValidate4" ></asp:CustomValidator><br />
                        <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="For and Against must be different" ControlToValidate="TextBox2" ControlToCompare="TextBox1" Operator="NotEqual" Type="Integer"></asp:CompareValidator><br />
                        <asp:RangeValidator ID="RangeValidator10" runat="server" ErrorMessage="Scored must be 0 or higher" ControlToValidate="TextBox1" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />
                        <asp:RangeValidator ID="RangeValidator11" runat="server" ErrorMessage="Allow must be 0 or higher" ControlToValidate="TextBox2" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><br />
                        <asp:RangeValidator ID="RangeValidator12" runat="server" ErrorMessage="Spectators must be 0 or higher" ControlToValidate="TextBox3" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                  
                    
        </div>
        
    </div>
    
     
      <!-- End Block For Game 4--> 
  </div>
  <div style="text-align:center;margin:5%;">
      <asp:Button ID="Button1" runat="server" Text="Calculate Total" 
          onclick="Button1_Click" BackColor="Navy" ForeColor="White" />
  </div>
  
</div>

<div class="container-fluid" id="resultDiv" runat="server" visible="false">
  <div class="row">
  <div class="col-sm-9 colDiv" style="background-color:lavender;">
  
  <div><h1><asp:Label ID="Label1" runat="server" Text="Results"></asp:Label></h1> </div>
  <div>Wins: &nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label> </div>
  <div>Losses: &nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label> </div>
  <div>Winning %: &nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="Label"></asp:Label> </div>
  <div>Points Scored: &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label> </div>
  <div>Points Allowed: &nbsp;&nbsp;<asp:Label ID="Label6" runat="server" Text="Label"></asp:Label> </div>
  <div>Point Differential: &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Text="Label"></asp:Label> </div>
  <div>Total Attendence: &nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label> </div>
  <div>Average Attendence: &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Label"></asp:Label> </div>
  </div>
  </div>
  
  </div>

</asp:Content>

