package com.sinut.boring_calculator_android_api_28

import android.annotation.SuppressLint
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.core.text.isDigitsOnly

class MainActivity : AppCompatActivity() {

    private var disText: TextView? = null
    private var startNewString = false

    @SuppressLint("SetTextI18n")
    /**
     * @param n one character going to display
     */
    private fun displayText(n: String) {
        if (!startNewString) {
            clearText()
        }
        if (n.length != 1) {
            throw Error("Can add only one text at a time")
        }
        disText?.text = disText?.text.toString() + n
    }

    private fun clearText() {
        disText?.text = ""
        startNewString = true
    }

    private fun removeOneText(): Unit {
        disText?.let {
            if (disText!!.text.isEmpty()) {
                return
            }
            val t = disText?.text!!
            disText?.text = disText?.text!!.substring(0, t.lastIndex)
        }
    }

    private fun isValidArray(arr: ArrayList<String>): Boolean {
        // Not starting with operator
        if (!arr[0].isDigitsOnly()) {
            return false
        }
        // Operators should not be contiguous.
        for (i in 0 until arr.size - 1) {
            if (!arr[i].isDigitsOnly() && !arr[i + 1].isDigitsOnly()) {
                return false
            }
        }

        return true
    }

    private fun computeResult(): Unit {
        if (disText == null) {
            return
        }

        // Separated operators and numbers to ArrayList
        val arrayList = ArrayList<String>()
        val text = disText!!.text
        var curr = ""
        for (i in text.indices) {
            if (text[i].isDigit()) {
                curr += text[i]
            }
            if (i == text.lastIndex && text[i].isDigit()) {
                arrayList.add(curr)
            }
            if (!text[i].isDigit()) {
                if (curr != "") {
                    arrayList.add(curr)
                }
                arrayList.add(text[i].toString())
                curr = ""
            }

        }

        // Valid the input
        if (!isValidArray(arrayList)) {
            disText!!.text = "Invalid Input"
            startNewString = false
            return
        }

        // Start Computing
        var result = arrayList[0].toDouble()
        for (i in 1 until arrayList.size - 1 step 2) {
            val operator = arrayList[i]
            val nextNum = arrayList[i + 1].toDouble()
            if (operator == "+") {
                result += nextNum
            }
            if (operator == "-") {
                result -= nextNum
            }
            if (operator == "*") {
                result *= nextNum
            }
            if (operator == "/") {
                if (nextNum == 0.0) {
                    disText!!.text = "Infinity"
                    startNewString = false
                    return
                }
                result /= nextNum
            }
        }


        disText!!.text = result.toString()
        startNewString = false
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        disText = findViewById(R.id.displayedText)
        findViewById<Button>(R.id.d1).setOnClickListener { displayText("1") }
        findViewById<Button>(R.id.d2).setOnClickListener { displayText("2") }
        findViewById<Button>(R.id.d3).setOnClickListener { displayText("3") }
        findViewById<Button>(R.id.d4).setOnClickListener { displayText("4") }
        findViewById<Button>(R.id.d5).setOnClickListener { displayText("5") }
        findViewById<Button>(R.id.d6).setOnClickListener { displayText("6") }
        findViewById<Button>(R.id.d7).setOnClickListener { displayText("7") }
        findViewById<Button>(R.id.d8).setOnClickListener { displayText("8") }
        findViewById<Button>(R.id.d9).setOnClickListener { displayText("9") }
        findViewById<Button>(R.id.d0).setOnClickListener { displayText("0") }
        findViewById<Button>(R.id.od).setOnClickListener { displayText("/") }
        findViewById<Button>(R.id.omul).setOnClickListener { displayText("*") }
        findViewById<Button>(R.id.omin).setOnClickListener { displayText("-") }
        findViewById<Button>(R.id.op).setOnClickListener { displayText("+") }
        findViewById<Button>(R.id.ocompute).setOnClickListener { computeResult() }
        findViewById<Button>(R.id.delete).setOnClickListener { removeOneText() }
        findViewById<Button>(R.id.oclear).setOnClickListener { clearText() }
    }
}