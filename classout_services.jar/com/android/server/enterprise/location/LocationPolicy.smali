.class public Lcom/android/server/enterprise/location/LocationPolicy;
.super Landroid/app/enterprise/ILocationPolicy$Stub;
.source "LocationPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "EDM"


# instance fields
.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mLM:Landroid/location/LocationManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/enterprise/ILocationPolicy$Stub;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 45
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mResolver:Landroid/content/ContentResolver;

    .line 47
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 48
    return-void
.end method

.method private addToBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    .line 438
    const-string v4, "EDM"

    const-string v5, ">>> LocationPolicyService.addToBlocked()"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0, p1}, getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v3

    .line 441
    .local v3, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_13

    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 442
    :cond_13
    const/4 v4, 0x0

    .line 454
    :goto_14
    return v4

    .line 444
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4}, getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 446
    .local v2, "provider":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_24

    .line 447
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 451
    .end local v2    # "provider":Ljava/lang/String;
    :cond_3b
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 452
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_44
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v4, v1}, saveBlockedList(ILjava/util/List;)Z

    move-result v4

    goto :goto_14
.end method

.method private enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 72
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOnlyLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 76
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v0, "blockedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "LOCATION"

    const-string v4, "blockedProviders"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "blockedProviders":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 380
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    :goto_1a
    return-object v0

    .line 382
    :cond_1b
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 55
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 58
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(I)I
    .registers 10
    .param p1, "callingUid"    # I

    .prologue
    .line 490
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "caller":Ljava/lang/String;
    const-string v5, "EDM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    if-eqz v0, :cond_46

    .line 493
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 494
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_32

    .line 495
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_32
    const-string v5, "com.android.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 499
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 500
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 501
    .local v4, "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 505
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_45
    return v4

    :cond_46
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    goto :goto_45
.end method

.method private isGPSStateChangeAllowedAsUser(I)Z
    .registers 10
    .param p1, "userId"    # I

    .prologue
    .line 267
    const-string v5, "EDM"

    const-string v6, ">>> isGPSStateChangeAllowedAsUser"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const/4 v0, 0x0

    .line 271
    .local v0, "blocked":Z
    :try_start_8
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "LOCATION"

    const-string/jumbo v7, "forceProviders"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 272
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 273
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_26} :catch_2e

    move-result v5

    if-eqz v5, :cond_17

    .line 274
    const/4 v0, 0x1

    .line 282
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2a
    :goto_2a
    if-nez v0, :cond_39

    const/4 v5, 0x1

    :goto_2d
    return v5

    .line 278
    :catch_2e
    move-exception v1

    .line 279
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "EDM"

    const-string/jumbo v6, "isGPSStateChangeAllowed() : failed to get value."

    invoke-static {v5, v6, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    const/4 v0, 0x0

    goto :goto_2a

    .line 282
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_39
    const/4 v5, 0x0

    goto :goto_2d
.end method

.method private removeFromBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v2

    .line 419
    .local v2, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_d

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 420
    :cond_d
    const/4 v3, 0x0

    .line 434
    :goto_e
    return v3

    .line 422
    :cond_f
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3}, getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 423
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_3d

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_33

    .line 425
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 426
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 434
    .end local v0    # "i":I
    :cond_33
    :goto_33
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v1}, saveBlockedList(ILjava/util/List;)Z

    move-result v3

    goto :goto_e

    .line 424
    .restart local v0    # "i":I
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 431
    .end local v0    # "i":I
    :cond_3d
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 432
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_33
.end method

.method private saveBlockedList(ILjava/util/List;)Z
    .registers 10
    .param p1, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 394
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_43

    .line 396
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    .line 398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 401
    .end local v1    # "s":Ljava/lang/String;
    :cond_34
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 405
    .end local v0    # "i$":Ljava/util/Iterator;
    :goto_42
    return v3

    .line 404
    :cond_43
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "LOCATION"

    const-string v5, "blockedProviders"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    goto :goto_42
.end method

.method private setLocationManager()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, mLM:Landroid/location/LocationManager;

    .line 66
    return-void
.end method


# virtual methods
.method public getAllBlockedProvidersInUser(I)Ljava/util/List;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LOCATION"

    const-string v6, "blockedProviders"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 196
    .local v2, "blockedProvidersList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_2f

    .line 198
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, "blockedProviders":Ljava/lang/String;
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_15

    .line 202
    .end local v1    # "blockedProviders":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2f
    const-string v4, ""

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_34
    return-object v0
.end method

.method public getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 184
    invoke-direct {p0}, setLocationManager()V

    .line 185
    iget-object v1, p0, mLM:Landroid/location/LocationManager;

    invoke-virtual {v1}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 186
    return-object v0
.end method

.method public getIndividualLocationProvider(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 154
    invoke-virtual {p0, p1}, getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_e

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    :cond_e
    move v2, v3

    .line 167
    :cond_f
    :goto_f
    return v2

    .line 158
    :cond_10
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, p2, v4}, isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 160
    .local v0, "isBlocked":Z
    const-string/jumbo v4, "gps"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 161
    if-eqz v0, :cond_36

    iget-object v4, p0, mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "gps"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 167
    :cond_36
    if-eqz v0, :cond_f

    move v2, v3

    goto :goto_f
.end method

.method public isGPSOn(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 356
    const-string v1, "EDM"

    const-string v4, ">>> isGPSOn"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 360
    .local v2, "token":J
    :try_start_c
    iget-object v1, p0, mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "gps"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->isLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1f

    move-result v0

    .line 362
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 365
    return v0

    .line 362
    :catchall_1f
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 259
    const-string v1, "EDM"

    const-string v2, ">>> isGPSStateChangeAllowed"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 262
    .local v0, "userId":I
    invoke-direct {p0, v0}, isGPSStateChangeAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .registers 5
    .param p1, "sProvider"    # Ljava/lang/String;

    .prologue
    .line 172
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 173
    .local v0, "userId":I
    invoke-virtual {p0, p1, v0}, isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v1

    return v1
.end method

.method public isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "sProvider"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 458
    invoke-virtual {p0, p2}, getAllBlockedProvidersInUser(I)Ljava/util/List;

    move-result-object v0

    .line 459
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 460
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 462
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 469
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 475
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 486
    return-void
.end method

.method public setGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 229
    const-string v5, "EDM"

    const-string v6, ">>> setGPSStateChangeAllowed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-direct {p0, p1}, enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 232
    const/4 v2, 0x0

    .line 235
    .local v2, "result":Z
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_18

    move v3, v2

    .line 250
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_17
    return v3

    .line 239
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_18
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "LOCATION"

    const-string/jumbo v9, "forceProviders"

    if-eqz p2, :cond_4b

    const/4 v5, 0x0

    :goto_24
    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 240
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 241
    .local v4, "userId":I
    if-nez v4, :cond_49

    .line 242
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 244
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_35
    const-string v5, "LocationPolicy"

    const-string/jumbo v6, "setGPSStateChangeAllowed"

    invoke-virtual {p0, p1}, isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    invoke-virtual {v1, v5, v6, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 245
    const-string v5, "EDM"

    const-string/jumbo v6, "setGPSStateChangeAllowed calling gearPolicyManager  "

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_49} :catch_4d

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_49
    :goto_49
    move v3, v2

    .line 250
    .restart local v3    # "result":I
    goto :goto_17

    .line 239
    .end local v3    # "result":I
    .end local v4    # "userId":I
    :cond_4b
    const/4 v5, 0x1

    goto :goto_24

    .line 246
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .restart local v4    # "userId":I
    :catch_4d
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_49
.end method

.method public setIndividualLocationProvider(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "sProvider"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    .line 89
    invoke-direct/range {p0 .. p1}, enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 91
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 95
    .local v8, "userId":I
    const/16 v2, 0x64

    if-lt v8, v2, :cond_12

    .line 96
    const/4 v11, 0x0

    .line 143
    :cond_11
    :goto_11
    return v11

    .line 99
    :cond_12
    const/4 v11, 0x1

    .line 100
    .local v11, "result":Z
    invoke-direct/range {p0 .. p0}, setLocationManager()V

    .line 101
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, getBlockedList(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 102
    .local v9, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_2c

    .line 103
    const-string v2, "EDM"

    const-string/jumbo v3, "setIndividualLocationProvider : sProvider is null"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 v11, 0x0

    goto :goto_11

    .line 106
    :cond_2c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_d2

    .line 109
    invoke-virtual/range {p0 .. p1}, getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v10

    .line 110
    .local v10, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_40

    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 111
    :cond_40
    const/4 v11, 0x0

    goto :goto_11

    .line 116
    :cond_42
    monitor-enter p0

    .line 117
    if-eqz p3, :cond_a7

    .line 118
    :try_start_45
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 119
    invoke-direct/range {p0 .. p2}, removeFromBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v11

    .line 130
    :cond_51
    :goto_51
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_45 .. :try_end_52} :catchall_c6

    .line 132
    if-eqz v11, :cond_11

    .line 133
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 135
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_5b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "LocationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " has "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p3, :cond_c9

    const-string/jumbo v7, "enabled"

    :goto_87
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " location provider "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_a2
    .catchall {:try_start_5b .. :try_end_a2} :catchall_cd

    .line 140
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_11

    .line 122
    .end local v12    # "psToken":J
    :cond_a7
    :try_start_a7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 123
    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v0, v1, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 124
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    .line 127
    invoke-direct/range {p0 .. p2}, addToBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v11

    goto :goto_51

    .line 130
    .end local v14    # "token":J
    :catchall_c6
    move-exception v2

    monitor-exit p0
    :try_end_c8
    .catchall {:try_start_a7 .. :try_end_c8} :catchall_c6

    throw v2

    .line 135
    .restart local v12    # "psToken":J
    :cond_c9
    :try_start_c9
    const-string/jumbo v7, "disabled"
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_87

    .line 140
    :catchall_cd
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 145
    .end local v10    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "psToken":J
    :cond_d2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid provider name !"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startGPS(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 21
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "start"    # Z

    .prologue
    .line 297
    const-string v2, "EDM"

    const-string v3, ">>> startGPS"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-direct/range {p0 .. p1}, enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 300
    const-string/jumbo v11, "gps"

    .line 301
    .local v11, "provider":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 304
    .local v8, "userId":I
    invoke-virtual/range {p0 .. p1}, getAllLocationProviders(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v12

    .line 305
    .local v12, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_22

    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 306
    :cond_22
    const/4 v2, 0x0

    .line 346
    :goto_23
    return v2

    .line 308
    :cond_24
    const/16 v2, 0x64

    if-lt v8, v2, :cond_33

    .line 310
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, isGPSStateChangeAllowedAsUser(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 311
    const/4 v2, 0x0

    goto :goto_23

    .line 315
    :cond_33
    invoke-virtual/range {p0 .. p1}, isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 316
    const/4 v2, 0x0

    goto :goto_23

    .line 318
    :cond_3b
    if-eqz p2, :cond_43

    invoke-virtual/range {p0 .. p1}, isGPSOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_4b

    :cond_43
    if-nez p2, :cond_4d

    invoke-virtual/range {p0 .. p1}, isGPSOn(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 319
    :cond_4b
    const/4 v2, 0x1

    goto :goto_23

    .line 321
    :cond_4d
    monitor-enter p0

    .line 322
    :try_start_4e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 323
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, mResolver:Landroid/content/ContentResolver;

    move/from16 v0, p2

    invoke-static {v2, v11, v0, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabledForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    .line 324
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 325
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_4e .. :try_end_5f} :catchall_be

    .line 327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 329
    .local v14, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_66
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "LocationPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Admin "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " has "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz p2, :cond_c1

    const-string/jumbo v7, "started"

    :goto_8a
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v13, " GPS "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9b
    .catchall {:try_start_66 .. :try_end_9b} :catchall_c5

    .line 334
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    if-nez v8, :cond_bb

    .line 338
    new-instance v10, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-direct {v10, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 340
    .local v10, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_a9
    const-string v2, "LocationPolicy"

    const-string/jumbo v3, "startGPS"

    move/from16 v0, p2

    invoke-virtual {v10, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 341
    const-string v2, "EDM"

    const-string/jumbo v3, "startGPS calling gearPolicyManager  "

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_bb} :catch_ca

    .line 346
    .end local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_bb
    :goto_bb
    const/4 v2, 0x1

    goto/16 :goto_23

    .line 325
    .end local v14    # "psToken":J
    .end local v16    # "token":J
    :catchall_be
    move-exception v2

    :try_start_bf
    monitor-exit p0
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_be

    throw v2

    .line 329
    .restart local v14    # "psToken":J
    .restart local v16    # "token":J
    :cond_c1
    :try_start_c1
    const-string/jumbo v7, "stopped"
    :try_end_c4
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_c5

    goto :goto_8a

    .line 334
    :catchall_c5
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 342
    .restart local v10    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_ca
    move-exception v9

    .line 343
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_bb
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 481
    return-void
.end method
