
using FarmacyAPI;
using FarmacyAPI.Controllers;
using FarmacyAPI.Models;
using MauiApp2.Repository;
using Newtonsoft.Json;
using System.Diagnostics;
using System.Globalization;
using System.ServiceModel;
using System.Text;

namespace MauiApp2;

public partial class TaskPage : ContentPage
{
    private readonly HttpClient client;
    private string id;
    public TaskPage(string Id)
    {
        InitializeComponent();
        id = Id;
        client = new HttpClient();
        TaskDisplay();

    }

    private async void TaskDisplay()
    {
        populate.Children.Clear();
        try
        {
            string url = "http://10.0.2.2:5027/api/Farmacy/GetAllocatedTasks";
            HttpResponseMessage response = await client.GetAsync(url);

            string responseBody = await response.Content.ReadAsStringAsync();

            if (response.IsSuccessStatusCode)
            {
                var result = JsonConvert.DeserializeObject<List<FarmacyAPI.Models.TaskAllo>>(responseBody);
                if (result != null)
                {
                    foreach (var t in result)
                    {
                        if (t.User_Id.Equals(id))
                        {
                            addButton(t, t.Id, t.Task_Id, t.Status);
                        }
                    }
                }
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "" + ex, "OK");
        }
    }

    public async void addButton(TaskAllo t, int id, int taskID, string taskStatus)
    {
        HttpResponseMessage responses = await AlloAsync(taskID);
        string responseBodys = await responses.Content.ReadAsStringAsync();

        if (responses.IsSuccessStatusCode)
        {
            try
            {
                var results = JsonConvert.DeserializeObject<FarmacyAPI.Models.Task>(responseBodys);

                if (results != null)
                {
                    if (taskStatus.ToLower().Equals("not started") || taskStatus.ToLower().Equals("in progress"))
                    {
                        var button = new Button
                        {
                            Text = results.Task_Name,
                            CommandParameter = new { TaskAllo = t, ID = id, Status = taskStatus, TaskName = results.Task_Name, Description = results.Description }
                        };
                        button.Clicked += taskDetails;
                        populate.Children.Add(button);
                    }
                    else if (taskStatus.ToLower().Equals("done"))
                    {

                    }
                }
            }
            catch (Exception e)
            {
                await DisplayAlert("checher", "exception response: " + e, "done");
            }

        }
    }

    private async void taskDetails(object? sender, EventArgs e)
    {
        var button = sender as Button;
        if (button != null)
        {
            var para = (dynamic)button.CommandParameter;
            await Navigation.PushAsync(new TaskDescription(para.TaskAllo, para.ID, para.Status, para.TaskName, para.Description));
        }
    }

    private async Task<HttpResponseMessage> AlloAsync(int user)
    {
        string url = $"http://10.0.2.2:5027/api/Farmacy/GetAllocatedTask?id={user}";
        var json = JsonConvert.SerializeObject(user);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.GetAsync(url);
    }

}