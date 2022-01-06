using NUnit.Framework;
using Calculator2;
using FluentAssertions;

namespace TestProject1
{
    public class Tests
    {
        CalcLogic calc;
        [SetUp]
        public void Setup()
        {
            calc = new CalcLogic();
        }

        [Test]
        public void Test1()
        {
            calc.calculate("1+1").Should().Be(2);
            calc.calculate("4*4").Should().Be(16);
            calc.calculate("5-2").Should().Be(3);
            calc.calculate("4/2").Should().Be(2);
        }

        [Test]
        public void Test2()
        {
            calc.calculate("1.0+1").Should().Be(2);
            calc.calculate("4.0*4").Should().Be(16);
            calc.calculate("5.0-2").Should().Be(3);
            calc.calculate("4.0/2").Should().Be(2);
        }

        [Test]
        public void Test3()
        {
            calc.calculate("1+1.5").Should().Be(2.5);
            calc.calculate("2*1.5").Should().Be(3);
            calc.calculate("5-2.5").Should().Be(2.5);
            calc.calculate("3/2").Should().Be(1.5);
        }

        [Test]
        public void Test5()
        {
            calc.calculate("(2+2)*2").Should().Be(8);
            calc.calculate("(2-2)*2").Should().Be(0);
            calc.calculate("2*(2+2)").Should().Be(8);
            calc.calculate("2*(2-2)").Should().Be(0);
        }

        [Test]
        public void Test4()
        {
            Assert.Throws<System.Data.SyntaxErrorException>(() => calc.calculate("12lk;nfe"));
            Assert.Throws<System.Data.SyntaxErrorException>(() => calc.calculate("(12))"));
        }
    }
}