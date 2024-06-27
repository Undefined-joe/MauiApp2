namespace MauiApp2;

public partial class DashboardPage : ContentPage
{
	public DashboardPage()
	{
		InitializeComponent();
	}

	public async void taskPress(object sender, EventArgs e)
	{
		await Navigation.PushAsync(new TaskPage());
	}

	public async void QuestPress(object sender, EventArgs e)
	{
        await Navigation.PushAsync(new AddAnimalPage());
    }

    public async void NewPress(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new AddNewAnimal());
    }

    public async void addTask(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new AddTask());
    }
}