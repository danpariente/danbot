"#interaction".onSubmit(function(event) {
  event.stop();
  this.send({
    onSuccess: function() {
      $('danbot_answer').update(this.responseText);
    }
  });
});