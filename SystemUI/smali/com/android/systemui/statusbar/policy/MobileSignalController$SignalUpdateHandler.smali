.class Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;
.super Landroid/os/Handler;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SignalUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V
    .locals 0

    .prologue
    .line 3066
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3069
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3076
    :goto_0
    return-void

    .line 3071
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$SignalUpdateHandler;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    # invokes: Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSignalOneLevelPerSec()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1500(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    goto :goto_0

    .line 3069
    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method
