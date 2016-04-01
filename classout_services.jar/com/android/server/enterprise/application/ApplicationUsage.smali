.class public Lcom/android/server/enterprise/application/ApplicationUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationUsage$1;,
        Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;,
        Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationUsage"

.field private static appBackGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static appForeGroundStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;",
            ">;"
        }
    .end annotation
.end field

.field private static mStatsLock:Ljava/lang/Object;

.field private static mUsageHandler:Landroid/os/Handler;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v1, appForeGroundStats:Ljava/util/Map;

    if-nez v1, :cond_e

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, appForeGroundStats:Ljava/util/Map;

    .line 78
    :cond_e
    sget-object v1, appBackGroundStats:Ljava/util/Map;

    if-nez v1, :cond_19

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, appBackGroundStats:Ljava/util/Map;

    .line 80
    :cond_19
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 82
    sget-object v1, mStatsLock:Ljava/lang/Object;

    if-nez v1, :cond_26

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, mStatsLock:Ljava/lang/Object;

    .line 85
    :cond_26
    sget-object v1, mUsageHandler:Landroid/os/Handler;

    if-nez v1, :cond_41

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MDMAppUsageHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 88
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 89
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage;Landroid/os/Looper;)V

    sput-object v1, mUsageHandler:Landroid/os/Handler;

    .line 91
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_41
    return-void
.end method

.method private calculateAvgPerMonth(ILjava/lang/String;I)I
    .registers 22
    .param p1, "launchCount"    # I
    .param p2, "packName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 521
    const/4 v4, 0x0

    .line 522
    .local v4, "avg":I
    if-eqz p1, :cond_63

    .line 523
    const/4 v13, 0x0

    .line 524
    .local v13, "totalMonth":I
    const/4 v7, 0x0

    .line 525
    .local v7, "installedMonth":I
    const/4 v10, 0x0

    .line 526
    .local v10, "installedYear":I
    const-string v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 527
    const-string v15, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 528
    .local v12, "packStr":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object p2, v12, v15

    .line 530
    .end local v12    # "packStr":[Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, getAppInstallTimeInMiliSec(Ljava/lang/String;I)J

    move-result-wide v8

    .line 531
    .local v8, "installedTime":J
    const-wide/16 v16, -0x1

    cmp-long v15, v16, v8

    if-eqz v15, :cond_37

    .line 532
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, getMonth(J)I

    move-result v7

    .line 533
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, getYear(J)I

    move-result v10

    .line 535
    :cond_37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, getYear(J)I

    move-result v6

    .line 536
    .local v6, "currentYear":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, getMonth(J)I

    move-result v5

    .line 537
    .local v5, "currentMonth":I
    if-eqz v7, :cond_5f

    if-eqz v10, :cond_5f

    .line 538
    if-le v6, v10, :cond_5a

    .line 539
    sub-int v14, v6, v10

    .line 540
    .local v14, "yearDiff":I
    mul-int/lit8 v15, v14, 0xc

    add-int/2addr v13, v15

    .line 542
    .end local v14    # "yearDiff":I
    :cond_5a
    if-le v5, v7, :cond_5f

    .line 543
    sub-int v11, v5, v7

    .line 544
    .local v11, "monthDiff":I
    add-int/2addr v13, v11

    .line 547
    .end local v11    # "monthDiff":I
    :cond_5f
    if-eqz v13, :cond_64

    .line 548
    div-int v4, p1, v13

    .line 552
    .end local v5    # "currentMonth":I
    .end local v6    # "currentYear":I
    .end local v7    # "installedMonth":I
    .end local v8    # "installedTime":J
    .end local v10    # "installedYear":I
    .end local v13    # "totalMonth":I
    :cond_63
    :goto_63
    return v4

    .line 550
    .restart local v5    # "currentMonth":I
    .restart local v6    # "currentYear":I
    .restart local v7    # "installedMonth":I
    .restart local v8    # "installedTime":J
    .restart local v10    # "installedYear":I
    .restart local v13    # "totalMonth":I
    :cond_64
    move/from16 v4, p1

    goto :goto_63
.end method

.method private filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;II)[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 12
    .param p1, "data"    # [Landroid/app/enterprise/AppInfoLastUsage;
    .param p2, "count"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v7, 0x1

    .line 556
    const/4 v1, 0x0

    .line 557
    .local v1, "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v4, 0x0

    .line 559
    .local v4, "installedApps":I
    const-string v6, "application_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 561
    .local v0, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-eqz p1, :cond_1f

    .line 562
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, p2, :cond_1f

    .line 563
    aget-object v6, p1, v3

    iget-object v6, v6, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v6, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v6

    if-ne v6, v7, :cond_1c

    .line 564
    add-int/lit8 v4, v4, 0x1

    .line 562
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 569
    .end local v3    # "i":I
    :cond_1f
    if-nez v4, :cond_23

    move-object v2, v1

    .line 581
    .end local v1    # "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    .local v2, "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    :goto_22
    return-object v2

    .line 572
    .end local v2    # "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    .restart local v1    # "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    :cond_23
    new-array v1, v4, [Landroid/app/enterprise/AppInfoLastUsage;

    .line 573
    if-eqz v1, :cond_3e

    .line 574
    const/4 v3, 0x0

    .restart local v3    # "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_29
    if-ge v3, p2, :cond_3e

    .line 575
    aget-object v6, p1, v3

    iget-object v6, v6, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v6, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;I)Z

    move-result v6

    if-ne v6, v7, :cond_3b

    .line 576
    aget-object v6, p1, v3

    aput-object v6, v1, v5

    .line 577
    add-int/lit8 v5, v5, 0x1

    .line 574
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .end local v3    # "i":I
    .end local v5    # "j":I
    :cond_3e
    move-object v2, v1

    .line 581
    .end local v1    # "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    .restart local v2    # "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    goto :goto_22
.end method

.method private getAppInstallTimeInMiliSec(Ljava/lang/String;I)J
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 488
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v6

    .line 489
    .local v6, "pm":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 491
    .local v8, "token":J
    const/16 v7, 0x80

    :try_start_e
    invoke-virtual {v6, p1, v7, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 492
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1f

    .line 493
    const-string v7, "ApplicationUsage"

    const-string v10, "ApplicationUsage::getAppInstallTimeInMiliSec @ fail to get application info"

    invoke-static {v7, v10}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1b} :catch_2e
    .catchall {:try_start_e .. :try_end_1b} :catchall_36

    .line 504
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1e
    return-wide v4

    .line 496
    .restart local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1f
    :try_start_1f
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 497
    .local v0, "appFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 498
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_29} :catch_2e
    .catchall {:try_start_1f .. :try_end_29} :catchall_36

    move-result-wide v4

    .line 504
    .local v4, "installedTime":J
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .line 500
    .end local v0    # "appFile":Ljava/lang/String;
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "installedTime":J
    :catch_2e
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_36

    .line 504
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_36
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private getMonth(J)I
    .registers 6
    .param p1, "timeInMilisec"    # J

    .prologue
    .line 509
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 510
    .local v0, "lCal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 511
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private getYear(J)I
    .registers 6
    .param p1, "timeInMiliSec"    # J

    .prologue
    .line 515
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 516
    .local v0, "lCal":Ljava/util/Calendar;
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 517
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private updateBackGroundUsageDetails()V
    .registers 12

    .prologue
    .line 296
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 297
    .local v0, "appDb":Lcom/android/server/enterprise/application/ApplicationUsageDb;
    sget-object v2, appBackGroundStats:Ljava/util/Map;

    if-eqz v2, :cond_6c

    .line 298
    sget-object v2, appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6c

    .line 299
    sget-object v2, appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 300
    .local v9, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 301
    .local v10, "listPackageToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, "key":Ljava/lang/String;
    sget-object v2, appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 304
    .local v6, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    iget-wide v2, v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_49

    .line 305
    iget-wide v2, v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    iget-wide v4, v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    .line 308
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 310
    :cond_49
    iget-wide v2, v6, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z

    goto :goto_22

    .line 315
    .end local v1    # "key":Ljava/lang/String;
    .end local v6    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    :cond_53
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_6c

    .line 316
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_6c

    .line 317
    sget-object v2, appBackGroundStats:Ljava/util/Map;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    add-int/lit8 v7, v7, 0x1

    goto :goto_5a

    .line 322
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "listPackageToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_6c
    return-void
.end method

.method private updateForeGroundUsageData()V
    .registers 13

    .prologue
    .line 268
    new-instance v1, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    .line 269
    .local v1, "appDb":Lcom/android/server/enterprise/application/ApplicationUsageDb;
    sget-object v3, appForeGroundStats:Ljava/util/Map;

    if-eqz v3, :cond_70

    .line 270
    sget-object v3, appForeGroundStats:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_70

    .line 271
    sget-object v3, appForeGroundStats:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 272
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v11, "listPackageToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 275
    .local v2, "key":Ljava/lang/String;
    sget-object v3, appForeGroundStats:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 276
    .local v0, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    iget-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4b

    .line 277
    iget v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    iget-wide v6, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    .line 279
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 281
    :cond_4b
    iget v3, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    iget-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z

    goto :goto_22

    .line 286
    .end local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    .end local v2    # "key":Ljava/lang/String;
    :cond_57
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_70

    .line 287
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_70

    .line 288
    sget-object v3, appForeGroundStats:Ljava/util/Map;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    add-int/lit8 v8, v8, 0x1

    goto :goto_5e

    .line 293
    .end local v8    # "i":I
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "listPackageToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_70
    return-void
.end method

.method private updateNetworkUsage()V
    .registers 3

    .prologue
    .line 263
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 264
    .local v0, "appService":Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->updateDataUsageDb()V

    .line 265
    return-void
.end method


# virtual methods
.method public _appLaunchCount(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 153
    sget-object v2, mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_3
    sget-object v1, appForeGroundStats:Ljava/util/Map;

    if-nez v1, :cond_9

    .line 155
    monitor-exit v2

    .line 172
    :goto_8
    return-void

    .line 158
    :cond_9
    sget-object v1, appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 159
    sget-object v1, appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 161
    .local v0, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    iget v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 163
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 171
    :goto_29
    monitor-exit v2

    goto :goto_8

    .end local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1

    .line 166
    :cond_2e
    :try_start_2e
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage$1;)V

    .line 167
    .restart local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    iget v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastLaunchTime:J

    .line 169
    sget-object v1, appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_45
    .catchall {:try_start_2e .. :try_end_45} :catchall_2b

    goto :goto_29
.end method

.method public _appPauseTime(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v2, mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 181
    :try_start_3
    sget-object v1, appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 182
    sget-object v1, appForeGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 184
    .local v0, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLastPausetime:J

    .line 187
    .end local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    :cond_19
    monitor-exit v2

    .line 188
    return-void

    .line 187
    :catchall_1b
    move-exception v1

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public _appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 10
    .param p1, "lServiceInfo"    # Landroid/app/ActivityManager$RunningServiceInfo;

    .prologue
    const-wide/16 v6, 0x0

    .line 195
    if-eqz p1, :cond_8

    sget-object v2, appBackGroundStats:Ljava/util/Map;

    if-nez v2, :cond_9

    .line 225
    :cond_8
    :goto_8
    return-void

    .line 201
    :cond_9
    iget-boolean v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v2, :cond_11

    iget v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v2, :cond_8

    .line 207
    :cond_11
    iget v2, p1, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_8

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, "packageName":Ljava/lang/String;
    sget-object v3, mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 212
    :try_start_3d
    sget-object v2, appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 213
    sget-object v2, appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 215
    .local v0, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    iget-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    cmp-long v2, v4, v6

    if-nez v2, :cond_59

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 218
    :cond_59
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 224
    :goto_5d
    monitor-exit v3

    goto :goto_8

    .end local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    :catchall_5f
    move-exception v2

    monitor-exit v3
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_5f

    throw v2

    .line 220
    :cond_62
    :try_start_62
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;-><init>(Lcom/android/server/enterprise/application/ApplicationUsage$1;)V

    .line 221
    .restart local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    .line 222
    sget-object v2, appBackGroundStats:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_73
    .catchall {:try_start_62 .. :try_end_73} :catchall_5f

    goto :goto_5d
.end method

.method public _appServiceStopTime(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 233
    sget-object v2, mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 234
    :try_start_3
    sget-object v1, appBackGroundStats:Ljava/util/Map;

    if-nez v1, :cond_9

    .line 235
    monitor-exit v2

    .line 242
    :goto_8
    return-void

    .line 237
    :cond_9
    sget-object v1, appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 238
    sget-object v1, appBackGroundStats:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;

    .line 239
    .local v0, "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    .line 241
    .end local v0    # "appControl":Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
    :cond_1f
    monitor-exit v2

    goto :goto_8

    :catchall_21
    move-exception v1

    monitor-exit v2
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public _insertToAppControlDB()V
    .registers 7

    .prologue
    .line 249
    const-string v1, "ApplicationUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating Usage Statistics in DB @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :try_start_1c
    sget-object v2, mStatsLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_49

    .line 252
    :try_start_1f
    invoke-direct {p0}, updateForeGroundUsageData()V

    .line 253
    invoke-direct {p0}, updateBackGroundUsageDetails()V

    .line 254
    invoke-direct {p0}, updateNetworkUsage()V

    .line 255
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_46

    .line 259
    :goto_29
    const-string v1, "ApplicationUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done Updating Usage Statistics in DB @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return-void

    .line 255
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    :try_start_48
    throw v1
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_49} :catch_49

    .line 256
    :catch_49
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public appLaunchCount(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    sget-object v0, mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method

.method public appPauseTime(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    sget-object v0, mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 177
    return-void
.end method

.method public appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V
    .registers 4
    .param p1, "lServiceInfo"    # Landroid/app/ActivityManager$RunningServiceInfo;

    .prologue
    .line 191
    sget-object v0, mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 192
    return-void
.end method

.method public appServiceStopTime(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    sget-object v0, mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    return-void
.end method

.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 472
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.sec.MDM_APP_MGMT"

    const-string v2, "ApplicationPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->deletePackageFromDb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllAppLastUsage(I)[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 15
    .param p1, "userId"    # I

    .prologue
    .line 329
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "android.permission.sec.MDM_APP_MGMT"

    const-string v12, "ApplicationPolicy"

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, _insertToAppControlDB()V

    .line 332
    const/4 v8, 0x0

    .line 333
    .local v8, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    const/4 v0, 0x0

    .line 334
    .local v0, "data":[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v1, 0x0

    .line 335
    .local v1, "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v3, 0x0

    .line 338
    .local v3, "i":I
    :try_start_10
    new-instance v10, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppUsageData()Ljava/util/HashMap;

    move-result-object v8

    .line 339
    if-eqz v8, :cond_75

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_75

    .line 340
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 341
    .local v6, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v10

    new-array v0, v10, [Landroid/app/enterprise/AppInfoLastUsage;

    .line 342
    const/4 v9, 0x0

    .line 343
    .local v9, "pkgUserId":I
    const/4 v7, 0x0

    .line 344
    .local v7, "keyString":[Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 345
    .local v5, "key":Ljava/lang/String;
    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 346
    const-string v10, ":"

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 347
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 353
    :goto_54
    if-ne v9, p1, :cond_33

    .line 356
    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/AppInfoLastUsage;

    aput-object v10, v0, v3

    .line 357
    aget-object v10, v0, v3

    const/4 v11, 0x0

    aget-object v11, v7, v11

    iput-object v11, v10, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    .line 358
    add-int/lit8 v3, v3, 0x1

    .line 359
    goto :goto_33

    .line 350
    :cond_68
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    .line 351
    const/4 v10, 0x0

    aput-object v5, v7, v10
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_6e} :catch_6f

    goto :goto_54

    .line 363
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v7    # "keyString":[Ljava/lang/String;
    .end local v9    # "pkgUserId":I
    :catch_6f
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    const/4 v10, 0x0

    .line 367
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_74
    return-object v10

    .line 361
    :cond_75
    if-eqz v0, :cond_7b

    .line 362
    :try_start_77
    invoke-direct {p0, v0, v3, p1}, filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;II)[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7a} :catch_6f

    move-result-object v1

    :cond_7b
    move-object v10, v1

    .line 367
    goto :goto_74
.end method

.method public getAvgNoAppUsagePerMonth(I)[Landroid/app/enterprise/AppInfoLastUsage;
    .registers 25
    .param p1, "userId"    # I

    .prologue
    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "android.permission.sec.MDM_APP_MGMT"

    const-string v22, "ApplicationPolicy"

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const/4 v4, 0x0

    .line 374
    .local v4, "data":[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v5, 0x0

    .line 375
    .local v5, "data1":[Landroid/app/enterprise/AppInfoLastUsage;
    const/4 v13, 0x0

    .line 376
    .local v13, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    .line 377
    .local v15, "map1":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 380
    .local v7, "i":I
    :try_start_12
    sget-object v21, mStatsLock:Ljava/lang/Object;

    monitor-enter v21
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_72

    .line 381
    :try_start_15
    const-string/jumbo v20, "getAvgNoUsagePerMonthOfApp=================="

    const-string v22, "called"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_1f2

    .line 383
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v14, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_26
    sget-object v20, appForeGroundStats:Ljava/util/Map;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 384
    .local v12, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v18

    .line 385
    .local v18, "size":I
    if-eqz v18, :cond_82

    .line 386
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_36
    :goto_36
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_82

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 387
    .local v9, "key":Ljava/lang/String;
    sget-object v20, appForeGroundStats:Ljava/util/Map;

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;

    .line 388
    .local v17, "pus":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    move/from16 v20, v0

    if-eqz v20, :cond_36

    .line 389
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;->appLaunchCount:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-direct {v0, v1, v9, v2}, calculateAvgPerMonth(ILjava/lang/String;I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6d
    .catchall {:try_start_26 .. :try_end_6d} :catchall_6e

    goto :goto_36

    .line 460
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17    # "pus":Lcom/android/server/enterprise/application/ApplicationUsage$AppForeGroundUsage;
    .end local v18    # "size":I
    :catchall_6e
    move-exception v20

    move-object v13, v14

    .end local v14    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_70
    :try_start_70
    monitor-exit v21
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_1f2

    :try_start_71
    throw v20
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_72} :catch_72

    .line 463
    :catch_72
    move-exception v6

    .line 464
    .local v6, "e":Ljava/lang/Exception;
    :goto_73
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 465
    const-string v20, "ApplicationUsage::getAvgNoAppUsagePerMonth"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/16 v20, 0x0

    .line 468
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_81
    return-object v20

    .line 392
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v18    # "size":I
    :cond_82
    :try_start_82
    new-instance v20, Lcom/android/server/enterprise/application/ApplicationUsageDb;

    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getLaunchCountOfAllApplication()Ljava/util/HashMap;

    move-result-object v15

    .line 394
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_168

    .line 395
    if-eqz v15, :cond_f8

    .line 396
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_f8

    .line 397
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 398
    .local v10, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_ab
    :goto_ab
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 399
    .restart local v9    # "key":Ljava/lang/String;
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e2

    .line 400
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 401
    .local v3, "count":I
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    add-int v19, v3, v20

    .line 403
    .local v19, "totalCount":I
    if-eqz v19, :cond_ab

    .line 404
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ab

    .line 406
    .end local v3    # "count":I
    .end local v19    # "totalCount":I
    :cond_e2
    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-eqz v20, :cond_ab

    .line 407
    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ab

    .line 412
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_f8
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 413
    .restart local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v4, v0, [Landroid/app/enterprise/AppInfoLastUsage;

    .line 414
    const/16 v16, 0x0

    .line 415
    .local v16, "pkgUserId":I
    const/4 v11, 0x0

    .line 416
    .local v11, "keyString":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_10b
    :goto_10b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1e0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 417
    .restart local v9    # "key":Ljava/lang/String;
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_15d

    .line 418
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 419
    const/16 v20, 0x1

    aget-object v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 425
    :goto_131
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_10b

    .line 427
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 428
    .restart local v3    # "count":I
    new-instance v20, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v20 .. v20}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    aput-object v20, v4, v7

    .line 429
    aget-object v20, v4, v7

    const/16 v22, 0x0

    aget-object v22, v11, v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    .line 430
    aget-object v20, v4, v7

    move-object/from16 v0, v20

    iput v3, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    .line 431
    add-int/lit8 v7, v7, 0x1

    .line 432
    goto :goto_10b

    .line 422
    .end local v3    # "count":I
    :cond_15d
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/String;

    .line 423
    const/16 v20, 0x0

    aput-object v9, v11, v20

    goto :goto_131

    .line 434
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "keyString":[Ljava/lang/String;
    .end local v16    # "pkgUserId":I
    :cond_168
    if-eqz v15, :cond_1e0

    .line 435
    invoke-virtual {v15}, Ljava/util/HashMap;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_1e0

    .line 436
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 437
    .restart local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v4, v0, [Landroid/app/enterprise/AppInfoLastUsage;

    .line 438
    const/16 v16, 0x0

    .line 439
    .restart local v16    # "pkgUserId":I
    const/4 v11, 0x0

    .line 440
    .restart local v11    # "keyString":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_183
    :goto_183
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1e0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 441
    .restart local v9    # "key":Ljava/lang/String;
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1d5

    .line 442
    const-string v20, ":"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 443
    const/16 v20, 0x1

    aget-object v20, v11, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 449
    :goto_1a9
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_183

    .line 451
    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 452
    .restart local v3    # "count":I
    new-instance v20, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v20 .. v20}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    aput-object v20, v4, v7

    .line 453
    aget-object v20, v4, v7

    const/16 v22, 0x0

    aget-object v22, v11, v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    .line 454
    aget-object v20, v4, v7

    move-object/from16 v0, v20

    iput v3, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLaunchCountPerMonth:I

    .line 455
    add-int/lit8 v7, v7, 0x1

    .line 456
    goto :goto_183

    .line 446
    .end local v3    # "count":I
    :cond_1d5
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v11, v0, [Ljava/lang/String;

    .line 447
    const/16 v20, 0x0

    aput-object v9, v11, v20

    goto :goto_1a9

    .line 460
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "keyString":[Ljava/lang/String;
    .end local v16    # "pkgUserId":I
    :cond_1e0
    monitor-exit v21
    :try_end_1e1
    .catchall {:try_start_82 .. :try_end_1e1} :catchall_6e

    .line 461
    :try_start_1e1
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v7, v1}, filterUnInstalledApps([Landroid/app/enterprise/AppInfoLastUsage;II)[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1e1 .. :try_end_1e8} :catch_1ee

    move-result-object v5

    move-object v13, v14

    .end local v14    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v20, v5

    .line 468
    goto/16 :goto_81

    .line 463
    .end local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v14    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_1ee
    move-exception v6

    move-object v13, v14

    .end local v14    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v13    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto/16 :goto_73

    .line 460
    .end local v12    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18    # "size":I
    :catchall_1f2
    move-exception v20

    goto/16 :goto_70
.end method

.method public getLastUsageTime(Ljava/lang/String;)J
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 325
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public insertToAppControlDB()V
    .registers 3

    .prologue
    .line 245
    sget-object v0, mUsageHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 246
    return-void
.end method
