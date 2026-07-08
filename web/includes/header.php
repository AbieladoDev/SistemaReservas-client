<?php
require_once __DIR__ . '/funcoes.php';
$paginaAtual = basename($_SERVER['PHP_SELF']);
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= isset($tituloPagina) ? e($tituloPagina) : 'Sistema de Reservas' ?></title>
    <link rel="stylesheet" href="/reservas/assets/css/style.css">
</head>
<body>
<header class="topbar">
    <div class="brand">
        <span class="logo">📦</span>
        <span>Reservas &amp; Empréstimos</span>
    </div>
    <?php if (logado()): ?>
    <nav class="menu">
        <a href="/reservas/index.php">Dashboard</a>
        <?php if (ehAdmin()): ?>
            <a href="/reservas/recursos/listar.php">Recursos</a>
            <a href="/reservas/categorias/listar.php">Categorias</a>
            <a href="/reservas/setores/listar.php">Setores</a>
            <a href="/reservas/reservas/listar.php">Reservas</a>
        <?php else: ?>
            <a href="/reservas/reservas/reservar.php">Reservar</a>
            <a href="/reservas/reservas/historico.php">Meu Histórico</a>
        <?php endif; ?>
    </nav>
    <div class="userbox">
        <span><?= e($_SESSION['usuario_nome']) ?> (<?= e($_SESSION['usuario_tipo']) ?>)</span>
        <a class="btn-sair" href="/reservas/logout.php">Sair</a>
    </div>
    <?php endif; ?>
</header>
<main class="container">
