.class Landroid/speech/tts/TextToSpeechService$CallbackMap;
.super Landroid/os/RemoteCallbackList;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Landroid/speech/tts/ITextToSpeechCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallerToCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/speech/tts/ITextToSpeechCallback;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method private constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .registers 3

    .prologue
    .line 1453
    iput-object p1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 1454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mCallerToCallback:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/tts/TextToSpeechService;Landroid/speech/tts/TextToSpeechService$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/speech/tts/TextToSpeechService;
    .param p2, "x1"    # Landroid/speech/tts/TextToSpeechService$1;

    .prologue
    .line 1453
    invoke-direct {p0, p1}, <init>(Landroid/speech/tts/TextToSpeechService;)V

    return-void
.end method

.method private getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;
    .registers 6
    .param p1, "caller"    # Ljava/lang/Object;

    .prologue
    .line 1533
    move-object v0, p1

    check-cast v0, Landroid/os/IBinder;

    .line 1534
    .local v0, "asBinder":Landroid/os/IBinder;
    iget-object v3, p0, mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v3

    .line 1535
    :try_start_6
    iget-object v2, p0, mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/ITextToSpeechCallback;

    .line 1536
    .local v1, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    monitor-exit v3

    .line 1538
    return-object v1

    .line 1536
    .end local v1    # "cb":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_10
    move-exception v2

    monitor-exit v3
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_10

    throw v2
.end method


# virtual methods
.method public dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V
    .registers 9
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "errorCode"    # I

    .prologue
    .line 1505
    invoke-direct {p0, p1}, getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1506
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    .line 1512
    :goto_6
    return-void

    .line 1508
    :cond_7
    :try_start_7
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onError(Ljava/lang/String;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 1509
    :catch_b
    move-exception v1

    .line 1510
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onError failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1493
    invoke-direct {p0, p1}, getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1494
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    .line 1501
    :goto_6
    return-void

    .line 1496
    :cond_7
    :try_start_7
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onStart(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 1497
    :catch_b
    move-exception v1

    .line 1498
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onStart failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;
    .param p3, "started"    # Z

    .prologue
    .line 1473
    invoke-direct {p0, p1}, getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1474
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    .line 1480
    :goto_6
    return-void

    .line 1476
    :cond_7
    :try_start_7
    invoke-interface {v0, p2, p3}, Landroid/speech/tts/ITextToSpeechCallback;->onStop(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 1477
    :catch_b
    move-exception v1

    .line 1478
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onStop failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8
    .param p1, "callerIdentity"    # Ljava/lang/Object;
    .param p2, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1483
    invoke-direct {p0, p1}, getCallbackFor(Ljava/lang/Object;)Landroid/speech/tts/ITextToSpeechCallback;

    move-result-object v0

    .line 1484
    .local v0, "cb":Landroid/speech/tts/ITextToSpeechCallback;
    if-nez v0, :cond_7

    .line 1490
    :goto_6
    return-void

    .line 1486
    :cond_7
    :try_start_7
    invoke-interface {v0, p2}, Landroid/speech/tts/ITextToSpeechCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    .line 1487
    :catch_b
    move-exception v1

    .line 1488
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TextToSpeechService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback onDone failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public kill()V
    .registers 3

    .prologue
    .line 1525
    iget-object v1, p0, mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v1

    .line 1526
    :try_start_3
    iget-object v0, p0, mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1527
    invoke-super {p0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 1528
    monitor-exit v1

    .line 1529
    return-void

    .line 1528
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/IInterface;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1453
    check-cast p1, Landroid/speech/tts/ITextToSpeechCallback;

    .end local p1    # "x0":Landroid/os/IInterface;
    invoke-virtual {p0, p1, p2}, onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onCallbackDied(Landroid/speech/tts/ITextToSpeechCallback;Ljava/lang/Object;)V
    .registers 6
    .param p1, "callback"    # Landroid/speech/tts/ITextToSpeechCallback;
    .param p2, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 1516
    move-object v0, p2

    check-cast v0, Landroid/os/IBinder;

    .line 1517
    .local v0, "caller":Landroid/os/IBinder;
    iget-object v2, p0, mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 1518
    :try_start_6
    iget-object v1, p0, mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    monitor-exit v2

    .line 1521
    return-void

    .line 1519
    :catchall_d
    move-exception v1

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .registers 6
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    .prologue
    .line 1458
    iget-object v2, p0, mCallerToCallback:Ljava/util/HashMap;

    monitor-enter v2

    .line 1460
    if-eqz p2, :cond_19

    .line 1461
    :try_start_5
    invoke-virtual {p0, p2, p1}, register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 1462
    iget-object v1, p0, mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    .line 1466
    .local v0, "old":Landroid/speech/tts/ITextToSpeechCallback;
    :goto_10
    if-eqz v0, :cond_17

    if-eq v0, p2, :cond_17

    .line 1467
    invoke-virtual {p0, v0}, unregister(Landroid/os/IInterface;)Z

    .line 1469
    :cond_17
    monitor-exit v2

    .line 1470
    return-void

    .line 1464
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :cond_19
    iget-object v1, p0, mCallerToCallback:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/ITextToSpeechCallback;

    .restart local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    goto :goto_10

    .line 1469
    .end local v0    # "old":Landroid/speech/tts/ITextToSpeechCallback;
    :catchall_22
    move-exception v1

    monitor-exit v2
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method
