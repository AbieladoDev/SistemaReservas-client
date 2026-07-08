<?php
/** Funções auxiliares usadas em todo o sistema. */

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

/** Escapa texto para exibir com segurança no HTML. */
function e($txt) {
    return htmlspecialchars((string)$txt, ENT_QUOTES, 'UTF-8');
}

/** Redireciona e encerra. */
function redirect($url) {
    header("Location: $url");
    exit;
}

/** Está logado? */
function logado() {
    return isset($_SESSION['usuario_id']);
}

/** É admin? */
function ehAdmin() {
    return logado() && ($_SESSION['usuario_tipo'] ?? '') === 'admin';
}

/** Nome amigável do turno. */
function nomeTurno($t) {
    $map = ['manha' => 'Manhã', 'tarde' => 'Tarde', 'noite' => 'Noite'];
    return $map[$t] ?? $t;
}
