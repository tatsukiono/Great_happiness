// $(function(){
//   function buildHTML(theme){
//     var html =  `$.each( function(theme){
//                   <div class="content">
//                     <div class="content__theme">
//                       <a class="content__theme__title" href="/themes/${theme.id}">
//                         ${theme.title}
//                       </a>
//                     </div>
//                     <div class="content__comment">
//                       <div class="content__comment__title">
//                         コメント数:
//                       </div>
//                       <div class="content__comment__number">
//                         2
//                       </div>
//                     </div>
//                   </div>
//                 })`
//       return html
//   }
//   $('.new-arrival').on('click', function(e){
//     e.preventDefault();
//     var url = $(this).attr('value')
//     $.ajax({
//       type: 'GET',
//       url: '/',
//       dataType: 'json'
//     })
//     .done(function(data) {
//       // $('.content').remove()
//       // console.log(data)
//       // $('.content').each(function(index, element){
//       //   console.log(index + ':' + $(element).text());
//       // })
//       var html = buildHTML(data);
//       $('.contents').append(html);
//       // $('.content').each(function(i) {
//       //   console.log(html)
//       //   console.log(i)
//       // })
      
//     })
//     .fail(function() {
//       alert('error');
//     });
//   })
// })