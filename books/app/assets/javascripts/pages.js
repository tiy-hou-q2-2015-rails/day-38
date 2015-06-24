$(window).ready(function(){

  $.ajax({
    url: "http://localhost:3000/api/authors.json",
    type: "GET",
    headers: {
        "x-api-key": "91d994652a17",
    },
  }).then(function(data){

    var source   = $("#authors").html();
    var template = Handlebars.compile(source);

    $("#author-placeholder").html(template({"authors": data }));

    // data.forEach(function(author){
    //
    //   var $thisAuthor = $("<li>" + author.name + "</li>");
    //   var $ul = $("<ul></ul>")
    //
    //   author.books.forEach(function(book){
    //     $ul.append("<li>" + book.title + "</li>")
    //   });
    //
    //   $thisAuthor.append($ul);
    //
    //   $("#authors").append($thisAuthor);
    // });

  });

});
