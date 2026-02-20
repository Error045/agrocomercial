<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\TipoUbicacion;
use Illuminate\Auth\Access\HandlesAuthorization;

class TipoUbicacionPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:TipoUbicacion');
    }

    public function view(AuthUser $authUser, TipoUbicacion $tipoUbicacion): bool
    {
        return $authUser->can('View:TipoUbicacion');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:TipoUbicacion');
    }

    public function update(AuthUser $authUser, TipoUbicacion $tipoUbicacion): bool
    {
        return $authUser->can('Update:TipoUbicacion');
    }

    public function delete(AuthUser $authUser, TipoUbicacion $tipoUbicacion): bool
    {
        return $authUser->can('Delete:TipoUbicacion');
    }

    public function restore(AuthUser $authUser, TipoUbicacion $tipoUbicacion): bool
    {
        return $authUser->can('Restore:TipoUbicacion');
    }

    public function forceDelete(AuthUser $authUser, TipoUbicacion $tipoUbicacion): bool
    {
        return $authUser->can('ForceDelete:TipoUbicacion');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:TipoUbicacion');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:TipoUbicacion');
    }

    public function replicate(AuthUser $authUser, TipoUbicacion $tipoUbicacion): bool
    {
        return $authUser->can('Replicate:TipoUbicacion');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:TipoUbicacion');
    }

}