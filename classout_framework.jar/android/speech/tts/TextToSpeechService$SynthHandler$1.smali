.class Landroid/speech/tts/TextToSpeechService$SynthHandler$1;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeechService$SynthHandler;->enqueueSpeechItem(ILandroid/speech/tts/TextToSpeechService$SpeechItem;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

.field final synthetic val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)V
    .registers 3

    .prologue
    .line 558
    iput-object p1, p0, this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iput-object p2, p0, val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 561
    iget-object v0, p0, this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iget-object v1, p0, val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    # invokes: Landroid/speech/tts/TextToSpeechService$SynthHandler;->isFlushed(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->access$100(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 562
    iget-object v0, p0, val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->stop()V

    .line 568
    :goto_f
    return-void

    .line 564
    :cond_10
    iget-object v0, p0, this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    iget-object v1, p0, val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    # invokes: Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->access$200(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    .line 565
    iget-object v0, p0, val$speechItem:Landroid/speech/tts/TextToSpeechService$SpeechItem;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeechService$SpeechItem;->play()V

    .line 566
    iget-object v0, p0, this$1:Landroid/speech/tts/TextToSpeechService$SynthHandler;

    const/4 v1, 0x0

    # invokes: Landroid/speech/tts/TextToSpeechService$SynthHandler;->setCurrentSpeechItem(Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;
    invoke-static {v0, v1}, Landroid/speech/tts/TextToSpeechService$SynthHandler;->access$200(Landroid/speech/tts/TextToSpeechService$SynthHandler;Landroid/speech/tts/TextToSpeechService$SpeechItem;)Landroid/speech/tts/TextToSpeechService$SpeechItem;

    goto :goto_f
.end method
