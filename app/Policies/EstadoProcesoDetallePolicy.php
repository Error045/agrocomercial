<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\EstadoProcesoDetalle;
use Illuminate\Auth\Access\HandlesAuthorization;

class EstadoProcesoDetallePolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:EstadoProcesoDetalle');
    }

    public function view(AuthUser $authUser, EstadoProcesoDetalle $estadoProcesoDetalle): bool
    {
        return $authUser->can('View:EstadoProcesoDetalle');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:EstadoProcesoDetalle');
    }

    public function update(AuthUser $authUser, EstadoProcesoDetalle $estadoProcesoDetalle): bool
    {
        return $authUser->can('Update:EstadoProcesoDetalle');
    }

    public function delete(AuthUser $authUser, EstadoProcesoDetalle $estadoProcesoDetalle): bool
    {
        return $authUser->can('Delete:EstadoProcesoDetalle');
    }

    public function restore(AuthUser $authUser, EstadoProcesoDetalle $estadoProcesoDetalle): bool
    {
        return $authUser->can('Restore:EstadoProcesoDetalle');
    }

    public function forceDelete(AuthUser $authUser, EstadoProcesoDetalle $estadoProcesoDetalle): bool
    {
        return $authUser->can('ForceDelete:EstadoProcesoDetalle');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:EstadoProcesoDetalle');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:EstadoProcesoDetalle');
    }

    public function replicate(AuthUser $authUser, EstadoProcesoDetalle $estadoProcesoDetalle): bool
    {
        return $authUser->can('Replicate:EstadoProcesoDetalle');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:EstadoProcesoDetalle');
    }

}