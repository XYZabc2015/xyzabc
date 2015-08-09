//: Playground - noun: a place where people can play

import UIKit

class Yazi
{
    var bao = false
    
    func Jiao()
    {
        if (bao)
        {
            println("gagaga")
        }
        else
        {
            println("gugugu")
        }
    }
}

class dog
{
    var full = false
    var name = "no dog"
    var defenceValue = 0
    var attackValue = 0
    var healthPoint = 10
    func DogDo()
    {
        if (full)
        {
            println("\(name) is sleeping")
        }
        else
        {
            println("\(name) is playing")
        }
    }
    
    func eat(times:Int)
    {
        
        full = true
        attackValue=attackValue+times
        println(attackValue)
    }
    
    func GiveName(dogName:String)
    {
        name = dogName
    }
    func fight(fightWith:dog)(times:Int)
    {
        if(attackValue+defenceValue>=fightWith.attackValue+fightWith.defenceValue)
        {
            fightWith.healthPoint=fightWith.healthPoint-times
            println("\(name) is winner")
        }
        else
        {
            healthPoint=healthPoint-times
            println("\(fightWith.name) is winner")
        }
    }
    func sumUp(fightWith:dog)
    {
        if (healthPoint<=0)
        {
            println("\(name) has passed away")
        }
        else
        {
            if(fightWith.healthPoint<=0)
            {
                println("\(fightWith.name) has passed away")
            }
            else
            {
                println("game over")
            }
        }
    }
    func workOut(times:Int)
    {
        defenceValue=times
    }
}

var h = dog()
h.GiveName("Sherlock")
h.eat(2)
h.DogDo()
h.workOut(2)
var y=dog()
y.GiveName("Amy")
y.DogDo()
y.eat(3)
h.fight(y)(times:10)
y.workOut(0)
h.sumUp(y)