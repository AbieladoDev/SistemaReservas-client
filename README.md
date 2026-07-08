# 📦 Sistema de Reservas e Empréstimos

Projeto da **Fábrica de Software** (Scrum) — Projeto A.
Solução completa **Web (PHP) + Mobile (Android) + Banco (MySQL)** integrada por **API JSON**.

Usuários reservam recursos da escola (projetor, sala, equipamento) por **data** e **turno**
(manhã/tarde/noite). O **admin** cadastra recursos, categorias e setores; o **usuário** faz
reservas e vê o histórico. A reserva é **automática** (sem aprovação).

## 📁 Estrutura
```
Projeto-davi/
├── sql/      → Scripts do banco (copiar/colar no phpMyAdmin)
├── web/      → Site em PHP (vai em C:\xampp\htdocs\reservas)
├── mobile/   → App Android (abrir no Android Studio)
└── docs/     → Documentação: relatório, kanban e diagramas
```

## ▶️ Como rodar
Siga o passo a passo em **[docs/COMO_RODAR.md](docs/COMO_RODAR.md)**.

Resumo rápido:
1. XAMPP: ligar Apache + MySQL.
2. phpMyAdmin: executar `sql/01_estrutura.sql` e depois `sql/02_dados_iniciais.sql`.
3. Copiar `web/` para `C:\xampp\htdocs\reservas`.
4. Abrir `http://localhost/reservas/instalar.php` (cria o admin).
5. Entrar em `http://localhost/reservas/login.php` → `admin@escola.com` / `123456`.
6. Abrir `mobile/ReservasApp` no Android Studio, ajustar `ApiConfig.java` e rodar.

## 📚 Documentação
- [Relatório](docs/RELATORIO.md)
- [Kanban](docs/KANBAN.md)
- [DER — Banco de Dados](docs/DER.md)
- [Diagrama de Classes](docs/diagrama_classes.md)
- [Diagrama de Casos de Uso](docs/diagrama_casos_de_uso.md)

## 🔑 Logins de teste
| Perfil | E-mail | Senha |
|---|---|---|
| Admin | admin@escola.com | 123456 |
| Usuário | aluno@escola.com | 123456 |
