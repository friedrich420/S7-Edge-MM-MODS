.class public Lcom/android/server/enterprise/kioskmode/KioskModeService;
.super Landroid/app/enterprise/kioskmode/IKioskMode$Stub;
.source "KioskModeService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;,
        Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_HWKEY:Ljava/lang/String; = "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

.field private static final COCKTAIL_BAR_SERVICE_CLSNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice.CocktailBarService"

.field private static final COCKTAIL_BAR_SERVICE_PKGNAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final DEFAULT_APK_NAME:Ljava/lang/String; = "kioskdefault.apk"

.field private static final DEFAULT_ASSET_PATH:Ljava/lang/String; = "/system/preloadedmdm/kioskdefault/kioskdefault.apk"

.field private static final DEFAULT_KIOSK_PKG:Ljava/lang/String; = "com.sec.android.kiosk"

.field private static final DISABLE_KIOSK_MODE:I = 0x2

.field private static final ENABLE_KIOSK_MODE:I = 0x1

.field private static final FORCE_TERMINATE_KIOSK_MODE:I = 0x3

.field private static final SYTEMUI_PACKAGE:Ljava/lang/String; = "android.uid.systemui"

.field private static final TAG:Ljava/lang/String; = "KioskModeService"

.field private static final TASKMANAGER_PKGS:[Ljava/lang/String;

.field private static final TERMINATE_KIOSK_ACTION:Ljava/lang/String; = "android.intent.action.enterprise.TERMINATE_KIOSK"

.field private static mLock:Ljava/lang/Object;

.field private static mProcessing:Z

.field private static volatile packageRemoveIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile terminateIntentReceiver:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private mAvailableKeyCodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPersona:Lcom/android/server/pm/PersonaManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mUserManager:Landroid/os/UserManager;

.field private preAdminRemoval_NavigationBar:Z

.field private preAdminRemoval_StatusBar:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 186
    sput-object v0, packageRemoveIntentReceiver:Ljava/util/Map;

    .line 188
    sput-object v0, terminateIntentReceiver:Ljava/util/Map;

    .line 199
    sput-boolean v2, mProcessing:Z

    .line 201
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.android.app.controlpanel"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "com.sec.android.app.taskmanager"

    aput-object v2, v0, v1

    sput-object v0, TASKMANAGER_PKGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;-><init>()V

    .line 152
    iput-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 153
    iput-object v1, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 158
    iput-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 159
    iput-object v1, p0, mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 166
    iput-boolean v0, p0, preAdminRemoval_StatusBar:Z

    .line 167
    iput-boolean v0, p0, preAdminRemoval_NavigationBar:Z

    .line 196
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Lcom/android/server/enterprise/kioskmode/KioskModeService$1;)V

    iput-object v0, p0, mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAvailableKeyCodesList:Ljava/util/List;

    .line 218
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 219
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 220
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, mPm:Landroid/content/pm/PackageManager;

    .line 221
    invoke-direct {p0}, initializeHandlerThread()V

    .line 222
    iput-object p2, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 224
    sget-object v0, mLock:Ljava/lang/Object;

    if-nez v0, :cond_42

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mLock:Ljava/lang/Object;

    .line 228
    :cond_42
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, packageRemoveIntentReceiver:Ljava/util/Map;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, terminateIntentReceiver:Ljava/util/Map;

    .line 232
    return-void
.end method

.method private _disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "operation"    # I

    .prologue
    .line 740
    sget-object v14, mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 741
    const/4 v3, 0x1

    :try_start_4
    sput-boolean v3, mProcessing:Z

    .line 742
    const/4 v2, 0x0

    .line 743
    .local v2, "isSystem":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 744
    .local v13, "uid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_14

    .line 745
    const/4 v2, 0x1

    .line 748
    :cond_14
    move-object/from16 v5, p1

    .line 749
    .local v5, "info":Landroid/app/enterprise/ContextInfo;
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 750
    .local v7, "userId":I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 752
    .local v8, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 755
    .local v10, "token":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, isKioskModeEnabledAsUser(I)Z

    move-result v3

    if-nez v3, :cond_41

    .line 756
    const-string v3, "KioskModeService"

    const-string v4, "Kiosk Mode already disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, broadcastKioskResult(III)V

    .line 819
    :goto_39
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 820
    const/4 v3, 0x0

    sput-boolean v3, mProcessing:Z

    .line 821
    monitor-exit v14

    .line 822
    :goto_40
    return-void

    .line 758
    :cond_41
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, getActiveKioskAdmin(I)I

    move-result v3

    if-eq v3, v8, :cond_5c

    .line 760
    const-string v3, "KioskModeService"

    const-string v4, "Kiosk Mode enabled by different admin"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    const/4 v3, -0x2

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, broadcastKioskResult(III)V

    goto :goto_39

    .line 821
    .end local v2    # "isSystem":Z
    .end local v5    # "info":Landroid/app/enterprise/ContextInfo;
    .end local v7    # "userId":I
    .end local v8    # "adminUid":I
    .end local v10    # "token":J
    .end local v13    # "uid":I
    :catchall_59
    move-exception v3

    monitor-exit v14
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_59

    throw v3

    .line 764
    .restart local v2    # "isSystem":Z
    .restart local v5    # "info":Landroid/app/enterprise/ContextInfo;
    .restart local v7    # "userId":I
    .restart local v8    # "adminUid":I
    .restart local v10    # "token":J
    .restart local v13    # "uid":I
    :cond_5c
    :try_start_5c
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, unregisterTerminationReceiver(I)V

    .line 765
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, unregisterPackageRemoveReceiver(I)V

    .line 767
    move-object/from16 v0, p0

    iget-object v3, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeKioskPackage"

    invoke-virtual {v3, v8, v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 769
    .local v6, "kioskPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeDefaultPackage"

    invoke-virtual {v3, v8, v4, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 773
    .local v12, "newHomePackage":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v4, v9}, updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 775
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6, v12}, setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v3, :cond_a3

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v6, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 781
    move-object/from16 v0, p0

    iget-object v3, v0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v4, 0x0

    invoke-virtual {v3, v8, v6, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 784
    :cond_a3
    if-eqz v2, :cond_b8

    .line 785
    new-instance v15, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;

    move-object/from16 v4, p0

    move/from16 v9, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/server/enterprise/kioskmode/KioskModeService$1;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;IIIJ)V

    invoke-direct {v15, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v15}, Ljava/lang/Thread;->start()V

    .line 803
    monitor-exit v14

    goto :goto_40

    .line 807
    :cond_b8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 810
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, wipeRecentTasks(I)Z

    .line 813
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, launchHomeActivity(I)V

    .line 816
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v8, v1, v3}, broadcastKioskResult(III)V
    :try_end_d1
    .catchall {:try_start_5c .. :try_end_d1} :catchall_59

    goto/16 :goto_39
.end method

.method private _enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 29
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 619
    sget-object v23, mLock:Ljava/lang/Object;

    monitor-enter v23

    .line 620
    const/16 v22, 0x1

    :try_start_5
    sput-boolean v22, mProcessing:Z

    .line 623
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v19

    .line 625
    .local v19, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 627
    .local v20, "token":J
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 631
    .local v4, "adminUid":I
    const-string v22, "KioskModeService"

    const-string v24, " _enableKioskMode"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v22

    const-string v24, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v22

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_9c

    .line 633
    const-string v22, "KioskModeService"

    const-string v24, " support HW keyboard "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catchall {:try_start_5 .. :try_end_3f} :catchall_c3

    .line 635
    :try_start_3f
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 636
    .local v5, "conf":Landroid/content/res/Configuration;
    const-class v22, Landroid/content/res/Configuration;

    const-string/jumbo v24, "mobileKeyboardCovered"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 637
    .local v12, "isCovered":Ljava/lang/reflect/Field;
    const-class v22, Landroid/content/res/Configuration;

    const-string v24, "MOBILEKEYBOARD_COVERED_YES"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 638
    .local v13, "mobileCoveredOn":Ljava/lang/reflect/Field;
    if-eqz v5, :cond_9c

    invoke-virtual {v12, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v22

    invoke-virtual {v13, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v24

    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_9c

    .line 639
    const-string v22, "KioskModeService"

    const-string v24, "Kiosk Mode - mobile keypad enabled::: return false"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/16 v22, 0x1

    const/16 v24, -0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, broadcastKioskResult(III)V
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3f .. :try_end_8e} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_8e} :catch_c6
    .catchall {:try_start_3f .. :try_end_8e} :catchall_c3

    .line 641
    :try_start_8e
    monitor-exit v23

    .line 730
    .end local v5    # "conf":Landroid/content/res/Configuration;
    .end local v12    # "isCovered":Ljava/lang/reflect/Field;
    .end local v13    # "mobileCoveredOn":Ljava/lang/reflect/Field;
    :goto_8f
    return-void

    .line 645
    :catch_90
    move-exception v8

    .line 647
    .local v8, "e1":Ljava/lang/NoSuchFieldException;
    const-string v22, "KioskModeService"

    const-string v24, "_enableKioskMode :: NoSuchFieldException"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v8    # "e1":Ljava/lang/NoSuchFieldException;
    :cond_9c
    :goto_9c
    invoke-virtual/range {p0 .. p1}, isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v22

    if-eqz v22, :cond_d3

    .line 653
    const-string v22, "KioskModeService"

    const-string v24, "Kiosk Mode already enabled"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/16 v22, 0x1

    const/16 v24, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, broadcastKioskResult(III)V

    .line 727
    :goto_ba
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 728
    const/16 v22, 0x0

    sput-boolean v22, mProcessing:Z

    .line 729
    monitor-exit v23

    goto :goto_8f

    .end local v4    # "adminUid":I
    .end local v19    # "userId":I
    .end local v20    # "token":J
    :catchall_c3
    move-exception v22

    monitor-exit v23
    :try_end_c5
    .catchall {:try_start_8e .. :try_end_c5} :catchall_c3

    throw v22

    .line 648
    .restart local v4    # "adminUid":I
    .restart local v19    # "userId":I
    .restart local v20    # "token":J
    :catch_c6
    move-exception v9

    .line 649
    .local v9, "e2":Ljava/lang/IllegalAccessException;
    :try_start_c7
    const-string v22, "KioskModeService"

    const-string v24, "_enableKioskMode :: IllegalAccessException"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9c

    .line 659
    .end local v9    # "e2":Ljava/lang/IllegalAccessException;
    :cond_d3
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v6

    .line 662
    .local v6, "currentHomePackage":Ljava/lang/String;
    invoke-direct/range {p0 .. p2}, initKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I

    move-result v16

    .line 664
    .local v16, "result":I
    const-string v22, "KioskModeService"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Kiosk  result   "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    if-eqz v16, :cond_118

    .line 666
    const-string v22, "KioskModeService"

    const-string v24, "Kiosk Mode App not validated"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v16

    invoke-direct {v0, v4, v1, v2}, broadcastKioskResult(III)V

    goto :goto_ba

    .line 668
    :cond_118
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v6, v2}, setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_16b

    .line 669
    const-string v22, "KioskModeService"

    const-string v24, "Cannot find HOME activity"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v22, v0

    if-eqz v22, :cond_159

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    move/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 678
    :cond_159
    invoke-direct/range {p0 .. p2}, cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    .line 679
    const/16 v22, 0x1

    const/16 v24, -0x7d0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, broadcastKioskResult(III)V

    goto/16 :goto_ba

    .line 683
    :cond_16b
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string/jumbo v24, "toolbox_onoff"

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 686
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, p2

    invoke-direct {v0, v4, v1, v2, v6}, updateDB(IZLjava/lang/String;Ljava/lang/String;)V

    .line 689
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, launchHomeActivity(I)V

    .line 693
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, registerPackageRemoveReceiver(I)V

    .line 694
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, registerTerminationReceiver(I)V
    :try_end_1a3
    .catchall {:try_start_c7 .. :try_end_1a3} :catchall_c3

    .line 699
    const/4 v10, 0x0

    .line 700
    .local v10, "flag":Z
    const/16 v17, 0x64

    .local v17, "timeoutCount":I
    move/from16 v18, v17

    .line 701
    .end local v17    # "timeoutCount":I
    .local v18, "timeoutCount":I
    :goto_1a8
    if-nez v10, :cond_1f6

    add-int/lit8 v17, v18, -0x1

    .end local v18    # "timeoutCount":I
    .restart local v17    # "timeoutCount":I
    if-lez v18, :cond_1f8

    .line 702
    const/4 v15, 0x0

    .line 704
    .local v15, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :try_start_1af
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v22

    const/16 v24, 0xa

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->getRecentTasks(III)Ljava/util/List;
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_1af .. :try_end_1c2} :catch_1ee
    .catchall {:try_start_1af .. :try_end_1c2} :catchall_c3

    move-result-object v15

    .line 708
    :goto_1c3
    if-eqz v15, :cond_1eb

    .line 709
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1c6
    :try_start_1c6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_1eb

    .line 710
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/ActivityManager$RecentTaskInfo;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 711
    .local v14, "packageName":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f3

    .line 713
    const/4 v10, 0x1

    .end local v11    # "i":I
    .end local v14    # "packageName":Ljava/lang/String;
    :cond_1eb
    move/from16 v18, v17

    .line 718
    .end local v17    # "timeoutCount":I
    .restart local v18    # "timeoutCount":I
    goto :goto_1a8

    .line 705
    .end local v18    # "timeoutCount":I
    .restart local v17    # "timeoutCount":I
    :catch_1ee
    move-exception v7

    .line 706
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c3

    .line 709
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v11    # "i":I
    .restart local v14    # "packageName":Ljava/lang/String;
    :cond_1f3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c6

    .end local v11    # "i":I
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v17    # "timeoutCount":I
    .restart local v18    # "timeoutCount":I
    :cond_1f6
    move/from16 v17, v18

    .line 721
    .end local v18    # "timeoutCount":I
    .restart local v17    # "timeoutCount":I
    :cond_1f8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, wipeRecentTasks(I)Z

    .line 724
    const/16 v22, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    invoke-direct {v0, v4, v1, v2}, broadcastKioskResult(III)V
    :try_end_20c
    .catchall {:try_start_1c6 .. :try_end_20c} :catchall_c3

    goto/16 :goto_ba
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 132
    sput-boolean p0, mProcessing:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 132
    invoke-direct {p0}, applyHideSystemBarPolicy()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/kioskmode/KioskModeService;Z)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    invoke-direct {p0, p1}, applyMultiWindowPolicy(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, evaluateAirModeConfigurationsAsUser(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 132
    invoke-direct {p0}, getAllBlockedList()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 132
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, _enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, _disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, wipeRecentTasks(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, launchHomeActivity(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/kioskmode/KioskModeService;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, broadcastKioskResult(III)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/kioskmode/KioskModeService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;
    .param p1, "x1"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1}, forceTerminateKiosk(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/kioskmode/KioskModeService;)Lcom/android/server/enterprise/application/ApplicationPolicy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .prologue
    .line 132
    iget-object v0, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    return-object v0
.end method

.method private addToBlocked(ILjava/lang/String;)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1627
    const/4 v1, 0x1

    .line 1628
    .local v1, "ret":Z
    invoke-direct {p0, p1}, getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1630
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1631
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1632
    invoke-direct {p0, p1, v0}, saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1634
    :cond_12
    return v1
.end method

.method private applyHideSystemBarPolicy()V
    .registers 7

    .prologue
    .line 1513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1515
    .local v2, "token":J
    :try_start_4
    const-string/jumbo v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 1517
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->applyEDMPolicy()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_16

    .line 1521
    .end local v1    # "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    :goto_12
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1522
    return-void

    .line 1518
    :catch_16
    move-exception v0

    .line 1519
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KioskModeService"

    const-string v5, "applyEDMPolicy failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method private applyMultiWindowPolicy(Z)Z
    .registers 10
    .param p1, "isCalledAdmin"    # Z

    .prologue
    .line 1489
    const/4 v3, 0x0

    .line 1490
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1491
    .local v4, "userId":I
    invoke-virtual {p0, v4}, isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 1493
    .local v0, "allowed":Z
    if-nez v0, :cond_58

    .line 1495
    :try_start_f
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "multiwindow_facade"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1496
    .local v2, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    const-string v5, "com.android.server.enterprise.kioskmode"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_20} :catch_6c

    .line 1504
    .end local v2    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_20
    :goto_20
    const/4 v3, 0x1

    .line 1509
    :goto_21
    const-string v5, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyMultiWindowPolicy() : ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", allowed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,isCalledAdmin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    return v3

    .line 1499
    :cond_58
    if-eqz p1, :cond_20

    .line 1500
    :try_start_5a
    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "multiwindow_facade"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1501
    .restart local v2    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    const-string v5, "com.android.server.enterprise.kioskmode"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->updateMultiWindowSetting(Ljava/lang/String;Z)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6b} :catch_6c

    goto :goto_20

    .line 1505
    .end local v2    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :catch_6c
    move-exception v1

    .line 1506
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "KioskModeService"

    const-string v6, "applyMultiWindowPolicy() : Failed to update multi window policy"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1507
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private broadcastBlockedEdgeScreenIntent(Z)V
    .registers 5
    .param p1, "allow"    # Z

    .prologue
    .line 2601
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.edm.intent.action.INFORMATION_STREAM_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2602
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.edm.intent.extra.BLOCKED_STATUS"

    if-nez p1, :cond_17

    const/4 v1, 0x1

    :goto_c
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2604
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2605
    return-void

    .line 2602
    :cond_17
    const/4 v1, 0x0

    goto :goto_c
.end method

.method private broadcastKioskResult(III)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "operation"    # I
    .param p3, "result"    # I

    .prologue
    .line 1020
    invoke-direct {p0, p1}, getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, "adminPackage":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 1056
    :goto_6
    return-void

    .line 1026
    :cond_7
    packed-switch p2, :pswitch_data_64

    goto :goto_6

    .line 1028
    :pswitch_b
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.action.enable.kiosk.mode.result"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1029
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1030
    const-string v5, "admin_uid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1031
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    :goto_21
    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v5, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-direct {p0, v5}, getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 1053
    .local v4, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1054
    .local v2, "token":J
    iget-object v5, p0, mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1055
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 1035
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :pswitch_3b
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.action.disable.kiosk.mode.result"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1036
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "edm.intent.extra.kiosk.mode.result"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1037
    const-string v5, "admin_uid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1038
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_21

    .line 1042
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_52
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "edm.intent.action.unexpected.kiosk.behavior"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1043
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v5, "admin_uid"

    invoke-virtual {v1, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_21

    .line 1026
    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_b
        :pswitch_3b
        :pswitch_52
    .end packed-switch
.end method

.method private cleanUpKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    .line 1172
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1174
    .local v0, "token":J
    iget-object v2, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    if-eqz v2, :cond_1a

    const-string v2, "com.sec.android.kiosk"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1175
    iget-object v2, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "com.sec.android.kiosk"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->uninstallApplicationInternalBySystem(ILjava/lang/String;Z)Z

    .line 1178
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1179
    return-void
.end method

.method private copyAssets(Ljava/io/File;)Z
    .registers 14
    .param p1, "apkPath"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    const/4 v10, -0x1

    .line 1185
    const/4 v3, 0x0

    .line 1186
    .local v3, "in":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1188
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_4
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1189
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const-string v9, "/system/preloadedmdm/kioskdefault/kioskdefault.apk"

    invoke-virtual {v0, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 1190
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_15} :catch_70

    .line 1191
    .end local v5    # "out":Ljava/io/OutputStream;
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v9, 0x400

    :try_start_17
    new-array v1, v9, [B

    .line 1193
    .local v1, "buffer":[B
    :goto_19
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, "read":I
    if-eq v7, v10, :cond_49

    .line 1194
    const/4 v9, 0x0

    invoke-virtual {v6, v1, v9, v7}, Ljava/io/OutputStream;->write([BII)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_23} :catch_24

    goto :goto_19

    .line 1199
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    :catch_24
    move-exception v2

    move-object v5, v6

    .line 1200
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v6    # "out":Ljava/io/OutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :goto_26
    const-string v9, "KioskModeService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    if-eqz v3, :cond_43

    .line 1203
    :try_start_40
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_5e

    .line 1208
    :cond_43
    :goto_43
    if-eqz v5, :cond_48

    .line 1209
    :try_start_45
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_67

    .line 1217
    .end local v2    # "e":Ljava/io/IOException;
    :cond_48
    :goto_48
    return v8

    .line 1196
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v1    # "buffer":[B
    .restart local v6    # "out":Ljava/io/OutputStream;
    .restart local v7    # "read":I
    :cond_49
    :try_start_49
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1197
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 1198
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_52} :catch_24

    .line 1216
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x1b4

    invoke-static {v8, v9, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1217
    const/4 v8, 0x1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    goto :goto_48

    .line 1204
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "buffer":[B
    .end local v7    # "read":I
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_5e
    move-exception v4

    .line 1205
    .local v4, "ioe":Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing inputstream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 1210
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_67
    move-exception v4

    .line 1211
    .restart local v4    # "ioe":Ljava/io/IOException;
    const-string v9, "KioskModeService"

    const-string v10, "Error closing outputstream"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_48

    .line 1199
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "ioe":Ljava/io/IOException;
    :catch_70
    move-exception v2

    goto :goto_26
.end method

.method private enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 413
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 421
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_KIOSK_MODE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private evaluateAirModeConfigurationsAsUser(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2256
    if-lez p1, :cond_19

    const/16 v0, 0x64

    if-ge p1, v0, :cond_19

    .line 2260
    invoke-virtual {p0, v1}, isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2261
    invoke-direct {p0, p1}, resetAirCommandConfigurationAsUser(I)Z

    .line 2263
    :cond_10
    invoke-virtual {p0, v1}, isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 2264
    invoke-direct {p0, p1}, resetAirViewConfigurationAsUser(I)V

    .line 2267
    :cond_19
    return-void
.end method

.method private forceTerminateKiosk(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 829
    invoke-direct {p0, p1}, getActiveKioskAdmin(I)I

    move-result v0

    .line 831
    .local v0, "kioskAdminUid":I
    const-string v1, "KioskModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forceTerminateKiosk() - uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " /userId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v1, v0}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, _disableKioskMode(Landroid/app/enterprise/ContextInfo;I)V

    .line 836
    return-void
.end method

.method private getActiveKioskAdmin(I)I
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 1079
    const/4 v6, 0x2

    :try_start_2
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "kioskModeEnabled"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string v7, "adminUid"

    aput-object v7, v0, v6

    .line 1084
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    invoke-virtual {v6, v7, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 1087
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_4c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4c

    .line 1088
    const/4 v1, 0x0

    .line 1089
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1091
    .local v3, "it":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 1092
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1093
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "kioskModeEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_24

    .line 1094
    const-string v6, "adminUid"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_46} :catch_48

    move-result v5

    .line 1105
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_47
    return v5

    .line 1100
    :catch_48
    move-exception v2

    .line 1101
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1104
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4c
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getActiveKioskAdmin() failed for user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/4 v5, -0x1

    goto :goto_47
.end method

.method private getAllBlockedList()Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1668
    .local v8, "token":J
    iget-object v12, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v12}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    .line 1669
    .local v10, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1670
    const/4 v7, 0x0

    .line 1672
    .local v7, "userId":I
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1673
    .local v0, "adminMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1674
    .local v2, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1676
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "KIOSKMODE"

    const-string v14, "blockedHwKeyList"

    invoke-virtual {v12, v13, v14, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    .line 1679
    .local v11, "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1681
    .local v6, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1682
    .local v5, "list":Ljava/lang/String;
    const-string v12, ","

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1683
    .local v1, "array":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3e

    .line 1685
    .end local v1    # "array":[Ljava/lang/String;
    .end local v5    # "list":Ljava/lang/String;
    :cond_58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 1687
    .end local v2    # "i":Landroid/content/pm/UserInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v11    # "var":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_60
    return-object v0
.end method

.method private getBlockedEdgeScreenByAdmin(Landroid/app/enterprise/ContextInfo;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2545
    const/4 v0, 0x0

    .line 2547
    .local v0, "blockedFunctions":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "KIOSKMODE"

    const-string/jumbo v5, "edgeScreenBlockedFunctions"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_f

    move-result v0

    .line 2553
    :goto_e
    return v0

    .line 2550
    :catch_f
    move-exception v1

    .line 2551
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v2, "KioskModeService"

    const-string/jumbo v3, "getBlockedEdgeScreen() failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .registers 12
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1695
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string v9, "blockedHwKeyList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1697
    .local v6, "var":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1698
    .local v3, "l":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_24

    .line 1699
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1700
    .local v1, "array":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1a
    if-ge v2, v4, :cond_24

    aget-object v5, v0, v2

    .line 1701
    .local v5, "s":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1700
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1704
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "array":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_24
    return-object v3
.end method

.method private getDefaultHomeScreen(I)Ljava/lang/String;
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1226
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1227
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1228
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1230
    const/4 v0, 0x0

    .line 1231
    .local v0, "cName":Landroid/content/ComponentName;
    iget-object v4, p0, mPm:Landroid/content/pm/PackageManager;

    const/high16 v5, 0x10000

    invoke-virtual {v4, v2, v5, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 1233
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_2c

    .line 1234
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cName":Landroid/content/ComponentName;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    .restart local v0    # "cName":Landroid/content/ComponentName;
    :cond_2c
    if-nez v0, :cond_37

    .line 1240
    const-string v4, "KioskModeService"

    const-string/jumbo v5, "getDefaultHomeScreen() fail"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    :cond_36
    :goto_36
    return-object v3

    .line 1244
    :cond_37
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 1252
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1255
    .local v3, "pkgName":Ljava/lang/String;
    goto :goto_36
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 279
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 282
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getHomeActivity(ILjava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "userId"    # I
    .param p2, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 1362
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1363
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "android.intent.category.HOME"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1364
    const-string v6, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1366
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1367
    .local v4, "token":J
    iget-object v6, p0, mPm:Landroid/content/pm/PackageManager;

    const/high16 v7, 0x10000

    invoke-virtual {v6, v1, v7, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 1369
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1371
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_45

    .line 1372
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1373
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1374
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1379
    .end local v3    # "pkgName":Ljava/lang/String;
    :goto_41
    return-object v6

    .line 1371
    .restart local v3    # "pkgName":Ljava/lang/String;
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1378
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_45
    const-string v6, "KioskModeService"

    const-string v7, " - cannot find matched home activity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v6, 0x0

    goto :goto_41
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .registers 5
    .param p1, "callingUid"    # I

    .prologue
    .line 1064
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 1065
    .local v1, "uid":I
    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_13

    const/16 v2, 0x2710

    if-lt v1, v2, :cond_10

    const/16 v2, 0x4e1f

    if-le v1, v2, :cond_13

    .line 1067
    :cond_10
    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 1070
    :goto_12
    return-object v0

    .line 1069
    :cond_13
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1070
    .local v0, "pkgName":Ljava/lang/String;
    goto :goto_12
.end method

.method private getPenDetachmentOption(I)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 2401
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pen_detachment_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2406
    .local v0, "index":I
    invoke-static {}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->values()[Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, mPersona:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_f

    .line 213
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 215
    :cond_f
    iget-object v0, p0, mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2117
    if-nez p1, :cond_b

    .line 2118
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 2121
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_b
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2122
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_5f

    .line 2123
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2124
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_27

    .line 2125
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2127
    :cond_27
    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 2128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2129
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 2130
    .local v4, "userId":I
    const-string v5, "KioskModeService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "System UI : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / userId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2135
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_5e
    return v4

    :cond_5f
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    goto :goto_5e
.end method

.method private initKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)I
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v8, -0x3

    const/16 v7, -0x7d0

    const/4 v9, 0x0

    .line 1120
    const/4 v3, 0x0

    .line 1123
    .local v3, "removeOwner":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1124
    .local v6, "userId":I
    const-string v10, "com.sec.android.kiosk"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1125
    iget-object v8, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v10, "/system/preloadedmdm/kioskdefault/kioskdefault.apk"

    invoke-virtual {v8, p1, v10, v9}, Lcom/android/server/enterprise/application/ApplicationPolicy;->installApplication(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v2

    .line 1126
    .local v2, "isAppInstalled":Z
    if-nez v2, :cond_52

    .line 1163
    .end local v2    # "isAppInstalled":Z
    :goto_1c
    return v7

    .line 1132
    :cond_1d
    :try_start_1d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    const/16 v11, 0x80

    invoke-interface {v10, p2, v11, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1133
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_33

    .line 1134
    const-string v10, "KioskModeService"

    const-string v11, "Check if Kiosk App exists and is enabled  - fail "

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_30} :catch_32

    move v7, v8

    .line 1135
    goto :goto_1c

    .line 1137
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_32
    move-exception v10

    .line 1141
    :cond_33
    iget-object v10, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v10, p2, v9, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v10

    if-nez v10, :cond_44

    .line 1142
    const-string v7, "KioskModeService"

    const-string v9, "Check if Kiosk App Disabled  - fail "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 1143
    goto :goto_1c

    .line 1147
    :cond_44
    invoke-direct {p0, v6, p2}, getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "homeActivity":Ljava/lang/String;
    if-nez v1, :cond_52

    .line 1149
    const-string v8, "KioskModeService"

    const-string v9, "Check if Kiosk App have home activities  - fail "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 1154
    .end local v1    # "homeActivity":Ljava/lang/String;
    :cond_52
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1157
    .local v4, "token":J
    iget-object v7, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8, p2, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1159
    iget-object v7, p0, mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8, p2, v12}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationInstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 1161
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v9

    .line 1163
    goto :goto_1c
.end method

.method private initializeHandlerThread()V
    .registers 3

    .prologue
    .line 236
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KioskModeService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 237
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 238
    new-instance v0, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    .line 239
    return-void
.end method

.method private initializeKeyCodeLists()V
    .registers 8

    .prologue
    .line 1754
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    .line 1756
    .local v2, "maxKeycode":I
    add-int/lit8 v4, v2, -0x1

    new-array v1, v4, [I

    .line 1757
    .local v1, "keyCodes":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_14

    .line 1758
    add-int/lit8 v4, v0, 0x1

    aput v4, v1, v0

    .line 1757
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1760
    :cond_14
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKeys([I)[Z

    move-result-object v3

    .line 1761
    .local v3, "ret":[Z
    if-eqz v3, :cond_34

    .line 1762
    iget-object v5, p0, mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v5

    .line 1763
    const/4 v0, 0x0

    :goto_1e
    :try_start_1e
    array-length v4, v3

    if-ge v0, v4, :cond_33

    .line 1764
    aget-boolean v4, v3, v0

    if-eqz v4, :cond_30

    .line 1765
    iget-object v4, p0, mAvailableKeyCodesList:Ljava/util/List;

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1763
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1768
    :cond_33
    monitor-exit v5

    .line 1770
    :cond_34
    return-void

    .line 1768
    :catchall_35
    move-exception v4

    monitor-exit v5
    :try_end_37
    .catchall {:try_start_1e .. :try_end_37} :catchall_35

    throw v4
.end method

.method private isEdgeScreenFunctionalityAllowed(I)Z
    .registers 5
    .param p1, "function"    # I

    .prologue
    .line 2581
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, getBlockedEdgeScreen(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2582
    .local v0, "blockedFunctions":I
    const/4 v1, 0x1

    .line 2583
    .local v1, "isFunctionAllowed":Z
    and-int v2, v0, p1

    if-lez v2, :cond_b

    .line 2584
    const/4 v1, 0x0

    .line 2586
    :cond_b
    return v1
.end method

.method private isHardwareKeyValid(I)Z
    .registers 4
    .param p1, "hwKeyId"    # I

    .prologue
    .line 1708
    iget-object v0, p0, mAvailableKeyCodesList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNavigationBarHiddenAsUser(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 2025
    const/4 v1, 0x0

    .line 2027
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 2028
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2031
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2032
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_14

    .line 2033
    const/4 v1, 0x1

    .line 2040
    .end local v2    # "value":I
    :cond_29
    return v1
.end method

.method private isStatusBarHiddenAsUser(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 1950
    const/4 v1, 0x0

    .line 1952
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 1953
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1956
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1957
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_14

    .line 1958
    const/4 v1, 0x1

    .line 1965
    .end local v2    # "value":I
    :cond_29
    return v1
.end method

.method private isSystemBarHiddenAsUser(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 1471
    const/4 v1, 0x0

    .line 1473
    .local v1, "ret":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p1

    .line 1474
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "systemBarEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1477
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1478
    .local v2, "value":I
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_14

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_14

    .line 1480
    const/4 v1, 0x1

    .line 1486
    .end local v2    # "value":I
    :cond_2d
    return v1
.end method

.method private isTaskManagerAvailable(I)Z
    .registers 15
    .param p1, "userId"    # I

    .prologue
    const/4 v9, 0x1

    .line 1844
    iget-object v10, p0, mContext:Landroid/content/Context;

    const-string v11, "android"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v8

    .line 1846
    .local v8, "userContext":Landroid/content/Context;
    if-nez v8, :cond_e

    move v3, v9

    .line 1863
    :cond_d
    :goto_d
    return v3

    .line 1848
    :cond_e
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/16 v11, 0x200

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1850
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v3, 0x0

    .line 1851
    .local v3, "found":Z
    if-nez v1, :cond_1d

    move v3, v9

    .line 1852
    goto :goto_d

    .line 1853
    :cond_1d
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1854
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    sget-object v2, TASKMANAGER_PKGS:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_31
    if-ge v5, v6, :cond_3e

    aget-object v7, v2, v5

    .line 1855
    .local v7, "taskMngrPkg":Ljava/lang/String;
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 1856
    const/4 v3, 0x1

    .line 1860
    .end local v7    # "taskMngrPkg":Ljava/lang/String;
    :cond_3e
    if-eqz v3, :cond_21

    goto :goto_d

    .line 1854
    .restart local v7    # "taskMngrPkg":Ljava/lang/String;
    :cond_41
    add-int/lit8 v5, v5, 0x1

    goto :goto_31
.end method

.method private launchHomeActivity(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    .line 1401
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1402
    .local v1, "homeIntent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1405
    :try_start_11
    iget-object v2, p0, mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1b} :catch_1c

    .line 1409
    :goto_1b
    return-void

    .line 1406
    :catch_1c
    move-exception v0

    .line 1407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method private registerPackageRemoveReceiver(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 845
    :try_start_0
    sget-object v0, packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 846
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 847
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 850
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$2;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 891
    .local v1, "mReceiver":Landroid/content/BroadcastReceiver;
    if-eqz v1, :cond_3b

    .line 892
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 894
    sget-object v0, packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 900
    .end local v1    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_3b
    :goto_3b
    return-void

    .line 897
    :catch_3c
    move-exception v6

    .line 898
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "KioskModeService"

    const-string v2, "Cannot register packageRemoveIntentReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b
.end method

.method private registerSwitchingUserReceiver()V
    .registers 7

    .prologue
    .line 991
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 992
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 994
    new-instance v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 1004
    .local v2, "switchingUserIntentReceiver":Landroid/content/BroadcastReceiver;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 1008
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    .end local v2    # "switchingUserIntentReceiver":Landroid/content/BroadcastReceiver;
    :goto_16
    return-void

    .line 1005
    :catch_17
    move-exception v0

    .line 1006
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KioskModeService"

    const-string v4, "Cannot register registerSwitchingUserReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private registerTerminationReceiver(I)V
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 922
    :try_start_0
    sget-object v0, terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 923
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.enterprise.TERMINATE_KIOSK"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 926
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$3;-><init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V

    .line 965
    .local v1, "mReceiver":Landroid/content/BroadcastReceiver;
    if-eqz v1, :cond_30

    .line 966
    sget-object v0, terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    iget-object v0, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "android.permission.sec.MDM_KIOSK_MODE_INTERNAL"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_31

    .line 974
    .end local v1    # "mReceiver":Landroid/content/BroadcastReceiver;
    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :cond_30
    :goto_30
    return-void

    .line 971
    :catch_31
    move-exception v6

    .line 972
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "KioskModeService"

    const-string v2, "Cannot register terminateIntentReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30
.end method

.method private removeFromBlocked(ILjava/lang/String;)Z
    .registers 6
    .param p1, "callingUid"    # I
    .param p2, "hwKey"    # Ljava/lang/String;

    .prologue
    .line 1638
    const/4 v1, 0x1

    .line 1639
    .local v1, "ret":Z
    invoke-direct {p0, p1}, getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 1640
    .local v0, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1641
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1642
    invoke-direct {p0, p1, v0}, saveBlockedList(ILjava/util/Set;)Z

    move-result v1

    .line 1644
    :cond_12
    return v1
.end method

.method private resetAirCommandConfigurationAsUser(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 2238
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, setAirCommandOn(IZ)Z

    move-result v0

    .line 2239
    .local v0, "ret":Z
    if-eqz v0, :cond_18

    invoke-direct {p0, p1}, getPenDetachmentOption(I)Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->AIR_COMMAND:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2240
    sget-object v1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->NONE:Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    invoke-direct {p0, p1, v1}, setPenDetachmentOption(ILcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;)V

    .line 2242
    :cond_18
    return v0
.end method

.method private resetAirViewConfigurationAsUser(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2316
    invoke-direct {p0, p1, v0}, setAirViewOn(IZ)V

    .line 2317
    invoke-direct {p0, p1, v0}, setFingerAirViewOn(IZ)V

    .line 2318
    invoke-direct {p0, p1, v0}, setFingerAirViewInformationPreviewOn(IZ)V

    .line 2319
    invoke-direct {p0, p1, v0}, setPenHoveringOn(IZ)V

    .line 2320
    return-void
.end method

.method private resetEdgeScreenSetting(Ljava/lang/String;I)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2592
    .local v0, "token":J
    :try_start_4
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p1, v3, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 2594
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2596
    return-void

    .line 2594
    :catchall_12
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private saveBlockedList(ILjava/util/Set;)Z
    .registers 11
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1648
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1650
    .local v1, "ret":Z
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1651
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1661
    :goto_12
    return v1

    .line 1654
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1655
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1656
    .local v2, "s":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 1658
    .end local v2    # "s":Ljava/lang/String;
    :cond_3f
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string v6, "blockedHwKeyList"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, p1, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_12
.end method

.method private setAirCommandOn(IZ)Z
    .registers 10
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2330
    .local v2, "token":J
    const/4 v1, 0x0

    .line 2332
    .local v1, "ret":Z
    :try_start_5
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "air_button_onoff"

    if-eqz p2, :cond_22

    const/4 v4, 0x1

    :goto_10
    invoke-static {v5, v6, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_24
    .catchall {:try_start_5 .. :try_end_13} :catchall_32

    move-result v1

    .line 2341
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2343
    :goto_17
    if-nez v1, :cond_21

    .line 2344
    const-string v4, "KioskModeService"

    const-string/jumbo v5, "setAirCommandOn() : failed to update setting value ."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    :cond_21
    return v1

    .line 2332
    :cond_22
    const/4 v4, 0x0

    goto :goto_10

    .line 2336
    :catch_24
    move-exception v0

    .line 2338
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_25
    const-string v4, "KioskModeService"

    const-string/jumbo v5, "setAirCommandOn() : failed to update setting value ."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_32

    .line 2339
    const/4 v1, 0x0

    .line 2341
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_17

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_32
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setAirViewOn(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2357
    .local v0, "token":J
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "air_view_master_onoff"

    if-eqz p2, :cond_16

    const/4 v2, 0x1

    :goto_f
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2361
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2362
    return-void

    .line 2357
    :cond_16
    const/4 v2, 0x0

    goto :goto_f
.end method

.method private setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 28
    .param p1, "userId"    # I
    .param p2, "oldHomePackage"    # Ljava/lang/String;
    .param p3, "newHomePackage"    # Ljava/lang/String;

    .prologue
    .line 1270
    new-instance v15, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v15, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v15, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1272
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v15, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1274
    const/4 v12, 0x0

    .line 1279
    .local v12, "flag":Z
    if-eqz p2, :cond_50

    .line 1280
    const/16 v16, 0x0

    .line 1284
    .local v16, "isAppInstalled":Z
    :try_start_16
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/16 v6, 0x80

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-interface {v4, v0, v6, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_23} :catch_f2

    move-result-object v11

    .line 1285
    .local v11, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v11, :cond_28

    .line 1286
    const/16 v16, 0x1

    .line 1292
    .end local v11    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_28
    :goto_28
    const-string v4, "com.sec.android.kiosk"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    if-eqz v16, :cond_35

    .line 1293
    const/4 v12, 0x1

    .line 1296
    :cond_35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1298
    .local v22, "token":J
    :try_start_39
    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v18

    .line 1299
    .local v18, "mIPackageManager":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivitiesAsUser(Ljava/lang/String;I)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4d} :catch_9f
    .catchall {:try_start_39 .. :try_end_4d} :catchall_a4

    .line 1303
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1311
    .end local v16    # "isAppInstalled":Z
    .end local v18    # "mIPackageManager":Landroid/content/pm/IPackageManager;
    .end local v22    # "token":J
    :cond_50
    :goto_50
    if-eqz p3, :cond_f0

    .line 1312
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1313
    .restart local v22    # "token":J
    move-object/from16 v0, p0

    iget-object v4, v0, mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x10000

    move/from16 v0, p1

    invoke-virtual {v4, v15, v6, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v17

    .line 1315
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1318
    if-eqz v12, :cond_a9

    .line 1321
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v20, v4, -0x1

    .line 1325
    .local v20, "size":I
    :goto_6d
    move/from16 v0, v20

    new-array v7, v0, [Landroid/content/ComponentName;

    .line 1326
    .local v7, "components":[Landroid/content/ComponentName;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_72
    move/from16 v0, v20

    if-ge v14, v0, :cond_b8

    .line 1327
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1328
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1329
    .local v10, "activity":Ljava/lang/String;
    if-eqz v12, :cond_ae

    const-string v4, "com.sec.android.kiosk"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    .line 1326
    :goto_9c
    add-int/lit8 v14, v14, 0x1

    goto :goto_72

    .line 1300
    .end local v7    # "components":[Landroid/content/ComponentName;
    .end local v10    # "activity":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "size":I
    .restart local v16    # "isAppInstalled":Z
    :catch_9f
    move-exception v4

    .line 1303
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    :catchall_a4
    move-exception v4

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1323
    .end local v16    # "isAppInstalled":Z
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_a9
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v20

    .restart local v20    # "size":I
    goto :goto_6d

    .line 1332
    .restart local v7    # "components":[Landroid/content/ComponentName;
    .restart local v10    # "activity":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v19    # "pkgName":Ljava/lang/String;
    :cond_ae
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v19

    invoke-direct {v4, v0, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v7, v14

    goto :goto_9c

    .line 1335
    .end local v10    # "activity":Ljava/lang/String;
    .end local v19    # "pkgName":Ljava/lang/String;
    :cond_b8
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, getHomeActivity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1336
    .local v13, "homeActivity":Ljava/lang/String;
    if-nez v13, :cond_c6

    .line 1337
    const/4 v4, 0x0

    .line 1353
    .end local v7    # "components":[Landroid/content/ComponentName;
    .end local v13    # "homeActivity":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "size":I
    .end local v22    # "token":J
    :goto_c5
    return v4

    .line 1341
    .restart local v7    # "components":[Landroid/content/ComponentName;
    .restart local v13    # "homeActivity":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v20    # "size":I
    .restart local v22    # "token":J
    :cond_c6
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, p3

    invoke-direct {v8, v0, v13}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    .local v8, "component":Landroid/content/ComponentName;
    new-instance v5, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v5, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1345
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v5, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 1348
    move-object/from16 v0, p0

    iget-object v4, v0, mPm:Landroid/content/pm/PackageManager;

    const/high16 v6, 0x100000

    move/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 1350
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1353
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "components":[Landroid/content/ComponentName;
    .end local v8    # "component":Landroid/content/ComponentName;
    .end local v13    # "homeActivity":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v20    # "size":I
    .end local v22    # "token":J
    :cond_f0
    const/4 v4, 0x1

    goto :goto_c5

    .line 1288
    .restart local v16    # "isAppInstalled":Z
    :catch_f2
    move-exception v4

    goto/16 :goto_28
.end method

.method private setFingerAirViewInformationPreviewOn(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2387
    .local v0, "token":J
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view_information_preview"

    if-eqz p2, :cond_17

    const/4 v2, 0x1

    :goto_10
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2391
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2392
    return-void

    .line 2387
    :cond_17
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private setFingerAirViewOn(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2371
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2372
    .local v0, "token":J
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "finger_air_view"

    if-eqz p2, :cond_17

    const/4 v2, 0x1

    :goto_10
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2377
    return-void

    .line 2372
    :cond_17
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private setPenDetachmentOption(ILcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "option"    # Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;

    .prologue
    .line 2416
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2417
    .local v0, "token":J
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_detachment_option"

    invoke-virtual {p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PenDetachmentOption;->ordinal()I

    move-result v4

    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2421
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2422
    return-void
.end method

.method private setPenHoveringOn(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "on"    # Z

    .prologue
    .line 2431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2432
    .local v0, "token":J
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    if-eqz p2, :cond_17

    const/4 v2, 0x1

    :goto_10
    invoke-static {v3, v4, v2, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2436
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2437
    return-void

    .line 2432
    :cond_17
    const/4 v2, 0x0

    goto :goto_10
.end method

.method private unregisterPackageRemoveReceiver(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 907
    sget-object v0, packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 908
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v0, packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 909
    sget-object v0, packageRemoveIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    :goto_27
    return-void

    .line 911
    :cond_28
    const-string v0, "KioskModeService"

    const-string v1, "There\'s no matched key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private unregisterTerminationReceiver(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 981
    sget-object v0, terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 982
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v0, terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 983
    sget-object v0, terminateIntentReceiver:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    :goto_27
    return-void

    .line 985
    :cond_28
    const-string v0, "KioskModeService"

    const-string v1, "There\'s no matched key"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27
.end method

.method private updateDB(IZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "callingUid"    # I
    .param p2, "enabled"    # Z
    .param p3, "kioskPackage"    # Ljava/lang/String;
    .param p4, "defaultPackage"    # Ljava/lang/String;

    .prologue
    .line 1388
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "kioskModeEnabled"

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 1390
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "kioskModeDefaultPackage"

    invoke-virtual {v0, p1, v1, v2, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1392
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KIOSKMODE"

    const-string/jumbo v2, "kioskModeKioskPackage"

    invoke-virtual {v0, p1, v1, v2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1394
    return-void
.end method

.method private wipeRecentTasks(I)Z
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 1531
    const/4 v3, 0x0

    .line 1532
    .local v3, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1534
    .local v4, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1536
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_9
    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->clearRecentTasks(I)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_c} :catch_2a
    .catchall {:try_start_9 .. :try_end_c} :catchall_36

    move-result v3

    .line 1540
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1543
    :goto_10
    if-nez p1, :cond_29

    .line 1544
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1547
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_19
    const-string v6, "KioskMode"

    const-string/jumbo v7, "wipeRecentTasks"

    const/4 v8, 0x1

    invoke-virtual {v2, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1548
    const-string v6, "KioskModeService"

    const-string v7, "GearPolicy wipeRecentTasks"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_29} :catch_3b

    .line 1553
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_29
    :goto_29
    return v3

    .line 1537
    :catch_2a
    move-exception v1

    .line 1538
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2b
    const-string v6, "KioskModeService"

    const-string v7, "Remote exception calling clearRecentTasks!"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_36

    .line 1540
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_10

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_36
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 1549
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_3b
    move-exception v1

    .line 1550
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method


# virtual methods
.method public allowAirCommandMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2199
    invoke-direct {p0, p1}, enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2200
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2201
    .local v5, "userId":I
    const/4 v2, 0x1

    .line 2203
    .local v2, "isAllowedbyAdmin":Z
    :try_start_9
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_7b

    move-result v2

    .line 2206
    :goto_16
    const/4 v3, 0x0

    .line 2207
    .local v3, "ret":Z
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowAirCommandMode() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", userId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2212
    if-eqz v3, :cond_9c

    .line 2213
    invoke-virtual {p0, p1}, isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    .line 2214
    .local v1, "isAllowed":Z
    if-eqz v1, :cond_97

    .line 2215
    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, setAirCommandOn(IZ)Z

    move-result v3

    .line 2220
    :goto_53
    if-nez v3, :cond_7a

    .line 2221
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "kioskModeAirCommandAllowed"

    invoke-virtual {v6, v7, v8, v9, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 2222
    .local v4, "retFail":Z
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowAirCommandMode() : restore policy because fail to update aircommand setting. = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    .end local v1    # "isAllowed":Z
    .end local v4    # "retFail":Z
    :cond_7a
    :goto_7a
    return v3

    .line 2204
    .end local v3    # "ret":Z
    :catch_7b
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "allowAirCommandMode() : fail to get admin policy value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 2218
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "isAllowed":Z
    .restart local v3    # "ret":Z
    :cond_97
    invoke-direct {p0, v5}, resetAirCommandConfigurationAsUser(I)Z

    move-result v3

    goto :goto_53

    .line 2226
    .end local v1    # "isAllowed":Z
    :cond_9c
    const-string v6, "KioskModeService"

    const-string v7, "allowAirCommandMode() : failed to update policy. "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a
.end method

.method public allowAirViewMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2296
    invoke-direct {p0, p1}, enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2297
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2299
    .local v0, "userId":I
    if-nez p2, :cond_13

    invoke-virtual {p0, p1}, isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2300
    invoke-direct {p0, v0}, resetAirViewConfigurationAsUser(I)V

    .line 2303
    :cond_13
    iget-object v1, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "KIOSKMODE"

    const-string/jumbo v4, "kioskModeAirViewAllowed"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public allowEdgeScreen(Landroid/app/enterprise/ContextInfo;IZ)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "edgeScreenFunction"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2442
    invoke-direct {p0, p1}, enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2445
    const/16 v6, 0x1f

    if-eq p2, v6, :cond_a

    .line 2530
    :cond_9
    :goto_9
    return v2

    .line 2450
    :cond_a
    and-int/lit8 v6, p2, 0x1f

    if-lez v6, :cond_24

    if-nez p3, :cond_24

    .line 2452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2454
    .local v4, "token":J
    :try_start_14
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "edge_enable"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_af

    .line 2456
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2461
    .end local v4    # "token":J
    :cond_24
    and-int/lit8 v6, p2, 0x1

    if-lez v6, :cond_36

    if-nez p3, :cond_36

    .line 2462
    invoke-virtual {p0, p1}, isNightClockAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 2464
    const-string/jumbo v6, "night_mode"

    invoke-direct {p0, v6, v2}, resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2469
    :cond_36
    and-int/lit8 v6, p2, 0x2

    if-lez v6, :cond_48

    if-nez p3, :cond_48

    .line 2470
    invoke-virtual {p0, p1}, isPeopleEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 2472
    const-string/jumbo v6, "people_stripe"

    invoke-direct {p0, v6, v2}, resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2477
    :cond_48
    and-int/lit8 v6, p2, 0x8

    if-lez v6, :cond_5a

    if-nez p3, :cond_5a

    .line 2478
    invoke-virtual {p0, p1}, isEdgeLightingAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 2480
    const-string/jumbo v6, "turn_over_lighting"

    invoke-direct {p0, v6, v2}, resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2485
    :cond_5a
    const/4 v3, 0x1

    .line 2486
    .local v3, "wasInfoStreamAllowed":Z
    and-int/lit8 v6, p2, 0x4

    if-lez v6, :cond_70

    .line 2487
    invoke-virtual {p0, p1}, isInformationStreamAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    .line 2488
    if-nez p3, :cond_70

    if-eqz v3, :cond_70

    .line 2490
    const-string/jumbo v6, "edge_information_stream"

    invoke-direct {p0, v6, v2}, resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2491
    invoke-direct {p0, v2}, broadcastBlockedEdgeScreenIntent(Z)V

    .line 2496
    :cond_70
    and-int/lit8 v6, p2, 0x10

    if-lez v6, :cond_82

    if-nez p3, :cond_82

    .line 2497
    invoke-virtual {p0, p1}, isAppsEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 2499
    const-string/jumbo v6, "task_edge"

    invoke-direct {p0, v6, v2}, resetEdgeScreenSetting(Ljava/lang/String;I)V

    .line 2503
    :cond_82
    invoke-direct {p0, p1}, getBlockedEdgeScreenByAdmin(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2507
    .local v0, "currentBlockedFunctions":I
    if-eqz p3, :cond_b4

    .line 2508
    xor-int/lit8 v6, p2, -0x1

    and-int v1, v6, v0

    .line 2513
    .local v1, "newBlockedFunctions":I
    :goto_8c
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "edgeScreenBlockedFunctions"

    invoke-virtual {v6, v7, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v2

    .line 2521
    .local v2, "result":Z
    if-eqz v2, :cond_9

    and-int/lit8 v6, p2, 0x4

    if-lez v6, :cond_9

    .line 2523
    if-eqz p3, :cond_9

    if-nez v3, :cond_9

    invoke-virtual {p0, p1}, isInformationStreamAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2526
    const/4 v6, 0x1

    invoke-direct {p0, v6}, broadcastBlockedEdgeScreenIntent(Z)V

    goto/16 :goto_9

    .line 2456
    .end local v0    # "currentBlockedFunctions":I
    .end local v1    # "newBlockedFunctions":I
    .end local v2    # "result":Z
    .end local v3    # "wasInfoStreamAllowed":Z
    .restart local v4    # "token":J
    :catchall_af
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 2510
    .end local v4    # "token":J
    .restart local v0    # "currentBlockedFunctions":I
    .restart local v3    # "wasInfoStreamAllowed":Z
    :cond_b4
    or-int v1, p2, v0

    .restart local v1    # "newBlockedFunctions":I
    goto :goto_8c
.end method

.method public allowHardwareKeys(Landroid/app/enterprise/ContextInfo;[IZ)[I
    .registers 19
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hwKeyId"    # [I
    .param p3, "allow"    # Z

    .prologue
    .line 1564
    invoke-direct/range {p0 .. p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1568
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v12

    if-nez v12, :cond_13

    .line 1569
    const-string v12, "KioskModeService"

    const-string v13, "Failed. Caller is not COM container or owner"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    const/4 v9, 0x0

    .line 1623
    :cond_12
    :goto_12
    return-object v9

    .line 1573
    :cond_13
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1575
    .local v11, "userId":I
    move-object/from16 v0, p1

    iget v1, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1576
    .local v1, "callingUid":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    .local v10, "successList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1579
    .local v4, "hwKeyIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p2, :cond_2c

    move-object/from16 v0, p2

    array-length v12, v0

    if-nez v12, :cond_2e

    .line 1580
    :cond_2c
    const/4 v9, 0x0

    goto :goto_12

    .line 1583
    :cond_2e
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_2f
    move-object/from16 v0, p2

    array-length v12, v0

    if-ge v6, v12, :cond_40

    .line 1584
    aget v12, p2, v6

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1583
    add-int/lit8 v6, v6, 0x1

    goto :goto_2f

    .line 1586
    :cond_40
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1587
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_44
    :goto_44
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_102

    .line 1588
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1589
    .local v8, "keycode":I
    if-nez p3, :cond_ab

    .line 1590
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v1, v12}, addToBlocked(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 1591
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1592
    if-nez v11, :cond_44

    .line 1593
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1596
    .local v3, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_70
    const-string v12, "KioskMode"

    const-string v13, "allowHardwareKeys"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v3, v12, v13, v14, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1597
    const-string v12, "KioskModeService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GearPolicy allowHardwareKeys : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " allow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_a5} :catch_a6

    goto :goto_44

    .line 1598
    :catch_a6
    move-exception v2

    .line 1599
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 1604
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_ab
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v1, v12}, removeFromBlocked(ILjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_44

    .line 1605
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    if-nez v11, :cond_44

    .line 1607
    new-instance v3, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v12}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1610
    .restart local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_c5
    const-string v12, "KioskMode"

    const-string v13, "allowHardwareKeys"

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v3, v12, v13, v14, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringAndBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1611
    const-string v12, "KioskModeService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "GearPolicy allowHardwareKeys : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " allow : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_fa} :catch_fc

    goto/16 :goto_44

    .line 1612
    :catch_fc
    move-exception v2

    .line 1613
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_44

    .line 1619
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v8    # "keycode":I
    :cond_102
    iget-object v12, p0, mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v12}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 1620
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    new-array v9, v12, [I

    .line 1621
    .local v9, "ret":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_10e
    array-length v12, v9

    if-ge v5, v12, :cond_12

    .line 1622
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aput v12, v9, v5

    .line 1621
    add-int/lit8 v5, v5, 0x1

    goto :goto_10e
.end method

.method public allowMultiWindowMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2044
    invoke-direct {p0, p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2045
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2046
    .local v6, "userId":I
    const/4 v3, 0x0

    .line 2047
    .local v3, "ret":Z
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowMultiWindowMode() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    const/16 v7, 0x64

    if-lt v6, v7, :cond_33

    move v4, v3

    .line 2084
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_32
    return v4

    .line 2053
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_33
    const/4 v2, 0x1

    .line 2055
    .local v2, "isAllowedbyAdmin":Z
    :try_start_34
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "KIOSKMODE"

    const-string/jumbo v10, "multiWindowEnabled"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_40} :catch_aa

    move-result v2

    .line 2059
    :goto_41
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "KIOSKMODE"

    const-string/jumbo v10, "multiWindowEnabled"

    invoke-virtual {v7, v8, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 2061
    if-eqz v3, :cond_cc

    .line 2062
    const/4 v7, 0x1

    invoke-direct {p0, v7}, applyMultiWindowPolicy(Z)Z

    move-result v3

    .line 2063
    if-nez v3, :cond_7c

    .line 2064
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v9, "KIOSKMODE"

    const-string/jumbo v10, "multiWindowEnabled"

    invoke-virtual {v7, v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 2066
    .local v5, "retFail":Z
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowMultiWindowMode() : restore policy because fail to update multiwindow setting. = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2069
    .end local v5    # "retFail":Z
    :cond_7c
    if-nez v6, :cond_a8

    .line 2070
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2073
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_85
    const-string v7, "KioskMode"

    const-string v8, "allowMultiWindowMode"

    invoke-virtual {p0, v6}, isMultiWindowModeAllowedAsUser(I)Z

    move-result v9

    invoke-virtual {v1, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2074
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy allowMultiWindowMode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a8} :catch_c7

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_a8
    :goto_a8
    move v4, v3

    .line 2084
    .restart local v4    # "ret":I
    goto :goto_32

    .line 2056
    .end local v4    # "ret":I
    :catch_aa
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowMultiWindowMode() : fail to get admin policy value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_41

    .line 2075
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_c7
    move-exception v0

    .line 2076
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a8

    .line 2081
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_cc
    const-string v7, "KioskModeService"

    const-string v8, "allowMultiWindowMode() : failed to update policy. "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a8
.end method

.method public allowTaskManager(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1773
    const/4 v2, 0x1

    .line 1774
    .local v2, "ret":Z
    invoke-direct {p0, p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1777
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v7}, isTaskManagerAvailable(I)Z

    move-result v7

    if-nez v7, :cond_16

    .line 1778
    const-string v7, "KioskModeService"

    const-string v8, "Task Manager is not available in this device"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    :goto_15
    return v6

    .line 1784
    :cond_16
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 1785
    const-string v7, "KioskModeService"

    const-string v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 1789
    :cond_24
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1790
    .local v3, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1791
    .local v4, "token":J
    if-nez p2, :cond_49

    .line 1793
    :try_start_2e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    sget-object v7, Landroid/app/enterprise/kioskmode/KioskMode;->CONTROL_PANEL_PKGNAME:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1794
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    sget-object v7, Landroid/app/enterprise/kioskmode/KioskMode;->TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 1795
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    sget-object v7, Landroid/app/enterprise/kioskmode/KioskMode;->MINI_TASK_MANAGER_PKGNAME:Ljava/lang/String;

    invoke-interface {v6, v7, v3}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_49} :catch_8a

    .line 1801
    :cond_49
    :goto_49
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1802
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "taskManagerEnabled"

    invoke-virtual {v6, v7, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 1805
    if-eqz v2, :cond_88

    if-nez v3, :cond_88

    .line 1806
    new-instance v1, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1809
    .local v1, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_64
    const-string v6, "KioskMode"

    const-string v7, "allowTaskManager"

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v3}, isTaskManagerAllowedAsUser(ZI)Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1810
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GearPolicy allowTaskManager : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_88} :catch_93

    .end local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_88
    :goto_88
    move v6, v2

    .line 1816
    goto :goto_15

    .line 1796
    :catch_8a
    move-exception v0

    .line 1797
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "KioskModeService"

    const-string v7, "Fail getting ActivityManager"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49

    .line 1811
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_93
    move-exception v0

    .line 1812
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88
.end method

.method public clearAllNotifications(Landroid/app/enterprise/ContextInfo;)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x1

    .line 2140
    invoke-direct {p0, p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2141
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 2142
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 2143
    .local v6, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2144
    .local v4, "token":J
    const-string/jumbo v8, "notification"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 2147
    .local v3, "sService":Landroid/app/INotificationManager;
    :try_start_1c
    invoke-interface {v3, v6}, Landroid/app/INotificationManager;->clearAllNotificationsAsUser(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1f} :catch_3b
    .catchall {:try_start_1c .. :try_end_1f} :catchall_48

    .line 2153
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2156
    if-nez v6, :cond_3a

    .line 2157
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2160
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_2b
    const-string v8, "KioskMode"

    const-string v9, "clearAllNotifications"

    const/4 v10, 0x1

    invoke-virtual {v2, v8, v9, v10}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2161
    const-string v8, "KioskModeService"

    const-string v9, "GearPolicy clearAllNotifications"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_3a} :catch_4d

    .line 2166
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_3a
    :goto_3a
    return v7

    .line 2149
    :catch_3b
    move-exception v1

    .line 2150
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3c
    const-string v7, "KioskModeService"

    const-string v8, "Failed to clear notification bar"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_48

    .line 2151
    const/4 v7, 0x0

    .line 2153
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3a

    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_48
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 2162
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_4d
    move-exception v1

    .line 2163
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method public disableKioskMode(Landroid/app/enterprise/ContextInfo;)V
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 462
    const-string v4, "KioskModeService"

    const-string/jumbo v5, "disableKioskMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, p1}, enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 466
    sget-boolean v4, mProcessing:Z

    if-ne v4, v6, :cond_19

    .line 467
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v5, -0x4

    invoke-direct {p0, v4, v7, v5}, broadcastKioskResult(III)V

    .line 484
    :goto_18
    return-void

    .line 470
    :cond_19
    iget-object v4, p0, mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 471
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 472
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "adminuid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 473
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 474
    iget-object v4, p0, mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 479
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3a
    const-string v4, "KioskMode"

    const-string/jumbo v5, "disableKioskMode"

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 480
    const-string v4, "KioskModeService"

    const-string v5, "GearPolicy disableKioskMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4a} :catch_4b

    goto :goto_18

    .line 481
    :catch_4b
    move-exception v1

    .line 482
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public enableKioskMode(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "kioskPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 433
    const-string v4, "KioskModeService"

    const-string/jumbo v5, "enableKioskMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-direct {p0, p1}, enforceOwnerOnlyAndKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 437
    sget-boolean v4, mProcessing:Z

    if-ne v4, v6, :cond_18

    .line 438
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v5, -0x4

    invoke-direct {p0, v4, v6, v5}, broadcastKioskResult(III)V

    .line 456
    :goto_17
    return-void

    .line 441
    :cond_18
    iget-object v4, p0, mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v4, v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 442
    .local v3, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "package"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v4, "adminuid"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 445
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 446
    iget-object v4, p0, mHandler:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 451
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_3f
    const-string v4, "KioskMode"

    const-string/jumbo v5, "enableKioskMode"

    invoke-virtual {v2, v4, v5, p2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetStringTypePolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v4, "KioskModeService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GearPolicy enableKioskMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5f} :catch_60

    goto :goto_17

    .line 453
    :catch_60
    move-exception v1

    .line 454
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public getAllBlockedHardwareKeys(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1714
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v5

    .line 1716
    .local v5, "userId":I
    const/4 v2, 0x0

    .line 1717
    .local v2, "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1719
    .local v0, "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, getAllBlockedList()Ljava/util/Map;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    check-cast v2, Ljava/util/Set;

    .line 1721
    .restart local v2    # "blockedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1723
    .local v1, "blockedListInt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_42

    .line 1724
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1725
    .restart local v0    # "blockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1726
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 1727
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1728
    .local v4, "next":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_24

    .line 1729
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 1732
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "next":Ljava/lang/String;
    :cond_42
    return-object v1
.end method

.method public getBlockedEdgeScreen(Landroid/app/enterprise/ContextInfo;)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2535
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "edgeScreenBlockedFunctions"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2537
    .local v1, "blockedEdgeScreenList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 2538
    .local v2, "blockedFunctionsAllAdmins":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2539
    .local v0, "blockedEdgeScreen":I
    or-int/2addr v2, v0

    .line 2540
    goto :goto_10

    .line 2541
    .end local v0    # "blockedEdgeScreen":I
    :cond_22
    return v2
.end method

.method public getBlockedHwKeysCache()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1691
    iget-object v0, p0, mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getHardwareKeyList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1557
    invoke-direct {p0, p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1558
    iget-object v1, p0, mAvailableKeyCodesList:Ljava/util/List;

    monitor-enter v1

    .line 1559
    :try_start_6
    iget-object v0, p0, mAvailableKeyCodesList:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1560
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getKioskHomePackage(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 570
    invoke-direct {p0, p1}, getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 572
    .local v0, "userId":I
    invoke-virtual {p0, v0}, isKioskModeEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 573
    invoke-virtual {p0, v0}, getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v1

    .line 575
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getKioskHomePackageAsUser(I)Ljava/lang/String;
    .registers 11
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 581
    const/4 v6, 0x2

    :try_start_2
    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "kioskModeEnabled"

    aput-object v7, v0, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "kioskModeKioskPackage"

    aput-object v7, v0, v6

    .line 586
    .local v0, "columns":[Ljava/lang/String;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KIOSKMODE"

    invoke-virtual {v6, v7, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 589
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_60

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_60

    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 594
    .local v3, "it":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 595
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 596
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "kioskModeEnabled"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v8, :cond_25

    .line 597
    const-string/jumbo v6, "kioskModeKioskPackage"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_46

    move-result-object v4

    .line 608
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v5    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :goto_45
    return-object v4

    .line 604
    :catch_46
    move-exception v2

    .line 605
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KioskModeService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getKioskHomePackageAsUser() failed user : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_60
    const/4 v4, 0x0

    goto :goto_45
.end method

.method public hideNavigationBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1974
    const/4 v5, 0x1

    .line 1975
    .local v5, "result":Z
    invoke-direct {p0, p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1977
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1978
    const-string v7, "KioskModeService"

    const-string v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    const/4 v7, 0x0

    .line 2012
    :goto_13
    return v7

    .line 1982
    :cond_14
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1983
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1986
    .local v4, "oldVal":I
    :try_start_17
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_17 .. :try_end_21} :catch_74

    move-result v4

    .line 1992
    :goto_22
    const/4 v7, 0x1

    if-ne p2, v7, :cond_6b

    or-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 1995
    .end local v4    # "oldVal":I
    .local v3, "newVal":I
    .local v3, "oldVal":I
    :goto_28
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 1998
    invoke-direct {p0}, applyHideSystemBarPolicy()V

    .line 2000
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 2002
    .local v6, "userId":I
    if-eqz v5, :cond_69

    if-nez v6, :cond_69

    .line 2003
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2006
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_45
    const-string v7, "KioskMode"

    const-string/jumbo v8, "hideNavigationBar"

    invoke-direct {p0, v6}, isNavigationBarHiddenAsUser(I)Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2007
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy hideNavigationBar : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_69} :catch_6f

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_69
    :goto_69
    move v7, v5

    .line 2012
    goto :goto_13

    .line 1992
    .end local v3    # "oldVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :cond_6b
    and-int/lit8 v4, v4, -0x3

    move v3, v4

    .end local v4    # "oldVal":I
    .local v3, "oldVal":I
    goto :goto_28

    .line 2008
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v3, "newVal":I
    .restart local v6    # "userId":I
    :catch_6f
    move-exception v1

    .line 2009
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    .line 1988
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "newVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :catch_74
    move-exception v7

    goto :goto_22
.end method

.method public hideStatusBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1898
    const/4 v5, 0x1

    .line 1899
    .local v5, "result":Z
    invoke-direct {p0, p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1901
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1902
    const-string v7, "KioskModeService"

    const-string v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const/4 v7, 0x0

    .line 1937
    :goto_13
    return v7

    .line 1906
    :cond_14
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1907
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1910
    .local v4, "oldVal":I
    :try_start_17
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_17 .. :try_end_21} :catch_74

    move-result v4

    .line 1916
    :goto_22
    const/4 v7, 0x1

    if-ne p2, v7, :cond_6b

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 1919
    .end local v4    # "oldVal":I
    .local v3, "newVal":I
    .local v3, "oldVal":I
    :goto_28
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 1922
    invoke-direct {p0}, applyHideSystemBarPolicy()V

    .line 1924
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1926
    .local v6, "userId":I
    if-eqz v5, :cond_69

    if-nez v6, :cond_69

    .line 1927
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1930
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_45
    const-string v7, "KioskMode"

    const-string/jumbo v8, "hideStatusBar"

    invoke-direct {p0, v6}, isStatusBarHiddenAsUser(I)Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1931
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy hideStatusBar : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_69} :catch_6f

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_69
    :goto_69
    move v7, v5

    .line 1937
    goto :goto_13

    .line 1916
    .end local v3    # "oldVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :cond_6b
    and-int/lit8 v4, v4, -0x2

    move v3, v4

    .end local v4    # "oldVal":I
    .local v3, "oldVal":I
    goto :goto_28

    .line 1932
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v3, "newVal":I
    .restart local v6    # "userId":I
    :catch_6f
    move-exception v1

    .line 1933
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    .line 1912
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "newVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :catch_74
    move-exception v7

    goto :goto_22
.end method

.method public hideSystemBar(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hide"    # Z

    .prologue
    .line 1418
    const/4 v5, 0x1

    .line 1419
    .local v5, "result":Z
    invoke-direct {p0, p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1421
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 1422
    const-string v7, "KioskModeService"

    const-string v8, "Failed. Caller is not COM container or owner"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    const/4 v7, 0x0

    .line 1457
    :goto_13
    return v7

    .line 1426
    :cond_14
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1427
    .local v0, "callingUid":I
    const/4 v4, 0x0

    .line 1430
    .local v4, "oldVal":I
    :try_start_17
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_17 .. :try_end_21} :catch_74

    move-result v4

    .line 1436
    :goto_22
    const/4 v7, 0x1

    if-ne p2, v7, :cond_6b

    or-int/lit8 v4, v4, 0x3

    move v3, v4

    .line 1439
    .end local v4    # "oldVal":I
    .local v3, "newVal":I
    .local v3, "oldVal":I
    :goto_28
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KIOSKMODE"

    const-string/jumbo v9, "systemBarEnabled"

    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 1442
    invoke-direct {p0}, applyHideSystemBarPolicy()V

    .line 1444
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 1446
    .local v6, "userId":I
    if-eqz v5, :cond_69

    if-nez v6, :cond_69

    .line 1447
    new-instance v2, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v7}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1450
    .local v2, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_45
    const-string v7, "KioskMode"

    const-string/jumbo v8, "hideSystemBar"

    invoke-direct {p0, v6}, isSystemBarHiddenAsUser(I)Z

    move-result v9

    invoke-virtual {v2, v7, v8, v9}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1451
    const-string v7, "KioskModeService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "GearPolicy hideSystemBar : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_69} :catch_6f

    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_69
    :goto_69
    move v7, v5

    .line 1457
    goto :goto_13

    .line 1436
    .end local v3    # "oldVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :cond_6b
    and-int/lit8 v4, v4, -0x4

    move v3, v4

    .end local v4    # "oldVal":I
    .local v3, "oldVal":I
    goto :goto_28

    .line 1452
    .restart local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .local v3, "newVal":I
    .restart local v6    # "userId":I
    :catch_6f
    move-exception v1

    .line 1453
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_69

    .line 1432
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    .end local v3    # "newVal":I
    .end local v6    # "userId":I
    .restart local v4    # "oldVal":I
    :catch_74
    move-exception v7

    goto :goto_22
.end method

.method public isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2178
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string/jumbo v5, "kioskModeAirCommandAllowed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2182
    .local v1, "kioskPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2183
    .local v2, "permission":Z
    if-nez v2, :cond_f

    .line 2188
    .end local v2    # "permission":Z
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x1

    goto :goto_21
.end method

.method public isAirViewModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2276
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KIOSKMODE"

    const-string/jumbo v5, "kioskModeAirViewAllowed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2280
    .local v1, "kioskPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2281
    .local v2, "permission":Z
    if-nez v2, :cond_f

    .line 2286
    .end local v2    # "permission":Z
    :goto_21
    return v2

    :cond_22
    const/4 v2, 0x1

    goto :goto_21
.end method

.method public isAppsEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2577
    const/16 v0, 0x10

    invoke-direct {p0, v0}, isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2557
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isEdgeLightingAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2569
    const/16 v0, 0x8

    invoke-direct {p0, v0}, isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "hwKeyId"    # I
    .param p3, "showMsg"    # Z

    .prologue
    .line 1736
    const/4 v0, 0x1

    .line 1738
    .local v0, "allowed":Z
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v1

    .line 1740
    .local v1, "userId":I
    iget-object v2, p0, mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_38

    iget-object v2, p0, mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 1741
    iget-object v2, p0, mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    # getter for: Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->access$1400(Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1742
    const/4 v0, 0x0

    .line 1746
    :cond_38
    if-eqz p3, :cond_42

    if-nez v0, :cond_42

    .line 1747
    const v2, 0x1040b38

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1750
    :cond_42
    return v0
.end method

.method public isInformationStreamAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2573
    const/4 v0, 0x4

    invoke-direct {p0, v0}, isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isKioskModeEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 492
    const/4 v5, 0x0

    .line 494
    .local v5, "ret":Z
    const/4 v10, 0x1

    :try_start_4
    new-array v0, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "kioskModeEnabled"

    aput-object v11, v0, v10

    .line 498
    .local v0, "columns":[Ljava/lang/String;
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "KIOSKMODE"

    invoke-virtual {v10, v11, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 501
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_51

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_51

    .line 502
    const/4 v1, 0x0

    .line 503
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 505
    .local v3, "it":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3d

    .line 506
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 507
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v10, "kioskModeEnabled"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_37} :catch_59

    move-result v10

    if-ne v10, v8, :cond_4f

    move v5, v8

    .line 508
    :goto_3b
    if-ne v5, v8, :cond_21

    .line 519
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3d
    :goto_3d
    if-nez v5, :cond_4e

    .line 520
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 522
    .local v6, "token":J
    :try_start_43
    invoke-direct {p0}, getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4a} :catch_63
    .catchall {:try_start_43 .. :try_end_4a} :catchall_80

    move-result v5

    .line 526
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    .end local v6    # "token":J
    :cond_4e
    :goto_4e
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_4f
    move v5, v9

    .line 507
    goto :goto_3b

    .line 513
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_51
    :try_start_51
    const-string v8, "KioskModeService"

    const-string v9, "There\'s no matched data"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_58} :catch_59

    goto :goto_3d

    .line 515
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_59
    move-exception v2

    .line 516
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "KioskModeService"

    const-string/jumbo v9, "isKioskModeEnabledAsUser() failed"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 523
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "token":J
    :catch_63
    move-exception v2

    .line 524
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_64
    const-string v8, "KioskModeService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_64 .. :try_end_7c} :catchall_80

    .line 526
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4e

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_80
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public isKioskModeEnabledAsUser(I)Z
    .registers 12
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 533
    const/4 v5, 0x0

    .line 535
    .local v5, "ret":Z
    const/4 v8, 0x1

    :try_start_4
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "kioskModeEnabled"

    aput-object v9, v0, v8

    .line 539
    .local v0, "columns":[Ljava/lang/String;
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KIOSKMODE"

    invoke-virtual {v8, v9, v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 542
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_40

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_40

    .line 543
    const/4 v1, 0x0

    .line 544
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 546
    .local v3, "it":Ljava/util/Iterator;
    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3d

    .line 547
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 548
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v8, "kioskModeEnabled"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v6, :cond_3e

    move v5, v6

    .line 549
    :goto_3b
    if-ne v5, v6, :cond_21

    .line 559
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3d
    :goto_3d
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "it":Ljava/util/Iterator;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_3e
    move v5, v7

    .line 548
    goto :goto_3b

    .line 554
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_40
    const-string v6, "KioskModeService"

    const-string v7, "There\'s no matched data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_47} :catch_48

    goto :goto_3d

    .line 556
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_48
    move-exception v2

    .line 557
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KioskModeService"

    const-string/jumbo v7, "isKioskModeEnabledAsUser() failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d
.end method

.method public isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2089
    invoke-direct {p0, p1}, getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2091
    .local v1, "userId":I
    invoke-virtual {p0, v1}, isMultiWindowModeAllowedAsUser(I)Z

    move-result v0

    .line 2093
    .local v0, "allowed":Z
    if-eqz p2, :cond_12

    if-nez v0, :cond_12

    .line 2094
    const v2, 0x1040b4a

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2098
    :cond_12
    return v0
.end method

.method public isMultiWindowModeAllowedAsUser(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    .line 2102
    const/4 v1, 0x1

    .line 2104
    .local v1, "allowed":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "multiWindowEnabled"

    invoke-virtual {v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2106
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_10
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2107
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2108
    const/4 v1, 0x0

    goto :goto_10

    .line 2112
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_24
    return v1
.end method

.method public isNavigationBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2021
    const/4 v0, 0x0

    invoke-direct {p0, v0}, isNavigationBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isNightClockAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2561
    const/4 v0, 0x1

    invoke-direct {p0, v0}, isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isPeopleEdgeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2565
    const/4 v0, 0x2

    invoke-direct {p0, v0}, isEdgeScreenFunctionalityAllowed(I)Z

    move-result v0

    return v0
.end method

.method public isStatusBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1946
    const/4 v0, 0x0

    invoke-direct {p0, v0}, isStatusBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isSystemBarHidden(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1467
    const/4 v0, 0x0

    invoke-direct {p0, v0}, isSystemBarHiddenAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1820
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, isTaskManagerAllowedAsUser(ZI)Z

    move-result v0

    return v0
.end method

.method public isTaskManagerAllowedAsUser(ZI)Z
    .registers 10
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1826
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p2

    .line 1827
    const/4 v1, 0x1

    .line 1828
    .local v1, "allowed":Z
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KIOSKMODE"

    const-string/jumbo v6, "taskManagerEnabled"

    invoke-virtual {v4, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v3

    .line 1830
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1831
    .local v0, "adminValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    .line 1832
    const/4 v1, 0x0

    goto :goto_14

    .line 1835
    .end local v0    # "adminValue":Ljava/lang/Boolean;
    :cond_28
    if-eqz p1, :cond_32

    if-nez v1, :cond_32

    .line 1836
    const v4, 0x1040b3a

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1840
    :cond_32
    return v1
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 323
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 399
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 401
    .local v0, "userId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_13

    .line 402
    invoke-direct {p0}, applyHideSystemBarPolicy()V

    .line 405
    :cond_13
    iget-object v1, p0, mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 406
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 16
    .param p1, "uid"    # I

    .prologue
    .line 331
    new-instance v9, Landroid/app/enterprise/ContextInfo;

    const/4 v10, 0x0

    invoke-direct {v9, p1, v10}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-static {v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 335
    .local v7, "userId":I
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 338
    .local v2, "deletedInfo":Landroid/app/enterprise/ContextInfo;
    const/4 v9, 0x0

    invoke-virtual {p0, v2, v9}, isMultiWindowModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 339
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, allowMultiWindowMode(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 342
    :cond_1a
    invoke-virtual {p0, v2}, isAirCommandModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    if-nez v9, :cond_24

    .line 343
    const/4 v9, 0x1

    invoke-virtual {p0, v2, v9}, allowAirCommandMode(Landroid/app/enterprise/ContextInfo;Z)Z

    .line 347
    :cond_24
    if-nez v7, :cond_80

    .line 349
    const/4 v9, 0x2

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "adminUid"

    aput-object v10, v6, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "edgeScreenBlockedFunctions"

    aput-object v10, v6, v9

    .line 354
    .local v6, "returnColumns":[Ljava/lang/String;
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "KIOSKMODE"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v6, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 358
    .local v8, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v0, 0x0

    .line 359
    .local v0, "adminBlocksInfoStream":Z
    const/4 v4, 0x0

    .line 360
    .local v4, "infoStreamBlockedAfterRemoval":Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_43
    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_78

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 361
    .local v1, "cv":Landroid/content/ContentValues;
    const-string/jumbo v9, "edgeScreenBlockedFunctions"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/lit8 v9, v9, 0x4

    if-lez v9, :cond_72

    const/4 v5, 0x1

    .line 364
    .local v5, "informationStreamBlocked":Z
    :goto_5f
    int-to-long v10, p1

    const-string v9, "adminUid"

    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    cmp-long v9, v10, v12

    if-eqz v9, :cond_74

    .line 367
    if-eqz v5, :cond_43

    .line 368
    const/4 v4, 0x1

    goto :goto_43

    .line 361
    .end local v5    # "informationStreamBlocked":Z
    :cond_72
    const/4 v5, 0x0

    goto :goto_5f

    .line 373
    .restart local v5    # "informationStreamBlocked":Z
    :cond_74
    if-eqz v5, :cond_43

    .line 374
    const/4 v0, 0x1

    goto :goto_43

    .line 382
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v5    # "informationStreamBlocked":Z
    :cond_78
    if-eqz v0, :cond_80

    if-nez v4, :cond_80

    .line 383
    const/4 v9, 0x1

    invoke-direct {p0, v9}, broadcastBlockedEdgeScreenIntent(Z)V

    .line 388
    .end local v0    # "adminBlocksInfoStream":Z
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "infoStreamBlockedAfterRemoval":Z
    .end local v6    # "returnColumns":[Ljava/lang/String;
    .end local v8    # "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_80
    invoke-virtual {p0, v7}, isKioskModeEnabledAsUser(I)Z

    move-result v9

    if-eqz v9, :cond_8f

    invoke-direct {p0, v7}, getActiveKioskAdmin(I)I

    move-result v9

    if-ne p1, v9, :cond_8f

    .line 389
    invoke-direct {p0, v7}, forceTerminateKiosk(I)V

    .line 391
    :cond_8f
    return-void
.end method

.method public systemReady()V
    .registers 8

    .prologue
    .line 291
    iget-object v6, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 292
    .local v5, "usersList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v4, 0x0

    .line 296
    .local v4, "userId":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 297
    .local v1, "i":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 298
    invoke-virtual {p0, v4}, isKioskModeEnabledAsUser(I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 299
    invoke-virtual {p0, v4}, getKioskHomePackageAsUser(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    .local v3, "kioskPackage":Ljava/lang/String;
    invoke-direct {p0, v4}, getDefaultHomeScreen(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "currentHomePackage":Ljava/lang/String;
    if-eqz v3, :cond_3a

    if-eqz v0, :cond_3a

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 304
    invoke-direct {p0, v4, v0, v3}, setDefaultHomeScreen(ILjava/lang/String;Ljava/lang/String;)Z

    .line 309
    :cond_3a
    invoke-direct {p0, v4}, registerPackageRemoveReceiver(I)V

    .line 310
    invoke-direct {p0, v4}, registerTerminationReceiver(I)V

    goto :goto_b

    .line 314
    .end local v0    # "currentHomePackage":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/pm/UserInfo;
    .end local v3    # "kioskPackage":Ljava/lang/String;
    :cond_41
    invoke-direct {p0}, registerSwitchingUserReceiver()V

    .line 316
    invoke-direct {p0}, initializeKeyCodeLists()V

    .line 317
    iget-object v6, p0, mCache:Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;

    invoke-virtual {v6}, Lcom/android/server/enterprise/kioskmode/KioskModeService$KioskModeCache;->updateCache()Z

    .line 318
    return-void
.end method

.method public wipeRecentTasks(Landroid/app/enterprise/ContextInfo;)Z
    .registers 3
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1525
    invoke-direct {p0, p1}, enforceKioskModePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1527
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-direct {p0, v0}, wipeRecentTasks(I)Z

    move-result v0

    return v0
.end method
