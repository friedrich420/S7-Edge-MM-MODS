.class final Lcom/android/server/pm/SharedUserSetting;
.super Lcom/android/server/pm/SettingBase;
.source "SharedUserSetting.java"


# instance fields
.field final name:Ljava/lang/String;

.field final packages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field final signatures:Lcom/android/server/pm/PackageSignatures;

.field uidFlags:I

.field uidPrivateFlags:I

.field userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_pkgFlags"    # I
    .param p3, "_pkgPrivateFlags"    # I

    .prologue
    .line 40
    invoke-direct {p0, p2, p3}, Lcom/android/server/pm/SettingBase;-><init>(II)V

    .line 35
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, packages:Landroid/util/ArraySet;

    .line 37
    new-instance v0, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v0}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    iput-object v0, p0, signatures:Lcom/android/server/pm/PackageSignatures;

    .line 41
    iput p2, p0, uidFlags:I

    .line 42
    iput p3, p0, uidPrivateFlags:I

    .line 43
    iput-object p1, p0, name:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method addPackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 4
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 73
    iget-object v0, p0, packages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 74
    iget v0, p0, pkgFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, setFlags(I)V

    .line 75
    iget v0, p0, pkgPrivateFlags:I

    iget v1, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, setPrivateFlags(I)V

    .line 77
    :cond_18
    return-void
.end method

.method getRequestedPermissions()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "permissionAll":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, packages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 82
    .local v2, "setting":Lcom/android/server/pm/PackageSetting;
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 83
    iget-object v3, v2, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_b

    .line 85
    .end local v2    # "setting":Lcom/android/server/pm/PackageSetting;
    :cond_26
    return-object v1
.end method

.method removePackage(Lcom/android/server/pm/PackageSetting;)V
    .registers 8
    .param p1, "packageSetting"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 53
    iget-object v4, p0, packages:Landroid/util/ArraySet;

    invoke-virtual {v4, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 55
    iget v4, p0, pkgFlags:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_2a

    .line 56
    iget v0, p0, uidFlags:I

    .line 57
    .local v0, "aggregatedFlags":I
    iget-object v4, p0, packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 58
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    or-int/2addr v0, v4

    .line 59
    goto :goto_17

    .line 60
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_27
    invoke-virtual {p0, v0}, setFlags(I)V

    .line 62
    .end local v0    # "aggregatedFlags":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2a
    iget v4, p0, pkgPrivateFlags:I

    iget v5, p1, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_4c

    .line 63
    iget v1, p0, uidPrivateFlags:I

    .line 64
    .local v1, "aggregatedPrivateFlags":I
    iget-object v4, p0, packages:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 65
    .restart local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgPrivateFlags:I

    or-int/2addr v1, v4

    .line 66
    goto :goto_39

    .line 67
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_49
    invoke-virtual {p0, v1}, setPrivateFlags(I)V

    .line 70
    .end local v1    # "aggregatedPrivateFlags":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedUserSetting{"

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

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
