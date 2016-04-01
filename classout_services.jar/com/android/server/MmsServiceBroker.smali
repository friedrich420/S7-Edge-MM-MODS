.class public Lcom/android/server/MmsServiceBroker;
.super Lcom/android/server/SystemService;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MmsServiceBroker$BinderService;
    }
.end annotation


# static fields
.field private static final FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_MMS_SENT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

.field private static final FAKE_SMS_SENT_URI:Landroid/net/Uri;

.field private static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final MSG_TRY_CONNECTING:I = 0x1

.field private static final RETRY_DELAY_ON_DISCONNECTION_MS:J = 0xbb8L

.field private static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "MmsServiceBroker"


# instance fields
.field private volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mConnectionHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private volatile mPackageManager:Landroid/content/pm/PackageManager;

.field private volatile mService:Lcom/android/internal/telephony/IMms;

.field private final mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

.field private volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms.service"

    const-string v2, "com.android.mms.service.MmsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 60
    const-string v0, "content://sms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, FAKE_SMS_SENT_URI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://mms/sent/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, FAKE_MMS_SENT_URI:Landroid/net/Uri;

    .line 62
    const-string v0, "content://sms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    .line 63
    const-string v0, "content://mms/draft/0"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object v1, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    .line 74
    iput-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 75
    iput-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 77
    new-instance v0, Lcom/android/server/MmsServiceBroker$1;

    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$1;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v0, p0, mConnectionHandler:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/android/server/MmsServiceBroker$2;

    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$2;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v0, p0, mConnection:Landroid/content/ServiceConnection;

    .line 117
    new-instance v0, Lcom/android/server/MmsServiceBroker$3;

    invoke-direct {v0, p0}, Lcom/android/server/MmsServiceBroker$3;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v0, p0, mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    .line 217
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 218
    iput-object v1, p0, mService:Lcom/android/internal/telephony/IMms;

    .line 219
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/MmsServiceBroker;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 52
    invoke-direct {p0}, tryConnecting()V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 52
    sget-object v0, FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)Lcom/android/internal/telephony/IMms;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;
    .param p1, "x1"    # Lcom/android/internal/telephony/IMms;

    .prologue
    .line 52
    iput-object p1, p0, mService:Lcom/android/internal/telephony/IMms;

    return-object p1
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 52
    sget-object v0, FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 52
    iget-object v0, p0, mConnectionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 52
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 52
    invoke-direct {p0}, getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 52
    invoke-direct {p0}, getServiceGuarded()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/MmsServiceBroker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/MmsServiceBroker;

    .prologue
    .line 52
    invoke-direct {p0}, getCallingPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 52
    sget-object v0, FAKE_SMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 52
    sget-object v0, FAKE_MMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .prologue
    .line 297
    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 298
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    .line 300
    :cond_10
    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getCallingPackageName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 319
    invoke-direct {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_15

    array-length v1, v0

    if-lez v1, :cond_15

    .line 321
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 323
    :goto_14
    return-object v1

    :cond_15
    const-string/jumbo v1, "unknown"

    goto :goto_14
.end method

.method private getOrConnectService()Lcom/android/internal/telephony/IMms;
    .registers 11

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    :try_start_1
    iget-object v1, p0, mService:Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_9

    .line 252
    iget-object v1, p0, mService:Lcom/android/internal/telephony/IMms;

    monitor-exit p0

    .line 277
    :goto_8
    return-object v1

    .line 255
    :cond_9
    const-string v1, "MmsServiceBroker"

    const-string v6, "MmsService not connected. Try connecting..."

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, mConnectionHandler:Landroid/os/Handler;

    iget-object v6, p0, mConnectionHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_37

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long v2, v6, v8

    .line 260
    .local v2, "shouldEnd":J
    const-wide/16 v4, 0x3e8

    .line 261
    .local v4, "waitTime":J
    :goto_26
    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4a

    .line 264
    :try_start_2c
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_3a
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 268
    :goto_2f
    :try_start_2f
    iget-object v1, p0, mService:Lcom/android/internal/telephony/IMms;

    if-eqz v1, :cond_43

    .line 270
    iget-object v1, p0, mService:Lcom/android/internal/telephony/IMms;

    monitor-exit p0

    goto :goto_8

    .line 278
    .end local v2    # "shouldEnd":J
    .end local v4    # "waitTime":J
    :catchall_37
    move-exception v1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_37

    throw v1

    .line 265
    .restart local v2    # "shouldEnd":J
    .restart local v4    # "waitTime":J
    :catch_3a
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3b
    const-string v1, "MmsServiceBroker"

    const-string v6, "Connection wait interrupted"

    invoke-static {v1, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f

    .line 273
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_43
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v4, v2, v6

    goto :goto_26

    .line 276
    :cond_4a
    const-string v1, "MmsServiceBroker"

    const-string v6, "Can not connect to MmsService (timed out)"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_53
    .catchall {:try_start_3b .. :try_end_53} :catchall_37

    goto :goto_8
.end method

.method private getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 305
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 307
    :cond_c
    iget-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private getServiceGuarded()Lcom/android/internal/telephony/IMms;
    .registers 2

    .prologue
    .line 289
    invoke-direct {p0}, getOrConnectService()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    .line 290
    .local v0, "service":Lcom/android/internal/telephony/IMms;
    if-eqz v0, :cond_7

    .line 293
    .end local v0    # "service":Lcom/android/internal/telephony/IMms;
    :goto_6
    return-object v0

    .restart local v0    # "service":Lcom/android/internal/telephony/IMms;
    :cond_7
    iget-object v0, p0, mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    goto :goto_6
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .prologue
    .line 311
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 312
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 315
    :cond_11
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private tryConnecting()V
    .registers 6

    .prologue
    .line 231
    const-string v2, "MmsServiceBroker"

    const-string v3, "Connecting to MmsService"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-enter p0

    .line 233
    :try_start_8
    iget-object v2, p0, mService:Lcom/android/internal/telephony/IMms;

    if-eqz v2, :cond_15

    .line 234
    const-string v2, "MmsServiceBroker"

    const-string v3, "Already connected"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-exit p0

    .line 247
    :goto_14
    return-void

    .line 237
    :cond_15
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_33

    .line 240
    :try_start_1f
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_31

    .line 241
    const-string v2, "MmsServiceBroker"

    const-string v3, "Failed to bind to MmsService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_31} :catch_36
    .catchall {:try_start_1f .. :try_end_31} :catchall_33

    .line 246
    :cond_31
    :goto_31
    :try_start_31
    monitor-exit p0

    goto :goto_14

    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_33
    move-exception v2

    monitor-exit p0
    :try_end_35
    .catchall {:try_start_31 .. :try_end_35} :catchall_33

    throw v2

    .line 243
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_36
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_37
    const-string v2, "MmsServiceBroker"

    const-string v3, "Forbidden to bind to MmsService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_33

    goto :goto_31
.end method


# virtual methods
.method public onStart()V
    .registers 4

    .prologue
    .line 223
    const-string/jumbo v0, "imms"

    new-instance v1, Lcom/android/server/MmsServiceBroker$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$1;)V

    invoke-virtual {p0, v0, v1}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 224
    return-void
.end method

.method public systemRunning()V
    .registers 3

    .prologue
    .line 227
    const-string v0, "MmsServiceBroker"

    const-string v1, "Delay connecting to MmsService until an API is called"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-void
.end method
