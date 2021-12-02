function checkFormContent(e) {
      if(!check()){
        e.preventDefault()
      }

  }

  function check(){
    var kt = true;
    
    var title = document.getElementById("title").value;
    var brief = document.getElementById("brief").value;
    var content = document.getElementById("content").value;

 

    let text;
    if (!title || title.length < 10 || title.length > 200 ) {
    
      document.getElementById("title").classList.add("red");
      document.getElementById("mes1").classList.add("show");          
      kt= false;
    }
    else{
      document.getElementById("title").classList.remove("red");     
      document.getElementById("mes1").classList.remove("show"); 
   
    } 
    if (!brief || brief.length < 30 || brief.length > 150) {
    
      document.getElementById("brief").classList.add("red");     
      document.getElementById("mes2").classList.add("show");   
      kt=false;
    } 
    else{
      document.getElementById("brief").classList.remove("red");     
      document.getElementById("mes2").classList.remove("show");  
      
    }
    if (!content || content.length < 50 || content.length > 1000 ) {
    
      document.getElementById("content").classList.add("red"); 
      document.getElementById("mes3").classList.add("show");       
      kt=false;
    } 
     else{
        document.getElementById("content").classList.remove("red");     
        document.getElementById("mes3").classList.remove("show");  
        
     }
     return kt;
    
  }
function resetAll(){
    document.getElementById("title").classList.remove("red");     
    document.getElementById("mes1").classList.remove("show"); 
    document.getElementById("brief").classList.remove("red");     
    document.getElementById("mes2").classList.remove("show");  
    document.getElementById("content").classList.remove("red");     
    document.getElementById("mes3").classList.remove("show");  
}