.class public Lcom/android/internal/app/AppLockPolicy;
.super Ljava/lang/Object;
.source "AppLockPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/AppLockPolicy$SettingsObserver;
    }
.end annotation


# static fields
.field public static final FLOATING_MESSAGE_REQUEST:Ljava/lang/String; = "FLOATING_MESSAGE_REQUEST"

.field public static final LAUNCHER_REQUEST:Ljava/lang/String; = "LAUNCHER_REQUEST"

.field public static final LAUNCH_FROM_RESUME:Ljava/lang/String; = "LAUNCH_FROM_RESUME"

.field public static final LAUNCH_FROM_SETTINGS:Ljava/lang/String; = "APPLOCK_APPS_FROM_SETTINGS"

.field public static final LOCKED_PACKAGE_ICON:Ljava/lang/String; = "LOCKED_PACKAGE_ICON"

.field public static final LOCKED_PACKAGE_INTENT:Ljava/lang/String; = "LOCKED_PACKAGE_INTENT"

.field public static final LOCKED_PACKAGE_LABEL:Ljava/lang/String; = "LOCKED_PACKAGE_LABEL"

.field public static final LOCKED_PACKAGE_MULTIWINDOWSTYLE:Ljava/lang/String; = "LOCKED_PACKAGE_MULTIWINDOWSTYLE"

.field public static final LOCKED_PACKAGE_NAME:Ljava/lang/String; = "LOCKED_PACKAGE_NAME"

.field public static final REQUEST_VERIFY_FROM:Ljava/lang/String; = "REQUEST_VERIFY_FROM"

.field private static TAG:Ljava/lang/String;

.field private static isSupportAppLock:Z

.field private static mInstance:Lcom/android/internal/app/AppLockPolicy;


# instance fields
.field private final LOCKED_CLASSES:Ljava/lang/String;

.field private final LOCKED_PACKAGE:Ljava/lang/String;

.field private final LOCKED_TYPE:Ljava/lang/String;

.field private final PASSWORD_TYPE:Ljava/lang/String;

.field private final PATTERN_TYPE:Ljava/lang/String;

.field private mAppLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedLock:Ljava/lang/Object;

.field private mAppLockedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLockedRelatedClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppLockedVerifyingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLockedType:Ljava/lang/String;

.field private mLockedTypeInt:I

.field private mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-string v0, "AppLockPolicy"

    sput-object v0, TAG:Ljava/lang/String;

    .line 38
    const-string v0, "applock"

    invoke-static {v0}, isSupportSmartManagerCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, isSupportAppLock:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v0, "smartmanager_locked_apps_packages"

    iput-object v0, p0, LOCKED_PACKAGE:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "smartmanager_locked_apps_classes"

    iput-object v0, p0, LOCKED_CLASSES:Ljava/lang/String;

    .line 33
    const-string v0, "applock_lock_type"

    iput-object v0, p0, LOCKED_TYPE:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "pattern_type"

    iput-object v0, p0, PATTERN_TYPE:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "password_type"

    iput-object v0, p0, PASSWORD_TYPE:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mAppLockedLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, mLockedType:Ljava/lang/String;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, mLockedTypeInt:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAppLockedPackageList:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAppLockedClassList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mAppLockedRelatedClassMap:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAppLockedVerifyingList:Ljava/util/ArrayList;

    .line 76
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 77
    new-instance v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;-><init>(Lcom/android/internal/app/AppLockPolicy;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    .line 78
    iget-object v0, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v0, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v0, :cond_6f

    .line 79
    iget-object v0, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    .line 81
    :cond_6f
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;

    .prologue
    .line 26
    iget-object v0, p0, mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;

    .prologue
    .line 26
    iget-object v0, p0, mAppLockedRelatedClassMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/AppLockPolicy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;

    .prologue
    .line 26
    iget v0, p0, mLockedTypeInt:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/app/AppLockPolicy;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, mLockedTypeInt:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, mLockedType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/AppLockPolicy;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;

    .prologue
    .line 26
    iget-object v0, p0, mAppLockedLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    iput-object p1, p0, mAppLockedPackageList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/app/AppLockPolicy;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 26
    iput-object p1, p0, mAppLockedClassList:Ljava/util/ArrayList;

    return-object p1
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/internal/app/AppLockPolicy;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 64
    sget-object v0, mInstance:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_13

    .line 65
    const-class v1, Lcom/android/internal/app/AppLockPolicy;

    monitor-enter v1

    .line 66
    :try_start_7
    sget-object v0, mInstance:Lcom/android/internal/app/AppLockPolicy;

    if-nez v0, :cond_12

    .line 67
    new-instance v0, Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {v0, p0, p1}, <init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v0, mInstance:Lcom/android/internal/app/AppLockPolicy;

    .line 69
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 72
    :cond_13
    sget-object v0, mInstance:Lcom/android/internal/app/AppLockPolicy;

    return-object v0

    .line 69
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static isSupportAppLock()Z
    .registers 1

    .prologue
    .line 518
    sget-boolean v0, isSupportAppLock:Z

    return v0
.end method

.method private static isSupportSmartManagerCHNEnhancedFeature(Ljava/lang/String;)Z
    .registers 4
    .param p0, "featureName"    # Ljava/lang/String;

    .prologue
    .line 531
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "features":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method


# virtual methods
.method public clearAppLockedUnLockedApp()V
    .registers 3

    .prologue
    .line 229
    iget-object v1, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_3
    iget-object v0, p0, mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 231
    iget-object v0, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 232
    iget-object v0, p0, mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 233
    monitor-exit v1

    .line 234
    return-void

    .line 233
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public dumpAppLockPolicyLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)Z
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/16 v4, 0x2c

    .line 456
    const-string v3, "AppLockPolicy dump start"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v3, "LockedPackage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    iget-object v3, p0, mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 462
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 465
    .end local v1    # "str":Ljava/lang/String;
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_44

    .line 466
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 468
    :cond_44
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const-string v3, "LockedClass["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v3, p0, mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_54
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 472
    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_54

    .line 475
    .end local v1    # "str":Ljava/lang/String;
    :cond_69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_7e

    .line 476
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 478
    :cond_7e
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v3, "HasUnLockedPackage["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v3, p0, mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 482
    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8e

    .line 485
    .end local v1    # "str":Ljava/lang/String;
    :cond_a3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_b8

    .line 486
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 488
    :cond_b8
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    const-string v3, "HasUnLockedClass["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v3, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 492
    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 495
    .end local v1    # "str":Ljava/lang/String;
    :cond_dd
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_f2

    .line 496
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 498
    :cond_f2
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v3, "mAppLockedVerifyingList["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    iget-object v3, p0, mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_102
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 502
    .restart local v1    # "str":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_102

    .line 505
    .end local v1    # "str":Ljava/lang/String;
    :cond_117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_12c

    .line 506
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 508
    :cond_12c
    const-string v3, "]\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 511
    const-string v3, "AppLockPolicy dump end"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 514
    const/4 v3, 0x1

    return v3
.end method

.method public getAppLockedCheckAction()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "checkAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 143
    .local v1, "hasEnrolledFingers":Z
    iget v3, p0, mLockedTypeInt:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1a

    iget v3, p0, mLockedTypeInt:I

    const/4 v4, 0x7

    if-gt v3, v4, :cond_1a

    .line 144
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v3

    if-lez v3, :cond_40

    move v1, v2

    .line 147
    :cond_1a
    :goto_1a
    const-string/jumbo v2, "pattern_type"

    iget-object v3, p0, mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 148
    const-string v0, "android.intent.action.CHECK_APPLOCK_PATTERN"

    .line 175
    :cond_27
    :goto_27
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppLockedCheckAction:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-object v0

    .line 144
    :cond_40
    const/4 v1, 0x0

    goto :goto_1a

    .line 149
    :cond_42
    const-string/jumbo v2, "password_type"

    iget-object v3, p0, mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 150
    const-string v0, "android.intent.action.CHECK_APPLOCK_PASSWORD"

    goto :goto_27

    .line 151
    :cond_50
    const-string/jumbo v2, "pincode_type"

    iget-object v3, p0, mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 152
    const-string v0, "android.intent.action.CHECK_APPLOCK_PINCODE"

    goto :goto_27

    .line 153
    :cond_5e
    const-string v2, "fingerprint_type"

    iget-object v3, p0, mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 154
    const-string v0, "android.intent.action.CHECK_APPLOCK_FINGERPRINT"

    goto :goto_27

    .line 155
    :cond_6b
    const-string v2, "fingerprint_pattern_type"

    iget-object v3, p0, mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 156
    if-nez v1, :cond_7a

    .line 157
    const-string v0, "android.intent.action.CHECK_APPLOCK_PATTERN"

    goto :goto_27

    .line 159
    :cond_7a
    const-string v0, "android.intent.action.CHECK_APPLOCK_FINGERPRINT_PATTERN"

    goto :goto_27

    .line 161
    :cond_7d
    const-string v2, "fingerprint_pincode_type"

    iget-object v3, p0, mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 162
    if-nez v1, :cond_8c

    .line 163
    const-string v0, "android.intent.action.CHECK_APPLOCK_PINCODE"

    goto :goto_27

    .line 165
    :cond_8c
    const-string v0, "android.intent.action.CHECK_APPLOCK_FINGERPRINT_PINCODE"

    goto :goto_27

    .line 167
    :cond_8f
    const-string v2, "fingerprint_password_type"

    iget-object v3, p0, mLockedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 168
    if-nez v1, :cond_9e

    .line 169
    const-string v0, "android.intent.action.CHECK_APPLOCK_PASSWORD"

    goto :goto_27

    .line 171
    :cond_9e
    const-string v0, "android.intent.action.CHECK_APPLOCK_FINGERPRINT_PASSWORD"

    goto :goto_27
.end method

.method public getAppLockedClassList()Ljava/util/ArrayList;
    .registers 6
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
    .line 252
    iget-object v3, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v3, v3, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v3, :cond_b

    .line 253
    iget-object v3, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    .line 255
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, mAppLockedClassList:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 256
    .local v1, "lockedist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v4

    .line 257
    :try_start_15
    iget-object v3, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, "st":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 260
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "st":Ljava/lang/String;
    :catchall_2b
    move-exception v3

    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_15 .. :try_end_2d} :catchall_2b

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2e
    :try_start_2e
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2b

    .line 262
    return-object v1
.end method

.method public getAppLockedLockType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, mLockedType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppLockedPackageList()Ljava/util/ArrayList;
    .registers 3
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
    .line 204
    iget-object v1, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v1, v1, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v1, :cond_b

    .line 205
    iget-object v1, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    .line 207
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v0, "lockedist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-object v0
.end method

.method public isAppLockedClass(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v1, v1, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v1, :cond_c

    .line 283
    iget-object v1, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    .line 285
    :cond_c
    iget-object v1, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_f
    iget-object v2, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 287
    monitor-exit v1

    .line 294
    :goto_18
    return v0

    .line 289
    :cond_19
    iget-object v2, p0, mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 290
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_18

    .line 292
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    goto :goto_18
.end method

.method public isAppLockedPackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 237
    iget-object v1, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v1, v1, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v1, :cond_c

    .line 238
    iget-object v1, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    .line 240
    :cond_c
    iget-object v1, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 241
    :try_start_f
    iget-object v2, p0, mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 242
    monitor-exit v1

    .line 248
    :goto_18
    return v0

    .line 244
    :cond_19
    iget-object v2, p0, mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 245
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_18

    .line 247
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_24

    goto :goto_18
.end method

.method public isAppLockedVerifying(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v1, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 313
    :try_start_3
    iget-object v0, p0, mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 314
    const/4 v0, 0x1

    monitor-exit v1

    .line 317
    :goto_d
    return v0

    .line 316
    :cond_e
    monitor-exit v1

    .line 317
    const/4 v0, 0x0

    goto :goto_d

    .line 316
    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public isLockedActivity(Landroid/content/Intent;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 85
    const/4 v2, 0x0

    .line 86
    .local v2, "isLocked":Z
    iget-object v4, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v4, v4, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v4, :cond_c

    .line 87
    iget-object v4, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    .line 89
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 90
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_39

    .line 93
    iget-object v5, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v5

    .line 94
    :try_start_1f
    iget-object v4, p0, mAppLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 96
    const/4 v2, 0x1

    .line 100
    .end local v3    # "str":Ljava/lang/String;
    :cond_38
    monitor-exit v5

    .line 103
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_39
    return v2

    .line 100
    .restart local v0    # "className":Ljava/lang/String;
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method public isLockedPackage(Landroid/content/Intent;)Z
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, "isLocked":Z
    iget-object v4, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    iget-boolean v4, v4, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    if-eqz v4, :cond_c

    .line 183
    iget-object v4, p0, mSettingsObserver:Lcom/android/internal/app/AppLockPolicy$SettingsObserver;

    invoke-virtual {v4}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->observe()V

    .line 186
    :cond_c
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_39

    .line 187
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "packageName":Ljava/lang/String;
    iget-object v5, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v5

    .line 189
    if-eqz v2, :cond_38

    .line 190
    :try_start_1f
    iget-object v4, p0, mAppLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 191
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 192
    const/4 v1, 0x1

    .line 197
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "str":Ljava/lang/String;
    :cond_38
    monitor-exit v5

    .line 200
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_39
    return v1

    .line 197
    .restart local v2    # "packageName":Ljava/lang/String;
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_3a

    throw v4
.end method

.method public setAppLockedUnLockClass(Ljava/lang/String;)V
    .registers 7
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 266
    iget-object v4, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v4

    .line 267
    :try_start_3
    iget-object v3, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 268
    iget-object v3, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    iget-object v3, p0, mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 270
    iget-object v3, p0, mAppLockedRelatedClassMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 271
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 272
    .local v2, "relatedClass":Ljava/lang/String;
    iget-object v3, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 273
    iget-object v3, p0, mAppLockedHasUnLockedClassList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 278
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "relatedClass":Ljava/lang/String;
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v3

    :cond_41
    :try_start_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3e

    .line 279
    return-void
.end method

.method public setAppLockedUnLockPackage(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v4, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v4

    .line 214
    :try_start_3
    iget-object v3, p0, mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 215
    iget-object v3, p0, mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    iget-object v3, p0, mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 217
    iget-object v3, p0, mAppLockedRelatedPackageMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 218
    .local v1, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 219
    .local v2, "relatedPackage":Ljava/lang/String;
    iget-object v3, p0, mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 220
    iget-object v3, p0, mAppLockedHasUnLockedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 225
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "relatedPackage":Ljava/lang/String;
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v3

    :cond_41
    :try_start_41
    monitor-exit v4
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_3e

    .line 226
    return-void
.end method

.method public setAppLockedVerifying(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "verifying"    # Z

    .prologue
    .line 298
    iget-object v1, p0, mAppLockedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 299
    if-eqz p2, :cond_14

    .line 300
    :try_start_5
    iget-object v0, p0, mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 301
    iget-object v0, p0, mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_12
    :goto_12
    monitor-exit v1

    .line 309
    return-void

    .line 304
    :cond_14
    iget-object v0, p0, mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 305
    iget-object v0, p0, mAppLockedVerifyingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 308
    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public startCheckActivity(Landroid/content/Intent;Z)Z
    .registers 8
    .param p1, "blockedIntent"    # Landroid/content/Intent;
    .param p2, "isFromRecent"    # Z

    .prologue
    const/4 v2, 0x1

    .line 107
    iget-object v3, p0, mLockedType:Ljava/lang/String;

    const-string/jumbo v4, "unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 108
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "startCheckActivity - unknown, skip!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v2, 0x0

    .line 133
    :goto_15
    return v2

    .line 111
    :cond_16
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v1, "in":Landroid/content/Intent;
    iget-object v3, p0, mLockedType:Ljava/lang/String;

    const-string/jumbo v4, "pattern_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 114
    const-string v3, "android.intent.action.CHECK_APPLOCK_PATTERN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :goto_2b
    const/high16 v3, 0x50000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    const-string v3, "APPLOCK_APPS_INTENT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    if-eqz p2, :cond_3c

    .line 125
    const-string v3, "APPLOCK_APPS_FROM_RECENTS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    :cond_3c
    :try_start_3c
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_41
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3c .. :try_end_41} :catch_42

    goto :goto_15

    .line 130
    :catch_42
    move-exception v0

    .line 131
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "CHECK_APPLOCK_PASSWORD"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 115
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_4b
    iget-object v3, p0, mLockedType:Ljava/lang/String;

    const-string/jumbo v4, "password_type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 116
    const-string v3, "android.intent.action.CHECK_APPLOCK_PASSWORD"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b

    .line 118
    :cond_5c
    const-string v3, "android.intent.action.CHECK_APPLOCK_PASSWORD"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2b
.end method
