package com;
 
import java.math.BigDecimal;
 
public class calculate {
	private Double firstNum;
	private char operator;
	private Double secondNum;
	private Double result;
 
	public calculate() {
		super();
	}
 
	public Double getFirstNum() {
		return firstNum;
	}
 
	public void setFirstNum(Double firstNum) {
		this.firstNum = firstNum;
	}
 
	public char getOperator() {
		return operator;
	}
 
	public void setOperator(char operator) {
		this.operator = operator;
	}
 
	public Double getSecondNum() {
		return secondNum;
	}
 
	public void setSecondNum(Double secondNum) {
		this.secondNum = secondNum;
	}
 
	public Double getResult() {
		return result;
	}
 
	public void setResult(Double result) {
		this.result = result;
	}
 
	public Double calculate() {
		switch (this.operator) {
		case '+':
			this.result = this.firstNum + this.secondNum;
			break;
		case '-':
			this.result = this.firstNum - this.secondNum;
			break;
		case '*':
			this.result = this.firstNum * this.secondNum;
			break;
		case '/':
			if (this.secondNum == 0) {
				 System.out.println("Divisor cannot be zero");
			} else {
				this.result = this.firstNum / this.secondNum;
				BigDecimal bigDecimal = new BigDecimal(this.result);
				bigDecimal = bigDecimal.setScale(2, BigDecimal.ROUND_HALF_UP);
				this.result = bigDecimal.doubleValue();
			}
			break;
		default:
			 System.out.println("Unable to judge");
			break;
		}
		return result;
	}
}

