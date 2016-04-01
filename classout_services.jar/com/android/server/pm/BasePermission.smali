.class final Lcom/android/server/pm/BasePermission;
.super Ljava/lang/Object;
.source "BasePermission.java"


# static fields
.field static final TYPE_BUILTIN:I = 0x1

.field static final TYPE_DYNAMIC:I = 0x2

.field static final TYPE_NORMAL:I


# instance fields
.field private gids:[I

.field final name:Ljava/lang/String;

.field packageSetting:Lcom/android/server/pm/PackageSettingBase;

.field pendingInfo:Landroid/content/pm/PermissionInfo;

.field private perUser:Z

.field perm:Landroid/content/pm/PackageParser$Permission;

.field protectionLevel:I

.field sourcePackage:Ljava/lang/String;

.field final type:I

.field uid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_sourcePackage"    # Ljava/lang/String;
    .param p3, "_type"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, name:Ljava/lang/String;

    .line 58
    iput-object p2, p0, sourcePackage:Ljava/lang/String;

    .line 59
    iput p3, p0, type:I

    .line 61
    const/4 v0, 0x2

    iput v0, p0, protectionLevel:I

    .line 62
    return-void
.end method


# virtual methods
.method public computeGids(I)[I
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 76
    iget-boolean v2, p0, perUser:Z

    if-eqz v2, :cond_1c

    .line 77
    iget-object v2, p0, gids:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 78
    .local v1, "userGids":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    iget-object v2, p0, gids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    .line 79
    iget-object v2, p0, gids:[I

    aget v2, v2, v0

    invoke-static {p1, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    aput v2, v1, v0

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 83
    .end local v0    # "i":I
    .end local v1    # "userGids":[I
    :cond_1c
    iget-object v1, p0, gids:[I

    :cond_1e
    return-object v1
.end method

.method public isDevelopment()Z
    .registers 3

    .prologue
    .line 93
    iget v0, p0, protectionLevel:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    iget v0, p0, protectionLevel:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public isRuntime()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, protectionLevel:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public setGids([IZ)V
    .registers 3
    .param p1, "gids"    # [I
    .param p2, "perUser"    # Z

    .prologue
    .line 71
    iput-object p1, p0, gids:[I

    .line 72
    iput-boolean p2, p0, perUser:Z

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BasePermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
