<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\EstadoRecepcionDetalle;
use Illuminate\Auth\Access\HandlesAuthorization;

class EstadoRecepcionDetallePolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:EstadoRecepcionDetalle');
    }

    public function view(AuthUser $authUser, EstadoRecepcionDetalle $estadoRecepcionDetalle): bool
    {
        return $authUser->can('View:EstadoRecepcionDetalle');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:EstadoRecepcionDetalle');
    }

    public function update(AuthUser $authUser, EstadoRecepcionDetalle $estadoRecepcionDetalle): bool
    {
        return $authUser->can('Update:EstadoRecepcionDetalle');
    }

    public function delete(AuthUser $authUser, EstadoRecepcionDetalle $estadoRecepcionDetalle): bool
    {
        return $authUser->can('Delete:EstadoRecepcionDetalle');
    }

    public function restore(AuthUser $authUser, EstadoRecepcionDetalle $estadoRecepcionDetalle): bool
    {
        return $authUser->can('Restore:EstadoRecepcionDetalle');
    }

    public function forceDelete(AuthUser $authUser, EstadoRecepcionDetalle $estadoRecepcionDetalle): bool
    {
        return $authUser->can('ForceDelete:EstadoRecepcionDetalle');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:EstadoRecepcionDetalle');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:EstadoRecepcionDetalle');
    }

    public function replicate(AuthUser $authUser, EstadoRecepcionDetalle $estadoRecepcionDetalle): bool
    {
        return $authUser->can('Replicate:EstadoRecepcionDetalle');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:EstadoRecepcionDetalle');
    }

}