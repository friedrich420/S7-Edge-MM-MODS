.class public Landroid/speech/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/SpeechRecognizer$InternalListener;,
        Landroid/speech/SpeechRecognizer$Connection;
    }
.end annotation


# static fields
.field public static final CONFIDENCE_SCORES:Ljava/lang/String; = "confidence_scores"

.field private static final DBG:Z = false

.field public static final ERROR_AUDIO:I = 0x3

.field public static final ERROR_CLIENT:I = 0x5

.field public static final ERROR_INSUFFICIENT_PERMISSIONS:I = 0x9

.field public static final ERROR_NETWORK:I = 0x2

.field public static final ERROR_NETWORK_TIMEOUT:I = 0x1

.field public static final ERROR_NO_MATCH:I = 0x7

.field public static final ERROR_RECOGNIZER_BUSY:I = 0x8

.field public static final ERROR_SERVER:I = 0x4

.field public static final ERROR_SPEECH_TIMEOUT:I = 0x6

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_CHANGE_LISTENER:I = 0x4

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field public static final RESULTS_RECOGNITION:Ljava/lang/String; = "results_recognition"

.field private static final TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private mConnection:Landroid/speech/SpeechRecognizer$Connection;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/speech/SpeechRecognizer$InternalListener;

.field private final mPendingTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/speech/IRecognitionService;

.field private final mServiceComponent:Landroid/content/ComponentName;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/speech/SpeechRecognizer$1;

    invoke-direct {v0, p0}, Landroid/speech/SpeechRecognizer$1;-><init>(Landroid/speech/SpeechRecognizer;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, mPendingTasks:Ljava/util/Queue;

    .line 153
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/speech/SpeechRecognizer$InternalListener;-><init>(Landroid/speech/SpeechRecognizer$1;)V

    iput-object v0, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    .line 160
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, mServiceComponent:Landroid/content/ComponentName;

    .line 162
    return-void
.end method

.method static synthetic access$000(Landroid/speech/SpeechRecognizer;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-direct {p0, p1}, handleStartListening(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/speech/SpeechRecognizer;)V
    .registers 1
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 51
    invoke-direct {p0}, handleStopMessage()V

    return-void
.end method

.method static synthetic access$200(Landroid/speech/SpeechRecognizer;)V
    .registers 1
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 51
    invoke-direct {p0}, handleCancelMessage()V

    return-void
.end method

.method static synthetic access$300(Landroid/speech/SpeechRecognizer;Landroid/speech/RecognitionListener;)V
    .registers 2
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p1, "x1"    # Landroid/speech/RecognitionListener;

    .prologue
    .line 51
    invoke-direct {p0, p1}, handleChangeListener(Landroid/speech/RecognitionListener;)V

    return-void
.end method

.method static synthetic access$502(Landroid/speech/SpeechRecognizer;Landroid/speech/IRecognitionService;)Landroid/speech/IRecognitionService;
    .registers 2
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p1, "x1"    # Landroid/speech/IRecognitionService;

    .prologue
    .line 51
    iput-object p1, p0, mService:Landroid/speech/IRecognitionService;

    return-object p1
.end method

.method static synthetic access$600(Landroid/speech/SpeechRecognizer;)Ljava/util/Queue;
    .registers 2
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 51
    iget-object v0, p0, mPendingTasks:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Landroid/speech/SpeechRecognizer;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;

    .prologue
    .line 51
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$Connection;)Landroid/speech/SpeechRecognizer$Connection;
    .registers 2
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer;
    .param p1, "x1"    # Landroid/speech/SpeechRecognizer$Connection;

    .prologue
    .line 51
    iput-object p1, p0, mConnection:Landroid/speech/SpeechRecognizer$Connection;

    return-object p1
.end method

.method private static checkIsCalledFromMainThread()V
    .registers 2

    .prologue
    .line 325
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 326
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SpeechRecognizer should be used only from the application\'s main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_12
    return-void
.end method

.method private checkOpenConnection()Z
    .registers 3

    .prologue
    .line 382
    iget-object v0, p0, mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_6

    .line 383
    const/4 v0, 0x1

    .line 387
    :goto_5
    return v0

    .line 385
    :cond_6
    iget-object v0, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    .line 386
    const-string v0, "SpeechRecognizer"

    const-string/jumbo v1, "not connected to the recognition service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {p0, v0}, createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static createSpeechRecognizer(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/speech/SpeechRecognizer;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;

    .prologue
    .line 233
    if-nez p0, :cond_a

    .line 234
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context cannot be null)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_a
    invoke-static {}, checkIsCalledFromMainThread()V

    .line 237
    new-instance v0, Landroid/speech/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, <init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    return-object v0
.end method

.method private handleCancelMessage()V
    .registers 4

    .prologue
    .line 369
    invoke-direct {p0}, checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_7

    .line 379
    :goto_6
    return-void

    .line 373
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 375
    :catch_f
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string v2, "cancel() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    iget-object v1, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_6
.end method

.method private handleChangeListener(Landroid/speech/RecognitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .prologue
    .line 393
    iget-object v0, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    # setter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0, p1}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1002(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;

    .line 394
    return-void
.end method

.method private handleStartListening(Landroid/content/Intent;)V
    .registers 5
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    .line 341
    invoke-direct {p0}, checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_7

    .line 351
    :goto_6
    return-void

    .line 345
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, p1, v2}, Landroid/speech/IRecognitionService;->startListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 347
    :catch_f
    move-exception v0

    .line 348
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "startListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    iget-object v1, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_6
.end method

.method private handleStopMessage()V
    .registers 4

    .prologue
    .line 355
    invoke-direct {p0}, checkOpenConnection()Z

    move-result v1

    if-nez v1, :cond_7

    .line 365
    :goto_6
    return-void

    .line 359
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Landroid/speech/IRecognitionService;

    iget-object v2, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v1, v2}, Landroid/speech/IRecognitionService;->stopListening(Landroid/speech/IRecognitionListener;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 361
    :catch_f
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SpeechRecognizer"

    const-string/jumbo v2, "stopListening() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 363
    iget-object v1, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_6
.end method

.method public static isRecognitionAvailable(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.RecognitionService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private putMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 332
    iget-object v0, p0, mService:Landroid/speech/IRecognitionService;

    if-nez v0, :cond_a

    .line 333
    iget-object v0, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 337
    :goto_9
    return-void

    .line 335
    :cond_a
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 320
    invoke-static {}, checkIsCalledFromMainThread()V

    .line 321
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, putMessage(Landroid/os/Message;)V

    .line 322
    return-void
.end method

.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, mService:Landroid/speech/IRecognitionService;

    if-eqz v0, :cond_c

    .line 402
    :try_start_5
    iget-object v0, p0, mService:Landroid/speech/IRecognitionService;

    iget-object v1, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-interface {v0, v1}, Landroid/speech/IRecognitionService;->cancel(Landroid/speech/IRecognitionListener;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_26

    .line 408
    :cond_c
    :goto_c
    iget-object v0, p0, mConnection:Landroid/speech/SpeechRecognizer$Connection;

    if-eqz v0, :cond_17

    .line 409
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mConnection:Landroid/speech/SpeechRecognizer$Connection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 411
    :cond_17
    iget-object v0, p0, mPendingTasks:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 412
    iput-object v2, p0, mService:Landroid/speech/IRecognitionService;

    .line 413
    iput-object v2, p0, mConnection:Landroid/speech/SpeechRecognizer$Connection;

    .line 414
    iget-object v0, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    # setter for: Landroid/speech/SpeechRecognizer$InternalListener;->mInternalListener:Landroid/speech/RecognitionListener;
    invoke-static {v0, v2}, Landroid/speech/SpeechRecognizer$InternalListener;->access$1002(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;

    .line 415
    return-void

    .line 403
    :catch_26
    move-exception v0

    goto :goto_c
.end method

.method public setRecognitionListener(Landroid/speech/RecognitionListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/speech/RecognitionListener;

    .prologue
    .line 249
    invoke-static {}, checkIsCalledFromMainThread()V

    .line 250
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, putMessage(Landroid/os/Message;)V

    .line 251
    return-void
.end method

.method public startListening(Landroid/content/Intent;)V
    .registers 9
    .param p1, "recognizerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 264
    if-nez p1, :cond_d

    .line 265
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "intent must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 267
    :cond_d
    invoke-static {}, checkIsCalledFromMainThread()V

    .line 268
    iget-object v2, p0, mConnection:Landroid/speech/SpeechRecognizer$Connection;

    if-nez v2, :cond_6f

    .line 269
    new-instance v2, Landroid/speech/SpeechRecognizer$Connection;

    invoke-direct {v2, p0, v4}, Landroid/speech/SpeechRecognizer$Connection;-><init>(Landroid/speech/SpeechRecognizer;Landroid/speech/SpeechRecognizer$1;)V

    iput-object v2, p0, mConnection:Landroid/speech/SpeechRecognizer$Connection;

    .line 271
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.RecognitionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v2, p0, mServiceComponent:Landroid/content/ComponentName;

    if-nez v2, :cond_69

    .line 274
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_recognition_service"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "serviceComponent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 278
    const-string v2, "SpeechRecognizer"

    const-string/jumbo v3, "no selected voice recognition service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v2, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-virtual {v2, v6}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    .line 297
    .end local v0    # "serviceComponent":Ljava/lang/String;
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :goto_46
    return-void

    .line 283
    .restart local v0    # "serviceComponent":Ljava/lang/String;
    .restart local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_47
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 288
    .end local v0    # "serviceComponent":Ljava/lang/String;
    :goto_4e
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mConnection:Landroid/speech/SpeechRecognizer$Connection;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_6f

    .line 289
    const-string v2, "SpeechRecognizer"

    const-string v3, "bind to recognition service failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iput-object v4, p0, mConnection:Landroid/speech/SpeechRecognizer$Connection;

    .line 291
    iput-object v4, p0, mService:Landroid/speech/IRecognitionService;

    .line 292
    iget-object v2, p0, mListener:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-virtual {v2, v6}, Landroid/speech/SpeechRecognizer$InternalListener;->onError(I)V

    goto :goto_46

    .line 285
    :cond_69
    iget-object v2, p0, mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_4e

    .line 296
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_6f
    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-static {v2, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, putMessage(Landroid/os/Message;)V

    goto :goto_46
.end method

.method public stopListening()V
    .registers 3

    .prologue
    .line 310
    invoke-static {}, checkIsCalledFromMainThread()V

    .line 311
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, putMessage(Landroid/os/Message;)V

    .line 312
    return-void
.end method
