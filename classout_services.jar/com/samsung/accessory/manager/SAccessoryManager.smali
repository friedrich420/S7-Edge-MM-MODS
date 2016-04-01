.class public Lcom/samsung/accessory/manager/SAccessoryManager;
.super Lcom/samsung/accessory/manager/ISAccessoryManager$Stub;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$UnverifiedCoverAttachCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;,
        Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MSG_AUTH_RESTART:I = 0x3

.field private static final MSG_AUTH_SESSION_COMPLETE:I = 0xc

.field private static final MSG_AUTH_SESSION_STARTED:I = 0xb

.field private static final MSG_AUTH_SESSION_STARTING:I = 0xa

.field private static final MSG_AUTH_SESSION_STOPPED:I = 0xd

.field private static final MSG_AUTH_START_REQUEST:I = 0x1

.field private static final MSG_AUTH_START_REQUEST_INTERNAL:I = 0x2

.field private static final MSG_AUTH_STOP_REQUEST:I = 0x4

.field private static final TAG:Ljava/lang/String;

.field public static final TEST_ACTION_AUTHENTICATION_REPLY:Ljava/lang/String; = "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REPLY"

.field private static final TEST_ACTION_AUTHENTICATION_REQUEST:Ljava/lang/String; = "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

.field private static final VDBG:Z = true


# instance fields
.field private mAuthHandler:Landroid/os/Handler;

.field private final mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

.field final mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

.field private mContext:Landroid/content/Context;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLocalAuthenticator:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;",
            ">;"
        }
    .end annotation
.end field

.field final mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

.field private mSessions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/accessory/manager/authentication/AuthenticationSession;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 36
    const-class v1, Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, TAG:Ljava/lang/String;

    .line 37
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    sput-boolean v0, DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "inputManager"    # Lcom/android/server/input/InputManagerService;

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/samsung/accessory/manager/ISAccessoryManager$Stub;-><init>()V

    .line 56
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, mSessions:Ljava/util/HashMap;

    .line 58
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, mLocalAuthenticator:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Lcom/samsung/accessory/manager/SAccessoryManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$1;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v2, p0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    .line 110
    new-instance v2, Lcom/samsung/accessory/manager/SAccessoryManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$2;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v2, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    .line 273
    new-instance v2, Lcom/samsung/accessory/manager/SAccessoryManager$3;

    invoke-direct {v2, p0}, Lcom/samsung/accessory/manager/SAccessoryManager$3;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V

    iput-object v2, p0, mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 287
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "SAccessoryManager starting up"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const-string/jumbo v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 290
    .local v1, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    sget-object v3, TAG:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 291
    iget-object v2, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 293
    new-instance v2, Landroid/os/HandlerThread;

    sget-object v3, TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 294
    iget-object v2, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 295
    new-instance v2, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;

    iget-object v3, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthHandler;-><init>(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Looper;)V

    iput-object v2, p0, mAuthHandler:Landroid/os/Handler;

    .line 297
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_74

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REQUEST"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mAuthenticationRequsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 303
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_74
    iget-object v2, p0, mLocalAuthenticator:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, mAuthenticationTask:Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;

    invoke-direct {v3, v4, p2, v5, v6}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;Landroid/os/Looper;Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationTask;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .prologue
    .line 34
    iget-object v0, p0, mAuthHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/accessory/manager/SAccessoryManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;

    .prologue
    .line 34
    iget-object v0, p0, mSessions:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/accessory/manager/SAccessoryManager;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/accessory/manager/SAccessoryManager;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 34
    invoke-direct {p0, p1}, processAuthMessage(Landroid/os/Message;)V

    return-void
.end method

.method private getRunningSessionsLocked(I)I
    .registers 6
    .param p1, "connectivityType"    # I

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, "currentConn":I
    iget-object v3, p0, mSessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 135
    .local v0, "conn":I
    if-ne v0, p1, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 136
    .end local v0    # "conn":I
    :cond_20
    return v1
.end method

.method private handleAuthReStartRequest(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 151
    .local v0, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    iget-object v2, p0, mSessions:Ljava/util/HashMap;

    monitor-enter v2

    .line 152
    :try_start_7
    iget-object v1, p0, mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 153
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    .line 156
    :goto_12
    monitor-exit v2

    .line 157
    return-void

    .line 155
    :cond_14
    sget-object v1, TAG:Ljava/lang/String;

    const-string v3, "The session does not exist! so can\'t restart the session!"

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 156
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private handleAuthResponse(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 199
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 201
    .local v0, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-nez v1, :cond_e

    .line 202
    invoke-direct {p0, v0}, sendIntentToReceiver(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 206
    :goto_d
    return-void

    .line 204
    :cond_e
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    goto :goto_d
.end method

.method private handleAuthStartRequest(Landroid/os/Message;Z)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "isInternal"    # Z

    .prologue
    .line 161
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 163
    .local v1, "data":Landroid/os/Bundle;
    iget-object v8, p0, mSessions:Ljava/util/HashMap;

    monitor-enter v8

    .line 164
    :try_start_7
    const-string/jumbo v7, "package_name"

    const-string v9, ""

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, "requestPackage":Ljava/lang/String;
    const-string v7, "connectivity_type"

    const/4 v9, -0x1

    invoke-virtual {v1, v7, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 167
    .local v6, "type":I
    invoke-static {v6}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->getMaxConnection(I)I

    move-result v2

    .line 169
    .local v2, "maxConnection":I
    invoke-direct {p0, v6}, getRunningSessionsLocked(I)I

    move-result v7

    if-ge v7, v2, :cond_48

    .line 170
    iget-object v7, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 185
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v7, v3, v6}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->createNewSession(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    move-result-object v5

    .line 188
    .local v5, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    if-eqz p2, :cond_35

    .line 189
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 190
    .local v0, "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    invoke-virtual {v5, v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setAuthenticationResultCallback(Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;)V

    .line 192
    .end local v0    # "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    :cond_35
    iget-object v7, p0, mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    invoke-virtual {v5, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setSessionCallback(Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;)V

    .line 193
    invoke-virtual {v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->startSession()V

    .line 194
    iget-object v7, p0, mSessions:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v8

    .line 196
    .end local v5    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :goto_47
    return-void

    .line 172
    :cond_48
    new-instance v4, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-direct {v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;-><init>()V

    .line 173
    .local v4, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    const/16 v7, 0xb

    invoke-virtual {v4, v7}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setReason(I)V

    .line 175
    if-eqz p2, :cond_5d

    .line 176
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    .line 177
    .restart local v0    # "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    if-eqz v0, :cond_62

    .line 178
    invoke-interface {v0, v4}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationComplted(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 182
    .end local v0    # "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    :cond_5d
    :goto_5d
    monitor-exit v8

    goto :goto_47

    .line 195
    .end local v2    # "maxConnection":I
    .end local v3    # "requestPackage":Ljava/lang/String;
    .end local v4    # "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .end local v6    # "type":I
    :catchall_5f
    move-exception v7

    monitor-exit v8
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_5f

    throw v7

    .line 180
    .restart local v0    # "callback":Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;
    .restart local v2    # "maxConnection":I
    .restart local v3    # "requestPackage":Ljava/lang/String;
    .restart local v4    # "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .restart local v6    # "type":I
    :cond_62
    :try_start_62
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v9, "handleAuthStartRequest, callback is null!"

    invoke-static {v7, v9}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_5f

    goto :goto_5d
.end method

.method private handleAuthStopRequest(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 141
    .local v0, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    iget-object v2, p0, mSessions:Ljava/util/HashMap;

    monitor-enter v2

    .line 142
    :try_start_7
    iget-object v1, p0, mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 143
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->stopSession()V

    .line 146
    :goto_12
    monitor-exit v2

    .line 147
    return-void

    .line 145
    :cond_14
    sget-object v1, TAG:Ljava/lang/String;

    const-string v3, "The session does not exist! so can\'t stop the session!"

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 146
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private processAuthMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 219
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processAuthMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_9a

    .line 261
    :cond_20
    :goto_20
    :pswitch_20
    return-void

    .line 223
    :pswitch_21
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, handleAuthStartRequest(Landroid/os/Message;Z)V

    goto :goto_20

    .line 226
    :pswitch_26
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, handleAuthStartRequest(Landroid/os/Message;Z)V

    goto :goto_20

    .line 229
    :pswitch_2b
    invoke-direct {p0, p1}, handleAuthReStartRequest(Landroid/os/Message;)V

    goto :goto_20

    .line 232
    :pswitch_2f
    invoke-direct {p0, p1}, handleAuthStopRequest(Landroid/os/Message;)V

    goto :goto_20

    .line 235
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 236
    .local v0, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 237
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarting(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_20

    .line 240
    .end local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :pswitch_45
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 241
    .restart local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 242
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStarted()V

    goto :goto_20

    .line 245
    .end local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :pswitch_57
    invoke-direct {p0, p1}, handleAuthResponse(Landroid/os/Message;)V

    goto :goto_20

    .line 248
    :pswitch_5b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 249
    .restart local v0    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    iget-object v2, p0, mSessions:Ljava/util/HashMap;

    monitor-enter v2

    .line 250
    :try_start_62
    iget-object v1, p0, mSessions:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 251
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v3, "session removed"

    invoke-static {v1, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_72
    iget-object v1, p0, mSessions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_87

    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 254
    iget-object v1, p0, mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 256
    :cond_87
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    if-eqz v1, :cond_95

    .line 257
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationCallback()Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/samsung/accessory/manager/SAccessoryManager$AuthenticationResultCallback;->onAuthenticationStopped(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    .line 258
    :cond_95
    monitor-exit v2

    goto :goto_20

    :catchall_97
    move-exception v1

    monitor-exit v2
    :try_end_99
    .catchall {:try_start_62 .. :try_end_99} :catchall_97

    throw v1

    .line 221
    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_21
        :pswitch_26
        :pswitch_2b
        :pswitch_2f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_33
        :pswitch_45
        :pswitch_57
        :pswitch_5b
    .end packed-switch
.end method

.method private sendIntentToReceiver(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 6
    .param p1, "session"    # Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .prologue
    .line 209
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendIntentToReceiver"

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getAuthenticationResult()Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    move-result-object v1

    .line 211
    .local v1, "result":Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.accessory.authentication.action.TEST_AUTHENTICATION_REPLY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getResultBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 213
    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->getRequestPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 216
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 333
    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3f

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump SAccessoryManager from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " without permission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    :goto_3e
    return-void

    .line 341
    :cond_3f
    iget-object v3, p0, mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_45
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 342
    .local v0, "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_45

    .line 345
    .end local v0    # "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    :cond_55
    iget-object v4, p0, mSessions:Ljava/util/HashMap;

    monitor-enter v4

    .line 346
    :try_start_58
    iget-object v3, p0, mSessions:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_62
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_75

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    .line 347
    .local v2, "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_62

    .line 349
    .end local v2    # "session":Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
    :catchall_72
    move-exception v3

    monitor-exit v4
    :try_end_74
    .catchall {:try_start_58 .. :try_end_74} :catchall_72

    throw v3

    :cond_75
    :try_start_75
    monitor-exit v4
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_72

    goto :goto_3e
.end method

.method public getSupportedServices()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    const-string v0, "SAccessoryManager"

    return-object v0
.end method

.method public notifyUnverifiedCoverAttachChanged(JZ)V
    .registers 11
    .param p1, "whenNanos"    # J
    .param p3, "attached"    # Z

    .prologue
    .line 316
    iget-object v3, p0, mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 317
    .local v0, "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    instance-of v3, v0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    if-eqz v3, :cond_6

    .line 318
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3d

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyUnverifiedCoverAttachChanged whenNanos = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", attached = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    move-object v1, v0

    .line 320
    check-cast v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 321
    .local v1, "coverAuthenticator":Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    invoke-virtual {v1, p1, p2, p3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZ)V

    goto :goto_6

    .line 324
    .end local v0    # "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    .end local v1    # "coverAuthenticator":Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;
    :cond_44
    return-void
.end method

.method public systemReady()V
    .registers 4

    .prologue
    .line 308
    iget-object v2, p0, mLocalAuthenticator:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    .line 312
    :cond_4
    return-void

    .line 309
    :cond_5
    iget-object v2, p0, mLocalAuthenticator:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;

    .line 310
    .local v0, "authenricator":Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;->systemReady()V

    goto :goto_b
.end method
