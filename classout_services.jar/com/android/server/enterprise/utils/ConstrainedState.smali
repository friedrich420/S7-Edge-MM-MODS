.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    }
.end annotation


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final CONSTRAINED_TYPE_NORMALv3:Ljava/lang/String; = "normalv3"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/enterprise/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, CONSTRAINED_DELIMITER:[B

    .line 67
    const/4 v0, 0x0

    sput-object v0, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    .line 50
    :array_c
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, DEBUG:Z

    .line 64
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 65
    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, cachedConstrainedData:Ljava/util/HashMap;

    .line 72
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v3, p0, DEBUG:Z

    .line 64
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 65
    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, cachedConstrainedData:Ljava/util/HashMap;

    .line 72
    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 86
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 87
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-direct {p0, v3}, updateConstrainedStateData(Z)V

    .line 94
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v1

    iput-object v1, p0, mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 96
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/ConstrainedState;

    .prologue
    .line 48
    invoke-direct {p0}, updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/ConstrainedState;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1}, updateConstrainedStateData(Z)V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .registers 21
    .param p1, "adminUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 523
    const/4 v14, 0x1

    .line 524
    .local v14, "ret":Z
    const/4 v8, 0x0

    .line 525
    .local v8, "changed":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 527
    .local v16, "token":J
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v2, :cond_79

    .line 528
    move-object/from16 v0, p0

    iget-object v2, v0, cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 529
    .local v12, "it":Ljava/util/Iterator;
    :cond_18
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 530
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 531
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnrollData;

    .line 532
    .local v9, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 533
    const-string v2, "ConstrainedState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    new-instance v11, Ljava/io/File;

    const-string v2, "/efs/constrained"

    invoke-direct {v11, v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ConstrainedStateTable"

    const-string/jumbo v4, "status"

    const/4 v5, 0x1

    move/from16 v0, p1

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 542
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 543
    const/4 v14, 0x1

    .line 544
    const/4 v8, 0x1

    .line 550
    .end local v9    # "data":Landroid/app/enterprise/EnrollData;
    .end local v11    # "file":Ljava/io/File;
    .end local v12    # "it":Ljava/util/Iterator;
    .end local v13    # "key":Ljava/lang/String;
    :cond_79
    const/4 v2, 0x1

    if-ne v8, v2, :cond_82

    .line 551
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, updateConstrainedStateData(Z)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_82} :catch_8d
    .catchall {:try_start_6 .. :try_end_82} :catchall_96

    .line 557
    :cond_82
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 560
    :goto_85
    const-string v2, "ConstrainedState"

    const-string v3, "No data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    return v14

    .line 553
    :catch_8d
    move-exception v10

    .line 554
    .local v10, "e":Ljava/lang/Exception;
    :try_start_8e
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_91
    .catchall {:try_start_8e .. :try_end_91} :catchall_96

    .line 555
    const/4 v14, 0x0

    .line 557
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_85

    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_96
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pkgInst"    # Landroid/content/pm/PackageParser$Package;

    .prologue
    .line 764
    new-instance v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    invoke-direct {v4}, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;-><init>()V

    .line 766
    .local v4, "pkg":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz p2, :cond_4e

    .line 768
    :try_start_7
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 769
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v7, :cond_13

    .line 770
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 772
    :cond_13
    iget-object v7, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4d

    .line 773
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .local v0, "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1b
    if-ge v2, v3, :cond_4d

    aget-object v6, v0, v2

    .line 774
    .local v6, "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_2b

    .line 773
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 777
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :catch_2b
    move-exception v1

    .line 778
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "ConstrainedState"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v7, "ConstrainedState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4d
    :goto_4d
    return-object v4

    .line 783
    :cond_4e
    if-nez p1, :cond_88

    const-string p1, ""

    .line 784
    :goto_52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_4d

    .line 786
    :try_start_58
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x1040

    invoke-virtual {v7, p1, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 788
    .local v5, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_4d

    .line 789
    iput-object p1, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    .line 790
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v7, :cond_70

    .line 791
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->permissions:Ljava/util/List;

    .line 793
    :cond_70
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_4d

    .line 794
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .restart local v0    # "arr$":[Landroid/content/pm/Signature;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_78
    if-ge v2, v3, :cond_4d

    aget-object v6, v0, v2

    .line 795
    .restart local v6    # "sig":Landroid/content/pm/Signature;
    iget-object v7, v4, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_85} :catch_8d

    .line 794
    add-int/lit8 v2, v2, 0x1

    goto :goto_78

    .line 783
    .end local v0    # "arr$":[Landroid/content/pm/Signature;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sig":Landroid/content/pm/Signature;
    :cond_88
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_52

    .line 799
    :catch_8d
    move-exception v1

    .line 800
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 801
    const-string v7, "ConstrainedState"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnrollData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 573
    .local v6, "token":J
    :try_start_4
    iget-object v5, p0, cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v5, :cond_42

    .line 574
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    iget-object v5, p0, cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 576
    .local v2, "it":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 577
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 578
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 579
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_2f
    .catchall {:try_start_4 .. :try_end_2e} :catchall_46

    goto :goto_17

    .line 584
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :catch_2f
    move-exception v1

    .line 585
    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_46

    .line 587
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 590
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    const/4 v4, 0x0

    :goto_37
    return-object v4

    .line 581
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :cond_38
    :try_start_38
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_2f
    .catchall {:try_start_38 .. :try_end_3b} :catchall_46

    move-result v5

    if-nez v5, :cond_42

    .line 587
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :cond_42
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_36

    :catchall_46
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 128
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 131
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    sget-object v0, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_b

    .line 120
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 123
    :cond_b
    sget-object v0, mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isMatch([B[BI)Z
    .registers 8
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .param p3, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 225
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_16

    .line 226
    add-int v2, p3, v0

    array-length v3, p2

    if-lt v2, v3, :cond_b

    .line 233
    :cond_a
    :goto_a
    return v1

    .line 229
    :cond_b
    aget-byte v2, p1, v0

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_a

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 233
    :cond_16
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "targetPkgName"    # Ljava/lang/String;
    .param p5, "enabled"    # Z

    .prologue
    const v6, 0x1040b4f

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_ConstrainedNoti"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "noti_tag":Ljava/lang/String;
    if-eqz p5, :cond_bb

    .line 194
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 195
    .local v0, "builder":Landroid/app/Notification$Builder;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 196
    const v3, 0x10805dd

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 197
    iget-object v3, p0, mContext:Landroid/content/Context;

    const v4, 0x1040b9a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 198
    const-string v3, "DEFAULT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 199
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 200
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 205
    :goto_59
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 206
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 208
    if-eqz p3, :cond_99

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_99

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    if-eqz p4, :cond_8b

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8b

    .line 213
    const-string/jumbo v3, "targetPkgName"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :cond_8b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 218
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_99
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 222
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :goto_aa
    return-void

    .line 202
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_ab
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 203
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_59

    .line 220
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_bb
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_aa
.end method

.method private split([B[B)Ljava/util/List;
    .registers 7
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 237
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 238
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 239
    .local v0, "blockStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v3, p2

    if-ge v1, v3, :cond_1e

    .line 240
    invoke-direct {p0, p1, p2, v1}, isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 241
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    array-length v3, p1

    add-int v0, v1, v3

    .line 243
    move v1, v0

    .line 239
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 246
    :cond_1e
    array-length v3, p2

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-object v2
.end method

.method private updateConstrainedStateData(Z)V
    .registers 40
    .param p1, "Noti"    # Z

    .prologue
    .line 252
    const/16 v29, 0x0

    .line 254
    .local v29, "io":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v25, Ljava/util/HashMap;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v25, "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    const/4 v10, 0x2

    new-array v0, v10, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 257
    .local v20, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v20, v10

    .line 258
    const/4 v10, 0x1

    const-string/jumbo v11, "status"

    aput-object v11, v20, v10

    .line 260
    move-object/from16 v0, p0

    iget-object v10, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ConstrainedStateTable"

    const/4 v12, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v10, v11, v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v21

    .line 263
    .local v21, "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v23, Ljava/io/File;

    const-string v10, "/efs/constrained"

    move-object/from16 v0, v23

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v23, "dataDir":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v33

    .line 265
    .local v33, "listFiles":[Ljava/io/File;
    if-eqz v33, :cond_273

    .line 266
    move-object/from16 v18, v33

    .local v18, "arr$":[Ljava/io/File;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v32, v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_15b
    .catchall {:try_start_2 .. :try_end_3a} :catchall_242

    .local v32, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    move-object/from16 v30, v29

    .end local v29    # "io":Ljava/io/FileInputStream;
    .local v30, "io":Ljava/io/FileInputStream;
    :goto_3e
    move/from16 v0, v28

    move/from16 v1, v32

    if-ge v0, v1, :cond_271

    :try_start_44
    aget-object v27, v18, v28

    .line 267
    .local v27, "file":Ljava/io/File;
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_2b0

    .line 268
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    new-array v0, v10, [B

    move-object/from16 v19, v0

    .line 269
    .local v19, "buffer":[B
    new-instance v29, Ljava/io/FileInputStream;

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_5e} :catch_2ab
    .catchall {:try_start_44 .. :try_end_5e} :catchall_2a7

    .line 270
    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v29    # "io":Ljava/io/FileInputStream;
    :try_start_5e
    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v35

    .line 271
    .local v35, "readLen":I
    if-nez v35, :cond_70

    .line 272
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V

    .line 266
    .end local v19    # "buffer":[B
    .end local v35    # "readLen":I
    :goto_6b
    add-int/lit8 v28, v28, 0x1

    move-object/from16 v30, v29

    .end local v29    # "io":Ljava/io/FileInputStream;
    .restart local v30    # "io":Ljava/io/FileInputStream;
    goto :goto_3e

    .line 277
    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v19    # "buffer":[B
    .restart local v29    # "io":Ljava/io/FileInputStream;
    .restart local v35    # "readLen":I
    :cond_70
    sget-object v10, CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v10, v1}, split([B[B)Ljava/util/List;

    move-result-object v36

    .line 278
    .local v36, "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v37, 0x0

    .line 279
    .local v37, "type":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_a0

    .line 280
    new-instance v37, Ljava/lang/String;

    .end local v37    # "type":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    move-object/from16 v0, v37

    invoke-direct {v0, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 283
    .restart local v37    # "type":Ljava/lang/String;
    :cond_a0
    if-nez v37, :cond_b0

    .line 284
    const-string v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong // type is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :goto_aa
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V

    .line 359
    const/16 v29, 0x0

    goto :goto_6b

    .line 285
    :cond_b0
    const-string/jumbo v10, "normal"

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d1

    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d1

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_267

    .line 286
    :cond_d1
    const/4 v3, 0x0

    .line 287
    .local v3, "pkgName":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_100

    const/4 v10, 0x1

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    array-length v10, v10

    if-lez v10, :cond_100

    .line 288
    new-instance v3, Ljava/lang/String;

    .end local v3    # "pkgName":Ljava/lang/String;
    const/4 v10, 0x1

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    invoke-direct {v3, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 291
    .restart local v3    # "pkgName":Ljava/lang/String;
    :cond_100
    if-eqz v3, :cond_25d

    .line 292
    const/4 v4, 0x0

    .line 293
    .local v4, "comment":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_254

    .line 294
    new-instance v4, Ljava/lang/String;

    .end local v4    # "comment":Ljava/lang/String;
    const/4 v10, 0x2

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x2

    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    invoke-direct {v4, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 296
    .restart local v4    # "comment":Ljava/lang/String;
    const/4 v10, 0x3

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    .line 297
    .local v34, "policyBitMaskByteBuffer":[B
    const/4 v5, 0x0

    .line 298
    .local v5, "policyBitMask":I
    if-eqz v34, :cond_14f

    .line 299
    const/4 v10, 0x0

    aget-byte v10, v34, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    const/4 v11, 0x1

    aget-byte v11, v34, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x10

    or-int/2addr v10, v11

    const/4 v11, 0x2

    aget-byte v11, v34, v11

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    or-int/2addr v10, v11

    const/4 v11, 0x3

    aget-byte v11, v34, v11

    and-int/lit16 v11, v11, 0xff

    or-int v5, v10, v11

    .line 305
    :cond_14f
    if-gtz v5, :cond_16c

    .line 306
    const-string v10, "ConstrainedState"

    const-string/jumbo v11, "something\'s wrong"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_159} :catch_15b
    .catchall {:try_start_5e .. :try_end_159} :catchall_242

    goto/16 :goto_aa

    .line 371
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "comment":Ljava/lang/String;
    .end local v5    # "policyBitMask":I
    .end local v18    # "arr$":[Ljava/io/File;
    .end local v19    # "buffer":[B
    .end local v20    # "columns":[Ljava/lang/String;
    .end local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v23    # "dataDir":Ljava/io/File;
    .end local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v27    # "file":Ljava/io/File;
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    .end local v33    # "listFiles":[Ljava/io/File;
    .end local v34    # "policyBitMaskByteBuffer":[B
    .end local v35    # "readLen":I
    .end local v36    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v37    # "type":Ljava/lang/String;
    :catch_15b
    move-exception v24

    .line 372
    .local v24, "e":Ljava/lang/Exception;
    :goto_15c
    :try_start_15c
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    move-object/from16 v0, p0

    iget-object v10, v0, cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_166
    .catchall {:try_start_15c .. :try_end_166} :catchall_242

    .line 376
    if-eqz v29, :cond_16b

    .line 377
    :try_start_168
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_16b} :catch_2a2

    .line 382
    .end local v24    # "e":Ljava/lang/Exception;
    :cond_16b
    :goto_16b
    return-void

    .line 308
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "comment":Ljava/lang/String;
    .restart local v5    # "policyBitMask":I
    .restart local v18    # "arr$":[Ljava/io/File;
    .restart local v19    # "buffer":[B
    .restart local v20    # "columns":[Ljava/lang/String;
    .restart local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v23    # "dataDir":Ljava/io/File;
    .restart local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v27    # "file":Ljava/io/File;
    .restart local v28    # "i$":I
    .restart local v32    # "len$":I
    .restart local v33    # "listFiles":[Ljava/io/File;
    .restart local v34    # "policyBitMaskByteBuffer":[B
    .restart local v35    # "readLen":I
    .restart local v36    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v37    # "type":Ljava/lang/String;
    :cond_16c
    const/4 v6, 0x0

    .line 309
    .local v6, "downloadUrl":Ljava/lang/String;
    const/4 v9, 0x0

    .line 310
    .local v9, "targetPkgName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 311
    .local v8, "signature":[B
    :try_start_16f
    const-string/jumbo v10, "normalv2"

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_185

    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b0

    .line 312
    :cond_185
    const/4 v10, 0x4

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1a7

    .line 313
    new-instance v6, Ljava/lang/String;

    .end local v6    # "downloadUrl":Ljava/lang/String;
    const/4 v10, 0x4

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x4

    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    invoke-direct {v6, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 316
    .restart local v6    # "downloadUrl":Ljava/lang/String;
    :cond_1a7
    const/4 v10, 0x5

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "signature":[B
    check-cast v8, [B

    .line 318
    .restart local v8    # "signature":[B
    :cond_1b0
    const-string/jumbo v10, "normalv3"

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d4

    .line 319
    new-instance v9, Ljava/lang/String;

    .end local v9    # "targetPkgName":Ljava/lang/String;
    const/4 v10, 0x6

    move-object/from16 v0, v36

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    const/4 v12, 0x0

    const/4 v11, 0x6

    move-object/from16 v0, v36

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    array-length v11, v11

    invoke-direct {v9, v10, v12, v11}, Ljava/lang/String;-><init>([BII)V

    .line 321
    .restart local v9    # "targetPkgName":Ljava/lang/String;
    :cond_1d4
    new-instance v2, Landroid/app/enterprise/EnrollData;

    invoke-direct {v2}, Landroid/app/enterprise/EnrollData;-><init>()V

    .line 322
    .local v2, "data":Landroid/app/enterprise/EnrollData;
    const/4 v7, 0x0

    .line 323
    .local v7, "constrainedStatus":I
    if-eqz v21, :cond_223

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_223

    .line 324
    const/16 v22, 0x0

    .line 325
    .local v22, "cv":Landroid/content/ContentValues;
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .line 326
    .local v31, "it":Ljava/util/Iterator;
    :cond_1e8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_223

    .line 327
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "cv":Landroid/content/ContentValues;
    check-cast v22, Landroid/content/ContentValues;

    .line 328
    .restart local v22    # "cv":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 329
    .local v17, "adminUid":I
    const-string/jumbo v10, "status"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 330
    .local v26, "enrolled_state":I
    move-object/from16 v0, p0

    iget-object v10, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v16

    .line 331
    .local v16, "adminPkgName":Ljava/lang/String;
    if-eqz v16, :cond_1e8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e8

    .line 332
    move/from16 v7, v26

    .line 338
    .end local v16    # "adminPkgName":Ljava/lang/String;
    .end local v17    # "adminUid":I
    .end local v22    # "cv":Landroid/content/ContentValues;
    .end local v26    # "enrolled_state":I
    .end local v31    # "it":Ljava/util/Iterator;
    :cond_223
    invoke-virtual/range {v2 .. v9}, Landroid/app/enterprise/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V

    .line 339
    const/4 v10, 0x1

    move/from16 v0, p1

    if-ne v0, v10, :cond_237

    .line 340
    if-nez v7, :cond_249

    .line 341
    const/4 v15, 0x1

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    invoke-direct/range {v10 .. v15}, showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    :cond_237
    :goto_237
    invoke-virtual/range {v27 .. v27}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_240} :catch_15b
    .catchall {:try_start_16f .. :try_end_240} :catchall_242

    goto/16 :goto_aa

    .line 375
    .end local v2    # "data":Landroid/app/enterprise/EnrollData;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "comment":Ljava/lang/String;
    .end local v5    # "policyBitMask":I
    .end local v6    # "downloadUrl":Ljava/lang/String;
    .end local v7    # "constrainedStatus":I
    .end local v8    # "signature":[B
    .end local v9    # "targetPkgName":Ljava/lang/String;
    .end local v18    # "arr$":[Ljava/io/File;
    .end local v19    # "buffer":[B
    .end local v20    # "columns":[Ljava/lang/String;
    .end local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v23    # "dataDir":Ljava/io/File;
    .end local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v27    # "file":Ljava/io/File;
    .end local v28    # "i$":I
    .end local v32    # "len$":I
    .end local v33    # "listFiles":[Ljava/io/File;
    .end local v34    # "policyBitMaskByteBuffer":[B
    .end local v35    # "readLen":I
    .end local v36    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v37    # "type":Ljava/lang/String;
    :catchall_242
    move-exception v10

    .line 376
    :goto_243
    if-eqz v29, :cond_248

    .line 377
    :try_start_245
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_248
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_248} :catch_2a5

    .line 380
    :cond_248
    :goto_248
    throw v10

    .line 343
    .restart local v2    # "data":Landroid/app/enterprise/EnrollData;
    .restart local v3    # "pkgName":Ljava/lang/String;
    .restart local v4    # "comment":Ljava/lang/String;
    .restart local v5    # "policyBitMask":I
    .restart local v6    # "downloadUrl":Ljava/lang/String;
    .restart local v7    # "constrainedStatus":I
    .restart local v8    # "signature":[B
    .restart local v9    # "targetPkgName":Ljava/lang/String;
    .restart local v18    # "arr$":[Ljava/io/File;
    .restart local v19    # "buffer":[B
    .restart local v20    # "columns":[Ljava/lang/String;
    .restart local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v23    # "dataDir":Ljava/io/File;
    .restart local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v27    # "file":Ljava/io/File;
    .restart local v28    # "i$":I
    .restart local v32    # "len$":I
    .restart local v33    # "listFiles":[Ljava/io/File;
    .restart local v34    # "policyBitMaskByteBuffer":[B
    .restart local v35    # "readLen":I
    .restart local v36    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v37    # "type":Ljava/lang/String;
    :cond_249
    const/4 v15, 0x0

    move-object/from16 v10, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v6

    move-object v14, v9

    :try_start_250
    invoke-direct/range {v10 .. v15}, showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_237

    .line 349
    .end local v2    # "data":Landroid/app/enterprise/EnrollData;
    .end local v5    # "policyBitMask":I
    .end local v6    # "downloadUrl":Ljava/lang/String;
    .end local v7    # "constrainedStatus":I
    .end local v8    # "signature":[B
    .end local v9    # "targetPkgName":Ljava/lang/String;
    .end local v34    # "policyBitMaskByteBuffer":[B
    :cond_254
    const-string v10, "ConstrainedState"

    const-string v11, "comment is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 352
    .end local v4    # "comment":Ljava/lang/String;
    :cond_25d
    const-string v10, "ConstrainedState"

    const-string/jumbo v11, "package name is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .line 355
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_267
    const-string v10, "ConstrainedState"

    const-string/jumbo v11, "type is not normal"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_aa

    .end local v19    # "buffer":[B
    .end local v27    # "file":Ljava/io/File;
    .end local v29    # "io":Ljava/io/FileInputStream;
    .end local v35    # "readLen":I
    .end local v36    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v37    # "type":Ljava/lang/String;
    .restart local v30    # "io":Ljava/io/FileInputStream;
    :cond_271
    move-object/from16 v29, v30

    .line 364
    .end local v18    # "arr$":[Ljava/io/File;
    .end local v28    # "i$":I
    .end local v30    # "io":Ljava/io/FileInputStream;
    .end local v32    # "len$":I
    .restart local v29    # "io":Ljava/io/FileInputStream;
    :cond_273
    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_291

    .line 365
    const-string v10, "ConstrainedState"

    const-string v11, "Data is null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    move-object/from16 v0, p0

    iget-object v10, v0, cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V
    :try_end_287
    .catch Ljava/lang/Exception; {:try_start_250 .. :try_end_287} :catch_15b
    .catchall {:try_start_250 .. :try_end_287} :catchall_242

    .line 376
    :goto_287
    if-eqz v29, :cond_16b

    .line 377
    :try_start_289
    invoke-virtual/range {v29 .. v29}, Ljava/io/FileInputStream;->close()V
    :try_end_28c
    .catch Ljava/lang/Exception; {:try_start_289 .. :try_end_28c} :catch_28e

    goto/16 :goto_16b

    .line 379
    :catch_28e
    move-exception v10

    goto/16 :goto_16b

    .line 368
    :cond_291
    :try_start_291
    move-object/from16 v0, p0

    iget-object v10, v0, cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->clear()V

    .line 369
    move-object/from16 v0, p0

    iget-object v10, v0, cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_2a1} :catch_15b
    .catchall {:try_start_291 .. :try_end_2a1} :catchall_242

    goto :goto_287

    .line 379
    .end local v20    # "columns":[Ljava/lang/String;
    .end local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v23    # "dataDir":Ljava/io/File;
    .end local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v33    # "listFiles":[Ljava/io/File;
    .restart local v24    # "e":Ljava/lang/Exception;
    :catch_2a2
    move-exception v10

    goto/16 :goto_16b

    .end local v24    # "e":Ljava/lang/Exception;
    :catch_2a5
    move-exception v11

    goto :goto_248

    .line 375
    .end local v29    # "io":Ljava/io/FileInputStream;
    .restart local v18    # "arr$":[Ljava/io/File;
    .restart local v20    # "columns":[Ljava/lang/String;
    .restart local v21    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v23    # "dataDir":Ljava/io/File;
    .restart local v25    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v28    # "i$":I
    .restart local v30    # "io":Ljava/io/FileInputStream;
    .restart local v32    # "len$":I
    .restart local v33    # "listFiles":[Ljava/io/File;
    :catchall_2a7
    move-exception v10

    move-object/from16 v29, v30

    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v29    # "io":Ljava/io/FileInputStream;
    goto :goto_243

    .line 371
    .end local v29    # "io":Ljava/io/FileInputStream;
    .restart local v30    # "io":Ljava/io/FileInputStream;
    :catch_2ab
    move-exception v24

    move-object/from16 v29, v30

    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v29    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_15c

    .end local v29    # "io":Ljava/io/FileInputStream;
    .restart local v27    # "file":Ljava/io/File;
    .restart local v30    # "io":Ljava/io/FileInputStream;
    :cond_2b0
    move-object/from16 v29, v30

    .end local v30    # "io":Ljava/io/FileInputStream;
    .restart local v29    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_6b
.end method

.method private updateNotification()V
    .registers 14

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, getConstrainedStateAll()Ljava/util/List;

    move-result-object v10

    .line 152
    .local v10, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v10, :cond_3f

    .line 153
    const/4 v12, 0x0

    .line 154
    .local v12, "policyBitMask":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/EnrollData;

    .line 155
    .local v9, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-direct/range {v0 .. v5}, showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 156
    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v0

    if-nez v0, :cond_c

    .line 157
    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9}, Landroid/app/enterprise/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c

    .line 161
    .end local v9    # "data":Landroid/app/enterprise/EnrollData;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "policyBitMask":I
    :cond_3f
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .registers 6

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "constrainedMode":Z
    invoke-direct {p0}, getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v2, :cond_1e

    .line 139
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    .line 140
    .local v1, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_b

    .line 141
    const/4 v0, 0x1

    .line 147
    .end local v1    # "data":Landroid/app/enterprise/EnrollData;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1e
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 20
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 630
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "archiveFilePath":Ljava/lang/String;
    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    .line 636
    .local v11, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 637
    .local v14, "sourceFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 639
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    :try_start_10
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 640
    if-eqz v12, :cond_1a

    .line 641
    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_1a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_10 .. :try_end_1a} :catch_2c

    .line 651
    :cond_1a
    if-eqz p1, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_33

    .line 652
    :cond_22
    const-string v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_2a
    const/4 v15, 0x0

    :goto_2b
    return v15

    .line 643
    :catch_2c
    move-exception v7

    .line 644
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v12, 0x0

    .line 645
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 648
    const/4 v15, 0x0

    goto :goto_2b

    .line 654
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_33
    invoke-direct/range {p0 .. p0}, getConstrainedStateAll()Ljava/util/List;

    move-result-object v6

    .line 655
    .local v6, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v6, :cond_2a

    .line 656
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnrollData;

    .line 659
    .local v5, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3d

    .line 660
    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getSignature()[B

    move-result-object v9

    .line 661
    .local v9, "orig":[B
    if-nez v9, :cond_5d

    .line 664
    const/4 v15, 0x0

    goto :goto_2b

    .line 666
    :cond_5d
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .line 667
    .local v13, "s":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 668
    .local v10, "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    .line 671
    .local v2, "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz v2, :cond_3d

    .line 672
    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 673
    .local v3, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 674
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8e

    .line 675
    const-string v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v15, 0x1

    goto :goto_2b

    .line 678
    :cond_8e
    const-string v15, "ConstrainedState"

    const-string v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v15, 0x0

    goto :goto_2b
.end method

.method public checkSignatureTarget(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 20
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "archiveFilePath":Ljava/lang/String;
    new-instance v11, Landroid/content/pm/PackageParser;

    invoke-direct {v11}, Landroid/content/pm/PackageParser;-><init>()V

    .line 697
    .local v11, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 698
    .local v14, "sourceFile":Ljava/io/File;
    const/4 v12, 0x0

    .line 700
    .local v12, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    :try_start_10
    invoke-virtual {v11, v14, v15}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v12

    .line 701
    if-eqz v12, :cond_1a

    .line 702
    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_1a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_10 .. :try_end_1a} :catch_2c

    .line 712
    :cond_1a
    if-eqz p1, :cond_22

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_33

    .line 713
    :cond_22
    const-string v15, "ConstrainedState"

    const-string/jumbo v16, "something\'s wrong"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_2a
    const/4 v15, 0x0

    :goto_2b
    return v15

    .line 704
    :catch_2c
    move-exception v7

    .line 705
    .local v7, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v12, 0x0

    .line 706
    invoke-virtual {v7}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 709
    const/4 v15, 0x0

    goto :goto_2b

    .line 715
    .end local v7    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :cond_33
    invoke-direct/range {p0 .. p0}, getConstrainedStateAll()Ljava/util/List;

    move-result-object v6

    .line 716
    .local v6, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v6, :cond_2a

    .line 717
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnrollData;

    .line 720
    .local v5, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_3d

    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3d

    .line 721
    invoke-virtual {v5}, Landroid/app/enterprise/EnrollData;->getSignature()[B

    move-result-object v9

    .line 722
    .local v9, "orig":[B
    if-nez v9, :cond_63

    .line 725
    const/4 v15, 0x0

    goto :goto_2b

    .line 727
    :cond_63
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v9}, Ljava/lang/String;-><init>([B)V

    .line 728
    .local v13, "s":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 729
    .local v10, "origsig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 731
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, getApplicationPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;)Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;

    move-result-object v2

    .line 732
    .local v2, "appPkgInfo":Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;
    if-eqz v2, :cond_3d

    .line 733
    new-instance v3, Ljava/util/ArrayList;

    iget-object v15, v2, Lcom/android/server/enterprise/utils/ConstrainedState$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-direct {v3, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 734
    .local v3, "appSignatures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v10}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 735
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_94

    .line 736
    const-string v15, "ConstrainedState"

    const-string/jumbo v16, "signature check success"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v15, 0x1

    goto :goto_2b

    .line 739
    :cond_94
    const-string v15, "ConstrainedState"

    const-string v16, "Signature is different"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const/4 v15, 0x0

    goto :goto_2b
.end method

.method public cleanUpConstrainedState(I)V
    .registers 10
    .param p1, "adminUid"    # I

    .prologue
    .line 164
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 165
    .local v0, "callingUid":I
    if-eq p1, v0, :cond_f

    .line 168
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_DEVICE_ADMIN"

    const-string v7, "Only system or itself can remove an EDM admin"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 175
    const-string v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 176
    const-string v1, "adminUid"

    .line 178
    .local v1, "column":Ljava/lang/String;
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ConstrainedStateTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 180
    .local v4, "result":Landroid/content/ContentValues;
    if-eqz v4, :cond_40

    .line 181
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_3f

    .line 183
    invoke-direct {p0, p1, v3}, disableConstrainedStateInternal(ILjava/lang/String;)Z

    .line 187
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-void

    .line 185
    :cond_40
    const-string v5, "ConstrainedState"

    const-string v6, "constrained state will go on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public disableConstrainedState(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 565
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 566
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, "pkgName":Ljava/lang/String;
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 47
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "TargetPkgName"    # Ljava/lang/String;
    .param p5, "TargetSignature"    # Ljava/lang/String;
    .param p6, "PolicyBitMask"    # I

    .prologue
    .line 385
    invoke-direct/range {p0 .. p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v33

    const-string v36, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 387
    if-gtz p6, :cond_15

    .line 388
    const/16 v33, 0x0

    .line 519
    :goto_14
    return v33

    .line 391
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v36, v0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v23

    .line 393
    .local v23, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 395
    .local v34, "token":J
    :try_start_2d
    new-instance v8, Ljava/io/File;

    const-string v33, "/efs/constrained"

    move-object/from16 v0, v33

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 396
    .local v8, "dataDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v33

    if-nez v33, :cond_3f

    .line 397
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 400
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    if-eqz v33, :cond_94

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 402
    .local v13, "it":Ljava/util/Iterator;
    :cond_55
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_94

    .line 403
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 404
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnrollData;

    .line 405
    .local v7, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v7}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_55

    .line 406
    const-string v33, "ConstrainedState"

    const-string v36, "already existing values // update"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v10, Ljava/io/File;

    const-string v33, "/efs/constrained"

    move-object/from16 v0, v33

    invoke-direct {v10, v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    .local v10, "file":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_94} :catch_260
    .catchall {:try_start_2d .. :try_end_94} :catchall_2d7

    .line 414
    .end local v7    # "data":Landroid/app/enterprise/EnrollData;
    .end local v10    # "file":Ljava/io/File;
    .end local v13    # "it":Ljava/util/Iterator;
    .end local v14    # "key":Ljava/lang/String;
    :cond_94
    const/16 v17, 0x0

    .line 415
    .local v17, "os":Ljava/io/FileOutputStream;
    const/16 v19, 0x0

    .line 417
    .local v19, "outFile":Ljava/io/File;
    :try_start_98
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "_"

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 418
    .local v32, "temp":Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->hashCode()I

    move-result v33

    const v36, 0x7fffffff

    and-int v11, v33, v36

    .line 419
    .local v11, "hash":I
    new-instance v20, Ljava/io/File;

    const-string v33, "/efs/constrained"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d5
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_d5} :catch_30a
    .catchall {:try_start_98 .. :try_end_d5} :catchall_302

    .line 420
    .end local v19    # "outFile":Ljava/io/File;
    .local v20, "outFile":Ljava/io/File;
    :goto_d5
    :try_start_d5
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_f1

    .line 421
    add-int/lit8 v11, v11, 0x1

    .line 422
    new-instance v19, Ljava/io/File;

    const-string v33, "/efs/constrained"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v19

    move-object/from16 v1, v33

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    move-object/from16 v20, v19

    .end local v19    # "outFile":Ljava/io/File;
    .restart local v20    # "outFile":Ljava/io/File;
    goto :goto_d5

    .line 425
    :cond_f1
    const/16 v33, 0x4

    move/from16 v0, v33

    new-array v0, v0, [B

    move-object/from16 v25, v0

    const/16 v33, 0x0

    shr-int/lit8 v36, p6, 0x18

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v25, v33

    const/16 v33, 0x1

    shr-int/lit8 v36, p6, 0x10

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v25, v33

    const/16 v33, 0x2

    shr-int/lit8 v36, p6, 0x8

    move/from16 v0, v36

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v25, v33

    const/16 v33, 0x3

    move/from16 v0, p6

    int-to-byte v0, v0

    move/from16 v36, v0

    aput-byte v36, v25, v33

    .line 431
    .local v25, "policyBitMaskByteBuffer":[B
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12c
    .catch Ljava/lang/Exception; {:try_start_d5 .. :try_end_12c} :catch_30d
    .catchall {:try_start_d5 .. :try_end_12c} :catchall_305

    .line 433
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .local v18, "os":Ljava/io/FileOutputStream;
    if-eqz p4, :cond_219

    :try_start_12e
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_219

    .line 434
    const-string/jumbo v33, "normalv3"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 440
    :goto_142
    sget-object v33, CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 441
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 442
    sget-object v33, CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 443
    if-eqz p2, :cond_268

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_268

    .line 444
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 448
    :goto_172
    sget-object v33, CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 449
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 450
    if-eqz p3, :cond_1dd

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_1dd

    .line 451
    sget-object v33, CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 454
    if-eqz p4, :cond_277

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_277

    if-eqz p5, :cond_277

    .line 455
    new-instance v30, Landroid/content/pm/Signature;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 456
    .local v30, "targetSig":Landroid/content/pm/Signature;
    invoke-virtual/range {v30 .. v30}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v31

    .line 457
    .local v31, "targetSigBytes":[B
    sget-object v33, CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 458
    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 459
    sget-object v33, CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 460
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 487
    .end local v30    # "targetSig":Landroid/content/pm/Signature;
    .end local v31    # "targetSigBytes":[B
    :cond_1dd
    :goto_1dd
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->flush()V

    .line 488
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e3
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_1e3} :catch_231
    .catchall {:try_start_12e .. :try_end_1e3} :catchall_255

    .line 489
    const/16 v17, 0x0

    .line 491
    .end local v18    # "os":Ljava/io/FileOutputStream;
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    :try_start_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v36, v0

    const-string v37, "ConstrainedStateTable"

    const-string/jumbo v38, "status"

    const/16 v39, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v26

    .line 495
    .local v26, "ret":Z
    if-nez v26, :cond_2dc

    .line 496
    if-eqz v20, :cond_20d

    .line 497
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_1e5 .. :try_end_20d} :catch_30d
    .catchall {:try_start_1e5 .. :try_end_20d} :catchall_305

    .line 498
    :cond_20d
    const/16 v33, 0x0

    .line 507
    if-eqz v17, :cond_214

    .line 508
    :try_start_211
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_214} :catch_2d1
    .catchall {:try_start_211 .. :try_end_214} :catchall_2d7

    .line 516
    :cond_214
    :goto_214
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    .line 435
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .end local v26    # "ret":Z
    .restart local v18    # "os":Ljava/io/FileOutputStream;
    :cond_219
    if-eqz p3, :cond_245

    :try_start_21b
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_245

    .line 436
    const-string/jumbo v33, "normalv2"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_21b .. :try_end_22f} :catch_231
    .catchall {:try_start_21b .. :try_end_22f} :catchall_255

    goto/16 :goto_142

    .line 503
    :catch_231
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    move-object/from16 v17, v18

    .line 504
    .end local v11    # "hash":I
    .end local v18    # "os":Ljava/io/FileOutputStream;
    .end local v25    # "policyBitMaskByteBuffer":[B
    .end local v32    # "temp":Ljava/lang/String;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    :goto_236
    :try_start_236
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_239
    .catchall {:try_start_236 .. :try_end_239} :catchall_302

    .line 507
    if-eqz v17, :cond_23e

    .line 508
    :try_start_23b
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_23e} :catch_2f6
    .catchall {:try_start_23b .. :try_end_23e} :catchall_2d7

    .line 516
    :cond_23e
    :goto_23e
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    .end local v8    # "dataDir":Ljava/io/File;
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .end local v19    # "outFile":Ljava/io/File;
    :goto_241
    const/16 v33, 0x0

    goto/16 :goto_14

    .line 438
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "dataDir":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v18    # "os":Ljava/io/FileOutputStream;
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v25    # "policyBitMaskByteBuffer":[B
    .restart local v32    # "temp":Ljava/lang/String;
    :cond_245
    :try_start_245
    const-string/jumbo v33, "normal"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_253
    .catch Ljava/lang/Exception; {:try_start_245 .. :try_end_253} :catch_231
    .catchall {:try_start_245 .. :try_end_253} :catchall_255

    goto/16 :goto_142

    .line 506
    :catchall_255
    move-exception v33

    move-object/from16 v19, v20

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    move-object/from16 v17, v18

    .line 507
    .end local v11    # "hash":I
    .end local v18    # "os":Ljava/io/FileOutputStream;
    .end local v25    # "policyBitMaskByteBuffer":[B
    .end local v32    # "temp":Ljava/lang/String;
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    :goto_25a
    if-eqz v17, :cond_25f

    .line 508
    :try_start_25c
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_25f
    .catch Ljava/lang/Exception; {:try_start_25c .. :try_end_25f} :catch_2fc
    .catchall {:try_start_25c .. :try_end_25f} :catchall_2d7

    .line 511
    :cond_25f
    :goto_25f
    :try_start_25f
    throw v33
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_260} :catch_260
    .catchall {:try_start_25f .. :try_end_260} :catchall_2d7

    .line 513
    .end local v8    # "dataDir":Ljava/io/File;
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .end local v19    # "outFile":Ljava/io/File;
    :catch_260
    move-exception v9

    .line 514
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_261
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_264
    .catchall {:try_start_261 .. :try_end_264} :catchall_2d7

    .line 516
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_241

    .line 446
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v8    # "dataDir":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v18    # "os":Ljava/io/FileOutputStream;
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v25    # "policyBitMaskByteBuffer":[B
    .restart local v32    # "temp":Ljava/lang/String;
    :cond_268
    :try_start_268
    const-string v33, "DEFAULT"

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    goto/16 :goto_172

    .line 462
    :cond_277
    const/16 v21, 0x0

    .line 463
    .local v21, "pkgCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v16

    .line 465
    .local v16, "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    const/16 v33, 0x40

    const/16 v36, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move/from16 v2, v33

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 468
    .local v22, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v22, :cond_2a9

    .line 469
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v29, v0

    .line 470
    .local v29, "signs":[Landroid/content/pm/Signature;
    move-object/from16 v6, v29

    .local v6, "arr$":[Landroid/content/pm/Signature;
    array-length v15, v6

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_29f
    if-ge v12, v15, :cond_2a9

    aget-object v28, v6, v12

    .line 471
    .local v28, "sign":Landroid/content/pm/Signature;
    if-eqz v28, :cond_2ce

    .line 472
    invoke-virtual/range {v28 .. v28}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v21

    .line 478
    .end local v6    # "arr$":[Landroid/content/pm/Signature;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v28    # "sign":Landroid/content/pm/Signature;
    .end local v29    # "signs":[Landroid/content/pm/Signature;
    :cond_2a9
    if-eqz v21, :cond_1dd

    .line 479
    new-instance v27, Landroid/content/pm/Signature;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v33

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 480
    .local v27, "sig":Landroid/content/pm/Signature;
    invoke-virtual/range {v27 .. v27}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v24

    .line 481
    .local v24, "pkgSigBytes":[B
    sget-object v33, CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 482
    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2cc
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_2cc} :catch_231
    .catchall {:try_start_268 .. :try_end_2cc} :catchall_255

    goto/16 :goto_1dd

    .line 470
    .end local v24    # "pkgSigBytes":[B
    .end local v27    # "sig":Landroid/content/pm/Signature;
    .restart local v6    # "arr$":[Landroid/content/pm/Signature;
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v28    # "sign":Landroid/content/pm/Signature;
    .restart local v29    # "signs":[Landroid/content/pm/Signature;
    :cond_2ce
    add-int/lit8 v12, v12, 0x1

    goto :goto_29f

    .line 509
    .end local v6    # "arr$":[Landroid/content/pm/Signature;
    .end local v12    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "mPackageManagerAdapter":Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .end local v18    # "os":Ljava/io/FileOutputStream;
    .end local v21    # "pkgCert":Ljava/lang/String;
    .end local v22    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v28    # "sign":Landroid/content/pm/Signature;
    .end local v29    # "signs":[Landroid/content/pm/Signature;
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    .restart local v26    # "ret":Z
    :catch_2d1
    move-exception v9

    .line 510
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_2d2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2d5} :catch_260
    .catchall {:try_start_2d2 .. :try_end_2d5} :catchall_2d7

    goto/16 :goto_214

    .line 516
    .end local v8    # "dataDir":Ljava/io/File;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "hash":I
    .end local v17    # "os":Ljava/io/FileOutputStream;
    .end local v20    # "outFile":Ljava/io/File;
    .end local v25    # "policyBitMaskByteBuffer":[B
    .end local v26    # "ret":Z
    .end local v32    # "temp":Ljava/lang/String;
    :catchall_2d7
    move-exception v33

    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v33

    .line 500
    .restart local v8    # "dataDir":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v17    # "os":Ljava/io/FileOutputStream;
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v25    # "policyBitMaskByteBuffer":[B
    .restart local v26    # "ret":Z
    .restart local v32    # "temp":Ljava/lang/String;
    :cond_2dc
    const/16 v33, 0x1

    :try_start_2de
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v1}, updateConstrainedStateData(Z)V
    :try_end_2e5
    .catch Ljava/lang/Exception; {:try_start_2de .. :try_end_2e5} :catch_30d
    .catchall {:try_start_2de .. :try_end_2e5} :catchall_305

    .line 501
    const/16 v33, 0x1

    .line 507
    if-eqz v17, :cond_2ec

    .line 508
    :try_start_2e9
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_2ec
    .catch Ljava/lang/Exception; {:try_start_2e9 .. :try_end_2ec} :catch_2f1
    .catchall {:try_start_2e9 .. :try_end_2ec} :catchall_2d7

    .line 516
    :cond_2ec
    :goto_2ec
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    .line 509
    :catch_2f1
    move-exception v9

    .line 510
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_2f2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2ec

    .line 509
    .end local v11    # "hash":I
    .end local v20    # "outFile":Ljava/io/File;
    .end local v25    # "policyBitMaskByteBuffer":[B
    .end local v26    # "ret":Z
    .end local v32    # "temp":Ljava/lang/String;
    .restart local v19    # "outFile":Ljava/io/File;
    :catch_2f6
    move-exception v9

    .line 510
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_23e

    .line 509
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_2fc
    move-exception v9

    .line 510
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_300
    .catch Ljava/lang/Exception; {:try_start_2f2 .. :try_end_300} :catch_260
    .catchall {:try_start_2f2 .. :try_end_300} :catchall_2d7

    goto/16 :goto_25f

    .line 506
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_302
    move-exception v33

    goto/16 :goto_25a

    .end local v19    # "outFile":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v32    # "temp":Ljava/lang/String;
    :catchall_305
    move-exception v33

    move-object/from16 v19, v20

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    goto/16 :goto_25a

    .line 503
    .end local v11    # "hash":I
    .end local v32    # "temp":Ljava/lang/String;
    :catch_30a
    move-exception v9

    goto/16 :goto_236

    .end local v19    # "outFile":Ljava/io/File;
    .restart local v11    # "hash":I
    .restart local v20    # "outFile":Ljava/io/File;
    .restart local v32    # "temp":Ljava/lang/String;
    :catch_30d
    move-exception v9

    move-object/from16 v19, v20

    .end local v20    # "outFile":Ljava/io/File;
    .restart local v19    # "outFile":Ljava/io/File;
    goto/16 :goto_236
.end method

.method public getConstrainedState()I
    .registers 6

    .prologue
    .line 611
    const/4 v3, 0x0

    .line 613
    .local v3, "ret":I
    invoke-direct {p0}, getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 615
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v1, :cond_1f

    .line 616
    const/4 v3, 0x1

    .line 618
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 619
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_c

    .line 620
    const/4 v3, 0x2

    .line 626
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1f
    return v3
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 7
    .param p1, "bitMask"    # I

    .prologue
    .line 594
    invoke-direct {p0}, getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 595
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    const/4 v3, 0x0

    .line 597
    .local v3, "policyBitMask":I
    if-eqz v1, :cond_27

    .line 598
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 599
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_b

    .line 600
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getPolicyBitMask()I

    move-result v3

    .line 601
    and-int v4, v3, p1

    if-lez v4, :cond_b

    .line 602
    const/4 v4, 0x1

    .line 607
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_26
    return v4

    :cond_27
    const/4 v4, 0x0

    goto :goto_26
.end method
