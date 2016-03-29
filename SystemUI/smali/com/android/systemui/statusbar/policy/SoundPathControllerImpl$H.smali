.class final Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
.super Landroid/os/Handler;
.source "SoundPathControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    return-void
.end method

.method private fireSoundPathDevicesChanged()V
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;

    .line 156
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->isCalling()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;->onSoundPathDevicesChanged(Z)V

    goto :goto_0

    .line 158
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/SoundPathController$Callback;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 145
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->fireSoundPathDevicesChanged()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
