using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MauiApp2.Model;

namespace MauiApp2.Repository
{
    public interface IUserRepo
    {
        Task<User> Login(string username, string password);
    }
}
