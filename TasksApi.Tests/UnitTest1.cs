using Xunit;
using TasksApi.Models;

namespace TasksApi.Tests
{
    public class TaskItemTests
    {
        [Fact]
        public void CanCreateTaskItem()
        {
            var task = new TaskItem { Id = 1, Title = "Test Task", Done = false };

            Assert.Equal(1, task.Id);
            Assert.Equal("Test Task", task.Title);
            Assert.False(task.Done);
        }
    }
}
