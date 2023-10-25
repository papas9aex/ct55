using System;

public interface IAnimal
{
    string Name { get; set; }
    void MakeSound();
}

// Класс Dog, реализующий интерфейс IAnimal
public class Dog : IAnimal
{
    public string Name { get; set; }

    public Dog(string name)
    {
        Name = name;
    }

    public void MakeSound()
    {
        Console.WriteLine($"{Name} шарик скажет: гав гав");
    }
}

// Класс Cat, реализующий интерфейс IAnimal
public class Cat : IAnimal
{ 
    public string Name { get; set; }

    public Cat(string name)
    {
        Name = name;
    }

    public void MakeSound()
    {
        Console.WriteLine($"{Name} Недошарик скажет: мяу мяу");
    }
}

class Program
{
    static void Main()
    {
        IAnimal dog = new Dog("ШАрик");
        IAnimal cat = new Cat("Недошарик");

        dog.MakeSound();
        cat.MakeSound();
    }
}
