package com.sinut.unitconverter

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowDropDown
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ElevatedButton
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.focus.FocusManager
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.sinut.unitconverter.ui.theme.UnitConverterTheme

class MainActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()
        setContent {
            UnitConverterTheme {
                Scaffold(
                    modifier = Modifier.fillMaxSize(),
                    containerColor = MaterialTheme.colorScheme.background
                ) { innerPadding ->
                    UnitConverter(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(innerPadding)
                    )
                }
            }
        }
    }
}

enum class GlobalUnit(val label: String, val scale: Double) {
    CM("cm", 1.0), M("m", 100.0)
}

@Composable
fun UnitConverter(modifier: Modifier = Modifier) {
    var isExpandedFrom by remember { mutableStateOf(false) }
    var isExpandedTo by remember { mutableStateOf(false) }
    var selectedFrom: GlobalUnit? by remember { mutableStateOf(null) }
    var selectedTo: GlobalUnit? by remember { mutableStateOf(null) }
    var textFieldVal by remember { mutableStateOf("") }
    val focusManager = LocalFocusManager.current
    var result: Double? by remember { mutableStateOf(null) }

    Column(
        modifier = modifier,
        verticalArrangement = Arrangement.Center,
        horizontalAlignment = Alignment.CenterHorizontally,
    ) {
        Text(text = "Unit Converter")
        Spacer(modifier = Modifier.height(20.dp))
        OutlinedTextField(
            value = textFieldVal,
            onValueChange = { str ->
                textFieldVal = str

                if (selectedFrom != null && selectedTo != null) {
                    result = convertUnit(str.toDouble(), selectedFrom!!, selectedTo!!)
                }
            },
            singleLine = true,
            keyboardActions = KeyboardActions(onDone = { focusManager.clearFocus() }),
            keyboardOptions = KeyboardOptions.Default.copy(keyboardType = KeyboardType.Decimal)
        )
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text(text = "from")
            Box(modifier = Modifier.width(10.dp))
            Box {
                ElevatedButton(onClick = { isExpandedFrom = !isExpandedFrom }) {
                    Text(text = selectedFrom?.label ?: "Select")
                    Icon(
                        imageVector = Icons.Default.ArrowDropDown,
                        contentDescription = "Arrow Down"
                    )
                }
                DropdownMenu(
                    expanded = isExpandedFrom,
                    onDismissRequest = { isExpandedFrom = false }) {
                    GlobalUnit.entries.map { e ->
                        DropdownMenuItem(text = {
                            Text(text = e.name)
                        }, onClick = {
                            isExpandedFrom = false
                            selectedFrom = e
                            if (selectedTo != null && textFieldVal.isNotEmpty()) {
                                result = convertUnit(
                                    textFieldVal.toDouble(),
                                    selectedFrom!!,
                                    selectedTo!!
                                )
                            }
                        })
                    }
                }
            }
            Box(modifier = Modifier.width(10.dp))
            Text(text = "to")
            Box(modifier = Modifier.width(10.dp))
            Box {
                ElevatedButton(onClick = { isExpandedTo = !isExpandedTo }) {
                    Text(text = selectedTo?.label ?: "Select")
                    Icon(
                        imageVector = Icons.Default.ArrowDropDown,
                        contentDescription = "Arrow Down"
                    )
                }
                DropdownMenu(expanded = isExpandedTo, onDismissRequest = { isExpandedTo = false }) {
                    GlobalUnit.entries.map { e ->
                        DropdownMenuItem(text = {
                            Text(text = e.name)
                        }, onClick = {
                            isExpandedTo = false
                            selectedTo = e
                            if (selectedFrom != null && textFieldVal.isNotEmpty()) {
                                result = convertUnit(textFieldVal.toDouble(), selectedFrom!!, selectedTo!!)
                            }
                        })
                    }
                }
            }
        }

        Text(text = "Result: $result ${selectedTo?.label ?: ""}")
    }
}

fun convertUnit(value: Double, fromUnit: GlobalUnit, toUnit: GlobalUnit): Double {
    return (value * fromUnit.scale) / toUnit.scale;
}

@Preview(showBackground = true)
@Composable
fun UnitConverterPreview() {
    UnitConverter()
}