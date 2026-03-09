<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\RecepcionDetalleProceso;
use Illuminate\Auth\Access\HandlesAuthorization;

class RecepcionDetalleProcesoPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:RecepcionDetalleProceso');
    }

    public function view(AuthUser $authUser, RecepcionDetalleProceso $recepcionDetalleProceso): bool
    {
        return $authUser->can('View:RecepcionDetalleProceso');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:RecepcionDetalleProceso');
    }

    public function update(AuthUser $authUser, RecepcionDetalleProceso $recepcionDetalleProceso): bool
    {
        return $authUser->can('Update:RecepcionDetalleProceso');
    }

    public function delete(AuthUser $authUser, RecepcionDetalleProceso $recepcionDetalleProceso): bool
    {
        return $authUser->can('Delete:RecepcionDetalleProceso');
    }

    public function restore(AuthUser $authUser, RecepcionDetalleProceso $recepcionDetalleProceso): bool
    {
        return $authUser->can('Restore:RecepcionDetalleProceso');
    }

    public function forceDelete(AuthUser $authUser, RecepcionDetalleProceso $recepcionDetalleProceso): bool
    {
        return $authUser->can('ForceDelete:RecepcionDetalleProceso');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:RecepcionDetalleProceso');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:RecepcionDetalleProceso');
    }

    public function replicate(AuthUser $authUser, RecepcionDetalleProceso $recepcionDetalleProceso): bool
    {
        return $authUser->can('Replicate:RecepcionDetalleProceso');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:RecepcionDetalleProceso');
    }

}