
// Importa o pacote principal do Flutter para widgets de UI
import 'package:flutter/material.dart';


/// Página de Login principal
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

/// Estado da página de login
class _LoginPageState extends State<LoginPage> {
  // Controladores para os campos de texto
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Variáveis de estado
  bool _obscurePassword = true; // Controla a visibilidade da senha
  bool _rememberMe = false;     // Controla o checkbox "Lembrar-me"

  @override
  void dispose() {
    // Libera os controladores ao destruir o widget
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Logo da empresa
                const SizedBox(height: 40),
                Center(
                  child: Image.asset(
                    'assets/imagem/logoMarca.png',
                    height: 300,
                    width: 300,
                  ),
                ),

                // Título e boas-vindas
                const SizedBox(height: 20),
                const Text(
                  'Faça login na sua \nconta.',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D7A3E),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Olá! Bem-vindo ao Origem+',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),

                // Campo de e-mail
                const SizedBox(height: 24),
                const Text(
                  'E-mail',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                _buildEmailField(),

                // Campo de senha
                const SizedBox(height: 16),
                const Text(
                  'Senha',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 8),
                _buildPasswordField(),

                // Checkbox e botão de esquecimento de senha
                const SizedBox(height: 16),
                _buildRememberMeRow(),

                // Botão de login
                const SizedBox(height: 24),
                _buildLoginButton(),

                // Divisor social
                const SizedBox(height: 24),
                _buildSocialDivider(),

                // Botões sociais
                const SizedBox(height: 16),
                _buildSocialButtonsRow(),

                // Link para cadastro
                const SizedBox(height: 32),
                _buildSignUpRow(),

                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Campo de texto para e-mail
  Widget _buildEmailField() {
    return TextField(
      controller: _emailController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Color(0xFF2D7A3E),
            width: 2.0,
          ),
        ),
        hintText: 'Digite seu e-mail',
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }

  /// Campo de texto para senha com botão de visibilidade
  Widget _buildPasswordField() {
    return TextField(
      controller: _passwordController,
      obscureText: _obscurePassword,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: Colors.grey.shade400),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Color(0xFF2D7A3E),
            width: 2.0,
          ),
        ),
        hintText: 'Digite sua senha',
        suffixIcon: IconButton(
          icon: Icon(
            _obscurePassword ? Icons.visibility_off : Icons.visibility,
            color: Colors.grey,
          ),
          onPressed: () {
            setState(() {
              _obscurePassword = !_obscurePassword;
            });
          },
        ),
      ),
    );
  }

  /// Linha com checkbox "Lembrar-me" e botão "Esqueceu a senha?"
  Widget _buildRememberMeRow() {
    return Row(
      children: [
        Checkbox(
          value: _rememberMe,
          onChanged: (bool? value) {
            setState(() {
              _rememberMe = value ?? false;
            });
          },
          activeColor: const Color(0xFF2D7A3E),
        ),
        const Text('Lembrar-me'),
        const Spacer(),
        TextButton(
          onPressed: () {
            // TODO: Implementar recuperação de senha
          },
          child: const Text('Esqueceu a senha?'),
        ),
      ],
    );
  }

  /// Botão principal de login
  Widget _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // TODO: Implementar ação de login
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2D7A3E),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Text(
          'Entrar',
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  /// Divisor visual para login social
  Widget _buildSocialDivider() {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey[300])),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'Ou entre com',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey[300])),
      ],
    );
  }

  /// Linha de botões sociais (Google, Facebook, Apple)
  Widget _buildSocialButtonsRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialButton(
          icon: Image.asset('assets/icons/Google.png', width: 24, height: 24),
          onPressed: () {
            // TODO: Implementar login com Google
          },
        ),
        const SizedBox(width: 20),
        _buildSocialButton(
          icon: Image.asset('assets/icons/facebook.png', width: 24, height: 24),
          onPressed: () {
            // TODO: Implementar login com Facebook
          },
        ),
        const SizedBox(width: 20),
        _buildSocialButton(
          icon: Image.asset('assets/icons/Iphone.png', width: 24, height: 24),
          onPressed: () {
            // TODO: Implementar login com Apple
          },
        ),
      ],
    );
  }

  /// Linha para cadastro de novo usuário
  Widget _buildSignUpRow() {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Não tem uma conta?',
            style: TextStyle(color: Colors.grey[600]),
          ),
          TextButton(
            onPressed: () {
              // TODO: Implementar navegação para cadastro
            },
            style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
            ),
            child: const Text(
              '  Cadastre-se',
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF2D7A3E),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Botão social customizado
  Widget _buildSocialButton({
    required Widget icon,
    required VoidCallback onPressed,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(18),
        side: const BorderSide(
          color: Color(0xFF2D7A3E),
        ),
      ),
      child: SizedBox(
        width: 24,
        height: 24,
        child: icon,
      ),
    );
  }
}
