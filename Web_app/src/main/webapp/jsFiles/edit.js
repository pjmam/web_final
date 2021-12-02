function checkEdit(e) {
      if(!checkedit()){
        e.preventDefault()
      }

  }

  function checkedit(){
    var kt = true;
    
    var firstname = document.getElementById("fname").value;
    var lastname = document.getElementById("lname").value;
    var phone = document.getElementById("phone").value;
	var description = document.getElementById("des").value;
 

    let text;
    if (!firstname || title.firstname < 3 || title.firstname > 30 ) {
    
      document.getElementById("fname").classList.add("red");
      document.getElementById("mes1").classList.add("show");          
      kt= false;
    }
    else{
      document.getElementById("title").classList.remove("red");     
      document.getElementById("mes1").classList.remove("show"); 
   
    } 
    if (!lastname || lastname.length < 3 || brief.length > 30) {
    
      document.getElementById("lname").classList.add("red");     
      document.getElementById("mes2").classList.add("show");   
      kt=false;
    } 
    else{
      document.getElementById("lastname").classList.remove("red");     
      document.getElementById("mes2").classList.remove("show");  
      
    }
    if (!phone || phone.length < 9 || phone.length > 13 ) {
    
      document.getElementById("phone").classList.add("red"); 
      document.getElementById("mes3").classList.add("show");       
      kt=false;
    } 
     else{
        document.getElementById("phone").classList.remove("red");     
        document.getElementById("mes3").classList.remove("show");  
        
     }
	if (!description || description.length < 10 || description.length > 200 ) {
    
      document.getElementById("des").classList.add("red"); 
      document.getElementById("mes4").classList.add("show");       
      kt=false;
    } 
     else{
        document.getElementById("des").classList.remove("red");     
        document.getElementById("mes4").classList.remove("show");  
        
     }
     return kt;
    
  }
function resetAll(){
    document.getElementById("fname").classList.remove("red");     
    document.getElementById("mes1").classList.remove("show"); 
    document.getElementById("lname").classList.remove("red");     
    document.getElementById("mes2").classList.remove("show");  
    document.getElementById("phone").classList.remove("red");     
    document.getElementById("mes3").classList.remove("show");  
    document.getElementById("des").classList.remove("red");     
    document.getElementById("mes4").classList.remove("show"); 
}