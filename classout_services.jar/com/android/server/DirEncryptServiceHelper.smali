.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;,
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
    }
.end annotation


# static fields
.field private static final APPLIED_POLICIES:Ljava/lang/String; = "applied_sdcard_policies"

.field private static final DELAY:I = 0x1f4

.field private static final FIPS_EDK_PATH_SD:Ljava/lang/String; = "edk_p_sd"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final SECURE_MOUNT_PATH:Ljava/lang/String; = "/mnt/secure/staging"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"

.field private static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

.field private static mMountSDcardToHelper:Z

.field private static mNeedToCreateKey:Z

.field private static mSync:Ljava/lang/Object;


# instance fields
.field private mAnimateSync:Ljava/lang/Object;

.field private mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field private mBootCompleted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDecryptDialog:Landroid/app/AlertDialog;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mErrAdditionalSpace:I

.field private mFirstUnlockLockscreen:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastError:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/storage/IDirEncryptServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPassword:Z

.field private mProgressTime:J

.field private mRemoteProgressView:Landroid/widget/RemoteViews;

.field private mSelfSDMountRequested:Z

.field private mServiceStatus:I

.field private mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field private mUnnmountRequested:Z

.field private mWasEncryptedCard:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 73
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, LOCAL_LOGE:Z

    .line 74
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, LOCAL_LOGD:Z

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mSync:Ljava/lang/Object;

    .line 100
    sput-boolean v2, mNeedToCreateKey:Z

    .line 101
    sput-boolean v2, mMountSDcardToHelper:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-direct {v1, p0, v4}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$1;)V

    iput-object v1, p0, mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 89
    iput-object v4, p0, mHandler:Landroid/os/Handler;

    .line 90
    iput-object v4, p0, mRemoteProgressView:Landroid/widget/RemoteViews;

    .line 91
    iput-object v4, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    .line 92
    iput-object v4, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 95
    iput-boolean v2, p0, mSelfSDMountRequested:Z

    .line 96
    iput-boolean v2, p0, mUnnmountRequested:Z

    .line 97
    iput-boolean v2, p0, mFirstUnlockLockscreen:Z

    .line 98
    iput-boolean v2, p0, mWasEncryptedCard:Z

    .line 99
    iput-boolean v2, p0, mBootCompleted:Z

    .line 102
    iput-boolean v2, p0, mPassword:Z

    .line 107
    iput v2, p0, mErrAdditionalSpace:I

    .line 108
    iput v2, p0, mLastError:I

    .line 109
    iput v2, p0, mServiceStatus:I

    .line 111
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, mListeners:Landroid/os/RemoteCallbackList;

    .line 114
    iput-object v4, p0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 115
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mAnimateSync:Ljava/lang/Object;

    .line 119
    const-wide/16 v2, -0x1

    iput-wide v2, p0, mProgressTime:J

    .line 131
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 392
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 393
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v1

    iput-object v1, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    .line 394
    new-instance v1, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v1, p0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 395
    new-instance v1, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 398
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 400
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 71
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 71
    iget-object v0, p0, mAnimateSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/DirEncryptServiceHelper;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 7
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;
    .param p1, "x1"    # Landroid/app/PendingIntent;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DirEncryptServiceHelper;)Landroid/dirEncryption/DirEncryptionWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 71
    iget-object v0, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DirEncryptServiceHelper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptServiceHelper;

    .prologue
    .line 71
    iget-boolean v0, p0, mBootCompleted:Z

    return v0
.end method

.method private clearNotification()V
    .registers 4

    .prologue
    .line 1263
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1265
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    sget v1, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1266
    return-void
.end method

.method private doCheckEncMeta()V
    .registers 5

    .prologue
    .line 1237
    const-string v0, "HiddenMount"

    iget-object v1, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1238
    const-string/jumbo v0, "dir_crypto"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "encMetaCheck"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/mnt/secure/staging"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    :cond_22
    return-void
.end method

.method private doEncryption()V
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1199
    iget-object v7, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v7}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v2

    .line 1201
    .local v2, "reqPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v7, v10, :cond_5a

    move v3, v5

    .line 1202
    .local v3, "requiredEnc":I
    :goto_10
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    if-ne v7, v12, :cond_5c

    move v4, v5

    .line 1203
    .local v4, "requiredFullEnc":I
    :goto_15
    iget v7, v2, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_5e

    move v1, v5

    .line 1216
    .local v1, "excludeMedia":I
    :goto_1b
    const-wide/16 v8, 0xbb8

    :try_start_1d
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_60

    .line 1223
    :goto_20
    const-string v7, ""

    invoke-direct {p0, v5, v3, v7}, showNotification(IILjava/lang/String;)V

    .line 1225
    if-ne v3, v5, :cond_7c

    .line 1226
    invoke-direct {p0, v10}, setStatus(I)V

    .line 1227
    const-string/jumbo v7, "free"

    invoke-direct {p0, v6, v7}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1233
    :goto_30
    const-string/jumbo v7, "dir_crypto"

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const-string/jumbo v9, "encrypt"

    aput-object v9, v8, v6

    const-string v6, ""

    aput-object v6, v8, v5

    const-string v5, "/mnt/secure/staging"

    aput-object v5, v8, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v12

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-direct {p0, v7, v8}, sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1234
    return-void

    .end local v1    # "excludeMedia":I
    .end local v3    # "requiredEnc":I
    .end local v4    # "requiredFullEnc":I
    :cond_5a
    move v3, v6

    .line 1201
    goto :goto_10

    .restart local v3    # "requiredEnc":I
    :cond_5c
    move v4, v6

    .line 1202
    goto :goto_15

    .restart local v4    # "requiredFullEnc":I
    :cond_5e
    move v1, v6

    .line 1203
    goto :goto_1b

    .line 1217
    .restart local v1    # "excludeMedia":I
    :catch_60
    move-exception v0

    .line 1219
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "doEncryption Exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, logE(Ljava/lang/String;)V

    .line 1220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 1229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7c
    invoke-direct {p0, v11}, setStatus(I)V

    .line 1230
    const-string/jumbo v7, "free"

    invoke-direct {p0, v6, v7}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_30
.end method

.method private doWorkForPassword(Ljava/lang/String;)V
    .registers 15
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 898
    if-nez p1, :cond_4

    .line 899
    const-string p1, ""

    .line 901
    :cond_4
    invoke-virtual {p0, p1}, addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "escapedPassword":Ljava/lang/String;
    iget-boolean v9, p0, mPassword:Z

    if-nez v9, :cond_e0

    .line 905
    new-instance v4, Ljava/io/File;

    const-string v9, "/efs/"

    const-string/jumbo v10, "edk_p_sd"

    invoke-direct {v4, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    .local v4, "f":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/system/"

    const-string/jumbo v10, "edk_p_sd"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    .local v5, "f2":Ljava/io/File;
    const-string/jumbo v9, "security.mdpp"

    const-string v10, "None"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 908
    .local v0, "MDPP_PROPERTY":Ljava/lang/String;
    const-string/jumbo v1, "false"

    .line 909
    .local v1, "TRUSTEDBOOT_PROPERTY":Ljava/lang/String;
    const/4 v6, 0x0

    .line 911
    .local v6, "mdppUsable":Z
    const-string v9, "Ready"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_45

    const-string v9, "Enforcing"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_45

    const-string v9, "Enabled"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 912
    :cond_45
    const/4 v6, 0x1

    .line 915
    :cond_46
    :try_start_46
    invoke-static {}, getMountService()Landroid/os/storage/IMountService;

    move-result-object v7

    .line 916
    .local v7, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v9, "security.ode.trustedboot"

    invoke-interface {v7, v9}, Landroid/os/storage/IMountService;->getPropertyFromFooter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_50} :catch_9c

    move-result-object v1

    .line 922
    .end local v7    # "mountService":Landroid/os/storage/IMountService;
    :goto_51
    const/4 v9, 0x1

    iput-boolean v9, p0, mPassword:Z

    .line 923
    iget-object v9, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v9}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v9

    if-eqz v9, :cond_bf

    invoke-virtual {p0}, getNeedToCreateKey()Z

    move-result v9

    if-nez v9, :cond_bf

    .line 925
    const-string/jumbo v9, "dir_crypto"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "ssMigration"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-instance v12, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v12, v3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    invoke-direct {p0, v9, v10}, sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    iget-object v9, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v9}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v8

    .line 927
    .local v8, "state":Ljava/lang/String;
    invoke-virtual {p0}, isStorageCardEncryptionPoliciesApplied()I

    move-result v9

    if-nez v9, :cond_b4

    const-string/jumbo v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b4

    .line 928
    const/4 v9, 0x1

    iput-boolean v9, p0, mFirstUnlockLockscreen:Z

    .line 929
    invoke-direct {p0}, unmountSDCard()V

    .line 937
    .end local v8    # "state":Ljava/lang/String;
    :goto_94
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, setNeedToCreateKey(Z)V

    .line 943
    .end local v0    # "MDPP_PROPERTY":Ljava/lang/String;
    .end local v1    # "TRUSTEDBOOT_PROPERTY":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "f2":Ljava/io/File;
    .end local v6    # "mdppUsable":Z
    :goto_98
    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    .line 944
    return-void

    .line 917
    .restart local v0    # "MDPP_PROPERTY":Ljava/lang/String;
    .restart local v1    # "TRUSTEDBOOT_PROPERTY":Ljava/lang/String;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "f2":Ljava/io/File;
    .restart local v6    # "mdppUsable":Z
    :catch_9c
    move-exception v2

    .line 919
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot get the property from footer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, logE(Ljava/lang/String;)V

    goto :goto_51

    .line 931
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v8    # "state":Ljava/lang/String;
    :cond_b4
    iget-object v9, p0, mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_94

    .line 934
    .end local v8    # "state":Ljava/lang/String;
    :cond_bf
    const-string/jumbo v9, "dir_crypto"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "password"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string/jumbo v12, "create"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-instance v12, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v12, v3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object v1, v10, v11

    invoke-direct {p0, v9, v10}, sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_94

    .line 940
    .end local v0    # "MDPP_PROPERTY":Ljava/lang/String;
    .end local v1    # "TRUSTEDBOOT_PROPERTY":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "f2":Ljava/io/File;
    .end local v6    # "mdppUsable":Z
    :cond_e0
    const-string/jumbo v9, "dir_crypto"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "password"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "change"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    new-instance v12, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v12, v3}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    invoke-direct {p0, v9, v10}, sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 941
    const/4 v9, 0x1

    iput-boolean v9, p0, mPassword:Z

    goto :goto_98
.end method

.method private doWorkForUSBState(Ljava/lang/String;)V
    .registers 15
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 1045
    const-string/jumbo v8, "vold.decrypt"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1046
    .local v3, "encryptBoot":Ljava/lang/String;
    const-string/jumbo v8, "trigger_restart_min_framework"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1047
    const-string v6, "Do not work if encryption lock page"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1196
    :cond_1c
    :goto_1c
    return-void

    .line 1051
    :cond_1d
    const-string/jumbo v8, "unmounted"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_52

    iget-boolean v8, p0, mSelfSDMountRequested:Z

    if-nez v8, :cond_32

    iget-object v8, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v8

    if-eqz v8, :cond_52

    .line 1056
    :cond_32
    iget-boolean v8, p0, mFirstUnlockLockscreen:Z

    if-ne v8, v6, :cond_3a

    .line 1057
    iput-boolean v7, p0, mFirstUnlockLockscreen:Z

    .line 1058
    iput-boolean v7, p0, mSelfSDMountRequested:Z

    .line 1061
    :cond_3a
    const-string v6, "clearNotification"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1062
    invoke-direct {p0}, clearNotification()V

    .line 1064
    iget-object v6, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6, v7}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 1067
    :try_start_47
    iget-object v6, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v6}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4c} :catch_4d

    goto :goto_1c

    .line 1068
    :catch_4d
    move-exception v2

    .line 1069
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c

    .line 1071
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_52
    const-string v8, "HiddenMount"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a8

    .line 1084
    const-string v6, "clearNotification"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1085
    invoke-direct {p0}, clearNotification()V

    .line 1087
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string/jumbo v8, "device_policy"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 1088
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 1089
    .local v0, "currentUid":I
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1090
    .local v4, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    iget-boolean v6, p0, mSelfSDMountRequested:Z

    if-eqz v6, :cond_88

    .line 1091
    iput-boolean v7, p0, mSelfSDMountRequested:Z

    .line 1093
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1c

    .line 1094
    :cond_88
    iget-boolean v6, p0, mPassword:Z

    if-eqz v6, :cond_1c

    .line 1095
    iget-object v6, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 1096
    iget-object v6, p0, mHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1c

    .line 1098
    :cond_a0
    const-string/jumbo v6, "encPrefs Not found"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1101
    .end local v0    # "currentUid":I
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_a8
    const-string v8, "MoveMount"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13d

    .line 1110
    invoke-direct {p0}, getStorageCardEncryptionInternal()I

    move-result v8

    if-ne v8, v11, :cond_117

    .line 1111
    iget-boolean v8, p0, mWasEncryptedCard:Z

    if-eqz v8, :cond_d2

    .line 1112
    const-string/jumbo v6, "looks like encryption policies were received while SD card decryption was on going!!"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1113
    const-string/jumbo v6, "success"

    invoke-direct {p0, v11, v7, v6}, showNotification(IILjava/lang/String;)V

    .line 1114
    iput-boolean v7, p0, mWasEncryptedCard:Z

    .line 1115
    invoke-direct {p0, v7}, setStatus(I)V

    .line 1116
    const-string v6, "Mount"

    invoke-direct {p0, v12, v6}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1c

    .line 1118
    :cond_d2
    const-string v8, "Since encrypt is ON: final mount command"

    invoke-static {v8}, logD(Ljava/lang/String;)V

    .line 1119
    iget-object v8, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v8}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v5

    .line 1120
    .local v5, "volFsUuid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VolumeInfo volFsUuid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, logD(Ljava/lang/String;)V

    .line 1121
    const-string/jumbo v8, "dir_crypto"

    new-array v9, v10, [Ljava/lang/Object;

    const-string/jumbo v10, "mount"

    aput-object v10, v9, v7

    aput-object v5, v9, v6

    const-string v10, ""

    aput-object v10, v9, v11

    invoke-direct {p0}, getStorageCardMediaExclusionInternal()I

    move-result v10

    const/4 v11, 0x6

    if-ne v10, v11, :cond_115

    :goto_10a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v12

    invoke-direct {p0, v8, v9}, sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1c

    :cond_115
    move v6, v7

    goto :goto_10a

    .line 1125
    .end local v5    # "volFsUuid":Ljava/lang/String;
    :cond_117
    const-string v6, "Since encrypt is OFF: no final mount command"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1126
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    .line 1128
    invoke-direct {p0, v7}, setStatus(I)V

    .line 1129
    const-string v6, "Mount"

    invoke-direct {p0, v12, v6}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 1131
    iget-object v6, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v6

    if-eqz v6, :cond_1c

    iget-boolean v6, p0, mWasEncryptedCard:Z

    if-eqz v6, :cond_1c

    .line 1132
    const-string/jumbo v6, "success"

    invoke-direct {p0, v11, v7, v6}, showNotification(IILjava/lang/String;)V

    .line 1133
    iput-boolean v7, p0, mWasEncryptedCard:Z

    goto/16 :goto_1c

    .line 1136
    :cond_13d
    const-string/jumbo v8, "mounted"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_173

    .line 1137
    const-string v6, "Update SD card encryption status"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1138
    invoke-direct {p0}, getStorageCardEncryptionInternal()I

    move-result v6

    if-ne v6, v12, :cond_168

    .line 1139
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    .line 1141
    iget-object v6, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v6

    if-eqz v6, :cond_168

    iget-boolean v6, p0, mWasEncryptedCard:Z

    if-eqz v6, :cond_168

    .line 1142
    const-string/jumbo v6, "success"

    invoke-direct {p0, v11, v7, v6}, showNotification(IILjava/lang/String;)V

    .line 1143
    iput-boolean v7, p0, mWasEncryptedCard:Z

    .line 1146
    :cond_168
    invoke-direct {p0, v7}, setStatus(I)V

    .line 1147
    const-string/jumbo v6, "free"

    invoke-direct {p0, v12, v6}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1c

    .line 1148
    :cond_173
    const-string/jumbo v8, "removed"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19d

    .line 1152
    iput-boolean v7, p0, mUnnmountRequested:Z

    .line 1153
    iput-boolean v7, p0, mSelfSDMountRequested:Z

    .line 1154
    iput v7, p0, mLastError:I

    .line 1155
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 1157
    const-string v6, "SD card removed"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1158
    const-string v6, "clearNotification"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1159
    invoke-direct {p0}, clearNotification()V

    .line 1161
    invoke-direct {p0, v7}, setStatus(I)V

    .line 1162
    const-string/jumbo v6, "free"

    invoke-direct {p0, v7, v6}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1c

    .line 1173
    :cond_19d
    const-string/jumbo v8, "unmounted"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c8

    .line 1174
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 1175
    const-string v8, "SD card unmounted"

    invoke-static {v8}, logD(Ljava/lang/String;)V

    .line 1176
    iget v8, p0, mLastError:I

    if-nez v8, :cond_1ba

    .line 1177
    const-string v8, "clearNotification"

    invoke-static {v8}, logD(Ljava/lang/String;)V

    .line 1178
    invoke-direct {p0}, clearNotification()V

    .line 1181
    :cond_1ba
    iget-boolean v8, p0, mUnnmountRequested:Z

    if-ne v8, v6, :cond_1c

    .line 1182
    iput-boolean v7, p0, mUnnmountRequested:Z

    .line 1184
    const/16 v6, 0xa

    const/4 v8, 0x0

    invoke-direct {p0, v6, v7, v8}, showNotification(IILjava/lang/String;)V

    goto/16 :goto_1c

    .line 1186
    :cond_1c8
    const-string v6, "bad_removal"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1187
    iput-boolean v7, p0, mUnnmountRequested:Z

    .line 1188
    const-string v6, "SD card bad removed"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1189
    iget v6, p0, mLastError:I

    if-nez v6, :cond_1c

    .line 1190
    const-string v6, "clearNotification"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 1191
    invoke-direct {p0}, clearNotification()V

    .line 1192
    invoke-direct {p0, v7}, setStatus(I)V

    .line 1193
    const-string/jumbo v6, "free"

    invoke-direct {p0, v7, v6}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1c
.end method

.method private getFullStorageCardEncryptionInternal()I
    .registers 2

    .prologue
    .line 850
    iget-object v0, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    return v0
.end method

.method private static getMountService()Landroid/os/storage/IMountService;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 123
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_e

    .line 124
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    return-object v1

    .line 126
    :cond_e
    const-string v1, "Can\'t get mount service"

    invoke-static {v1}, logE(Ljava/lang/String;)V

    .line 127
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Could not contact mount service"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 8
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;
    .param p5, "ticker"    # Ljava/lang/String;

    .prologue
    .line 1245
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1246
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1248
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1249
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1250
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1251
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1253
    return-object v0
.end method

.method private getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 3

    .prologue
    .line 1011
    const/4 v0, 0x0

    .line 1013
    .local v0, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v1, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1014
    const-string v1, "EncPrefs found"

    invoke-static {v1}, logD(Ljava/lang/String;)V

    .line 1015
    iget-object v1, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 1020
    :goto_14
    return-object v0

    .line 1017
    :cond_15
    const-string v1, "EncPrefs not found"

    invoke-static {v1}, logE(Ljava/lang/String;)V

    goto :goto_14
.end method

.method private getSecurityIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 1257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "adminStart"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1259
    return-object v0
.end method

.method private getStorageCardEncryptionInternal()I
    .registers 2

    .prologue
    .line 846
    iget-object v0, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    return v0
.end method

.method private getStorageCardMediaExclusionInternal()I
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    iget v0, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mExcludeMedia:I

    return v0
.end method

.method private isAdminApplied()Z
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 983
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 984
    .local v0, "adminPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 985
    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    .line 987
    .local v2, "isDisabledByAdmin":Z
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 988
    iput v5, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 989
    const/4 v3, 0x4

    iput v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 992
    :cond_1e
    iget v3, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v5, v3, :cond_23

    .line 993
    const/4 v2, 0x1

    .line 996
    :cond_23
    return v2
.end method

.method private isEncryptionApplied()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 1000
    invoke-direct {p0}, getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 1002
    .local v0, "pol":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-virtual {p0}, isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    if-ne v2, v1, :cond_15

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;->getDefaultEnc()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_15

    .line 1007
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 837
    sget-boolean v0, LOCAL_LOGD:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_9
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 840
    sget-boolean v0, LOCAL_LOGE:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_9
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .registers 4
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 869
    invoke-direct {p0, p1, p2, v0, v0}, notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    .line 870
    return-void
.end method

.method private notifyEncryptionStatusChanged(ILjava/lang/String;II)V
    .registers 16
    .param p1, "operation"    # I
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "progress"    # I
    .param p4, "storage"    # I

    .prologue
    .line 873
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyEncryptionStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, logD(Ljava/lang/String;)V

    .line 874
    iget-object v10, p0, mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v10

    .line 875
    :try_start_24
    iget-object v1, p0, mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    .line 876
    .local v8, "n":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2b
    if-ge v7, v8, :cond_7d

    .line 877
    iget-object v1, p0, mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v7}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/os/storage/IDirEncryptServiceListener;
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_62

    .line 879
    .local v0, "listener":Landroid/os/storage/IDirEncryptServiceListener;
    :try_start_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, logD(Ljava/lang/String;)V

    .line 880
    iget-object v1, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_58} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_58} :catch_65
    .catchall {:try_start_35 .. :try_end_58} :catchall_62

    .line 876
    :goto_58
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 881
    :catch_5b
    move-exception v9

    .line 882
    .local v9, "rex":Landroid/os/RemoteException;
    :try_start_5c
    const-string v1, "Listener dead"

    invoke-static {v1}, logD(Ljava/lang/String;)V

    goto :goto_58

    .line 888
    .end local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .end local v7    # "i":I
    .end local v8    # "n":I
    .end local v9    # "rex":Landroid/os/RemoteException;
    :catchall_62
    move-exception v1

    monitor-exit v10
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_62

    throw v1

    .line 883
    .restart local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .restart local v7    # "i":I
    .restart local v8    # "n":I
    :catch_65
    move-exception v6

    .line 884
    .local v6, "ex":Ljava/lang/Exception;
    :try_start_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, logD(Ljava/lang/String;)V

    goto :goto_58

    .line 887
    .end local v0    # "listener":Landroid/os/storage/IDirEncryptServiceListener;
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_7d
    iget-object v1, p0, mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 888
    monitor-exit v10
    :try_end_83
    .catchall {:try_start_66 .. :try_end_83} :catchall_62

    .line 889
    return-void
.end method

.method private revertSecureStorageForKnoxMigration(Ljava/lang/String;I)V
    .registers 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "container_id"    # I

    .prologue
    .line 892
    invoke-virtual {p0, p1}, addEscapeChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, "escapedPassword":Ljava/lang/String;
    const-string/jumbo v1, "dir_crypto"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "knoxRevertSS"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/android/server/NativeDaemonConnector$SensitiveArg;

    invoke-direct {v4, v0}, Lcom/android/server/NativeDaemonConnector$SensitiveArg;-><init>(Ljava/lang/Object;)V

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 894
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    .line 895
    return-void
.end method

.method private varargs sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 859
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v1, :cond_9

    .line 861
    :try_start_4
    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_9
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_4 .. :try_end_9} :catch_a

    .line 866
    :cond_9
    :goto_9
    return-void

    .line 862
    :catch_a
    move-exception v0

    .line 863
    .local v0, "e":Lcom/android/server/NativeDaemonConnectorException;
    const-string v1, "DirEncryptService"

    const-string v2, "Failed to send command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method private setStatus(I)V
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, logD(Ljava/lang/String;)V

    .line 437
    iput p1, p0, mServiceStatus:I

    .line 438
    return-void
.end method

.method private showNotification(IILjava/lang/String;)V
    .registers 20
    .param p1, "type"    # I
    .param p2, "encType"    # I
    .param p3, "status"    # Ljava/lang/String;

    .prologue
    .line 1269
    const/4 v8, 0x0

    .line 1270
    .local v8, "notification":Landroid/app/Notification;
    const/4 v3, 0x0

    .line 1271
    .local v3, "pending":Landroid/app/PendingIntent;
    const-string v7, ""

    .line 1272
    .local v7, "tickerText":Ljava/lang/String;
    const-string v6, ""

    .line 1273
    .local v6, "contentText":Ljava/lang/String;
    const-string v5, ""

    .line 1274
    .local v5, "contentTitle":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1276
    .local v4, "icon":I
    packed-switch p1, :pswitch_data_388

    .line 1406
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1425
    :cond_1d
    :goto_1d
    return-void

    .line 1279
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104085e

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1280
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x104085f

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, getSecurityIntent()Landroid/content/Intent;

    move-result-object v12

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1283
    const v4, 0x1080320

    .line 1412
    :goto_4e
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 1413
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    :cond_5f
    move-object/from16 v2, p0

    .line 1416
    invoke-direct/range {v2 .. v7}, getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    .line 1417
    if-eqz v8, :cond_1d

    .line 1418
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1419
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1420
    iget v2, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v8, Landroid/app/Notification;->flags:I

    .line 1421
    iget v2, v8, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v8, Landroid/app/Notification;->defaults:I

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1423
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    sget v2, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v9, v2, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1d

    .line 1287
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_96
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_10a

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040862

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1289
    const-string/jumbo v2, "success"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040864

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1292
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mLastError:I

    .line 1293
    const v4, 0x1080320

    .line 1314
    :goto_dc
    move-object v5, v7

    .line 1315
    move-object v7, v6

    .line 1316
    goto/16 :goto_4e

    .line 1295
    :cond_e0
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040865

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1297
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, mLastError:I

    .line 1298
    const v4, 0x108031f

    goto :goto_dc

    .line 1301
    :cond_10a
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040866

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1302
    const-string/jumbo v2, "success"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14c

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040868

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1304
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1305
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mLastError:I

    .line 1306
    const v4, 0x10802ba

    goto :goto_dc

    .line 1308
    :cond_14c
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040869

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1310
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, mLastError:I

    .line 1311
    const v4, 0x10802b9

    goto/16 :goto_dc

    .line 1319
    :pswitch_177
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_1b0

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040862

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040863

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1322
    const v4, 0x1080320

    .line 1328
    :goto_19d
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1329
    move-object v5, v7

    .line 1330
    goto/16 :goto_4e

    .line 1324
    :cond_1b0
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040866

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1325
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040867

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1326
    const v4, 0x10802ba

    goto :goto_19d

    .line 1333
    :pswitch_1d2
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1334
    .local v10, "progress":I
    move-object/from16 v0, p0

    iget-object v11, v0, mAnimateSync:Ljava/lang/Object;

    monitor-enter v11

    .line 1336
    :try_start_1db
    move-object/from16 v0, p0

    iget-wide v12, v0, mProgressTime:J

    const-wide/16 v14, -0x1

    cmp-long v2, v12, v14

    if-nez v2, :cond_1ed

    .line 1337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, mProgressTime:J

    .line 1339
    :cond_1ed
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    # setter for: Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I
    invoke-static {v2, v10}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->access$602(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1340
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    move/from16 v0, p2

    # setter for: Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I
    invoke-static {v2, v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->access$702(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)I

    .line 1341
    if-nez v10, :cond_217

    .line 1343
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1344
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v12, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1348
    :cond_211
    :goto_211
    monitor-exit v11

    goto/16 :goto_1d

    :catchall_214
    move-exception v2

    monitor-exit v11
    :try_end_216
    .catchall {:try_start_1db .. :try_end_216} :catchall_214

    throw v2

    .line 1345
    :cond_217
    const/16 v2, 0x64

    if-ne v2, v10, :cond_211

    .line 1346
    :try_start_21b
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V
    :try_end_222
    .catchall {:try_start_21b .. :try_end_222} :catchall_214

    goto :goto_211

    .line 1352
    .end local v10    # "progress":I
    :pswitch_223
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mErrAdditionalSpace:I

    .line 1353
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_26b

    .line 1354
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040862

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1355
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040865

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1356
    const v4, 0x108031f

    .line 1362
    :goto_251
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1363
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, mLastError:I

    .line 1364
    move-object v5, v7

    .line 1365
    goto/16 :goto_4e

    .line 1358
    :cond_26b
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040866

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040869

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1360
    const v4, 0x10802b9

    goto :goto_251

    .line 1368
    :pswitch_28d
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_2ce

    .line 1369
    const v4, 0x108031f

    .line 1370
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040862

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1371
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040865

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1377
    :goto_2b3
    const/16 v2, 0xb

    move-object/from16 v0, p0

    iput v2, v0, mLastError:I

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1379
    move-object v5, v7

    .line 1380
    goto/16 :goto_4e

    .line 1373
    :cond_2ce
    const v4, 0x10802b9

    .line 1374
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040866

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1375
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040869

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2b3

    .line 1383
    :pswitch_2f0
    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_32b

    .line 1384
    const v4, 0x108031f

    .line 1385
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040862

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040865

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1392
    :goto_316
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1393
    move-object v5, v7

    .line 1394
    goto/16 :goto_4e

    .line 1388
    :cond_32b
    const v4, 0x108031f

    .line 1389
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040866

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1390
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040869

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_316

    .line 1397
    :pswitch_34d
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040860

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1398
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x1040861

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1399
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "android.dirEncryption.DirEncryptionManager.UNMOUNT_POLICY"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x8000000

    invoke-static {v2, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1400
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mLastError:I

    .line 1401
    const v4, 0x108007b

    .line 1402
    move-object v5, v7

    .line 1403
    goto/16 :goto_4e

    .line 1276
    :pswitch_data_388
    .packed-switch 0x1
        :pswitch_177
        :pswitch_96
        :pswitch_2f0
        :pswitch_c
        :pswitch_1d2
        :pswitch_223
        :pswitch_1e
        :pswitch_c
        :pswitch_c
        :pswitch_34d
        :pswitch_28d
    .end packed-switch
.end method

.method private unmountSDCard()V
    .registers 3

    .prologue
    .line 947
    const/4 v1, 0x1

    iput-boolean v1, p0, mSelfSDMountRequested:Z

    .line 950
    :try_start_3
    iget-object v1, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 954
    :goto_8
    return-void

    .line 951
    :catch_9
    move-exception v0

    .line 952
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .registers 2
    .param p1, "in"    # Z

    .prologue
    .line 416
    sput-boolean p1, mMountSDcardToHelper:Z

    .line 417
    return-void
.end method

.method public addEscapeChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 1030
    if-nez p1, :cond_5

    .line 1031
    const-string v1, ""

    .line 1037
    :goto_4
    return-object v1

    .line 1034
    :cond_5
    const-string v2, "\\\\"

    const-string v3, "\\\\\\\\"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    .local v0, "temp":Ljava/lang/String;
    const-string v2, "\""

    const-string v3, "\\\\\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1036
    .local v1, "temp2":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->clear()V

    goto :goto_4
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 469
    sget-object v5, mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 470
    const/4 v4, 0x0

    :try_start_4
    iput v4, p0, mLastError:I

    .line 471
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_62

    .line 510
    :pswitch_b
    const-string v4, "Invalid command!!!"

    invoke-static {v4}, logE(Ljava/lang/String;)V

    .line 512
    :cond_10
    :goto_10
    monitor-exit v5

    .line 513
    return-void

    .line 473
    :pswitch_12
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 474
    .local v2, "password":Ljava/lang/String;
    invoke-direct {p0, v2}, doWorkForPassword(Ljava/lang/String;)V

    .line 475
    if-eqz v2, :cond_10

    .line 476
    invoke-virtual {v2}, Ljava/lang/String;->clear()V

    goto :goto_10

    .line 512
    .end local v2    # "password":Ljava/lang/String;
    :catchall_1f
    move-exception v4

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_1f

    throw v4

    .line 480
    :pswitch_22
    :try_start_22
    invoke-direct {p0}, unmountSDCard()V

    goto :goto_10

    .line 484
    :pswitch_26
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 485
    .local v3, "state":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Command.USB_STATE:: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, logD(Ljava/lang/String;)V

    .line 486
    invoke-direct {p0, v3}, doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_10

    .line 490
    .end local v3    # "state":Ljava/lang/String;
    :pswitch_44
    invoke-direct {p0}, doEncryption()V

    goto :goto_10

    .line 494
    :pswitch_48
    invoke-direct {p0}, doCheckEncMeta()V

    goto :goto_10

    .line 498
    :pswitch_4c
    iget-object v4, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v4}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    goto :goto_10

    .line 502
    :pswitch_52
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 503
    .local v1, "knox_password":Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 504
    .local v0, "container_id":I
    invoke-direct {p0, v1, v0}, revertSecureStorageForKnoxMigration(Ljava/lang/String;I)V

    .line 505
    if-eqz v1, :cond_10

    .line 506
    invoke-virtual {v1}, Ljava/lang/String;->clear()V
    :try_end_60
    .catchall {:try_start_22 .. :try_end_60} :catchall_1f

    goto :goto_10

    .line 471
    nop

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_12
        :pswitch_22
        :pswitch_26
        :pswitch_44
        :pswitch_48
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_4c
        :pswitch_52
    .end packed-switch
.end method

.method public getAdditionalSpaceRequired()I
    .registers 2

    .prologue
    .line 432
    iget v0, p0, mErrAdditionalSpace:I

    return v0
.end method

.method public getCurrentStatus()I
    .registers 2

    .prologue
    .line 424
    iget v0, p0, mServiceStatus:I

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 428
    iget v0, p0, mLastError:I

    return v0
.end method

.method public getNeedToCreateKey()Z
    .registers 2

    .prologue
    .line 420
    sget-boolean v0, mNeedToCreateKey:Z

    return v0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 2

    .prologue
    .line 457
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 27
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    .line 517
    sget-object v19, mSync:Ljava/lang/Object;

    monitor-enter v19

    .line 518
    packed-switch p1, :pswitch_data_862

    .line 831
    :cond_6
    :goto_6
    :pswitch_6
    :try_start_6
    monitor-exit v19

    .line 832
    const/16 v18, 0x1

    return v18

    .line 520
    :pswitch_a
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_6a

    .line 521
    const/16 v18, 0x1

    aget-object v13, p3, v18

    .line 522
    .local v13, "password":Ljava/lang/String;
    const/16 v18, 0x2

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 524
    .local v16, "status":I
    const/16 v18, 0x2

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    .line 525
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 526
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 527
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, doWorkForPassword(Ljava/lang/String;)V

    .line 536
    :goto_3b
    invoke-virtual {v13}, Ljava/lang/String;->clear()V

    goto :goto_6

    .line 831
    .end local v13    # "password":Ljava/lang/String;
    .end local v16    # "status":I
    :catchall_3f
    move-exception v18

    monitor-exit v19
    :try_end_41
    .catchall {:try_start_6 .. :try_end_41} :catchall_3f

    throw v18

    .line 528
    .restart local v13    # "password":Ljava/lang/String;
    .restart local v16    # "status":I
    :cond_42
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5b

    .line 529
    const/16 v18, 0x0

    :try_start_4c
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 530
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPassword:Z

    goto :goto_3b

    .line 533
    :cond_5b
    const-string/jumbo v18, "unable to save DEK"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 534
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    goto :goto_3b

    .line 538
    .end local v13    # "password":Ljava/lang/String;
    .end local v16    # "status":I
    :cond_6a
    const-string v18, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto :goto_6

    .line 542
    :pswitch_70
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_ab

    .line 543
    const/16 v18, 0x1

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 545
    .restart local v16    # "status":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_9c

    .line 547
    const-string v18, "Unable to update DEK"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 548
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    goto/16 :goto_6

    .line 550
    :cond_9c
    const-string v18, "DEK successfully updated"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 551
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    goto/16 :goto_6

    .line 554
    .end local v16    # "status":I
    :cond_ab
    const-string v18, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 560
    :pswitch_b2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_f6

    .line 561
    const/16 v18, 0x1

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 563
    .restart local v16    # "status":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_de

    .line 565
    const-string v18, "Unable to delete DEK"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 566
    const/16 v18, 0x3

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    goto/16 :goto_6

    .line 568
    :cond_de
    const-string v18, "DEK successfully deleted"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, mDep:Lcom/android/server/DirEncryptPrefs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/DirEncryptPrefs;->clearPrefs()V

    .line 570
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    goto/16 :goto_6

    .line 573
    .end local v16    # "status":I
    :cond_f6
    const-string v18, "RESP_PWD extra data recvd, please fix!!"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 578
    :pswitch_fd
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v20, "notification"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 580
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    sget v18, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 581
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWasEncryptedCard:Z

    goto/16 :goto_6

    .line 585
    .end local v9    # "notificationManager":Landroid/app/NotificationManager;
    :pswitch_121
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1d9

    .line 586
    const/16 v18, 0x2

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 587
    .local v15, "reqEnc":I
    const/16 v18, 0x3

    aget-object v16, p3, v18

    .line 589
    .local v16, "status":Ljava/lang/String;
    const-string/jumbo v18, "success"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_184

    .line 590
    const-string v18, "RESP_ENCRYPT success"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 591
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 593
    if-nez v15, :cond_178

    const/16 v18, 0x2ab

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_178

    .line 594
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWasEncryptedCard:Z

    .line 601
    :goto_166
    if-nez v15, :cond_181

    const/16 v18, 0x3

    :goto_16a
    const-string/jumbo v20, "done"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 596
    :cond_178
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWasEncryptedCard:Z

    goto :goto_166

    .line 601
    :cond_181
    const/16 v18, 0x2

    goto :goto_16a

    .line 604
    :cond_184
    const-string v18, "RESP_ENCRYPT failed"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 605
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v15, v0, :cond_1d0

    .line 606
    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 610
    :goto_197
    const/16 v18, 0x3

    const-string v20, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v15, v2}, showNotification(IILjava/lang/String;)V

    .line 611
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, setStatus(I)V

    .line 615
    const-string/jumbo v18, "dir_crypto"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "unmount"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "/mnt/secure/staging"

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, sendCommand(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 608
    :cond_1d0
    const/16 v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    goto :goto_197

    .line 618
    .end local v15    # "reqEnc":I
    .end local v16    # "status":Ljava/lang/String;
    :cond_1d9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_ENCRYPT extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 622
    :pswitch_208
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_268

    .line 623
    const-string v18, "DirEncryptServiceVoldResponse.PROGRESS inside"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 624
    const/16 v18, 0x1

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 625
    .restart local v15    # "reqEnc":I
    const/16 v18, 0x2

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 626
    .local v14, "percentage":I
    const/16 v18, 0x3

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 627
    .local v17, "storage":I
    const/16 v18, 0x5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v15, v2}, showNotification(IILjava/lang/String;)V

    .line 628
    if-nez v15, :cond_265

    const/16 v18, 0x3

    :goto_256
    const-string v20, "busy"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v14, v3}, notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    goto/16 :goto_6

    :cond_265
    const/16 v18, 0x2

    goto :goto_256

    .line 630
    .end local v14    # "percentage":I
    .end local v15    # "reqEnc":I
    .end local v17    # "storage":I
    :cond_268
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_PROGRESS extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 634
    :pswitch_297
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x8

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_306

    .line 635
    const/16 v18, 0x2

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 636
    .restart local v15    # "reqEnc":I
    const/16 v18, 0x5

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 637
    .local v6, "encType":I
    const/16 v18, 0x6

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 639
    .local v8, "needed":I
    move-object/from16 v0, p0

    iput v8, v0, mErrAdditionalSpace:I

    .line 640
    const/16 v18, 0x4

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 641
    const/16 v18, 0x6

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, ""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, showNotification(IILjava/lang/String;)V

    .line 643
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, setStatus(I)V

    .line 644
    if-nez v15, :cond_303

    const/16 v18, 0x3

    :goto_2f5
    const-string/jumbo v20, "free"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_303
    const/16 v18, 0x2

    goto :goto_2f5

    .line 646
    .end local v6    # "encType":I
    .end local v8    # "needed":I
    .end local v15    # "reqEnc":I
    :cond_306
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_PRESCAN_FULL_ERR extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 650
    :pswitch_335
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x8

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_385

    .line 651
    const/16 v18, 0x2

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 652
    .restart local v15    # "reqEnc":I
    const/16 v18, 0x5

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 653
    .restart local v6    # "encType":I
    const/16 v18, 0xb

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 654
    const/16 v18, 0xb

    const-string v20, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v6, v2}, showNotification(IILjava/lang/String;)V

    .line 655
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, setStatus(I)V

    .line 656
    if-nez v15, :cond_382

    const/16 v18, 0x3

    :goto_374
    const-string/jumbo v20, "free"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_382
    const/16 v18, 0x2

    goto :goto_374

    .line 658
    .end local v6    # "encType":I
    .end local v15    # "reqEnc":I
    :cond_385
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_FILE_OPEN_ERR extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 662
    :pswitch_3b4
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_3f0

    .line 663
    const/16 v18, 0x1

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 664
    .local v16, "status":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_3e0

    .line 666
    const-string v18, "Unable to ss_migration"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 667
    const/16 v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    goto/16 :goto_6

    .line 669
    :cond_3e0
    const-string/jumbo v18, "ss_migration successfully updated"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 670
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    goto/16 :goto_6

    .line 673
    .end local v16    # "status":I
    :cond_3f0
    const-string v18, "RESP_SS_MIGRATION extra data recvd, please fix!!"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 677
    :pswitch_3f7
    const/4 v10, -0x1

    .line 678
    .local v10, "operation":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x5

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_46f

    .line 679
    const/16 v18, 0x3

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 680
    .restart local v16    # "status":I
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, setStatus(I)V

    .line 681
    const/4 v10, 0x2

    .line 682
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_44a

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesApplied()Z

    move-result v18

    if-eqz v18, :cond_44a

    .line 683
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 684
    const/16 v18, 0x2

    const/16 v20, 0x1

    const-string/jumbo v21, "success"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, showNotification(IILjava/lang/String;)V

    .line 685
    const-string v18, "Mount"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 687
    :cond_44a
    const/16 v18, 0x7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 688
    const/16 v18, 0x2

    const/16 v20, 0x1

    const-string v21, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, showNotification(IILjava/lang/String;)V

    .line 689
    const-string/jumbo v18, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 691
    .end local v16    # "status":I
    :cond_46f
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_4a6

    .line 692
    const/16 v18, 0x2

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 694
    .restart local v15    # "reqEnc":I
    const/16 v18, 0x7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 695
    if-nez v15, :cond_4a4

    const/4 v10, 0x3

    .line 697
    :goto_48f
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, setStatus(I)V

    .line 698
    const-string/jumbo v18, "free"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v10, v1}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 695
    :cond_4a4
    const/4 v10, 0x2

    goto :goto_48f

    .line 700
    .end local v15    # "reqEnc":I
    :cond_4a6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_MOUNT extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 704
    .end local v10    # "operation":I
    :pswitch_4d5
    const/4 v12, -0x1

    .line 705
    .local v12, "operationUnmount":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x4

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_507

    .line 706
    const/16 v18, 0x3

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 707
    .restart local v16    # "status":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_504

    .line 708
    const/16 v18, 0x4

    const/16 v20, 0x0

    const-string v21, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, showNotification(IILjava/lang/String;)V

    .line 710
    :cond_504
    const/4 v12, 0x3

    .line 711
    goto/16 :goto_6

    .line 712
    .end local v16    # "status":I
    :cond_507
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_UNMOUNT extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 717
    .end local v12    # "operationUnmount":I
    :pswitch_536
    const/4 v11, -0x1

    .line 718
    .local v11, "operationChangePassword":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_569

    .line 719
    const/16 v18, 0x1

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 720
    .restart local v16    # "status":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_565

    .line 721
    const/16 v18, 0x8

    const/16 v20, 0x0

    const-string v21, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, showNotification(IILjava/lang/String;)V

    .line 723
    :cond_565
    const/16 v11, 0xb

    .line 724
    goto/16 :goto_6

    .line 725
    .end local v16    # "status":I
    :cond_569
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_CHANGE_ECRYPTFS_PASSWORD extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 730
    .end local v11    # "operationChangePassword":I
    :pswitch_598
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_5c8

    .line 731
    const/16 v18, 0x1

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 732
    .restart local v16    # "status":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    .line 733
    const/16 v18, 0x9

    const/16 v20, 0x0

    const-string v21, ""

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, showNotification(IILjava/lang/String;)V

    goto/16 :goto_6

    .line 736
    .end local v16    # "status":I
    :cond_5c8
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_MOUNT_PATH_STATUS extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 741
    :pswitch_5f7
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_7ac

    .line 742
    const/16 v18, 0x1

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 743
    .restart local v16    # "status":I
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mLastError:I

    .line 744
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mErrAdditionalSpace:I

    .line 746
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_6e8

    .line 747
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWasEncryptedCard:Z

    .line 748
    invoke-direct/range {p0 .. p0}, getStorageCardEncryptionInternal()I

    move-result v18

    const/16 v20, 0x3

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_677

    .line 749
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v18, 0x10400000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_648
    .catchall {:try_start_4c .. :try_end_648} :catchall_3f

    .line 752
    :try_start_648
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_653
    .catch Landroid/content/ActivityNotFoundException; {:try_start_648 .. :try_end_653} :catch_659
    .catchall {:try_start_648 .. :try_end_653} :catchall_3f

    .line 811
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v16    # "status":I
    :cond_653
    :goto_653
    const/16 v18, 0x0

    :try_start_655
    sput-boolean v18, mMountSDcardToHelper:Z

    goto/16 :goto_6

    .line 753
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v16    # "status":I
    :catch_659
    move-exception v5

    .line 754
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to start intent activity"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logE(Ljava/lang/String;)V

    goto :goto_653

    .line 758
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_677
    const-string/jumbo v18, "security.mdpp"

    const-string v20, "None"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "MDPP_PROPERTY":Ljava/lang/String;
    const-string v18, "Enabled"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6cd

    .line 760
    const-string v18, "CC mode - Pop up SD card encryption"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 761
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v18, 0x10400000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_6a3
    .catchall {:try_start_655 .. :try_end_6a3} :catchall_3f

    .line 764
    :try_start_6a3
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6ae
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6a3 .. :try_end_6ae} :catch_6af
    .catchall {:try_start_6a3 .. :try_end_6ae} :catchall_3f

    goto :goto_653

    .line 765
    :catch_6af
    move-exception v5

    .line 766
    .restart local v5    # "e":Landroid/content/ActivityNotFoundException;
    :try_start_6b0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to start intent activity"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logE(Ljava/lang/String;)V

    goto :goto_653

    .line 770
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_6cd
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSelfSDMountRequested:Z

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, doWorkForUSBState(Ljava/lang/String;)V

    goto/16 :goto_653

    .line 775
    .end local v4    # "MDPP_PROPERTY":Ljava/lang/String;
    :cond_6e8
    invoke-direct/range {p0 .. p0}, getStorageCardEncryptionInternal()I

    move-result v18

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_734

    .line 776
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v18, 0x10400000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 778
    sget-boolean v18, mMountSDcardToHelper:Z
    :try_end_706
    .catchall {:try_start_6b0 .. :try_end_706} :catchall_3f

    if-nez v18, :cond_653

    .line 780
    :try_start_708
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_713
    .catch Landroid/content/ActivityNotFoundException; {:try_start_708 .. :try_end_713} :catch_715
    .catchall {:try_start_708 .. :try_end_713} :catchall_3f

    goto/16 :goto_653

    .line 781
    :catch_715
    move-exception v5

    .line 782
    .restart local v5    # "e":Landroid/content/ActivityNotFoundException;
    :try_start_716
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to start intent activity"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logE(Ljava/lang/String;)V

    goto/16 :goto_653

    .line 787
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_734
    const-string/jumbo v18, "security.mdpp"

    const-string v20, "None"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 788
    .restart local v4    # "MDPP_PROPERTY":Ljava/lang/String;
    const-string v18, "Enabled"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_78c

    .line 789
    const-string v18, "CC mode - Pop up SD card decryption"

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 790
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 791
    .restart local v7    # "intent":Landroid/content/Intent;
    const/high16 v18, 0x10400000

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_760
    .catchall {:try_start_716 .. :try_end_760} :catchall_3f

    .line 793
    :try_start_760
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_76b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_760 .. :try_end_76b} :catch_76d
    .catchall {:try_start_760 .. :try_end_76b} :catchall_3f

    goto/16 :goto_653

    .line 794
    :catch_76d
    move-exception v5

    .line 795
    .restart local v5    # "e":Landroid/content/ActivityNotFoundException;
    :try_start_76e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Failed to start intent activity"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logE(Ljava/lang/String;)V

    goto/16 :goto_653

    .line 800
    .end local v5    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "intent":Landroid/content/Intent;
    :cond_78c
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mSelfSDMountRequested:Z

    .line 801
    const/16 v18, 0x3

    const-string/jumbo v20, "done"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 802
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, mWasEncryptedCard:Z

    goto/16 :goto_653

    .line 807
    .end local v4    # "MDPP_PROPERTY":Ljava/lang/String;
    .end local v16    # "status":I
    :cond_7ac
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_ENC_META_CHECK extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V

    .line 808
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, setStatus(I)V

    .line 809
    const/16 v18, 0x3

    const-string/jumbo v20, "free"

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_653

    .line 816
    :pswitch_7f2
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v18, v0

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_833

    .line 817
    const/16 v18, 0x1

    aget-object v18, p3, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 818
    .restart local v16    # "status":I
    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_826

    .line 819
    const-string/jumbo v18, "security.ode.knox.migration"

    const-string v20, "Success"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    .end local v16    # "status":I
    :goto_81b
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, setStatus(I)V

    goto/16 :goto_6

    .line 821
    .restart local v16    # "status":I
    :cond_826
    const-string/jumbo v18, "security.ode.knox.migration"

    const-string v20, "Failed"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81b

    .line 824
    .end local v16    # "status":I
    :cond_833
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RESP_KNOX_REVERT_SS extra data recvd["

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "], please fix!!"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, logD(Ljava/lang/String;)V
    :try_end_860
    .catchall {:try_start_76e .. :try_end_860} :catchall_3f

    goto :goto_81b

    .line 518
    nop

    :pswitch_data_862
    .packed-switch 0x2a8
        :pswitch_a
        :pswitch_70
        :pswitch_b2
        :pswitch_121
        :pswitch_208
        :pswitch_6
        :pswitch_297
        :pswitch_3f7
        :pswitch_4d5
        :pswitch_536
        :pswitch_598
        :pswitch_fd
        :pswitch_5f7
        :pswitch_335
        :pswitch_3b4
        :pswitch_7f2
    .end packed-switch
.end method

.method ready()V
    .registers 2

    .prologue
    .line 445
    const/4 v0, 0x1

    invoke-direct {p0, v0}, setStatus(I)V

    .line 446
    return-void
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 461
    iget-object v0, p0, mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 462
    return-void
.end method

.method public registerStorageEventListener()Z
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 404
    const-string v0, "RegisterStorageEventListner fail"

    invoke-static {v0}, logD(Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x0

    .line 408
    :goto_10
    return v0

    .line 407
    :cond_11
    const-string v0, "RegisterStorageEventListner success"

    invoke-static {v0}, logD(Ljava/lang/String;)V

    .line 408
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public setBootComplted(Z)V
    .registers 2
    .param p1, "in"    # Z

    .prologue
    .line 441
    iput-boolean p1, p0, mBootCompleted:Z

    .line 442
    return-void
.end method

.method public setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    .registers 3
    .param p1, "connector"    # Lcom/android/server/NativeDaemonConnector;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 449
    iput-object p1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 450
    iput-object p2, p0, mHandler:Landroid/os/Handler;

    .line 453
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 454
    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .registers 2
    .param p1, "in"    # Z

    .prologue
    .line 412
    sput-boolean p1, mNeedToCreateKey:Z

    .line 413
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .registers 5

    .prologue
    .line 963
    iget-object v2, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    .line 964
    .local v1, "state":Ljava/lang/String;
    if-eqz v1, :cond_5c

    .line 965
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SD card  : State = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Admin policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, isAdminApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / Encrypted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, isEncryptionApplied()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, logD(Ljava/lang/String;)V

    .line 966
    invoke-direct {p0}, isAdminApplied()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-direct {p0}, isEncryptionApplied()Z

    move-result v2

    if-nez v2, :cond_5c

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 967
    const-string v2, "Unmount SD Card By Admin"

    invoke-static {v2}, logD(Ljava/lang/String;)V

    .line 972
    const/4 v2, 0x1

    iput-boolean v2, p0, mUnnmountRequested:Z

    .line 974
    :try_start_57
    iget-object v2, p0, mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5c} :catch_5d

    .line 980
    :cond_5c
    :goto_5c
    return-void

    .line 975
    :catch_5d
    move-exception v0

    .line 976
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5c
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 465
    iget-object v0, p0, mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 466
    return-void
.end method
