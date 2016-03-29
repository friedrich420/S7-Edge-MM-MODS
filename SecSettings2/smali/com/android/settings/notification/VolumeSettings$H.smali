.class final Lcom/android/settings/notification/VolumeSettings$H;
.super Landroid/os/Handler;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/VolumeSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/VolumeSettings;)V
    .locals 1

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSettings$H;->this$0:Lcom/android/settings/notification/VolumeSettings;

    .line 425
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 426
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/VolumeSettings;Lcom/android/settings/notification/VolumeSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/VolumeSettings;
    .param p2, "x1"    # Lcom/android/settings/notification/VolumeSettings$1;

    .prologue
    .line 416
    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSettings$H;-><init>(Lcom/android/settings/notification/VolumeSettings;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 430
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 450
    :goto_0
    return-void

    .line 432
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings$H;->this$0:Lcom/android/settings/notification/VolumeSettings;

    # getter for: Lcom/android/settings/notification/VolumeSettings;->mVolumeCallback:Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSettings;->access$400(Lcom/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/notification/VolumeSettings$VolumePreferenceCallback;->stopSample()V

    goto :goto_0

    .line 435
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings$H;->this$0:Lcom/android/settings/notification/VolumeSettings;

    # invokes: Lcom/android/settings/notification/VolumeSettings;->updateEffectsSuppressor()V
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSettings;->access$500(Lcom/android/settings/notification/VolumeSettings;)V

    goto :goto_0

    .line 438
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings$H;->this$0:Lcom/android/settings/notification/VolumeSettings;

    # invokes: Lcom/android/settings/notification/VolumeSettings;->updateRingerMode()V
    invoke-static {v0}, Lcom/android/settings/notification/VolumeSettings;->access$600(Lcom/android/settings/notification/VolumeSettings;)V

    goto :goto_0

    .line 441
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings$H;->this$0:Lcom/android/settings/notification/VolumeSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings/notification/VolumeSettings;->updateNotificationIcon(I)V
    invoke-static {v0, v1}, Lcom/android/settings/notification/VolumeSettings;->access$700(Lcom/android/settings/notification/VolumeSettings;I)V

    goto :goto_0

    .line 444
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings$H;->this$0:Lcom/android/settings/notification/VolumeSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings/notification/VolumeSettings;->updateMusicIcon(I)V
    invoke-static {v0, v1}, Lcom/android/settings/notification/VolumeSettings;->access$800(Lcom/android/settings/notification/VolumeSettings;I)V

    goto :goto_0

    .line 447
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSettings$H;->this$0:Lcom/android/settings/notification/VolumeSettings;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/settings/notification/VolumeSettings;->updateSystemIcon(I)V
    invoke-static {v0, v1}, Lcom/android/settings/notification/VolumeSettings;->access$900(Lcom/android/settings/notification/VolumeSettings;I)V

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method
