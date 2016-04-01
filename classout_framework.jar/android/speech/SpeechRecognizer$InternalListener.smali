.class Landroid/speech/SpeechRecognizer$InternalListener;
.super Landroid/speech/IRecognitionListener$Stub;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalListener"
.end annotation


# static fields
.field private static final MSG_BEGINNING_OF_SPEECH:I = 0x1

.field private static final MSG_BUFFER_RECEIVED:I = 0x2

.field private static final MSG_END_OF_SPEECH:I = 0x3

.field private static final MSG_ERROR:I = 0x4

.field private static final MSG_ON_EVENT:I = 0x9

.field private static final MSG_PARTIAL_RESULTS:I = 0x7

.field private static final MSG_READY_FOR_SPEECH:I = 0x5

.field private static final MSG_RESULTS:I = 0x6

.field private static final MSG_RMS_CHANGED:I = 0x8


# instance fields
.field private final mInternalHandler:Landroid/os/Handler;

.field private mInternalListener:Landroid/speech/RecognitionListener;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 421
    invoke-direct {p0}, Landroid/speech/IRecognitionListener$Stub;-><init>()V

    .line 434
    new-instance v0, Landroid/speech/SpeechRecognizer$InternalListener$1;

    invoke-direct {v0, p0}, Landroid/speech/SpeechRecognizer$InternalListener$1;-><init>(Landroid/speech/SpeechRecognizer$InternalListener;)V

    iput-object v0, p0, mInternalHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/SpeechRecognizer$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/speech/SpeechRecognizer$1;

    .prologue
    .line 421
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;
    .registers 2
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer$InternalListener;

    .prologue
    .line 421
    iget-object v0, p0, mInternalListener:Landroid/speech/RecognitionListener;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/speech/SpeechRecognizer$InternalListener;Landroid/speech/RecognitionListener;)Landroid/speech/RecognitionListener;
    .registers 2
    .param p0, "x0"    # Landroid/speech/SpeechRecognizer$InternalListener;
    .param p1, "x1"    # Landroid/speech/RecognitionListener;

    .prologue
    .line 421
    iput-object p1, p0, mInternalListener:Landroid/speech/RecognitionListener;

    return-object p1
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 474
    return-void
.end method

.method public onBufferReceived([B)V
    .registers 4
    .param p1, "buffer"    # [B

    .prologue
    .line 477
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 478
    return-void
.end method

.method public onEndOfSpeech()V
    .registers 3

    .prologue
    .line 481
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 482
    return-void
.end method

.method public onError(I)V
    .registers 5
    .param p1, "error"    # I

    .prologue
    .line 485
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 486
    return-void
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "eventType"    # I
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 505
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-static {v0, v1, p1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 507
    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    .line 497
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 498
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "noiseParams"    # Landroid/os/Bundle;

    .prologue
    .line 489
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 490
    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "results"    # Landroid/os/Bundle;

    .prologue
    .line 493
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 494
    return-void
.end method

.method public onRmsChanged(F)V
    .registers 5
    .param p1, "rmsdB"    # F

    .prologue
    .line 501
    iget-object v0, p0, mInternalHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 502
    return-void
.end method
