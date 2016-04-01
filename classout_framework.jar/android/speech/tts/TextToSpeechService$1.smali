.class Landroid/speech/tts/TextToSpeechService$1;
.super Landroid/speech/tts/ITextToSpeechService$Stub;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService;)V
    .registers 2

    .prologue
    .line 1203
    iput-object p1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-direct {p0}, Landroid/speech/tts/ITextToSpeechService$Stub;-><init>()V

    return-void
.end method

.method private varargs checkNonNull([Ljava/lang/Object;)Z
    .registers 7
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1446
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_e

    aget-object v3, v0, v1

    .line 1447
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_b

    const/4 v4, 0x0

    .line 1449
    .end local v3    # "o":Ljava/lang/Object;
    :goto_a
    return v4

    .line 1446
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1449
    .end local v3    # "o":Ljava/lang/Object;
    :cond_e
    const/4 v4, 0x1

    goto :goto_a
.end method

.method private intern(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "in"    # Ljava/lang/String;

    .prologue
    .line 1442
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClientDefaultLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1337
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # invokes: Landroid/speech/tts/TextToSpeechService;->getSettingsLocale()[Ljava/lang/String;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$700(Landroid/speech/tts/TextToSpeechService;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 1416
    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v2}, checkNonNull([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 1426
    :cond_d
    :goto_d
    return-object v1

    .line 1419
    :cond_e
    iget-object v2, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v2, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1421
    .local v0, "retVal":I
    if-eqz v0, :cond_1b

    if-eq v0, v4, :cond_1b

    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    .line 1424
    :cond_1b
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_d
.end method

.method public getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 1355
    iget-object v2, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v2, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onGetFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 1356
    .local v0, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1357
    .local v1, "featuresArray":[Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 1358
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1359
    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1363
    :goto_12
    return-object v1

    .line 1361
    :cond_13
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    goto :goto_12
.end method

.method public getLanguage()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1332
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetLanguage()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1394
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService;->onGetVoices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 1346
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1347
    const/4 v0, -0x1

    .line 1350
    :goto_d
    return v0

    :cond_e
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_d
.end method

.method public isPaused()Z
    .registers 2

    .prologue
    .line 1263
    sget-boolean v0, Landroid/speech/tts/TextToSpeechService;->PAUSE_STATE:Z

    return v0
.end method

.method public isSpeaking()Z
    .registers 2

    .prologue
    .line 1310
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mAudioPlaybackHandler:Landroid/speech/tts/AudioPlaybackHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$300(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/AudioPlaybackHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/AudioPlaybackHandler;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 16
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v10, 0x1

    .line 1372
    new-array v1, v10, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v1}, checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    move v8, v9

    .line 1389
    :cond_e
    :goto_e
    return v8

    .line 1375
    :cond_f
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService;->onIsLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1377
    .local v8, "retVal":I
    if-eqz v8, :cond_1c

    if-eq v8, v10, :cond_1c

    const/4 v1, 0x2

    if-ne v8, v1, :cond_e

    .line 1381
    :cond_1c
    new-instance v0, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;

    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$LoadLanguageItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    if-eqz v1, :cond_e

    move v8, v9

    .line 1386
    goto :goto_e
.end method

.method public loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 12
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "voiceName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 1399
    new-array v1, v8, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v1}, checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    move v6, v7

    .line 1412
    :cond_e
    :goto_e
    return v6

    .line 1402
    :cond_f
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-virtual {v1, p2}, Landroid/speech/tts/TextToSpeechService;->onIsValidVoiceName(Ljava/lang/String;)I

    move-result v6

    .line 1404
    .local v6, "retVal":I
    if-nez v6, :cond_e

    .line 1405
    new-instance v0, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;

    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/speech/tts/TextToSpeechService$LoadVoiceItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;)V

    .line 1407
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, v8, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    if-eqz v1, :cond_e

    move v6, v7

    .line 1409
    goto :goto_e
.end method

.method public pause(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "callerIdentity"    # Landroid/os/IBinder;

    .prologue
    .line 1247
    if-nez p1, :cond_4

    .line 1248
    const/4 v0, -0x1

    .line 1257
    :goto_3
    return v0

    .line 1252
    :cond_4
    :try_start_4
    sget-object v0, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1253
    const/4 v0, 0x1

    sput-boolean v0, Landroid/speech/tts/TextToSpeechService;->PAUSE_STATE:Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_13

    .line 1255
    sget-object v0, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1257
    const/4 v0, 0x0

    goto :goto_3

    .line 1255
    :catchall_13
    move-exception v0

    sget-object v1, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I
    .registers 14
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "audioUri"    # Landroid/net/Uri;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1288
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1289
    const/4 v1, -0x1

    .line 1294
    :goto_13
    return v1

    .line 1292
    :cond_14
    new-instance v0, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;

    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$AudioSpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1294
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_13
.end method

.method public playSilence(Landroid/os/IBinder;JILjava/lang/String;)I
    .registers 14
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "duration"    # J
    .param p4, "queueMode"    # I
    .param p5, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1299
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v1}, checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1300
    const/4 v1, -0x1

    .line 1305
    :goto_d
    return v1

    .line 1303
    :cond_e
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;

    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p5

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$SilenceSpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILjava/lang/String;J)V

    .line 1305
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_d
.end method

.method public resume(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "callerIdentity"    # Landroid/os/IBinder;

    .prologue
    .line 1231
    if-nez p1, :cond_4

    .line 1232
    const/4 v0, -0x1

    .line 1241
    :goto_3
    return v0

    .line 1236
    :cond_4
    :try_start_4
    sget-object v0, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1237
    sget-object v0, Landroid/speech/tts/TextToSpeechService;->pauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_15

    .line 1239
    sget-object v0, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1241
    const/4 v0, 0x0

    goto :goto_3

    .line 1239
    :catchall_15
    move-exception v0

    sget-object v1, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .registers 5
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;

    .prologue
    .line 1433
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1438
    :goto_c
    return-void

    .line 1437
    :cond_d
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V

    goto :goto_c
.end method

.method public speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .registers 14
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1207
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 1208
    const/4 v1, -0x1

    .line 1225
    :goto_13
    return v1

    .line 1211
    :cond_14
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;

    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/speech/tts/TextToSpeechService$SynthesisSpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1215
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    :try_start_27
    sget-object v1, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1216
    sget-boolean v1, Landroid/speech/tts/TextToSpeechService;->PAUSE_STATE:Z

    if-eqz v1, :cond_38

    .line 1217
    const/4 v1, 0x1

    sput-boolean v1, Landroid/speech/tts/SynthesisPlaybackQueueItem;->userSelectedOtherItemInPauseState:Z

    .line 1218
    sget-object v1, Landroid/speech/tts/TextToSpeechService;->pauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_48

    .line 1221
    :cond_38
    sget-object v1, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1225
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    invoke-virtual {v1, p3, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_13

    .line 1221
    :catchall_48
    move-exception v1

    sget-object v2, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public stop(Landroid/os/IBinder;)I
    .registers 4
    .param p1, "caller"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 1315
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, checkNonNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1316
    const/4 v0, -0x1

    .line 1327
    :goto_d
    return v0

    .line 1320
    :cond_e
    :try_start_e
    sget-object v0, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1321
    sget-object v0, Landroid/speech/tts/TextToSpeechService;->pauseCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 1322
    const/4 v0, 0x0

    sput-boolean v0, Landroid/speech/tts/TextToSpeechService;->PAUSE_STATE:Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_2b

    .line 1324
    sget-object v0, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1327
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->stopForApp(Ljava/lang/Object;)I

    move-result v0

    goto :goto_d

    .line 1324
    :catchall_2b
    move-exception v0

    sget-object v1, Landroid/speech/tts/TextToSpeechService;->pauseLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I
    .registers 16
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 1269
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    invoke-direct {p0, v1}, checkNonNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1270
    const/4 v1, -0x1

    .line 1282
    :goto_16
    return v1

    .line 1276
    :cond_17
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 1279
    .local v9, "sameFileDescriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;

    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    new-instance v8, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v8, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    move-object v7, p2

    invoke-direct/range {v0 .. v8}, Landroid/speech/tts/TextToSpeechService$SynthesisToFileOutputStreamSpeechItemV1;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;IILandroid/os/Bundle;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/io/FileOutputStream;)V

    .line 1282
    .local v0, "item":Landroid/speech/tts/TextToSpeechService$SpeechItem;
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mSynthHandler:Landroid/speech/tts/TextToSpeechService$SynthHandler;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$900(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$SynthHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I

    move-result v1

    goto :goto_16
.end method
