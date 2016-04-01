.class Lcom/android/server/FMRadioService$14;
.super Ljava/lang/Object;
.source "FMRadioService.java"

# interfaces
.implements Lcom/samsung/android/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2

    .prologue
    .line 943
    iput-object p1, p0, this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Lcom/samsung/android/motion/MREvent;)V
    .registers 6
    .param p1, "motionEvent"    # Lcom/samsung/android/motion/MREvent;

    .prologue
    const/4 v3, 0x0

    .line 947
    invoke-virtual {p1}, Lcom/samsung/android/motion/MREvent;->getMotion()I

    move-result v0

    .line 948
    .local v0, "motion":I
    packed-switch v0, :pswitch_data_42

    .line 960
    :cond_8
    :goto_8
    return-void

    .line 950
    :pswitch_9
    iget-object v1, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsOn:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$200(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsMute:Z
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$3300(Lcom/android/server/FMRadioService;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 953
    :cond_2e
    const-string v1, "FLIP_TOP_TO_BOTTOM : mute"

    invoke-static {v1}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 954
    iget-object v1, p0, this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/media/SamsungAudioManager;->stream(I)I

    move-result v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_8

    .line 948
    :pswitch_data_42
    .packed-switch 0xa
        :pswitch_9
    .end packed-switch
.end method
