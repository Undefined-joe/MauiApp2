

using MauiApp2.Model;
using System.Text.Json;
using System.Text.Json.Serialization;

namespace MauiApp2.Repository
{
    public class UserService 
    {
        public async Task<string> Login(string username, string password)
        {
            var client = new HttpClient();
            string url = "https://localhost:7042/api/Farmacy/"+username+"/"+password;
        client.BaseAddress = new Uri(url);
            HttpResponseMessage response = await client.GetAsync(client.BaseAddress);
            
            if(response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                var t = JsonSerializer.Deserialize<LogResults>(content);
                return t.result;
            }
            return null;
        }
    }
    public class LogResults
    {
        public string result { get; set; }
    }
}
