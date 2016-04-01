.class public Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
.super Ljava/lang/Object;
.source "EnterpriseBillingEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/billing/EnterpriseBillingEngine$EnterpriseBillingEngineConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EnterpriseBillingEngine"

.field private static engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;


# instance fields
.field private ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 79
    iput-object v0, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 55
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " EnterpriseBillingEngine() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    .line 58
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "EnterpriseBillingEngine() - created"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method private getApplicationsInfoOfContainer(I)Ljava/util/Map;
    .registers 8
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 643
    const/4 v2, 0x0

    .line 645
    .local v2, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v3

    .line 647
    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v3, :cond_35

    .line 648
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 649
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_25

    .line 650
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 652
    .restart local v2    # "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_25
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 655
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_35
    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 64
    const-class v1, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;->isEnterpriseBillingFeatureSupported()Z

    move-result v2

    if-nez v2, :cond_32

    .line 65
    const-string v0, "EnterpriseBillingEngine"

    const-string v2, "Feature not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v0, 0x0

    sput-object v0, engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    .line 73
    :cond_14
    :goto_14
    const-string v0, "EnterpriseBillingEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " engine - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget-object v0, engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_3c

    :goto_30
    monitor-exit v1

    return-object v0

    .line 67
    :cond_32
    if-nez p0, :cond_3f

    .line 68
    :try_start_34
    const-string v2, "EnterpriseBillingEngine"

    const-string v3, "Feature enabled, but context passed is null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3c

    goto :goto_30

    .line 64
    :catchall_3c
    move-exception v0

    monitor-exit v1

    throw v0

    .line 70
    :cond_3f
    :try_start_3f
    sget-object v0, engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    if-nez v0, :cond_14

    .line 71
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, engine:Lcom/android/server/enterprise/billing/EnterpriseBillingEngine;
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_3c

    goto :goto_14
.end method

.method private sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "profile"    # Ljava/lang/String;

    .prologue
    .line 332
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendEventToRIL - start - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 335
    .local v4, "token":J
    :try_start_1d
    iget-object v6, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "eapnType":Ljava/lang/String;
    const-string v6, "com.android.server.enterprise.billing.mapping_modified"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 337
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.android.server.enterprise.billing.action_enable_status_modified"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v2, "extraIntent":Landroid/content/Intent;
    const-string/jumbo v6, "ent_type"

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    .end local v2    # "extraIntent":Landroid/content/Intent;
    :cond_3d
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "ent_type"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendEventToRIL - end - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_66} :catch_6a
    .catchall {:try_start_1d .. :try_end_66} :catchall_88

    .line 352
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    .end local v1    # "eapnType":Ljava/lang/String;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_69
    return-void

    .line 349
    :catch_6a
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6b
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendEventToRIL - failed -"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_6b .. :try_end_84} :catchall_88

    .line 352
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_69

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_88
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method


# virtual methods
.method public addContainerToExceptionList(Ljava/lang/String;I)I
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 472
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addContainerToExceptionList called by VPN inside EnterpriseBillingEngine for container- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public addUIDListToExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 461
    .local p2, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "addUIDListToExceptionList called by VPN inside EnterpriseBillingEngine for packages"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method protected allowOnWifi(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnWifi - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 311
    const-string v0, "com.android.server.enterprise.billing.wifi_fallback_modified"

    invoke-direct {p0, v0, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_14
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnWifi - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 313
    :cond_1c
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowOnWifi - Invalid Profile Name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method protected allowRoaming(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 321
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnRoaming - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1c

    .line 323
    const-string v0, "com.android.server.enterprise.billing.roaming_modified"

    invoke-direct {p0, v0, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :goto_14
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, "allowOnRoaming - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void

    .line 325
    :cond_1c
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowRoaming - Invalid Profile Name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method protected disableApplicationOrContainer(Ljava/lang/String;)Z
    .registers 11
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 136
    const/4 v4, 0x0

    .line 137
    .local v4, "returnValue":I
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disableForContainerOrApplication() - start - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p1, :cond_101

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_101

    .line 140
    iget-object v6, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 143
    .local v1, "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v6, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 145
    .local v2, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_36

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_ff

    :cond_36
    if-eqz v2, :cond_3e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_ff

    .line 146
    :cond_3e
    iget-object v6, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getActiveApnForProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    move-result-object v0

    .line 147
    .local v0, "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disableForContainerOrApplication() - active apn - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v6, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "defaultType":Ljava/lang/String;
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disableForContainerOrApplication() - active apn defaultType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v6, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->clearActiveApnProfile(Ljava/lang/String;)I

    move-result v4

    .line 154
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disableForContainerOrApplication() - clearActiveApnProfile- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v6, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->clearEapnProfile(Ljava/lang/String;)I

    move-result v4

    .line 156
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disableForContainerOrApplication() - clear eapn profile - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-eqz v3, :cond_dd

    if-eqz v0, :cond_dd

    .line 159
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v0, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I

    move-result v5

    .line 160
    .local v5, "value":I
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disableForContainerOrApplication() - update active apn defualtType - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v3    # "defaultType":Ljava/lang/String;
    .end local v5    # "value":I
    :cond_dd
    :goto_dd
    const-string v6, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v6, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v1    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_e2
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disableForContainerOrApplication() - end - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    if-lez v4, :cond_11b

    const/4 v6, 0x1

    :goto_fe
    return v6

    .line 163
    .restart local v1    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v2    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_ff
    const/4 v4, 0x1

    goto :goto_dd

    .line 168
    .end local v1    # "appMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_101
    const-string v6, "EnterpriseBillingEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "disableApplicationOrContainer() - ERROR - Invalid profileName - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e2

    .line 171
    :cond_11b
    const/4 v6, 0x0

    goto :goto_fe
.end method

.method protected enableApplicationOrContainer(Ljava/lang/String;)Z
    .registers 9
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v4, "EnterpriseBillingEngine"

    const-string/jumbo v5, "enableForContainer() - start"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "returnValue":Z
    if-eqz p1, :cond_72

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_72

    .line 91
    iget-object v4, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v1

    .line 92
    .local v1, "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    if-eqz v1, :cond_57

    .line 93
    iget-object v4, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "eapnType":Ljava/lang/String;
    if-eqz v0, :cond_32

    .line 96
    invoke-virtual {p0, p1}, handleProfile(Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x1

    .line 123
    .end local v0    # "eapnType":Ljava/lang/String;
    .end local v1    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :goto_29
    const-string v4, "EnterpriseBillingEngine"

    const-string/jumbo v5, "enableForContainer() - end - "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return v2

    .line 99
    .restart local v0    # "eapnType":Ljava/lang/String;
    .restart local v1    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :cond_32
    iget-object v4, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAvailableEapn()Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_4d

    .line 102
    iget-object v4, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addEapnProfileMapping(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 103
    .local v3, "rows":I
    if-lez v3, :cond_4b

    const/4 v2, 0x1

    .line 104
    :goto_47
    invoke-virtual {p0, p1}, handleProfile(Ljava/lang/String;)V

    goto :goto_29

    .line 103
    :cond_4b
    const/4 v2, 0x0

    goto :goto_47

    .line 107
    .end local v3    # "rows":I
    :cond_4d
    const-string v4, "EnterpriseBillingEngine"

    const-string/jumbo v5, "enableForContainer() - ERROR - no eapn type available - "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x0

    goto :goto_29

    .line 114
    .end local v0    # "eapnType":Ljava/lang/String;
    :cond_57
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableForContainer() - ERROR - No such profile - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v2, 0x0

    goto :goto_29

    .line 119
    .end local v1    # "profile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    :cond_72
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enableForContainer() - ERROR - Invalid profileName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v2, 0x0

    goto :goto_29
.end method

.method public getApplicationsForConnection(Ljava/lang/String;)Ljava/util/List;
    .registers 23
    .param p1, "eapnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    const-string v18, "EnterpriseBillingEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getApplicationsForConnection - start : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 545
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 547
    .local v12, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz p1, :cond_fa

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-lez v18, :cond_fa

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 549
    .local v14, "profileName":Ljava/lang/String;
    if-eqz v14, :cond_117

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v9

    .line 551
    .local v9, "isProfileActive":Z
    if-eqz v9, :cond_117

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getApplicationsUsingProfile(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 554
    .local v2, "applications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v2, :cond_b1

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_b1

    .line 555
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 556
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 558
    .local v3, "containerId":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 559
    .local v11, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_6e

    .line 560
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_90
    :goto_90
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 562
    .local v13, "packageName":Ljava/lang/String;
    const/4 v15, -0x1

    .line 564
    .local v15, "uid":I
    :try_start_9d
    invoke-virtual {v12, v13, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_a0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9d .. :try_end_a0} :catch_133

    move-result v15

    .line 568
    :goto_a1
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v15, v0, :cond_90

    .line 569
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_90

    .line 576
    .end local v3    # "containerId":I
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v11    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v15    # "uid":I
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getVpnEngineDetailsForBillingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 578
    .local v16, "vpnEngines":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    if-eqz v16, :cond_117

    .line 579
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_c3
    :goto_c3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_117

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;

    .line 581
    .local v5, "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    :try_start_cf
    iget-object v0, v5, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->enginePackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    iget v0, v5, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;->containerId:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v17

    .line 587
    .local v17, "vpnUid":I
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c3

    .line 588
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cf .. :try_end_f4} :catch_f5

    goto :goto_c3

    .line 590
    .end local v17    # "vpnUid":I
    :catch_f5
    move-exception v4

    .line 591
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_c3

    .line 599
    .end local v2    # "applications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "engine":Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "isProfileActive":Z
    .end local v14    # "profileName":Ljava/lang/String;
    .end local v16    # "vpnEngines":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper$EnterpriseBillingVpnEngineDetail;>;"
    :cond_fa
    const-string v18, "EnterpriseBillingEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getApplicationsForConnection Invalid parameter- "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_117
    const-string v18, "EnterpriseBillingEngine"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getApplicationsForConnection - end : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-object v10

    .line 565
    .restart local v2    # "applications":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "containerId":I
    .restart local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "isProfileActive":Z
    .restart local v11    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "profileName":Ljava/lang/String;
    .restart local v15    # "uid":I
    :catch_133
    move-exception v18

    goto/16 :goto_a1
.end method

.method public getContainersForConnection(Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "eapnType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    const-string v3, "EnterpriseBillingEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getContainersUsingProfile - start : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 520
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_56

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_56

    .line 521
    iget-object v3, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 522
    .local v2, "profileName":Ljava/lang/String;
    if-eqz v2, :cond_3c

    .line 523
    iget-object v3, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v0

    .line 524
    .local v0, "isProfileActive":Z
    if-eqz v0, :cond_3c

    .line 525
    iget-object v3, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 533
    .end local v0    # "isProfileActive":Z
    .end local v2    # "profileName":Ljava/lang/String;
    :cond_3c
    :goto_3c
    const-string v3, "EnterpriseBillingEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getContainersUsingProfile - end : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    return-object v1

    .line 529
    :cond_56
    const-string v3, "EnterpriseBillingEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getContainersUsingProfile Invalid parameter- "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c
.end method

.method public declared-synchronized getUidApnTypeMapping()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 407
    monitor-enter p0

    :try_start_1
    const-string v0, "EnterpriseBillingEngine"

    const-string v1, " - getUidApnTypeMapping - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    .line 409
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 407
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected handleAllprofiles()V
    .registers 9

    .prologue
    .line 174
    const-string v5, "EnterpriseBillingEngine"

    const-string/jumbo v6, "handleAllprofiles - start"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v5, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v5}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "profiles":[Ljava/lang/String;
    if-eqz v4, :cond_37

    .line 177
    const-string v5, "EnterpriseBillingEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handle - profile not null - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_2d
    if-ge v1, v2, :cond_37

    aget-object v3, v0, v1

    .line 180
    .local v3, "profileName":Ljava/lang/String;
    invoke-virtual {p0, v3}, handleProfile(Ljava/lang/String;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 183
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "profileName":Ljava/lang/String;
    :cond_37
    const-string v5, "EnterpriseBillingEngine"

    const-string/jumbo v6, "handleAllprofiles - end"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    return-void
.end method

.method protected handleProfile(Ljava/lang/String;)V
    .registers 15
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - start - individual profile - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    if-eqz p1, :cond_229

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_229

    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileAvailable(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_229

    .line 196
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - start - for profile - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getActiveApnForProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    move-result-object v0

    .line 200
    .local v0, "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getDefaultApnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 202
    .local v8, "oldDefaultApnType":Ljava/lang/String;
    if-eqz v0, :cond_77

    if-nez v8, :cond_77

    .line 203
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getDefaultType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Ljava/lang/String;

    move-result-object v8

    .line 204
    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1, v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->setDefaultApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 205
    .local v6, "isSetDefaulType":Z
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - default apn type set for profile - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v6    # "isSetDefaulType":Z
    :cond_77
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - current active apn for profile - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", and current default type - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getCurrentActiveApns(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 211
    .local v1, "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - current telephony active apns - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedEapn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "eapnType":Ljava/lang/String;
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - Eapntype of current profile from service storage - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-eqz v1, :cond_1a2

    .line 218
    if-eqz v0, :cond_e2

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1ca

    .line 223
    :cond_e2
    const-string v10, "EnterpriseBillingEngine"

    const-string/jumbo v11, "handle - apn should be changed"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1, v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getMatchingApn(Ljava/lang/String;Ljava/util/List;)Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    move-result-object v3

    .line 227
    .local v3, "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - matching apn from policy storage for active telephony apns - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v3, :cond_1c4

    .line 233
    if-eqz v8, :cond_121

    if-eqz v0, :cond_121

    .line 234
    const-string v10, "EnterpriseBillingEngine"

    const-string/jumbo v11, "handle - changed current apn to its defaulttype in telephony db"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v0, v8}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I

    .line 236
    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->deleteActiveProfileApn(Ljava/lang/String;)Z

    .line 239
    :cond_121
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getDefaultType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Ljava/lang/String;

    move-result-object v7

    .line 241
    .local v7, "newDefaultApnType":Ljava/lang/String;
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - default apn type of new eapn - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->addActiveApnToProfile(Ljava/lang/String;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Z

    move-result v5

    .line 245
    .local v5, "isAddedActiveApn":Z
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - added active apn for profile - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v10, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v10, p1, v7}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->setDefaultApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 249
    .restart local v6    # "isSetDefaulType":Z
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - default apn type set for profile - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v3, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I

    move-result v9

    .line 253
    .local v9, "update":I
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - update eapn type of new eapn in telephony db - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v10, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v10, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v3    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v5    # "isAddedActiveApn":Z
    .end local v6    # "isSetDefaulType":Z
    .end local v7    # "newDefaultApnType":Ljava/lang/String;
    .end local v9    # "update":I
    :cond_1a2
    :goto_1a2
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - end - for profile - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v1    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .end local v4    # "eapnType":Ljava/lang/String;
    .end local v8    # "oldDefaultApnType":Ljava/lang/String;
    :goto_1bb
    const-string v10, "EnterpriseBillingEngine"

    const-string/jumbo v11, "handle - end - "

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void

    .line 257
    .restart local v0    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .restart local v1    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .restart local v3    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .restart local v4    # "eapnType":Ljava/lang/String;
    .restart local v8    # "oldDefaultApnType":Ljava/lang/String;
    :cond_1c4
    const-string v10, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v10, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a2

    .line 264
    .end local v3    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    :cond_1ca
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->getDefaultType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "defaultApnType":Ljava/lang/String;
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - for active apn, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", the apntype is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    if-eqz v2, :cond_1fb

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_220

    .line 271
    :cond_1fb
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v0, v4}, Lcom/android/server/enterprise/billing/EnterpriseBillingTelephonyInterface;->updateApnType(Landroid/content/Context;Lcom/sec/enterprise/knox/billing/EnterpriseApn;Ljava/lang/String;)I

    move-result v9

    .line 273
    .restart local v9    # "update":I
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "handle - update apntype of active apn in telephony db - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v9    # "update":I
    :goto_21a
    const-string v10, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v10, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a2

    .line 276
    :cond_220
    const-string v10, "EnterpriseBillingEngine"

    const-string/jumbo v11, "handle - current apn is sufficient"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21a

    .line 287
    .end local v0    # "apn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v1    # "apns":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .end local v2    # "defaultApnType":Ljava/lang/String;
    .end local v4    # "eapnType":Ljava/lang/String;
    .end local v8    # "oldDefaultApnType":Ljava/lang/String;
    :cond_229
    const-string v10, "EnterpriseBillingEngine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Either profile name is invalid or This profile no longer exists in the entries, but still mapping is kept - error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1bb
.end method

.method protected informMappingChanged(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 500
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "informMappingChanged - start - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    .line 502
    const-string v0, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v0, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_15
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "informMappingChanged - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    return-void

    .line 504
    :cond_1e
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "informMappingChanged - Invalid parameter - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public isEnterpriseAPN(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22
    .param p1, "apnName"    # Ljava/lang/String;
    .param p2, "mcc"    # Ljava/lang/String;
    .param p3, "mnc"    # Ljava/lang/String;

    .prologue
    .line 674
    const-string v13, "EnterpriseBillingEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isEnterpriseAPN - Start: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 v12, 0x0

    .line 681
    .local v12, "returnValue":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 683
    .local v14, "token":J
    :try_start_40
    move-object/from16 v0, p0

    iget-object v13, v0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    if-eqz v13, :cond_fb

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_fb

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_fb

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_fb

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v13}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getCurrentActiveProfiles()[Ljava/lang/String;

    move-result-object v4

    .line 688
    .local v4, "activeProfileNameArray":[Ljava/lang/String;
    if-eqz v4, :cond_fb

    array-length v13, v4

    if-lez v13, :cond_fb

    .line 689
    move-object v6, v4

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .local v10, "i$":I
    :goto_69
    if-ge v10, v11, :cond_fb

    aget-object v3, v6, v10

    .line 690
    .local v3, "activeProfileName":Ljava/lang/String;
    const-string v13, "EnterpriseBillingEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isEnterpriseAPN - checking active profile - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    move-object/from16 v0, p0

    iget-object v13, v0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getProfile(Ljava/lang/String;)Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;

    move-result-object v2

    .line 692
    .local v2, "activeProfile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    if-eqz v2, :cond_f8

    move-object/from16 v0, p0

    iget-object v13, v0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f8

    .line 693
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;->getApnsFromProfile()Ljava/util/List;

    move-result-object v5

    .line 694
    .local v5, "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    if-eqz v5, :cond_f8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_f8

    .line 695
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v10    # "i$":I
    .local v9, "i$":Ljava/util/Iterator;
    :cond_ae
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;

    .line 696
    .local v8, "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    const-string v13, "EnterpriseBillingEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isEnterpriseAPN - found enterprise apn - "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v13, v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->apn:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ae

    iget-object v13, v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mcc:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_ae

    iget-object v13, v8, Lcom/sec/enterprise/knox/billing/EnterpriseApn;->mnc:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_f4} :catch_121
    .catchall {:try_start_40 .. :try_end_f4} :catchall_143

    move-result v13

    if-eqz v13, :cond_ae

    .line 698
    const/4 v12, 0x1

    .line 704
    .end local v5    # "apnList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/billing/EnterpriseApn;>;"
    .end local v8    # "eapn":Lcom/sec/enterprise/knox/billing/EnterpriseApn;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_f8
    const/4 v13, 0x1

    if-ne v12, v13, :cond_11c

    .line 713
    .end local v2    # "activeProfile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .end local v3    # "activeProfileName":Ljava/lang/String;
    .end local v4    # "activeProfileNameArray":[Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v11    # "len$":I
    :cond_fb
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    :goto_fe
    const-string v13, "EnterpriseBillingEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isEnterpriseAPN - End: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    return v12

    .line 689
    .restart local v2    # "activeProfile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .restart local v3    # "activeProfileName":Ljava/lang/String;
    .restart local v4    # "activeProfileNameArray":[Ljava/lang/String;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v11    # "len$":I
    :cond_11c
    add-int/lit8 v9, v10, 0x1

    .local v9, "i$":I
    move v10, v9

    .end local v9    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_69

    .line 710
    .end local v2    # "activeProfile":Lcom/sec/enterprise/knox/billing/EnterpriseBillingProfile;
    .end local v3    # "activeProfileName":Ljava/lang/String;
    .end local v4    # "activeProfileNameArray":[Ljava/lang/String;
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    :catch_121
    move-exception v7

    .line 711
    .local v7, "e":Ljava/lang/Exception;
    :try_start_122
    const-string v13, "EnterpriseBillingEngine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "isEnterpriseAPN - failed -"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13f
    .catchall {:try_start_122 .. :try_end_13f} :catchall_143

    .line 713
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_fe

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_143
    move-exception v13

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
.end method

.method protected isPrimarySimDataActive()Z
    .registers 5

    .prologue
    .line 357
    const-string v1, "EnterpriseBillingEngine"

    const-string/jumbo v2, "isPrimarySimDataActive - start - "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 359
    .local v0, "slotId":I
    const-string v1, "EnterpriseBillingEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPrimarySimDataActive - slotId - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    if-nez v0, :cond_2f

    const/4 v1, 0x1

    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public isRoamingAllowed(Ljava/lang/String;)Z
    .registers 7
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    .line 438
    const/4 v1, 0x0

    .line 439
    .local v1, "returnValue":Z
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRoamingAllowed - start - eapn - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6b

    .line 441
    iget-object v2, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_62

    .line 443
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRoamingAllowed - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isRoamingAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 452
    .end local v0    # "profileName":Ljava/lang/String;
    :goto_49
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isRoamingAllowed - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    return v1

    .line 446
    .restart local v0    # "profileName":Ljava/lang/String;
    :cond_62
    const-string v2, "EnterpriseBillingEngine"

    const-string/jumbo v3, "isRoamingAllowed - Error no profile matching eapnType"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 450
    .end local v0    # "profileName":Ljava/lang/String;
    :cond_6b
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isRoamingAllowed - Invalid eapnType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method public isSplitBillingEnabled(Ljava/lang/String;)Z
    .registers 7
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    .line 369
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isSplitBillingEnabled - start - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v1, 0x0

    .line 371
    .local v1, "returnValue":Z
    if-eqz p1, :cond_66

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_66

    invoke-virtual {p0}, isPrimarySimDataActive()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 372
    iget-object v2, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "profileName":Ljava/lang/String;
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - profileName - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    if-eqz v0, :cond_4d

    .line 375
    iget-object v2, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileActive(Ljava/lang/String;)Z

    move-result v1

    .line 380
    .end local v0    # "profileName":Ljava/lang/String;
    :cond_4d
    :goto_4d
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isSplitBillingEnabled - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return v1

    .line 378
    :cond_66
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isSplitBillingEnabled - Invalid eapnType - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method public isTurnedOn(Ljava/lang/String;)Z
    .registers 7
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    .line 387
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - start - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x0

    .line 389
    .local v1, "returnValue":Z
    if-eqz p1, :cond_66

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_66

    .line 390
    iget-object v2, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4d

    .line 392
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    iget-object v2, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isProfileTurnedOn(Ljava/lang/String;)Z

    move-result v1

    .line 399
    .end local v0    # "profileName":Ljava/lang/String;
    :cond_4d
    :goto_4d
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v1

    .line 397
    :cond_66
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isTurnedOn - Error Invalid eapnType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method public isWifiFallbackAllowed(Ljava/lang/String;)Z
    .registers 7
    .param p1, "eapnType"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, "returnValue":Z
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWifiFallbackAllowed - start - eapn - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz p1, :cond_6b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6b

    .line 418
    iget-object v2, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    .local v0, "profileName":Ljava/lang/String;
    if-eqz v0, :cond_62

    .line 420
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWifiFallbackAllowed - profile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v2, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v2, v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->isWifiFallbackAllowed(Ljava/lang/String;)Z

    move-result v1

    .line 430
    .end local v0    # "profileName":Ljava/lang/String;
    :goto_49
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - isWifiFallbackAllowed - end - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v1

    .line 423
    .restart local v0    # "profileName":Ljava/lang/String;
    :cond_62
    const-string v2, "EnterpriseBillingEngine"

    const-string/jumbo v3, "isWifiFallbackAllowed - Error no profile matching eapnType"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49

    .line 428
    .end local v0    # "profileName":Ljava/lang/String;
    :cond_6b
    const-string v2, "EnterpriseBillingEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWifiFallbackAllowed - Error Invalid eapnType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method protected profileActivationStatusChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 510
    const-string v0, "com.android.server.enterprise.billing.mapping_modified"

    invoke-direct {p0, v0, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public removeAllUidByTAG(Ljava/lang/String;)Z
    .registers 4
    .param p1, "tagName"    # Ljava/lang/String;

    .prologue
    .line 662
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "removeAllUidByTAG - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v0, 0x0

    return v0
.end method

.method public removeContainerFromExceptionList(Ljava/lang/String;I)I
    .registers 6
    .param p1, "callerId"    # Ljava/lang/String;
    .param p2, "containerId"    # I

    .prologue
    .line 494
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeContainerFromExceptionList called by VPN inside enterpriseBillingService for container- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/4 v0, 0x0

    return v0
.end method

.method public removeUIDListFromExceptionList(Ljava/lang/String;Ljava/util/Map;)I
    .registers 5
    .param p1, "callerId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 483
    .local p2, "packageUidMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "removeUIDListFromExceptionList called by VPN inside enterpriseBillingService for packages"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public sendNotification(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "mobileNetworkType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 613
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendNotification - start - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_28

    .line 640
    :cond_27
    :goto_27
    return-void

    .line 621
    :cond_28
    const-string/jumbo v4, "ent1"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    const-string/jumbo v4, "ent2"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 623
    :cond_3a
    iget-object v4, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, p2}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getAssignedProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 624
    .local v3, "profileName":Ljava/lang/String;
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendNotification - profileName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    if-eqz v3, :cond_c7

    .line 626
    iget-object v4, p0, ebPolicyStorageHelper:Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyStorageHelper;->getContainersUsingProfile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 627
    .local v1, "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendNotification - containers - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    if-eqz v1, :cond_c7

    .line 629
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 630
    .local v0, "containerId":I
    iget-object v4, p0, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 631
    const-string v4, "EnterpriseBillingEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendNotification - Broadcast sent to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 636
    .end local v0    # "containerId":I
    .end local v1    # "containers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "profileName":Ljava/lang/String;
    :cond_b4
    const-string v4, "EnterpriseBillingEngine"

    const-string/jumbo v5, "sendNotification - personal user"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v4, p0, mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 639
    :cond_c7
    const-string v4, "EnterpriseBillingEngine"

    const-string/jumbo v5, "sendNotification - end"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27
.end method

.method protected turnOn(Ljava/lang/String;)V
    .registers 5
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    .line 296
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOn - start - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2f

    .line 298
    const-string v0, "com.android.server.enterprise.billing.profile_turn_on_status_modified"

    invoke-direct {p0, v0, p1}, sendEventToRIL(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :goto_26
    const-string v0, "EnterpriseBillingEngine"

    const-string/jumbo v1, "turnOn - end - "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-void

    .line 300
    :cond_2f
    const-string v0, "EnterpriseBillingEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOn - Invalid Profile Name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26
.end method
