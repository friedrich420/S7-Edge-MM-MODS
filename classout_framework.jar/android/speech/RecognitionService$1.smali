.class Landroid/speech/RecognitionService$1;
.super Landroid/os/Handler;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method constructor <init>(Landroid/speech/RecognitionService;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    .line 94
    :goto_5
    return-void

    .line 81
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/RecognitionService$StartListeningArgs;

    .line 82
    .local v0, "args":Landroid/speech/RecognitionService$StartListeningArgs;
    iget-object v1, p0, this$0:Landroid/speech/RecognitionService;

    iget-object v2, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    iget v4, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mCallingUid:I

    # invokes: Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    invoke-static {v1, v2, v3, v4}, Landroid/speech/RecognitionService;->access$000(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V

    goto :goto_5

    .line 85
    .end local v0    # "args":Landroid/speech/RecognitionService$StartListeningArgs;
    :pswitch_16
    iget-object v2, p0, this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    # invokes: Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    invoke-static {v2, v1}, Landroid/speech/RecognitionService;->access$100(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    goto :goto_5

    .line 88
    :pswitch_20
    iget-object v2, p0, this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    # invokes: Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V
    invoke-static {v2, v1}, Landroid/speech/RecognitionService;->access$200(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    goto :goto_5

    .line 91
    :pswitch_2a
    iget-object v1, p0, this$0:Landroid/speech/RecognitionService;

    # invokes: Landroid/speech/RecognitionService;->dispatchClearCallback()V
    invoke-static {v1}, Landroid/speech/RecognitionService;->access$300(Landroid/speech/RecognitionService;)V

    goto :goto_5

    .line 79
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_6
        :pswitch_16
        :pswitch_20
        :pswitch_2a
    .end packed-switch
.end method
