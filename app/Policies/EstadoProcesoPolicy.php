<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\EstadoProceso;
use Illuminate\Auth\Access\HandlesAuthorization;

class EstadoProcesoPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:EstadoProceso');
    }

    public function view(AuthUser $authUser, EstadoProceso $estadoProceso): bool
    {
        return $authUser->can('View:EstadoProceso');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:EstadoProceso');
    }

    public function update(AuthUser $authUser, EstadoProceso $estadoProceso): bool
    {
        return $authUser->can('Update:EstadoProceso');
    }

    public function delete(AuthUser $authUser, EstadoProceso $estadoProceso): bool
    {
        return $authUser->can('Delete:EstadoProceso');
    }

    public function restore(AuthUser $authUser, EstadoProceso $estadoProceso): bool
    {
        return $authUser->can('Restore:EstadoProceso');
    }

    public function forceDelete(AuthUser $authUser, EstadoProceso $estadoProceso): bool
    {
        return $authUser->can('ForceDelete:EstadoProceso');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:EstadoProceso');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:EstadoProceso');
    }

    public function replicate(AuthUser $authUser, EstadoProceso $estadoProceso): bool
    {
        return $authUser->can('Replicate:EstadoProceso');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:EstadoProceso');
    }

}