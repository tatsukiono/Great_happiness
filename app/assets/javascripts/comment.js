// $(function() {

//   function buildHTML(comment) {
//     var html = `<div class="comment">
//                   <div class="comment__left">
//                     ${comment.text}
//                   </div>
//                   <div class="comment__right", id="like-btn-${comment.id}">
//                     <div class="comment__right__good">
//                       <a id="like-button-${comment.id}", class="create-icon">
//                         <i class="fas fa-heart "></i>
//                         0
//                       </a>
//                     </div>
//                     <div class="comment__right__name">
//                       ${comment.user_name}
//                     </div>
//                   </div>
//                 </div>`
//     return html;
//   }

//   $('#new_comment').on('submit', function(e) {
//     e.preventDefault();
//     var url = $(this).attr('action');
//     var formData = new FormData(this);
//     $.ajax({
//       url: url,
//       type: "POST",
//       data: formData,
//       dataType: 'json',
//       processData: false,
//       contentType: false
//     })
//     .done(function(data){
//       var html = buildHTML(data);
//       $(".show-content__comments").append(html);
//       $('.show-content__form__text').val('');
//       $('.show-content__comments').animate({ scrollTop: $('.show-content__comments')[0].scrollHeight});
//     })
//     .fail(function(data) {
//       alert('エラー')
//     })
//   })
// })