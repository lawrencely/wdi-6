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
      var $completed = $('<input type="checkbox">');
      var $deleteLink = $('<a></a>');
      $deleteLink.text('   \u2718')
      $deleteLink.attr('href', '/tasks/' + task.id);
      if (task.completed) {
        $completed.attr('checked', 'checked');
      }
      $taskLink.text(task.description);
      $taskLink.attr('href', '/tasks/' + task.id);
      $taskLink.appendTo($task);
      $task.prepend($completed);
      $task.append($deleteLink)
      $task.appendTo('#tasks');
    });
  });
};