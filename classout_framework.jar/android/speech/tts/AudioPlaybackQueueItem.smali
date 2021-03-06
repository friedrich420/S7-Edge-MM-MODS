.class Landroid/speech/tts/AudioPlaybackQueueItem;
.super Landroid/speech/tts/PlaybackQueueItem;
.source "AudioPlaybackQueueItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TTS.AudioQueueItem"


# instance fields
.field private final mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

.field private final mContext:Landroid/content/Context;

.field private final mDone:Landroid/os/ConditionVariable;

.field private volatile mFinished:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;Landroid/content/Context;Landroid/net/Uri;Landroid/speech/tts/TextToSpeechService$AudioOutputParams;)V
    .registers 7
    .param p1, "dispatcher"    # Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    .param p2, "callerIdentity"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "uri"    # Landroid/net/Uri;
    .param p5, "audioParams"    # Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/speech/tts/PlaybackQueueItem;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/Object;)V

    .line 43
    iput-object p3, p0, mContext:Landroid/content/Context;

    .line 44
    iput-object p4, p0, mUri:Landroid/net/Uri;

    .line 45
    iput-object p5, p0, mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    .line 47
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, mDone:Landroid/os/ConditionVariable;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, mPlayer:Landroid/media/MediaPlayer;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, mFinished:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Landroid/speech/tts/AudioPlaybackQueueItem;)Landroid/os/ConditionVariable;
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/AudioPlaybackQueueItem;

    .prologue
    .line 27
    iget-object v0, p0, mDone:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$102(Landroid/speech/tts/AudioPlaybackQueueItem;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/speech/tts/AudioPlaybackQueueItem;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, mFinished:Z

    return p1
.end method

.method private static final clip(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 113
    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    .end local p1    # "min":F
    :goto_4
    return p1

    .restart local p1    # "min":F
    :cond_5
    cmpg-float v0, p0, p2

    if-gez v0, :cond_b

    move p1, p0

    goto :goto_4

    :cond_b
    move p1, p2

    goto :goto_4
.end method

.method private finish()V
    .registers 2

    .prologue
    .line 118
    :try_start_0
    iget-object v0, p0, mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_b

    .line 122
    :goto_5
    iget-object v0, p0, mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 123
    return-void

    .line 119
    :catch_b
    move-exception v0

    goto :goto_5
.end method

.method private static setupVolume(Landroid/media/MediaPlayer;FF)V
    .registers 10
    .param p0, "player"    # Landroid/media/MediaPlayer;
    .param p1, "volume"    # F
    .param p2, "pan"    # F

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 100
    invoke-static {p1, v6, v5}, clip(FFF)F

    move-result v1

    .line 101
    .local v1, "vol":F
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {p2, v4, v5}, clip(FFF)F

    move-result v0

    .line 103
    .local v0, "panning":F
    move v2, v1

    .local v2, "volLeft":F
    move v3, v1

    .line 104
    .local v3, "volRight":F
    cmpl-float v4, v0, v6

    if-lez v4, :cond_1a

    .line 105
    sub-float v4, v5, v0

    mul-float/2addr v2, v4

    .line 109
    :cond_16
    :goto_16
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 110
    return-void

    .line 106
    :cond_1a
    cmpg-float v4, v0, v6

    if-gez v4, :cond_16

    .line 107
    add-float v4, v5, v0

    mul-float/2addr v3, v4

    goto :goto_16
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 53
    invoke-virtual {p0}, getDispatcher()Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;

    move-result-object v0

    .line 55
    .local v0, "dispatcher":Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStart()V

    .line 57
    iget-object v3, p0, mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v2, v3, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mSessionId:I

    .line 58
    .local v2, "sessionId":I
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mUri:Landroid/net/Uri;

    const/4 v5, 0x0

    iget-object v6, p0, mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget-object v6, v6, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mAudioAttributes:Landroid/media/AudioAttributes;

    if-lez v2, :cond_25

    .end local v2    # "sessionId":I
    :goto_16
    invoke-static {v3, v4, v5, v6, v2}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;Landroid/view/SurfaceHolder;Landroid/media/AudioAttributes;I)Landroid/media/MediaPlayer;

    move-result-object v3

    iput-object v3, p0, mPlayer:Landroid/media/MediaPlayer;

    .line 61
    iget-object v3, p0, mPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_27

    .line 62
    const/4 v3, -0x5

    invoke-interface {v0, v3}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnError(I)V

    .line 97
    :goto_24
    return-void

    .line 58
    .restart local v2    # "sessionId":I
    :cond_25
    const/4 v2, 0x0

    goto :goto_16

    .line 67
    .end local v2    # "sessionId":I
    :cond_27
    :try_start_27
    iget-object v3, p0, mPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Landroid/speech/tts/AudioPlaybackQueueItem$1;

    invoke-direct {v4, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$1;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 75
    iget-object v3, p0, mPlayer:Landroid/media/MediaPlayer;

    new-instance v4, Landroid/speech/tts/AudioPlaybackQueueItem$2;

    invoke-direct {v4, p0}, Landroid/speech/tts/AudioPlaybackQueueItem$2;-><init>(Landroid/speech/tts/AudioPlaybackQueueItem;)V

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    iget-object v3, p0, mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v4, v4, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mVolume:F

    iget-object v5, p0, mAudioParams:Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    iget v5, v5, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;->mPan:F

    invoke-static {v3, v4, v5}, setupVolume(Landroid/media/MediaPlayer;FF)V

    .line 84
    iget-object v3, p0, mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 85
    iget-object v3, p0, mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 86
    invoke-direct {p0}, finish()V
    :try_end_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_55} :catch_5d

    .line 92
    :goto_55
    iget-boolean v3, p0, mFinished:Z

    if-eqz v3, :cond_6b

    .line 93
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnSuccess()V

    goto :goto_24

    .line 87
    :catch_5d
    move-exception v1

    .line 88
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    const-string v3, "TTS.AudioQueueItem"

    const-string v4, "MediaPlayer failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iget-object v3, p0, mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    goto :goto_55

    .line 95
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_6b
    invoke-interface {v0}, Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;->dispatchOnStop()V

    goto :goto_24
.end method

.method stop(I)V
    .registers 3
    .param p1, "errorCode"    # I

    .prologue
    .line 127
    iget-object v0, p0, mDone:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 128
    return-void
.end method
