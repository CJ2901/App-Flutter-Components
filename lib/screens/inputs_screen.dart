import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String,String> formValues = {
      'first_name'  :'',
      'last_name'   :'',
      'email'       :'',
      'password'    :'',
      'role'        :'',
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  hintText: 'Nombre del usuario',
                  labelText: 'Nombre',
                  helperText: 'Sólo letras',
                  suffixIcon: Icons.group_outlined,
                  icon: Icons.assignment_ind_outlined,
                  keyboardType: TextInputType.name,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Apellido del usuario',
                  labelText: 'Apellido',
                  helperText: 'Sólo letras',
                  suffixIcon: Icons.group_outlined,
                  icon: Icons.assignment_ind_outlined,
                  keyboardType: TextInputType.name,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Correo del usuario',
                  labelText: 'Correo',
                  helperText: 'Sólo letras',
                  suffixIcon: Icons.alternate_email_outlined,
                  icon: Icons.email_outlined,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  hintText: 'Contraseña del usuario',
                  labelText: 'Contraseña',
                  helperText: 'Sólo letras',
                  suffixIcon: Icons.password,
                  icon: Icons.paste_sharp,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),
          
                DropdownButtonFormField(

                  value: 'Admin',
                  items: const[
                    DropdownMenuItem(value:'Admin', child: Text('Admin')),
                    DropdownMenuItem(value:'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value:'Developer', child: Text('Developer')),
                    DropdownMenuItem(value:'Jr. Developer', child: Text('Jr. Developer')),

                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Nulo';
                  },

                ),

                const SizedBox(height: 30),





                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar')),
                  ),
                  onPressed: (){
                    
                    FocusScope.of(context).requestFocus( FocusNode() ); 
                    
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }

                    print(formValues);

                  }, 
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

