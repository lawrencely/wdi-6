$(document).ready( function () {
  fetchTasks();

  $('#new_task').on('submit', function (e) {
    e.preventDefault();
    // Submitting form via AJAX.
    $.ajax('/tasks', {
      type: 'POST',
      data: {
        'task[description]': $('#task_description').val()
      }
    }).done(fetchTasks);
  });
});

var fetchTasks = function () {
    $.ajax('/tasks.json').done(function (tasks) {
      $('#tasks').empty();
    // show each task on the page
    $.each(tasks, function (index, task) {
      var $task = $('<li></li>');
      var $taskLink = $('<a></a>');
      $taskLink.text(task.description);
      $taskLink.attr('href', '/tasks/' + task.id);
      $taskLink.appendTo($task);
      $task.append('  Completed: ' + task.completed);
      $task.appendTo('#tasks');
    });
  });
};