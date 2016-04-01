.class abstract Landroid/speech/tts/TextToSpeechService$UtteranceSpeechItem;
.super Landroid/speech/tts/TextToSpeechService$SpeechItem;
.source "TextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "UtteranceSpeechItem"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeechService;


# direct methods
.method public constructor <init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V
    .registers 5
    .param p2, "caller"    # Ljava/lang/Object;
    .param p3, "callerUid"    # I
    .param p4, "callerPid"    # I

    .prologue
    .line 828
    iput-object p1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    .line 829
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/speech/tts/TextToSpeechService$SpeechItem;-><init>(Landroid/speech/tts/TextToSpeechService;Ljava/lang/Object;II)V

    .line 830
    return-void
.end method


# virtual methods
.method public dispatchOnError(I)V
    .registers 5
    .param p1, "errorCode"    # I

    .prologue
    .line 858
    invoke-virtual {p0}, getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 860
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0, p1}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnError(Ljava/lang/Object;Ljava/lang/String;I)V

    .line 862
    :cond_13
    return-void
.end method

.method public dispatchOnStart()V
    .registers 4

    .prologue
    .line 850
    invoke-virtual {p0}, getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 852
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStart(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    :cond_13
    return-void
.end method

.method public dispatchOnStop()V
    .registers 5

    .prologue
    .line 842
    invoke-virtual {p0}, getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_17

    .line 844
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0}, isStarted()Z

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnStop(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 846
    :cond_17
    return-void
.end method

.method public dispatchOnSuccess()V
    .registers 4

    .prologue
    .line 834
    invoke-virtual {p0}, getUtteranceId()Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "utteranceId":Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 836
    iget-object v1, p0, this$0:Landroid/speech/tts/TextToSpeechService;

    # getter for: Landroid/speech/tts/TextToSpeechService;->mCallbacks:Landroid/speech/tts/TextToSpeechService$CallbackMap;
    invoke-static {v1}, Landroid/speech/tts/TextToSpeechService;->access$500(Landroid/speech/tts/TextToSpeechService;)Landroid/speech/tts/TextToSpeechService$CallbackMap;

    move-result-object v1

    invoke-virtual {p0}, getCallerIdentity()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/speech/tts/TextToSpeechService$CallbackMap;->dispatchOnSuccess(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    :cond_13
    return-void
.end method

.method getFloatParam(Landroid/os/Bundle;Ljava/lang/String;F)F
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # F

    .prologue
    .line 875
    if-nez p1, :cond_3

    .end local p3    # "defaultValue":F
    :goto_2
    return p3

    .restart local p3    # "defaultValue":F
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p3

    goto :goto_2
.end method

.method getIntParam(Landroid/os/Bundle;Ljava/lang/String;I)I
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .prologue
    .line 871
    if-nez p1, :cond_3

    .end local p3    # "defaultValue":I
    :goto_2
    return p3

    .restart local p3    # "defaultValue":I
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    goto :goto_2
.end method

.method getStringParam(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 867
    if-nez p1, :cond_3

    .end local p3    # "defaultValue":Ljava/lang/String;
    :goto_2
    return-object p3

    .restart local p3    # "defaultValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_2
.end method

.method public abstract getUtteranceId()Ljava/lang/String;
.end method
