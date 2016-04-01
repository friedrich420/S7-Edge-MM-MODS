.class Landroid/service/voice/VoiceInteractionService$MyHandler;
.super Landroid/os/Handler;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 120
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 122
    :goto_8
    return-void

    .line 108
    :pswitch_9
    iget-object v0, p0, this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionService;->onReady()V

    goto :goto_8

    .line 111
    :pswitch_f
    iget-object v0, p0, this$0:Landroid/service/voice/VoiceInteractionService;

    # invokes: Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V
    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->access$000(Landroid/service/voice/VoiceInteractionService;)V

    goto :goto_8

    .line 114
    :pswitch_15
    iget-object v0, p0, this$0:Landroid/service/voice/VoiceInteractionService;

    # invokes: Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V
    invoke-static {v0}, Landroid/service/voice/VoiceInteractionService;->access$100(Landroid/service/voice/VoiceInteractionService;)V

    goto :goto_8

    .line 117
    :pswitch_1b
    iget-object v0, p0, this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionService;->onLaunchVoiceAssistFromKeyguard()V

    goto :goto_8

    .line 106
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_15
        :pswitch_1b
    .end packed-switch
.end method
