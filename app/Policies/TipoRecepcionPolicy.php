<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\TipoRecepcion;
use Illuminate\Auth\Access\HandlesAuthorization;

class TipoRecepcionPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:TipoRecepcion');
    }

    public function view(AuthUser $authUser, TipoRecepcion $tipoRecepcion): bool
    {
        return $authUser->can('View:TipoRecepcion');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:TipoRecepcion');
    }

    public function update(AuthUser $authUser, TipoRecepcion $tipoRecepcion): bool
    {
        return $authUser->can('Update:TipoRecepcion');
    }

    public function delete(AuthUser $authUser, TipoRecepcion $tipoRecepcion): bool
    {
        return $authUser->can('Delete:TipoRecepcion');
    }

    public function restore(AuthUser $authUser, TipoRecepcion $tipoRecepcion): bool
    {
        return $authUser->can('Restore:TipoRecepcion');
    }

    public function forceDelete(AuthUser $authUser, TipoRecepcion $tipoRecepcion): bool
    {
        return $authUser->can('ForceDelete:TipoRecepcion');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:TipoRecepcion');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:TipoRecepcion');
    }

    public function replicate(AuthUser $authUser, TipoRecepcion $tipoRecepcion): bool
    {
        return $authUser->can('Replicate:TipoRecepcion');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:TipoRecepcion');
    }

}