using FarmacyAPI.Models;
using Microsoft.VisualBasic;
using Newtonsoft.Json;
using System.Text;

namespace MauiApp2;

public partial class TaskDescription : ContentPage
{
    private readonly HttpClient client;
    private TaskAllo taskAllo;
    public TaskDescription(TaskAllo t, int ID, string status, string name, string description)
    {
        InitializeComponent();
        client = new HttpClient();
        taskAllo = t;
        TaskDescDisplay(ID, status, name, description);

    }

    private async void TaskDescDisplay(int id, string status, string TaskNames, string descriptions)
    {
        TaskName.Text = TaskNames;
        description.Text = descriptions;
        populate.Children.Clear();

        if (status != null)
        {

            if (status.ToLower().Equals("in progress"))
            {
                var button1 = new Button()
                {
                    Text = "Task complete",
                    CommandParameter = new { ID = id }

                };
                button1.Clicked += Doneprogress;
                populate.Children.Add(button1);
            }
            else if (status.ToLower().Equals("not started"))
            {
                var button = new Button()
                {
                    Text = "Start Task",
                    CommandParameter = new { ID = id }

                };
                button.Clicked += Startprogress;
                populate.Children.Add(button);
            }
        }
    }

    private async void Doneprogress(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            var para = (dynamic)button.CommandParameter;
            var TaskAllo = new
            {
                Id = para.ID,
                Task_ID = taskAllo.Task_Id,
                User_ID = taskAllo.User_Id,
                Status = "Done",
                DueDate = taskAllo.Duedate
            };

            try
            {
                HttpResponseMessage response = await UpdateAsync(TaskAllo);


                if (response.IsSuccessStatusCode)
                {
                    await DisplayAlert("Alert", "Task done", "OK");
                }
                else
                {
                    // Invalid credentials
                    await DisplayAlert("error", "unable to update task status " + response, "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("error", "" + ex, "OK");
            }
        }
    }

    private async void Startprogress(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            var para = (dynamic)button.CommandParameter;
            var TaskAllo = new
            {
                Id = para.ID,
                Task_ID = taskAllo.Task_Id,
                User_ID = taskAllo.User_Id,
                Status = "In Progress",
                DueDate = taskAllo.Duedate
            };

            try
            {
                HttpResponseMessage response = await UpdateAsync(TaskAllo);


                if (response.IsSuccessStatusCode)
                {
                    await DisplayAlert("Alert", "Task started", "OK");
                }
                else
                {
                    // Invalid credentials
                    await DisplayAlert("error", "unable to update task status " + response, "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("error", "" + ex, "OK");
            }
        }

    }


    private async Task<HttpResponseMessage> UpdateAsync(object task)
    {
        var json = JsonConvert.SerializeObject(task);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PutAsync("http://10.0.2.2:5027/api/Farmacy/updateTaskStatus", content);
    }
}