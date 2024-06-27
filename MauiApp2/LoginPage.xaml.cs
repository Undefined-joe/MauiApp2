

using FarmacyAPI;
using FarmacyAPI.Controllers;
using MauiApp2.Repository;
using Newtonsoft.Json;
using System.Diagnostics;
using System.ServiceModel;
using System.Text;

namespace MauiApp2;

public partial class LoginPage : ContentPage
{
	
	string user="";
	string password="";
	int results;
    private static readonly HttpClient client = new HttpClient();

    public LoginPage()
	{
		InitializeComponent();
    }


    private async void LoginClick(object sender, EventArgs e)
    {
        var user = new
        {
            Id = Username.Text,
            Password = Password.Text,
        };

        try
        {
            HttpResponseMessage response = await LoginAsync(user);

            string responseBody = await response.Content.ReadAsStringAsync();


            if (response.IsSuccessStatusCode)
            {
                var result = JsonConvert.DeserializeObject<dynamic>(responseBody);

                if (result != null && result.userType != null)
                {
                    int userType = result.userType;

                    if (userType == 1)
                    {
                        // Admin user
                        await Navigation.PushAsync(new DashboardPage());
                    }
                    else if (userType == 2)
                    {
                        // Worker user
                        await Navigation.PushAsync(new DashboardPage());
                    }
                    else
                    {
                        // Handle other user types if necessary
                        await DisplayAlert("error", "required usertype", "OK");
                    }
                }
                else
                {
                    //err.InnerText = $"Response:{responseBody}";
                    await DisplayAlert("error", "result is null", "OK");
                }
            }
            else
            {
                // Invalid credentials
                await DisplayAlert("error", "incorrect password or username "+response, "OK");
            }
        }
        catch (Exception ex)
        {
            await DisplayAlert("error", "" + ex, "OK");
        }
    }

    


    private async Task<HttpResponseMessage> LoginAsync(object user)
    {
        var json = JsonConvert.SerializeObject(user);
        var content = new StringContent(json, Encoding.UTF8, "application/json");
        return await client.PostAsync("http://10.0.2.2:5027/api/Farmacy/login", content);
    }

    private async void register(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new Register());
    }

}