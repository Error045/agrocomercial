<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\Contenedor;
use Illuminate\Auth\Access\HandlesAuthorization;

class ContenedorPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:Contenedor');
    }

    public function view(AuthUser $authUser, Contenedor $contenedor): bool
    {
        return $authUser->can('View:Contenedor');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:Contenedor');
    }

    public function update(AuthUser $authUser, Contenedor $contenedor): bool
    {
        return $authUser->can('Update:Contenedor');
    }

    public function delete(AuthUser $authUser, Contenedor $contenedor): bool
    {
        return $authUser->can('Delete:Contenedor');
    }

    public function restore(AuthUser $authUser, Contenedor $contenedor): bool
    {
        return $authUser->can('Restore:Contenedor');
    }

    public function forceDelete(AuthUser $authUser, Contenedor $contenedor): bool
    {
        return $authUser->can('ForceDelete:Contenedor');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:Contenedor');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:Contenedor');
    }

    public function replicate(AuthUser $authUser, Contenedor $contenedor): bool
    {
        return $authUser->can('Replicate:Contenedor');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:Contenedor');
    }

}