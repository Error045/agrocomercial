<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\ProcesoDetalle;
use Illuminate\Auth\Access\HandlesAuthorization;

class ProcesoDetallePolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:ProcesoDetalle');
    }

    public function view(AuthUser $authUser, ProcesoDetalle $procesoDetalle): bool
    {
        return $authUser->can('View:ProcesoDetalle');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:ProcesoDetalle');
    }

    public function update(AuthUser $authUser, ProcesoDetalle $procesoDetalle): bool
    {
        return $authUser->can('Update:ProcesoDetalle');
    }

    public function delete(AuthUser $authUser, ProcesoDetalle $procesoDetalle): bool
    {
        return $authUser->can('Delete:ProcesoDetalle');
    }

    public function restore(AuthUser $authUser, ProcesoDetalle $procesoDetalle): bool
    {
        return $authUser->can('Restore:ProcesoDetalle');
    }

    public function forceDelete(AuthUser $authUser, ProcesoDetalle $procesoDetalle): bool
    {
        return $authUser->can('ForceDelete:ProcesoDetalle');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:ProcesoDetalle');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:ProcesoDetalle');
    }

    public function replicate(AuthUser $authUser, ProcesoDetalle $procesoDetalle): bool
    {
        return $authUser->can('Replicate:ProcesoDetalle');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:ProcesoDetalle');
    }

}