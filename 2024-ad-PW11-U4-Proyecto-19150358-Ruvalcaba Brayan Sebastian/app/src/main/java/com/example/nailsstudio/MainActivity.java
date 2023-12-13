package com.example.nailsstudio;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {

    private EditText et_1, et_2;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        et_1 = (EditText)findViewById(R.id.et_1);
        et_2 = (EditText)findViewById(R.id.et_2);
    }

    //Método para el botón
    public void Login(View view){

        String nombre = et_1.getText().toString();
        String passward = et_2.getText().toString();

        if(nombre.length() == 0){
            Toast.makeText(this,
                    "Debes de ingresar tu email", Toast.LENGTH_LONG).show();
        }
        if(passward.length() == 0){
            Toast.makeText(this,
                    "Debes de ingresar tu password", Toast.LENGTH_LONG).show();
        }
        if(nombre.length() != 0 && passward.length() != 0){
            Toast.makeText(this,
                    "Login...", Toast.LENGTH_LONG).show();
        }
    }
}