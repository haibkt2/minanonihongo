//Vue.component('comment-fb', {
//    template: '<div class="fb-comments" data-width="100%" :data-href="url" data-numposts="8"></div>',
//    props: ['url']
//
//})
//Vue.component('item-course', {
//
//    template: `<div class="courses-linear">
//        <div class="grid-item-course" v-for="lesson in lessons">
//            <a :href="url + '/khoa-hoc/'+ course + '/' + lesson.id + '-' + lesson.SEOurl">
//                <img class="lazyload course-thumbnail" :src="url + '/assets/img/video-thumbnail-default.jpg'" :data-src="url + '/cdn/lesson/small/' + lesson.avatar_name" />
//            </a>
//            <div class="course-detail">
//                <a class="name" :href="url + '/khoa-hoc/'+ course + '/' + lesson.id + '-' + lesson.SEOurl">
//                    <b style="-webkit-box-orient: vertical;">{{ lesson.name }}</b>
//                </a>
//                <img :src="url + '/assets/img/teacher-icon.png'"><span class="arthor">{{ lesson.author_name }}</span>
//            </div>
//        </div>
//    </div>`,
//
//    props: ['course', 'lessons'],
//
//    data: function () {
//        return {
//            url: window.location.origin
//        };
//    }
//
//})
//Vue.component("ht-select", {
//  template: `
//  <div>
//    <select class="ht-select" v-model="selected">
//      <option v-for="opt in options" v-bind:value="opt.value">{{ opt.text }}</option>
//    </select>
//  </div>
//  `,
//  props: {
//    init_options: {
//      required: true
//    },
//    init_selected: null,
//    init_other_value: null,
//  },
//  watch: {
//    selected: function(new_value, old_value) {
//      if (new_value !== this.init_other_value) {
//        this.$emit("change", new_value);
//      }
//    },
//    other_value: function(new_value, old_value) {
//      this.$emit("change", new_value);
//    },
//    init_selected:  function(new_value, old_value) {
//      this.selected = new_value;
//    }
//  },
//  data: function() {
//    return {
//      options: null,
//      selected: null,
//      other_value: null,
//    };
//  },
//  methods: {
//    getElement(value) {
//      if (this.options == null) {
//        return {text: ""}
//      }
//      for (var i = 0; i < this.options.length; i++) {
//        if (this.options[i].value === value) return this.options[i];
//      }
//      return null;
//    },
//    isContainValueIn(value) {
//      for (var i = 0; i < this.options.length; i++) {
//        if (this.options[i].value === value) return true;
//      }
//      return false;
//    }
//  },
//  mounted() {
//    var vm = this;
//    // Neu gia tri khoi tao khong nam trong danh sach cac key dua vao thi bat hien tai la
//    // other va gan gia tri other do chinh la gia tri moi.
//    this.options = JSON.parse(this.init_options);
//    if(this.isContainValueIn(this.init_selected)) {
//      this.selected = this.init_selected;
//    } else {
//      this.other_value = this.init_selected;
//      this.selected = this.init_other_value;
//    }
//  }
//})
$.ajaxSetup({
    headers: {
        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    }
});



//components hiá»ƒn thá»‹ comments
Vue.component('comments', {

    template: `
    <div class="list-comments" :style="'background-color:'+ background">

      <div class="input-comment-container" v-if="meid != null">
        <p><b>ÄÄƒng bĂ¬nh luáº­n</b></p>
        <div class="form_action">
            <img v-if="avatar == null || avatar == ''" class="me-avatar" :src="url + '/assets/img/default-avatar.jpg'">
            <img v-if="avatar != null && avatar != ''" class="me-avatar" :src="url + '/cdn/avatar/small/'+ avatar">
            <textarea class="input-comment" id="comment-content" rows="1" placeholder="comment..."></textarea>
            <span class="post-comment-btn" v-on:click="postNewComment">ÄÄƒng</span>
        </div>
      </div>

      <li v-if="showLoadingNewComment == true" class="comment-item" style='text-align: center;'>loading...</li>

      <li class="comment-item" v-for="cmt in listComments" :id="'cmt-item-'+ cmt.id">
        <a v-if="cmt.user_id == 0" class="pull-left avatar-container" data-fancybox data-src="#user-profile-popup" href="javascript:;" v-on:click="fetchUserInfo(cmt.user_id)">
          <img class="avatar" :src="url + '/assets/img/dmr-square-logo.png'">
          <i class="zmdi zmdi-check-circle"></i>
        </a>
        <a v-if="cmt.user_id != 0" class="pull-left avatar-container" data-fancybox data-src="#user-profile-popup" href="javascript:;" v-on:click="fetchUserInfo(cmt.user_id)">
          <img v-if="cmt.user_info.avatar == null || cmt.user_info.avatar == ''" class="avatar" :src="url + '/assets/img/default-avatar.jpg'">
          <img v-if="cmt.user_info.avatar != null && cmt.user_info.avatar != ''" class="avatar" :src="url + '/cdn/avatar/small/'+ cmt.user_info.avatar">
        </a>
        <div class="comment-content">
          <p class="name">
            <b class="red" v-if="cmt.user_id == 0" data-fancybox data-src="#user-profile-popup" href="javascript:;" v-on:click="fetchUserInfo(0)">DÅ©ng Mori</b>
            <b class="red" v-if="cmt.user_id != 0" data-fancybox data-src="#user-profile-popup" href="javascript:;" v-on:click="fetchUserInfo(cmt.user_id)">
              {{cmt.user_info.name}}
            </b>
            <span v-html="printInfo(cmt.content)"></span>
          </p>
          <p class="comment-action">
            <span class="answer" data-toggle="collapse" :id="'answer-reply-'+ cmt.id" :href="'#reply-'+ cmt.id" aria-expanded="false" :aria-controls="'reply-'+ cmt.id">Tráº£ lá»i</span> â€¢ 
            <span class="time">{{cmt.time_created}}</span>
          </p>
          <div class="reply-container">
            <a v-if="cmt.replies.length != 0" class="load-more-reply" role="button" data-toggle="collapse" :href="'#reply-'+ cmt.id" aria-expanded="false" :aria-controls="'reply-'+ cmt.id">
              <i class="zmdi zmdi-comments"></i> {{cmt.replies.length}} pháº£n há»“i
            </a>
            <div class="collapse" :id="'reply-'+ cmt.id">
              <div class="child-comment-item" v-for="(childCmt, index) in cmt.replies" :id="'reply-item-'+ childCmt.id">
                <a v-if="childCmt.user_id == 0" class="pull-left avatar-container" data-fancybox data-src="#user-profile-popup" href="javascript:;" v-on:click="fetchUserInfo(0)">
                  <img class="avatar" :src="url + '/assets/img/dmr-square-logo.png'">
                  <i class="zmdi zmdi-check-circle"></i>
                </a>
                <a v-if="childCmt.user_id != 0" class="pull-left avatar-container" data-fancybox data-src="#user-profile-popup" href="javascript:;" v-on:click="fetchUserInfo(childCmt.user_id)">
                  <img v-if="childCmt.user_info.avatar == null || childCmt.user_info.avatar == ''" class="avatar" :src="url + '/assets/img/default-avatar.jpg'">
                  <img v-if="childCmt.user_info.avatar != null && childCmt.user_info.avatar != ''" class="avatar" :src="url + '/cdn/avatar/small/'+ childCmt.user_info.avatar">
                </a>
                <div class="comment-content">
                  <p class="child-name">
                    <b class="red" v-if="childCmt.user_id == 0" data-fancybox data-src="#user-profile-popup" href="javascript:;" v-on:click="fetchUserInfo(0)">DÅ©ng Mori </b>
                    <b class="red" v-if="childCmt.user_id != 0" data-fancybox data-src="#user-profile-popup" href="javascript:;" v-on:click="fetchUserInfo(childCmt.user_id)">
                      {{childCmt.user_info.name}}
                    </b>
                    <span v-html="printInfo(childCmt.content)"></span>
                  </p>
                  <p class="child-comment-action">
                    <span class="time">{{childCmt.time_created}}</span> 
                  </p>
                </div>
                <span v-if="meid == childCmt.user_id" class="delete-comment" v-on:click="delReply(childCmt.id)"><i class="zmdi zmdi-close-circle"></i> xĂ³a</span>
              </div>

              <div class="reply-form" v-if="meid != null">
                <img v-if="avatar == null || avatar == ''" class="me-avatar" :src="url + '/assets/img/default-avatar.jpg'">
                <img v-if="avatar != null && avatar != ''" class="me-avatar" :src="url + '/cdn/avatar/small/'+ avatar">
                <textarea class="input-comment" :id="'reply-input-content-'+ cmt.id" rows="1" placeholder="comment..."></textarea>
                <span class="post-comment-btn" v-on:click="postNewAnswer(cmt.id)">Tráº£ lá»i</span>
              </div>

            </div>
          </div>
        </div>
        <span v-if="meid == cmt.user_id" class="delete-comment" v-on:click="delComment(cmt.id)"><i class="zmdi zmdi-close-circle"></i> xĂ³a</span>
      </li>

      <!-- hiá»ƒn thá»‹ loading -->
      <div v-if="theEnd == false" class="load-more-comment" v-on:click="fetchMoreComments">
        <span v-show="showLoading == false">Táº£i thĂªm bĂ¬nh luáº­n</span>
        <img class="loading-icon" v-show="showLoading == true" :src="url + '/assets/img/loading.gif'"/>
      </div>
      <div v-if="theEnd == true" class="end-of-list">Háº¿t danh sĂ¡ch</div>

      <!-- hiá»ƒn thá»‹ profile -->
      <div style="display: none;" id="user-profile-popup" class="user-profile-popup">
        <div class="user-profile-container" v-if="showLoadingUser == false">
          <div class="loading-circle" style="margin-top: 150px;"></div>
        </div>
        <div class="user-profile-container" v-if="showLoadingUser == true">
          <div v-if="currentUser.id == 0" class="cover-container">
            <img class="user-avatar" :src="url + '/assets/img/dmr-square-logo.png'"/>
          </div>
          <div v-if="currentUser.id != 0" class="cover-container">
            <img v-if="currentUser.avatar == null || currentUser.avatar == ''" class="user-avatar" :src="url + '/assets/img/default-avatar.jpg'">
            <img v-if="currentUser.avatar != null && currentUser.avatar != ''" class="user-avatar" :src="url + '/cdn/avatar/default/'+ currentUser.avatar">
          </div>
          <table class="table" id="user-info-table">
            <tbody>
            <tr v-if="currentUser.name != null && currentUser.name != ''">
                <td class="user-form-item desc" style="width: 130px;">Há» vĂ  TĂªn</td>
                <td class="user-form-item">
                  <b>{{currentUser.name}}</b>
                  <i v-if="currentUser.id == 0" style="color: #578fff;" class="zmdi zmdi-check-circle" data-toggle="tooltip" data-placement="left" title="TĂ i khoáº£n Ä‘Ă£ xĂ¡c thá»±c"></i>
                </td>
             </tr>
             <tr v-if="currentUser.email != null && currentUser.email != ''">
                <td class="user-form-item desc">Email</td>
                <td class="user-form-item"><span class="info-item-email">{{printPrivateEmail(currentUser.email)}}</span></td>
             </tr>
             <tr v-if="currentUser.username != null && currentUser.username != ''">
                <td class="user-form-item desc">TĂªn Ä‘Äƒng nháº­p</td>
                <td class="user-form-item"><span>{{currentUser.username}}</span></td>
             </tr>
             <tr v-if="currentUser.birthday != null && currentUser.birthday != ''">
                <td class="user-form-item desc">NgĂ y sinh</td>
                <td class="user-form-item">{{currentUser.birthday}}</td>
             </tr>
             <tr v-if="currentUser.phone != null && currentUser.phone != ''">
                <td class="user-form-item desc">Sá»‘ Ä‘iá»‡n thoáº¡i</td>
                <td class="user-form-item"><span>{{printPrivatePhone(currentUser.phone)}}</span></td>
             </tr>
             <tr v-if="currentUser.nihongo != null && currentUser.nihongo != ''">
                <td class="user-form-item desc">TrĂ¬nh tiáº¿ng Nháº­t</td>
                <td class="user-form-item">{{currentUser.nihongo}}</td>
             </tr>
             <tr v-if="currentUser.address != null && currentUser.address != ''">
                <td class="user-form-item desc">Äá»‹a chá»‰</td>
                <td class="user-form-item" style="padding-right:0;"><span>{{currentUser.address}}</span></td>
             </tr>
             <tr v-if="currentUser.country != null && currentUser.country != ''">
                <td class="user-form-item desc">Quá»‘c gia</td>
                <td class="user-form-item">{{currentUser.country}}</td>
             </tr>
          </tbody>
       </table>
        </div>
      </div>

    </div>
    `,

    props: ['meid', 'avatar', 'tbid', 'tbname', 'numPosts', 'background'],

    data: function () {
        return {

            url: window.location.origin, //Ä‘Æ°á»ng dáº«n host
            listComments: [],    //sanh sĂ¡ch cĂ¡c comments
            page: 1,             //trang thá»© máº¥y
            numPost: 15,
            ref: null, //nguá»“n chuyá»ƒn hÆ°á»›ng (notice hoáº·c 0)

            showLoading: false,  //tráº¡ng thĂ¡i hiá»ƒn thá»‹ button táº£i thĂªm
            theEnd: false,       //thĂ´ng bĂ¡o háº¿t danh sĂ¡ch

            showLoadingUser: false,  //tráº¡ng thĂ¡i táº£i thĂ´ng tin ngÆ°á»i dĂ¹ng
            currentUser: copyUser(), //preview profile ngÆ°á»i dĂ¹ng

            showLoadingNewComment: false
        };
    },

    methods: {

        //in ra thĂ´ng tin email dáº¡ng ná»­a kĂ­n ná»­a há»Ÿ
        printPrivateEmail: function(email){

          // console.log("Biáº¿n permission", enableFIV);

          if(email != "dungmori@gmail.com"){

            //náº¿u biáº¿n cho phĂ©p hiá»ƒn thá»‹ = true
            if(enableFIV && enableFIV == true) return email;
            else return "****"+ email.slice(4);
          }
          else
            return "dungmori@gmail.com";
        },

        //in ra thĂ´ng tin mobile dáº¡ng ná»­a kĂ­n ná»­a há»Ÿ
        printPrivatePhone: function(phone){

          if(phone != "0969.86.84.85"){

             //náº¿u biáº¿n cho phĂ©p hiá»ƒn thá»‹ = true
            if(enableFIV && enableFIV == true) return phone;
            else return "*******"+ phone.slice(-5);
          }
          else
            return "0969.86.84.85";
          
        },

        //in ra thĂ´ng tin cĂ³ dáº¥u cĂ¡ch
        printInfo: function(info){

          var result = info;

          result = result.replace('<', '&#60;');
          result = result.replace('>', '&#62;');

          //xá»­ lĂ½ xuá»‘ng dĂ²ng
          result =  info.replace(new RegExp('\r?\n','g'), '<br />');

          var re = /(\(.*?)?\b((?:https?|ftp|file):\/\/[-a-z0-9+&@#\/%?=~_()|!:,.;]*[-a-z0-9+&@#\/%=~_()|])/ig;
          return result.replace(re, function(match, lParens, url) {
              var rParens = '';
              lParens = lParens || '';

              // Try to strip the same number of right parens from url
              // as there are left parens.  Here, lParenCounter must be
              // a RegExp object.  You cannot use a literal
              //     while (/\(/g.exec(lParens)) { ... }
              // because an object is needed to store the lastIndex state.
              var lParenCounter = /\(/g;
              while (lParenCounter.exec(lParens)) {
                  var m;
                  // We want m[1] to be greedy, unless a period precedes the
                  // right parenthesis.  These tests cannot be simplified as
                  //     /(.*)(\.?\).*)/.exec(url)
                  // because if (.*) is greedy then \.? never gets a chance.
                  if (m = /(.*)(\.\).*)/.exec(url) ||
                          /(.*)(\).*)/.exec(url)) {
                      url = m[1];
                      rParens = m[2] + rParens;
                  }
              }
              return lParens + "<a href='" + url + "' target='_blank'>" + url + "</a>" + rParens;
          });
        },

        //táº£i vá» cĂ¡c comments cho láº§n táº£i Ä‘áº§u tiĂªn
        fetchlistComments: function() {

          vm = this;

          //focus vĂ o comment Ä‘Æ°á»£c Ä‘Ă¡nh dáº¥u
          var url = new URL(window.location.href);
          if(url.searchParams.get("ref") != null)
            vm.ref = "notice";

          data = {
            id: vm.tbid,
            name: vm.tbname,
            numpost: vm.numPost,
            ref: vm.ref
          };
          $.post(window.location.origin +"/api/comments/comments-load-first", data, function(response, status){

            //console.log(response);

            vm.listComments = response.comments;
            //console.log(vm.listComments);

            //náº¿u Ä‘Ă£ háº¿t danh sĂ¡ch
            if(response.comments.length < vm.numPost) vm.theEnd = true;
            
            //áº©n biá»ƒu tÆ°á»£ng loading
            vm.showLoading = false;

            //focus vĂ o comment Ä‘Æ°á»£c Ä‘Ă¡nh dáº¥u
            var url = new URL(window.location.href);
            var focus = url.searchParams.get("focus");
            if(focus != null){
              console.log("focus: "+ focus);
              setTimeout(function(){

                $("#answer-reply-"+ focus).click();

                //cuá»™n trang tá»›i vá»‹ trĂ­ dc focus
                $('html, body').animate({
                    scrollTop: $("#answer-reply-"+ focus).offset().top - 120
                }, 200);

              }, 500);
            }

            

          });
        },

        //táº£i cĂ¡c pháº£n há»“i
        fetchMoreComments: function(){

          vm = this;

          //hiá»‡n biá»ƒu tÆ°á»£ng loading
          vm.showLoading = true;

          setTimeout(function(){
            data = {
              id  : vm.tbid,
              name: vm.tbname,
              numpost: vm.numPost,
              page: vm.page++
            };
            //console.log(data);
            $.post(window.location.origin +"/api/comments/comments-load-more", data, function(response, status){

              //ná»‘i thĂªm máº£ng táº£i thĂªm
              vm.listComments = vm.listComments.concat(response.comments);

              //náº¿u Ä‘Ă£ háº¿t danh sĂ¡ch
              if(response.comments.length < vm.numPost) vm.theEnd = true;

              //áº©n biá»ƒu tÆ°á»£ng loading
              vm.showLoading = false;
              
            });

          }, 500);

          //console.log('táº£i thĂªm cĂ¡c bĂ¬nh luáº­n');

        },

        //táº£i thĂ´ng tin user
        fetchUserInfo: function(id){

          console.log('preview thĂ´ng tin ngÆ°á»i dĂ¹ng '+ id);
          vm = this;
          vm.showLoadingUser = false;

          //console.log(defaultUser);
          setTimeout(function(){
            if(id == 0) {

                vm.currentUser = copyUser();
                console.log(vm.currentUser);
                vm.showLoadingUser = true;
            }
            else{

              console.log(data);
              $.post(window.location.origin +"/api/profile/get-profile-by-id", {id: id}, function(response, status){

                console.log(response);
                vm.currentUser.id     = response.id;
                vm.currentUser.avatar = response.avatar;
                vm.currentUser.name   = response.name;
                vm.currentUser.email  = response.email;
                vm.currentUser.username = response.username;
                vm.currentUser.birday   = response.birday;
                vm.currentUser.phone    = response.phone;
                vm.currentUser.nihongo  = response.japanese_level;
                vm.currentUser.address  = response.address;
                vm.currentUser.country  = "Viá»‡t Nam";

                vm.showLoadingUser = true;

              });
            }
          }, 600);
        },

        //Ä‘Äƒng bĂ¬nh luáº­n má»›i
        postNewComment: function(){
            // bá» qua comment rá»—ng
            if ($("#comment-content").val() == null || $("#comment-content").val() == undefined || $("#comment-content").val().trim() == "") {
                return;
            }

          vm.showLoadingNewComment = true;

          //console.log("Ä‘Äƒng bĂ¬nh luáº­n");
          setTimeout(function(){
            data = {
              tbid    : vm.tbid,
              tbname  : vm.tbname,
              content : $("#comment-content").val()
            };
            //console.log(data);
            $.post(window.location.origin +"/api/comments/add-new-comment", data, function(response, status){

              console.log(response);
              vm.listComments.unshift(response);
              $("#comment-content").val('');
              $("#comment-content").css('height', '42px');
              
              vm.showLoadingNewComment = false;

            });
          }, 500);
        },

        //xĂ³a comment theo id
        delComment: function(id){
          setTimeout(function(){
            $.post(window.location.origin +"/api/comments/delete-comment", {id: id}, function(response, status){
              if(response == "success"){
                $("#cmt-item-"+id).fadeOut();
              }else{
                alert("thao tĂ¡c khĂ´ng há»£p lá»‡");
              }
            });
          }, 500);
        },

        //Ä‘Äƒng reply má»›i
        postNewAnswer: function(parent_id ){
            // bá» qua comment rá»—ng
            if ($("#reply-input-content-"+ parent_id).val() == null || $("#reply-input-content-"+ parent_id).val() == undefined || $("#reply-input-content-"+ parent_id).val().trim() == "") {
                return;
            }
          setTimeout(function(){
            data = {
              tbid    : vm.tbid,
              tbname  : vm.tbname,
              parent_id : parent_id,
              content   : $("#reply-input-content-"+ parent_id).val()
            };
            $.post(window.location.origin +"/api/comments/add-new-reply", data, function(response, status){

              var indexOfComment = 0; //thá»© tá»± cá»§a comment Ä‘ang reply
              for(var i=0; i<vm.listComments.length; i++) if(vm.listComments[i].id == parent_id)  indexOfComment = i;

              //console.log(indexOfComment);
              vm.listComments[indexOfComment].replies.push(response);
              $("#reply-input-content-"+ parent_id).val('');

              // $("#comment-content").css('height', '42px');
              // vm.showLoadingNewComment = false;

            });
          }, 500);
        },

        //xĂ³a reply theo id
        delReply: function(id){
          setTimeout(function(){
            $.post(window.location.origin +"/api/comments/delete-comment", {id: id}, function(response, status){
              if(response == "success"){
                $("#reply-item-"+id).fadeOut();
              }else{
                alert("thao tĂ¡c khĂ´ng há»£p lá»‡");
              }
            });
          }, 500);
        },
    },

    mounted: function () {

        //náº¿u lĂ  giao diá»‡n mobile chá»‰ load 4 items
        if(screen.width < 800) this.numPost = 4;

        this.fetchlistComments();
    }

})
//# sourceMappingURL=components.js.map