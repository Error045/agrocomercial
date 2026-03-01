<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\EstadoRecepcionDetalleProceso;
use Illuminate\Auth\Access\HandlesAuthorization;

class EstadoRecepcionDetalleProcesoPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:EstadoRecepcionDetalleProceso');
    }

    public function view(AuthUser $authUser, EstadoRecepcionDetalleProceso $estadoRecepcionDetalleProceso): bool
    {
        return $authUser->can('View:EstadoRecepcionDetalleProceso');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:EstadoRecepcionDetalleProceso');
    }

    public function update(AuthUser $authUser, EstadoRecepcionDetalleProceso $estadoRecepcionDetalleProceso): bool
    {
        return $authUser->can('Update:EstadoRecepcionDetalleProceso');
    }

    public function delete(AuthUser $authUser, EstadoRecepcionDetalleProceso $estadoRecepcionDetalleProceso): bool
    {
        return $authUser->can('Delete:EstadoRecepcionDetalleProceso');
    }

    public function restore(AuthUser $authUser, EstadoRecepcionDetalleProceso $estadoRecepcionDetalleProceso): bool
    {
        return $authUser->can('Restore:EstadoRecepcionDetalleProceso');
    }

    public function forceDelete(AuthUser $authUser, EstadoRecepcionDetalleProceso $estadoRecepcionDetalleProceso): bool
    {
        return $authUser->can('ForceDelete:EstadoRecepcionDetalleProceso');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:EstadoRecepcionDetalleProceso');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:EstadoRecepcionDetalleProceso');
    }

    public function replicate(AuthUser $authUser, EstadoRecepcionDetalleProceso $estadoRecepcionDetalleProceso): bool
    {
        return $authUser->can('Replicate:EstadoRecepcionDetalleProceso');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:EstadoRecepcionDetalleProceso');
    }

}