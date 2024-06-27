using Microsoft.Maui.ApplicationModel.Communication;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Xml.Linq;

namespace MauiApp2;

    public partial class Register 
    {

        private static readonly HttpClient client = new HttpClient();

        public Register()
    {
        InitializeComponent();
    }

        protected async void RegisterClick(object sender, EventArgs e)
        {
            try
            {
            var user = new
            {
                Id = rUsername.Text,
                Name = rUsername.Text,
                Surname = rUsername.Text,
                Email = Email.Text,
                Password = rPassword.Text,
                    UserType = Convert.ToInt16("2"),
                };

                var response = await RegisterUserAsync(user);

                if (response.IsSuccessStatusCode)
                {
                    await Navigation.PushAsync(new LoginPage());
                }
                else
                {
                await DisplayAlert("error", "Register failed not exception", "OK");
            }
            }
            catch (Exception ex)
            {
            await DisplayAlert("error", "login failed "+ex, "OK");
        }
        }

        private async Task<HttpResponseMessage> RegisterUserAsync(object user)
        {
            var json = JsonConvert.SerializeObject(user);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            return await client.PostAsync("http://10.0.2.2:5027/api/Farmacy/register", content);
        }

    private async void alreadyReg(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new LoginPage());
    }
}

