.class public Lcom/android/server/audio/FocusRequester;
.super Ljava/lang/Object;
.source "FocusRequester.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaFocusControl"


# instance fields
.field private final mAttributes:Landroid/media/AudioAttributes;

.field private final mCallingUid:I

.field private final mClientId:Ljava/lang/String;

.field private mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

.field private mFocusChanged:Z

.field private final mFocusController:Lcom/android/server/audio/MediaFocusControl;

.field private final mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

.field private final mFocusGainRequest:I

.field private mFocusLossReceived:I

.field private final mGrantFlags:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSourceRef:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/media/AudioAttributes;IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;Ljava/lang/String;ILcom/android/server/audio/MediaFocusControl;)V
    .registers 14
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "focusRequest"    # I
    .param p3, "grantFlags"    # I
    .param p4, "afl"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "source"    # Landroid/os/IBinder;
    .param p6, "id"    # Ljava/lang/String;
    .param p7, "hdlr"    # Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    .param p8, "pn"    # Ljava/lang/String;
    .param p9, "uid"    # I
    .param p10, "ctlr"    # Lcom/android/server/audio/MediaFocusControl;

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, mAttributes:Landroid/media/AudioAttributes;

    .line 96
    iput-object p4, p0, mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    .line 97
    iput-object p5, p0, mSourceRef:Landroid/os/IBinder;

    .line 98
    iput-object p6, p0, mClientId:Ljava/lang/String;

    .line 99
    iput-object p7, p0, mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    .line 100
    iput-object p8, p0, mPackageName:Ljava/lang/String;

    .line 101
    iput p9, p0, mCallingUid:I

    .line 102
    iput p2, p0, mFocusGainRequest:I

    .line 103
    iput p3, p0, mGrantFlags:I

    .line 104
    iput v2, p0, mFocusLossReceived:I

    .line 105
    iput-object p10, p0, mFocusController:Lcom/android/server/audio/MediaFocusControl;

    .line 108
    iget-object v0, p0, mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v0}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_27

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, mFocusChanged:Z

    .line 113
    :goto_26
    return-void

    .line 111
    :cond_27
    iput-boolean v2, p0, mFocusChanged:Z

    goto :goto_26
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .registers 4
    .param p0, "flags"    # I

    .prologue
    .line 210
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 211
    .local v0, "msg":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1c

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DELAY_OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    :cond_1c
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_4d

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LOCK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    :cond_4d
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_7e

    .line 219
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PAUSES_ON_DUCKABLE_LOSS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_7e
    return-object v0
.end method

.method private static focusChangeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "focus"    # I

    .prologue
    .line 179
    packed-switch p0, :pswitch_data_36

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[invalid focus change"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    return-object v0

    .line 181
    :pswitch_1d
    const-string/jumbo v0, "none"

    goto :goto_1c

    .line 183
    :pswitch_21
    const-string v0, "GAIN"

    goto :goto_1c

    .line 185
    :pswitch_24
    const-string v0, "GAIN_TRANSIENT"

    goto :goto_1c

    .line 187
    :pswitch_27
    const-string v0, "GAIN_TRANSIENT_MAY_DUCK"

    goto :goto_1c

    .line 189
    :pswitch_2a
    const-string v0, "GAIN_TRANSIENT_EXCLUSIVE"

    goto :goto_1c

    .line 191
    :pswitch_2d
    const-string v0, "LOSS"

    goto :goto_1c

    .line 193
    :pswitch_30
    const-string v0, "LOSS_TRANSIENT"

    goto :goto_1c

    .line 195
    :pswitch_33
    const-string v0, "LOSS_TRANSIENT_CAN_DUCK"

    goto :goto_1c

    .line 179
    :pswitch_data_36
    .packed-switch -0x3
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_1d
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
    .end packed-switch
.end method

.method private focusGainToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget v0, p0, mFocusGainRequest:I

    invoke-static {v0}, focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private focusLossForGainRequest(I)I
    .registers 5
    .param p1, "gainRequest"    # I

    .prologue
    const/4 v1, -0x2

    const/4 v0, -0x1

    .line 261
    packed-switch p1, :pswitch_data_36

    .line 291
    :goto_5
    const-string v0, "MediaFocusControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "focusLossForGainRequest() for invalid focus request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    :goto_1f
    :pswitch_1f
    return v0

    .line 263
    :pswitch_20
    iget v2, p0, mFocusLossReceived:I

    packed-switch v2, :pswitch_data_42

    .line 272
    :pswitch_25
    iget v2, p0, mFocusLossReceived:I

    packed-switch v2, :pswitch_data_4e

    .line 281
    :pswitch_2a
    iget v2, p0, mFocusLossReceived:I

    packed-switch v2, :pswitch_data_5a

    goto :goto_5

    .line 284
    :pswitch_30
    const/4 v0, -0x3

    goto :goto_1f

    :pswitch_32
    move v0, v1

    .line 276
    goto :goto_1f

    :pswitch_34
    move v0, v1

    .line 286
    goto :goto_1f

    .line 261
    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_20
        :pswitch_25
        :pswitch_2a
        :pswitch_25
    .end packed-switch

    .line 263
    :pswitch_data_42
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    .line 272
    :pswitch_data_4e
    .packed-switch -0x3
        :pswitch_32
        :pswitch_32
        :pswitch_1f
        :pswitch_32
    .end packed-switch

    .line 281
    :pswitch_data_5a
    .packed-switch -0x3
        :pswitch_30
        :pswitch_34
        :pswitch_1f
        :pswitch_30
    .end packed-switch
.end method

.method private focusLossToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 206
    iget v0, p0, mFocusLossReceived:I

    invoke-static {v0}, focusChangeToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  source:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- pack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- client: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, focusGainToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- flags: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mGrantFlags:I

    invoke-static {v1}, flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- loss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, focusLossToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- attr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method protected finalize()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0}, release()V

    .line 251
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 252
    return-void
.end method

.method getAudioAttributes()Landroid/media/AudioAttributes;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, mAttributes:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method getClientId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, mClientId:Ljava/lang/String;

    return-object v0
.end method

.method getGainRequest()I
    .registers 2

    .prologue
    .line 152
    iget v0, p0, mFocusGainRequest:I

    return v0
.end method

.method getGrantFlags()I
    .registers 2

    .prologue
    .line 156
    iget v0, p0, mGrantFlags:I

    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method getUserId()I
    .registers 2

    .prologue
    .line 375
    iget v0, p0, mCallingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method handleExternalFocusGain(I)V
    .registers 3
    .param p1, "focusGain"    # I

    .prologue
    .line 300
    invoke-direct {p0, p1}, focusLossForGainRequest(I)I

    move-result v0

    .line 301
    .local v0, "focusLoss":I
    invoke-virtual {p0, v0}, handleFocusLoss(I)V

    .line 302
    return-void
.end method

.method handleFocusGain(I)V
    .registers 6
    .param p1, "focusGain"    # I

    .prologue
    .line 309
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, mFocusLossReceived:I

    .line 310
    iget-object v1, p0, mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0}, toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusGrant_syncAf(Landroid/media/AudioFocusInfo;I)V

    .line 312
    iget-object v1, p0, mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_18

    .line 317
    iget-object v1, p0, mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iget-object v2, p0, mClientId:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V

    .line 320
    :cond_18
    iget-object v1, p0, mAttributes:Landroid/media/AudioAttributes;

    invoke-static {v1}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_24

    .line 321
    const/4 v1, 0x1

    iput-boolean v1, p0, mFocusChanged:Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_25

    .line 326
    :cond_24
    :goto_24
    return-void

    .line 323
    :catch_25
    move-exception v0

    .line 324
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Failure to signal gain of audio focus due to: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method handleFocusLoss(I)V
    .registers 6
    .param p1, "focusLoss"    # I

    .prologue
    .line 333
    :try_start_0
    iget v1, p0, mFocusLossReceived:I

    if-eq p1, v1, :cond_23

    .line 334
    iput p1, p0, mFocusLossReceived:I

    .line 340
    iget-object v1, p0, mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1}, Lcom/android/server/audio/MediaFocusControl;->mustNotifyFocusOwnerOnDuck()Z

    move-result v1

    if-nez v1, :cond_24

    iget v1, p0, mFocusLossReceived:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_24

    iget v1, p0, mGrantFlags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_24

    .line 348
    iget-object v1, p0, mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0}, toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 365
    :cond_23
    :goto_23
    return-void

    .line 352
    :cond_24
    iget-object v1, p0, mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_23

    .line 357
    iget-object v1, p0, mFocusController:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {p0}, toAudioFocusInfo()Landroid/media/AudioFocusInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/audio/MediaFocusControl;->notifyExtPolicyFocusLoss_syncAf(Landroid/media/AudioFocusInfo;Z)V

    .line 359
    iget-object v1, p0, mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    iget v2, p0, mFocusLossReceived:I

    iget-object v3, p0, mClientId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_23

    .line 362
    :catch_3c
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Failure to signal loss of audio focus due to:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method hasSameBinder(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "ib"    # Landroid/os/IBinder;

    .prologue
    .line 132
    iget-object v0, p0, mSourceRef:Landroid/os/IBinder;

    if-eqz v0, :cond_e

    iget-object v0, p0, mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method hasSameClient(Ljava/lang/String;)Z
    .registers 5
    .param p1, "otherClient"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 121
    :try_start_1
    iget-object v2, p0, mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    .line 123
    :cond_a
    :goto_a
    return v1

    .line 122
    :catch_b
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_a
.end method

.method hasSamePackage(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pack"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 137
    :try_start_1
    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_b

    move-result v2

    if-nez v2, :cond_a

    const/4 v1, 0x1

    .line 139
    :cond_a
    :goto_a
    return v1

    .line 138
    :catch_b
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_a
.end method

.method hasSameUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 144
    iget v0, p0, mCallingUid:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isFocusChanged()Z
    .registers 2

    .prologue
    .line 170
    iget-boolean v0, p0, mFocusChanged:Z

    return v0
.end method

.method isGainLoss()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, mFocusLossReceived:I

    return v0
.end method

.method isLockedFocusOwner()Z
    .registers 2

    .prologue
    .line 128
    iget v0, p0, mGrantFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method release()V
    .registers 5

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, mSourceRef:Landroid/os/IBinder;

    if-eqz v1, :cond_13

    iget-object v1, p0, mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    if-eqz v1, :cond_13

    .line 240
    iget-object v1, p0, mSourceRef:Landroid/os/IBinder;

    iget-object v2, p0, mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 241
    const/4 v1, 0x0

    iput-object v1, p0, mDeathHandler:Lcom/android/server/audio/MediaFocusControl$AudioFocusDeathHandler;
    :try_end_13
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_13} :catch_14

    .line 246
    :cond_13
    :goto_13
    return-void

    .line 243
    :catch_14
    move-exception v0

    .line 244
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    const-string v2, "FocusRequester.release() hit "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13
.end method

.method resetFocusChanged()V
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, mFocusChanged:Z

    .line 175
    return-void
.end method

.method toAudioFocusInfo()Landroid/media/AudioFocusInfo;
    .registers 8

    .prologue
    .line 368
    new-instance v0, Landroid/media/AudioFocusInfo;

    iget-object v1, p0, mAttributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, mClientId:Ljava/lang/String;

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    iget v4, p0, mFocusGainRequest:I

    iget v5, p0, mFocusLossReceived:I

    iget v6, p0, mGrantFlags:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioFocusInfo;-><init>(Landroid/media/AudioAttributes;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0
.end method
