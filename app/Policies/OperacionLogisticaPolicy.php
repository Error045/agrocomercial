<?php

declare(strict_types=1);

namespace App\Policies;

use Illuminate\Foundation\Auth\User as AuthUser;
use App\Models\OperacionLogistica;
use Illuminate\Auth\Access\HandlesAuthorization;

class OperacionLogisticaPolicy
{
    use HandlesAuthorization;
    
    public function viewAny(AuthUser $authUser): bool
    {
        return $authUser->can('ViewAny:OperacionLogistica');
    }

    public function view(AuthUser $authUser, OperacionLogistica $operacionLogistica): bool
    {
        return $authUser->can('View:OperacionLogistica');
    }

    public function create(AuthUser $authUser): bool
    {
        return $authUser->can('Create:OperacionLogistica');
    }

    public function update(AuthUser $authUser, OperacionLogistica $operacionLogistica): bool
    {
        return $authUser->can('Update:OperacionLogistica');
    }

    public function delete(AuthUser $authUser, OperacionLogistica $operacionLogistica): bool
    {
        return $authUser->can('Delete:OperacionLogistica');
    }

    public function restore(AuthUser $authUser, OperacionLogistica $operacionLogistica): bool
    {
        return $authUser->can('Restore:OperacionLogistica');
    }

    public function forceDelete(AuthUser $authUser, OperacionLogistica $operacionLogistica): bool
    {
        return $authUser->can('ForceDelete:OperacionLogistica');
    }

    public function forceDeleteAny(AuthUser $authUser): bool
    {
        return $authUser->can('ForceDeleteAny:OperacionLogistica');
    }

    public function restoreAny(AuthUser $authUser): bool
    {
        return $authUser->can('RestoreAny:OperacionLogistica');
    }

    public function replicate(AuthUser $authUser, OperacionLogistica $operacionLogistica): bool
    {
        return $authUser->can('Replicate:OperacionLogistica');
    }

    public function reorder(AuthUser $authUser): bool
    {
        return $authUser->can('Reorder:OperacionLogistica');
    }

}