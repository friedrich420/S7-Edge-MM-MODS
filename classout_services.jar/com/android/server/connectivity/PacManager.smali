.class public Lcom/android/server/connectivity/PacManager;
.super Ljava/lang/Object;
.source "PacManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_PAC_REFRESH:Ljava/lang/String; = "android.net.proxy.PAC_REFRESH"

.field private static final DEFAULT_DELAYS:Ljava/lang/String; = "8 32 120 14400 43200"

.field private static final DELAY_1:I = 0x0

.field private static final DELAY_4:I = 0x3

.field private static final DELAY_LONG:I = 0x4

.field public static final KEY_PROXY:Ljava/lang/String; = "keyProxy"

.field public static final PAC_PACKAGE:Ljava/lang/String; = "com.android.pacprocessor"

.field public static final PAC_SERVICE:Ljava/lang/String; = "com.android.pacprocessor.PacService"

.field public static final PAC_SERVICE_NAME:Ljava/lang/String; = "com.android.net.IProxyService"

.field public static final PROXY_PACKAGE:Ljava/lang/String; = "com.android.proxyhandler"

.field public static final PROXY_SERVICE:Ljava/lang/String; = "com.android.proxyhandler.ProxyService"

.field private static final TAG:Ljava/lang/String; = "PacManager"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectivityHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCurrentDelay:I

.field private mCurrentPac:Ljava/lang/String;

.field private mHasDownloaded:Z

.field private mHasSentBroadcast:Z

.field private mLastPort:I

.field private mPacDownloader:Ljava/lang/Runnable;

.field private mPacRefreshIntent:Landroid/app/PendingIntent;

.field private mPacUrl:Landroid/net/Uri;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field

.field private mProxyConnection:Landroid/content/ServiceConnection;

.field private final mProxyLock:Ljava/lang/Object;

.field private mProxyMessage:I

.field private mProxyService:Lcom/android/net/IProxyService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mProxyLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "proxyMessage"    # I

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v0, p0, mPacUrl:Landroid/net/Uri;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mProxyLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/android/server/connectivity/PacManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$1;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v0, p0, mPacDownloader:Ljava/lang/Runnable;

    .line 133
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 134
    const/4 v0, -0x1

    iput v0, p0, mLastPort:I

    .line 136
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, mPacRefreshIntent:Landroid/app/PendingIntent;

    .line 138
    new-instance v0, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/PacManager$PacRefreshIntentReceiver;-><init>(Lcom/android/server/connectivity/PacManager;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.proxy.PAC_REFRESH"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    iput-object p2, p0, mConnectivityHandler:Landroid/os/Handler;

    .line 141
    iput p3, p0, mProxyMessage:I

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    iget-object v0, p0, mProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/PacManager;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    iget-object v0, p0, mPacUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/PacManager;)Lcom/android/net/IProxyService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    iget-object v0, p0, mProxyService:Lcom/android/net/IProxyService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/connectivity/PacManager;Lcom/android/net/IProxyService;)Lcom/android/net/IProxyService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Lcom/android/net/IProxyService;

    .prologue
    .line 53
    iput-object p1, p0, mProxyService:Lcom/android/net/IProxyService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/connectivity/PacManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    iget v0, p0, mLastPort:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/PacManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, mLastPort:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, mHasSentBroadcast:Z

    return p1
.end method

.method static synthetic access$200(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, get(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/PacManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    iget-object v0, p0, mCurrentPac:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/PacManager;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, setCurrentProxyScript(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/connectivity/PacManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, mHasDownloaded:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    invoke-direct {p0}, sendProxyIfNeeded()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    invoke-direct {p0}, longSchedule()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/PacManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    invoke-direct {p0}, reschedule()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/PacManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/PacManager;

    .prologue
    .line 53
    iget-object v0, p0, mPacDownloader:Ljava/lang/Runnable;

    return-object v0
.end method

.method private bind()V
    .registers 5

    .prologue
    const v3, 0x40000005    # 2.0000012f

    .line 264
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-nez v1, :cond_f

    .line 265
    const-string v1, "PacManager"

    const-string v2, "No context for binding"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :goto_e
    return-void

    .line 268
    :cond_f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.pacprocessor"

    const-string v2, "com.android.pacprocessor.PacService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2d

    iget-object v1, p0, mConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_2d

    .line 272
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, mPacDownloader:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 275
    :cond_2d
    new-instance v1, Lcom/android/server/connectivity/PacManager$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$2;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, mConnection:Landroid/content/ServiceConnection;

    .line 307
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 310
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 311
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.proxyhandler"

    const-string v2, "com.android.proxyhandler.ProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    new-instance v1, Lcom/android/server/connectivity/PacManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/PacManager$3;-><init>(Lcom/android/server/connectivity/PacManager;)V

    iput-object v1, p0, mProxyConnection:Landroid/content/ServiceConnection;

    .line 345
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_e
.end method

.method private static get(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5
    .param p0, "pacUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "url":Ljava/net/URL;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    .line 202
    .local v1, "urlConnection":Ljava/net/URLConnection;
    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 203
    const/16 v2, 0xfa0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 204
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/Streams;->readFully(Ljava/io/InputStream;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .registers 3

    .prologue
    .line 145
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_10

    .line 146
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    .line 148
    :cond_10
    iget-object v0, p0, mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private getDownloadDelay(I)J
    .registers 6
    .param p1, "delayIndex"    # I

    .prologue
    .line 236
    invoke-direct {p0}, getPacChangeDelay()Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "list":[Ljava/lang/String;
    array-length v1, v0

    if-ge p1, v1, :cond_14

    .line 238
    aget-object v1, v0, p1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 240
    :goto_13
    return-wide v2

    :cond_14
    const-wide/16 v2, 0x0

    goto :goto_13
.end method

.method private getNextDelay(I)I
    .registers 3
    .param p1, "currentDelay"    # I

    .prologue
    const/4 v0, 0x3

    .line 208
    add-int/lit8 p1, p1, 0x1

    if-le p1, v0, :cond_6

    move p1, v0

    .line 211
    .end local p1    # "currentDelay":I
    :cond_6
    return p1
.end method

.method private getPacChangeDelay()Ljava/lang/String;
    .registers 6

    .prologue
    .line 225
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 228
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "conn.pac_change_delay"

    const-string v4, "8 32 120 14400 43200"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "defaultDelay":Ljava/lang/String;
    const-string/jumbo v3, "pac_change_delay"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "val":Ljava/lang/String;
    if-nez v2, :cond_18

    .end local v1    # "defaultDelay":Ljava/lang/String;
    :goto_17
    return-object v1

    .restart local v1    # "defaultDelay":Ljava/lang/String;
    :cond_18
    move-object v1, v2

    goto :goto_17
.end method

.method private longSchedule()V
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x0

    iput v0, p0, mCurrentDelay:I

    .line 216
    const/4 v0, 0x4

    invoke-direct {p0, v0}, setDownloadIn(I)V

    .line 217
    return-void
.end method

.method private reschedule()V
    .registers 2

    .prologue
    .line 220
    iget v0, p0, mCurrentDelay:I

    invoke-direct {p0, v0}, getNextDelay(I)I

    move-result v0

    iput v0, p0, mCurrentDelay:I

    .line 221
    iget v0, p0, mCurrentDelay:I

    invoke-direct {p0, v0}, setDownloadIn(I)V

    .line 222
    return-void
.end method

.method private sendPacBroadcast(Landroid/net/ProxyInfo;)V
    .registers 5
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 363
    iget-object v0, p0, mConnectivityHandler:Landroid/os/Handler;

    iget-object v1, p0, mConnectivityHandler:Landroid/os/Handler;

    iget v2, p0, mProxyMessage:I

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 364
    return-void
.end method

.method private declared-synchronized sendProxyIfNeeded()V
    .registers 4

    .prologue
    .line 367
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mHasDownloaded:Z

    if-eqz v0, :cond_a

    iget v0, p0, mLastPort:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 374
    :cond_a
    :goto_a
    monitor-exit p0

    return-void

    .line 370
    :cond_c
    :try_start_c
    iget-boolean v0, p0, mHasSentBroadcast:Z

    if-nez v0, :cond_a

    .line 371
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p0, mPacUrl:Landroid/net/Uri;

    iget v2, p0, mLastPort:I

    invoke-direct {v0, v1, v2}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;I)V

    invoke-direct {p0, v0}, sendPacBroadcast(Landroid/net/ProxyInfo;)V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasSentBroadcast:Z
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_20

    goto :goto_a

    .line 367
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setCurrentProxyScript(Ljava/lang/String;)Z
    .registers 5
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v1, p0, mProxyService:Lcom/android/net/IProxyService;

    if-nez v1, :cond_e

    .line 251
    const-string v1, "PacManager"

    const-string/jumbo v2, "setCurrentProxyScript: no proxy service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x0

    .line 260
    :goto_d
    return v1

    .line 255
    :cond_e
    :try_start_e
    iget-object v1, p0, mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v1, p1}, Lcom/android/net/IProxyService;->setPacFile(Ljava/lang/String;)V

    .line 256
    iput-object p1, p0, mCurrentPac:Ljava/lang/String;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_15} :catch_17

    .line 260
    :goto_15
    const/4 v1, 0x1

    goto :goto_d

    .line 257
    :catch_17
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PacManager"

    const-string v2, "Unable to set PAC file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private setDownloadIn(I)V
    .registers 10
    .param p1, "delayIndex"    # I

    .prologue
    .line 244
    invoke-direct {p0, p1}, getDownloadDelay(I)J

    move-result-wide v0

    .line 245
    .local v0, "delay":J
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 246
    .local v2, "timeTillTrigger":J
    invoke-direct {p0}, getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 247
    return-void
.end method

.method private unbind()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_e

    .line 351
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 352
    iput-object v2, p0, mConnection:Landroid/content/ServiceConnection;

    .line 354
    :cond_e
    iget-object v0, p0, mProxyConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1b

    .line 355
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 356
    iput-object v2, p0, mProxyConnection:Landroid/content/ServiceConnection;

    .line 358
    :cond_1b
    iput-object v2, p0, mProxyService:Lcom/android/net/IProxyService;

    .line 359
    const/4 v0, -0x1

    iput v0, p0, mLastPort:I

    .line 360
    return-void
.end method


# virtual methods
.method public declared-synchronized setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z
    .registers 7
    .param p1, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    const/4 v1, 0x0

    .line 161
    monitor-enter p0

    :try_start_2
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 162
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, mPacUrl:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I
    :try_end_1d
    .catchall {:try_start_2 .. :try_end_1d} :catchall_46

    move-result v2

    if-lez v2, :cond_22

    .line 190
    :goto_20
    monitor-exit p0

    return v1

    .line 166
    :cond_22
    :try_start_22
    iget-object v2, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_46

    .line 167
    :try_start_25
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, mPacUrl:Landroid/net/Uri;

    .line 168
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_43

    .line 169
    const/4 v1, 0x0

    :try_start_2d
    iput v1, p0, mCurrentDelay:I

    .line 170
    const/4 v1, 0x0

    iput-boolean v1, p0, mHasSentBroadcast:Z

    .line 171
    const/4 v1, 0x0

    iput-boolean v1, p0, mHasDownloaded:Z

    .line 172
    invoke-direct {p0}, getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v2, p0, mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 173
    invoke-direct {p0}, bind()V
    :try_end_41
    .catchall {:try_start_2d .. :try_end_41} :catchall_46

    .line 174
    const/4 v1, 0x1

    goto :goto_20

    .line 168
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    :try_start_45
    throw v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_46

    .line 161
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1

    .line 176
    :cond_49
    :try_start_49
    invoke-direct {p0}, getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v2

    iget-object v3, p0, mPacRefreshIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 177
    iget-object v2, p0, mProxyLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_55
    .catchall {:try_start_49 .. :try_end_55} :catchall_46

    .line 178
    :try_start_55
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object v3, p0, mPacUrl:Landroid/net/Uri;

    .line 179
    const/4 v3, 0x0

    iput-object v3, p0, mCurrentPac:Ljava/lang/String;

    .line 180
    iget-object v3, p0, mProxyService:Lcom/android/net/IProxyService;
    :try_end_5e
    .catchall {:try_start_55 .. :try_end_5e} :catchall_6a

    if-eqz v3, :cond_68

    .line 182
    :try_start_60
    iget-object v3, p0, mProxyService:Lcom/android/net/IProxyService;

    invoke-interface {v3}, Lcom/android/net/IProxyService;->stopPacSystem()V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_65} :catch_6d
    .catchall {:try_start_60 .. :try_end_65} :catchall_79

    .line 186
    :try_start_65
    invoke-direct {p0}, unbind()V

    .line 189
    :cond_68
    :goto_68
    monitor-exit v2

    goto :goto_20

    :catchall_6a
    move-exception v1

    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_46

    .line 183
    :catch_6d
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_6e
    const-string v3, "PacManager"

    const-string v4, "Failed to stop PAC service"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_79

    .line 186
    :try_start_75
    invoke-direct {p0}, unbind()V

    goto :goto_68

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_79
    move-exception v1

    invoke-direct {p0}, unbind()V

    throw v1
    :try_end_7e
    .catchall {:try_start_75 .. :try_end_7e} :catchall_6a
.end method
