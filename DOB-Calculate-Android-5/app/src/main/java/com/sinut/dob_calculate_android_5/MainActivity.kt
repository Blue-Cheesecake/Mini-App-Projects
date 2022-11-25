package com.sinut.dob_calculate_android_5

import android.app.DatePickerDialog
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import java.text.SimpleDateFormat
import java.util.*

class MainActivity : AppCompatActivity() {

    private var selectedDateText: TextView? = null
    private var minText: TextView? = null

    private fun clickDate() {
        val calendar = Calendar.getInstance()
        val year = calendar.get(Calendar.YEAR)
        val month = calendar.get(Calendar.MONTH)
        val day = calendar.get(Calendar.DAY_OF_MONTH)
        val dpdl = DatePickerDialog(
            this,
            { view, year, month, day ->
                val result = "$day/${month + 1}/$year"
                selectedDateText?.text = result

                val sdf = SimpleDateFormat("dd/MM/yyyy", Locale.ENGLISH)
                val selected = sdf.parse(result)!!.time / 60000
                val current = sdf.parse(sdf.format(System.currentTimeMillis()))!!.time / 60000
                val finalResult = current - selected

                if (finalResult < 0) {
                    minText?.text = "WHAT!!"
                } else {
                    minText?.text = "${current - selected}"
                }

            }, year, month, day
        )
        dpdl.datePicker.maxDate = System.currentTimeMillis()
        dpdl.show()
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        val dateButton = findViewById<Button>(R.id.dateButton)
        selectedDateText = findViewById(R.id.dateText)
        minText = findViewById(R.id.minText)
        dateButton.setOnClickListener { clickDate() }

    }
}