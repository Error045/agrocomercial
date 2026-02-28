<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\EstadoProductoCalibrado;
use Illuminate\Auth\Access\HandlesAuthorization;

class EstadoProductoCalibradoPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:EstadoProductoCalibrado');
    }

    public function view(AuthUser $authUser, EstadoProductoCalibrado $estadoProductoCalibrado): bool
    {
        return $authUser->can('View:EstadoProductoCalibrado');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:EstadoProductoCalibrado');
    }

    public function update(AuthUser $authUser, EstadoProductoCalibrado $estadoProductoCalibrado): bool
    {
        return $authUser->can('Update:EstadoProductoCalibrado');
    }

    public function delete(AuthUser $authUser, EstadoProductoCalibrado $estadoProductoCalibrado): bool
    {
        return $authUser->can('Delete:EstadoProductoCalibrado');
    }

    public function restore(AuthUser $authUser, EstadoProductoCalibrado $estadoProductoCalibrado): bool
    {
        return $authUser->can('Restore:EstadoProductoCalibrado');
    }

    public function forceDelete(AuthUser $authUser, EstadoProductoCalibrado $estadoProductoCalibrado): bool
    {
        return $authUser->can('ForceDelete:EstadoProductoCalibrado');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:EstadoProductoCalibrado');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:EstadoProductoCalibrado');
    }

    public function replicate(AuthUser $authUser, EstadoProductoCalibrado $estadoProductoCalibrado): bool
    {
        return $authUser->can('Replicate:EstadoProductoCalibrado');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:EstadoProductoCalibrado');
    }

}