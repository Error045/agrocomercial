<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\EstadoRecepcion;
use Illuminate\Auth\Access\HandlesAuthorization;

class EstadoRecepcionPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:EstadoRecepcion');
    }

    public function view(AuthUser $authUser, EstadoRecepcion $estadoRecepcion): bool
    {
        return $authUser->can('View:EstadoRecepcion');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:EstadoRecepcion');
    }

    public function update(AuthUser $authUser, EstadoRecepcion $estadoRecepcion): bool
    {
        return $authUser->can('Update:EstadoRecepcion');
    }

    public function delete(AuthUser $authUser, EstadoRecepcion $estadoRecepcion): bool
    {
        return $authUser->can('Delete:EstadoRecepcion');
    }

    public function restore(AuthUser $authUser, EstadoRecepcion $estadoRecepcion): bool
    {
        return $authUser->can('Restore:EstadoRecepcion');
    }

    public function forceDelete(AuthUser $authUser, EstadoRecepcion $estadoRecepcion): bool
    {
        return $authUser->can('ForceDelete:EstadoRecepcion');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:EstadoRecepcion');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:EstadoRecepcion');
    }

    public function replicate(AuthUser $authUser, EstadoRecepcion $estadoRecepcion): bool
    {
        return $authUser->can('Replicate:EstadoRecepcion');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:EstadoRecepcion');
    }

}