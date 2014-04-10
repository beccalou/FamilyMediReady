// $(document).ready(function(){
//   $('.show-medical').click(function(event){
//     var id = this.getAttribute('data-id');
//     if (this.innerText === "Hide"){
//       $('#show-medical-contents-' + id).empty();
//       this.innerText = "Show medical";
//     }else{
//       this.innerText = "Hide";
//       $.ajax({
//         url: '/get_medical_history',
//         type: 'GET',
//         dataType: 'json',
//         data: {person_id: event.target.getAttribute('data-id')},
//       })
//       .done(function(response) {
//         var medical = response.medicalHistory;
//         for(var m in medical){
//           $('#show-medical-contents-' + response.id).append("<li>" + m + " : " + medical[m] + "</li>");
//         }
//       });
//     }

//   });
// });