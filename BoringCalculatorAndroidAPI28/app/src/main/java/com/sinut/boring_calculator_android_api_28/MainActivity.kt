package com.sinut.boring_calculator_android_api_28

import android.annotation.SuppressLint
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {

    private var disText: TextView? = null

    @SuppressLint("SetTextI18n")
    /**
     * @param n one character going to display
     */
    private fun displayText(n: String) {
        if (n.length != 1) {
            throw Error("Can add only one text at a time")
        }
        disText?.text = disText?.text.toString() + n
    }

    private fun clearText() {
        disText?.text = ""
    }

    private fun computeResult(): Unit {
        TODO("Validate display text")
        TODO("Compute the result")
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
        findViewById<Button>(R.id.oclear).setOnClickListener { clearText() }
    }
}