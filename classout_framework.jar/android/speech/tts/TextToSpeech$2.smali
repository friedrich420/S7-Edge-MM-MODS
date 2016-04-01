.class Landroid/speech/tts/TextToSpeech$2;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$queueMode:I

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1094
    iput-object p1, p0, this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, val$text:Ljava/lang/CharSequence;

    iput p3, p0, val$queueMode:I

    iput-object p4, p0, val$params:Landroid/os/Bundle;

    iput-object p5, p0, val$utteranceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .registers 11
    .param p1, "service"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1100
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, val$text:Ljava/lang/CharSequence;

    # setter for: Landroid/speech/tts/TextToSpeech;->mRestartText:Ljava/lang/CharSequence;
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$402(Landroid/speech/tts/TextToSpeech;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1101
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    iget v1, p0, val$queueMode:I

    # setter for: Landroid/speech/tts/TextToSpeech;->mRestartQueueMode:I
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$502(Landroid/speech/tts/TextToSpeech;I)I

    .line 1102
    iget-object v0, p0, val$params:Landroid/os/Bundle;

    if-eqz v0, :cond_4a

    .line 1103
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Landroid/os/Bundle;

    iget-object v3, p0, val$params:Landroid/os/Bundle;

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    # setter for: Landroid/speech/tts/TextToSpeech;->mRestartParams:Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$602(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 1108
    :goto_1e
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    # getter for: Landroid/speech/tts/TextToSpeech;->mUtterances:Ljava/util/Map;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$700(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, val$text:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1109
    .local v2, "utteranceUri":Landroid/net/Uri;
    if-eqz v2, :cond_51

    .line 1110
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v1

    iget v3, p0, val$queueMode:I

    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v4, p0, val$params:Landroid/os/Bundle;

    # invokes: Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    invoke-static {v0, v4}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, val$utteranceId:Ljava/lang/String;

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1113
    :goto_49
    return-object v0

    .line 1105
    .end local v2    # "utteranceUri":Landroid/net/Uri;
    :cond_4a
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    # setter for: Landroid/speech/tts/TextToSpeech;->mRestartParams:Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$602(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1e

    .line 1113
    .restart local v2    # "utteranceUri":Landroid/net/Uri;
    :cond_51
    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    # invokes: Landroid/speech/tts/TextToSpeech;->getCallerIdentity()Landroid/os/IBinder;
    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v4

    iget-object v5, p0, val$text:Ljava/lang/CharSequence;

    iget v6, p0, val$queueMode:I

    iget-object v0, p0, this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, val$params:Landroid/os/Bundle;

    # invokes: Landroid/speech/tts/TextToSpeech;->getParams(Landroid/os/Bundle;)Landroid/os/Bundle;
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeech;->access$800(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, p0, val$utteranceId:Ljava/lang/String;

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Landroid/speech/tts/ITextToSpeechService;->speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_49
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # Landroid/speech/tts/ITextToSpeechService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1094
    invoke-virtual {p0, p1}, run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
