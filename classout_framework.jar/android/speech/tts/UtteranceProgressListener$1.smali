.class final Landroid/speech/tts/UtteranceProgressListener$1;
.super Landroid/speech/tts/UtteranceProgressListener;
.source "UtteranceProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/UtteranceProgressListener;->from(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)Landroid/speech/tts/UtteranceProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)V
    .registers 2

    .prologue
    .line 84
    iput-object p1, p0, val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-direct {p0}, Landroid/speech/tts/UtteranceProgressListener;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onDone(Ljava/lang/String;)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onStart(Ljava/lang/String;)V
    .registers 2
    .param p1, "utteranceId"    # Ljava/lang/String;

    .prologue
    .line 99
    return-void
.end method

.method public onStop(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "utteranceId"    # Ljava/lang/String;
    .param p2, "interrupted"    # Z

    .prologue
    .line 103
    iget-object v0, p0, val$listener:Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;

    invoke-interface {v0, p1}, Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;->onUtteranceCompleted(Ljava/lang/String;)V

    .line 104
    return-void
.end method
