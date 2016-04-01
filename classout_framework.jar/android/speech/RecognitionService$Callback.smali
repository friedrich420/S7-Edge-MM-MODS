.class public Landroid/speech/RecognitionService$Callback;
.super Ljava/lang/Object;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callback"
.end annotation


# instance fields
.field private final mCallingUid:I

.field private final mListener:Landroid/speech/IRecognitionListener;

.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method private constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;I)V
    .registers 4
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "callingUid"    # I

    .prologue
    .line 236
    iput-object p1, p0, this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, mListener:Landroid/speech/IRecognitionListener;

    .line 238
    iput p3, p0, mCallingUid:I

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;ILandroid/speech/RecognitionService$1;)V
    .registers 5
    .param p1, "x0"    # Landroid/speech/RecognitionService;
    .param p2, "x1"    # Landroid/speech/IRecognitionListener;
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/speech/RecognitionService$1;

    .prologue
    .line 232
    invoke-direct {p0, p1, p2, p3}, <init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;I)V

    return-void
.end method

.method static synthetic access$600(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;
    .registers 2
    .param p0, "x0"    # Landroid/speech/RecognitionService$Callback;

    .prologue
    .line 232
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    return-object v0
.end method


# virtual methods
.method public beginningOfSpeech()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onBeginningOfSpeech()V

    .line 247
    return-void
.end method

.method public bufferReceived([B)V
    .registers 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onBufferReceived([B)V

    .line 258
    return-void
.end method

.method public endOfSpeech()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->onEndOfSpeech()V

    .line 265
    return-void
.end method

.method public error(I)V
    .registers 4
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, this$0:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onError(I)V

    .line 275
    return-void
.end method

.method public getCallingUid()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, mCallingUid:I

    return v0
.end method

.method public partialResults(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "partialResults"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    .line 290
    return-void
.end method

.method public readyForSpeech(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "params"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    .line 300
    return-void
.end method

.method public results(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, this$0:Landroid/speech/RecognitionService;

    # getter for: Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/speech/RecognitionService;->access$400(Landroid/speech/RecognitionService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 311
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onResults(Landroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public rmsChanged(F)V
    .registers 3
    .param p1, "rmsdB"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, mListener:Landroid/speech/IRecognitionListener;

    invoke-interface {v0, p1}, Landroid/speech/IRecognitionListener;->onRmsChanged(F)V

    .line 322
    return-void
.end method
