<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\RecepcionDetalle;
use Illuminate\Auth\Access\HandlesAuthorization;

class RecepcionDetallePolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:RecepcionDetalle');
    }

    public function view(AuthUser $authUser, RecepcionDetalle $recepcionDetalle): bool
    {
        return $authUser->can('View:RecepcionDetalle');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:RecepcionDetalle');
    }

    public function update(AuthUser $authUser, RecepcionDetalle $recepcionDetalle): bool
    {
        return $authUser->can('Update:RecepcionDetalle');
    }

    public function delete(AuthUser $authUser, RecepcionDetalle $recepcionDetalle): bool
    {
        return $authUser->can('Delete:RecepcionDetalle');
    }

    public function restore(AuthUser $authUser, RecepcionDetalle $recepcionDetalle): bool
    {
        return $authUser->can('Restore:RecepcionDetalle');
    }

    public function forceDelete(AuthUser $authUser, RecepcionDetalle $recepcionDetalle): bool
    {
        return $authUser->can('ForceDelete:RecepcionDetalle');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:RecepcionDetalle');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:RecepcionDetalle');
    }

    public function replicate(AuthUser $authUser, RecepcionDetalle $recepcionDetalle): bool
    {
        return $authUser->can('Replicate:RecepcionDetalle');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:RecepcionDetalle');
    }

}