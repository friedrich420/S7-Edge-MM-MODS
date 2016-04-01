.class public Lcom/android/server/DcmNextiPlayReadyService;
.super Landroid/app/Service;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;,
        Lcom/android/server/DcmNextiPlayReadyService$MainThread;,
        Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final BOOT_COMPLETE:I = 0x1

.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final GOT_DATA_CONNECTION:I = 0x2

.field public static final GOT_NITZ:I = 0x3

.field public static GotDataBeforeBootComplete:I = 0x0

.field private static final LIMIT_TIME:I = 0x1388

.field private static final NTP_SERVER:Ljava/lang/String; = "https://tts.spmode.ne.jp:443"

.field private static final PLAYREADY_REF_TIME_FILE:Ljava/lang/String; = "/data/.dcmdrm/.playready/DcmNextiPlayReadyRefTime.dat"

.field private static final TAG:Ljava/lang/String; = "DcmNextiPlayReadyService"

.field public static THREAD_EXECUTING:I


# instance fields
.field public isSuspendedBefore:Ljava/lang/Boolean;

.field private mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

.field private mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, DATE_FORMAT:Ljava/text/DateFormat;

    .line 107
    const/4 v0, 0x1

    sput v0, THREAD_EXECUTING:I

    .line 108
    const/4 v0, 0x0

    sput v0, GotDataBeforeBootComplete:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, isSuspendedBefore:Ljava/lang/Boolean;

    .line 377
    return-void
.end method

.method static synthetic access$000(JJ)V
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 99
    invoke-static {p0, p1, p2, p3}, nitzReceived(JJ)V

    return-void
.end method

.method private static native bootComplete()V
.end method

.method private handleConnectivityStateChanged()V
    .registers 3

    .prologue
    .line 259
    new-instance v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    const-string/jumbo v1, "https://tts.spmode.ne.jp:443"

    invoke-direct {v0, p0, v1}, Lcom/android/server/DcmNextiPlayReadyService$MainThread;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V

    iput-object v0, p0, mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    .line 260
    iget-object v0, p0, mMainThread:Lcom/android/server/DcmNextiPlayReadyService$MainThread;

    invoke-virtual {v0}, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->start()V

    .line 261
    return-void
.end method

.method private static native nitzReceived(JJ)V
.end method

.method private static native ntpReceived(JJ)V
.end method


# virtual methods
.method public handleNitzTimeUpdation()V
    .registers 5

    .prologue
    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 271
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/DcmNextiPlayReadyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/DcmNextiPlayReadyService$1;-><init>(Lcom/android/server/DcmNextiPlayReadyService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 175
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 177
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, mServiceLooper:Landroid/os/Looper;

    .line 181
    new-instance v1, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    iget-object v2, p0, mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Landroid/os/Looper;)V

    iput-object v1, p0, mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    .line 182
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 249
    return-void
.end method

.method public onLowMemory()V
    .registers 3

    .prologue
    .line 254
    const-string v0, "DcmNextiPlayReadyService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 256
    return-void
.end method

.method public onNetworkStateChanged(JJ)V
    .registers 10
    .param p1, "networktime"    # J
    .param p3, "recvelapsedtime"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 264
    cmp-long v0, p1, v2

    if-lez v0, :cond_d

    cmp-long v0, p3, v2

    if-lez v0, :cond_d

    .line 265
    invoke-static {p1, p2, p3, p4}, ntpReceived(JJ)V

    .line 267
    :cond_d
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 189
    iget-object v3, p0, mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    invoke-virtual {v3}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 190
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 191
    if-eqz p1, :cond_1a

    .line 193
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 195
    iput v5, v0, Landroid/os/Message;->what:I

    .line 235
    :cond_1a
    :goto_1a
    iget-object v3, p0, mServiceHandler:Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;

    invoke-virtual {v3, v0}, Lcom/android/server/DcmNextiPlayReadyService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    return v5

    .line 197
    :cond_20
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    .line 199
    const-string/jumbo v3, "networkInfo"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 200
    .local v1, "net":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1a

    .line 202
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    .line 203
    .local v2, "st":Landroid/net/NetworkInfo$State;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v5, :cond_53

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 204
    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Wifi Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_1a

    .line 207
    :cond_53
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_1a

    .line 209
    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is mobile data Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v3, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 212
    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Data suspended"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_1a

    .line 215
    :cond_76
    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget-object v3, p0, isSuspendedBefore:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_90

    .line 217
    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is Data connected and previous action was not suspended"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_1a

    .line 222
    :cond_90
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, isSuspendedBefore:Ljava/lang/Boolean;

    goto :goto_1a

    .line 227
    .end local v1    # "net":Landroid/net/NetworkInfo;
    .end local v2    # "st":Landroid/net/NetworkInfo$State;
    :cond_98
    const-string v3, "com.samsung.intent.action.NITZ_SET_TIME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    .line 228
    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Current action is nitz set time"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1a

    .line 232
    :cond_b0
    const-string v3, "DcmNextiPlayReadyService"

    const-string v4, "Code should not reach here"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1a
.end method
