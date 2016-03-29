.class final Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;
.super Landroid/os/Handler;
.source "WifiP2pControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$1;

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;-><init>(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;)V

    return-void
.end method

.method private fireConnectionChanged()V
    .locals 3

    .prologue
    .line 182
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;)Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;

    .line 183
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mP2pConnected:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;->onWifiP2pConnectionStateChange(Z)V

    goto :goto_0

    .line 185
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;
    :cond_0
    return-void
.end method

.method private fireDevicesChanged()V
    .locals 3

    .prologue
    .line 188
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;->this$0:Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->mCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;->access$100(Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl;)Ljava/util/ArrayList;

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

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;

    .line 189
    .local v0, "cb":Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;->onWifiP2pDevicesChanged()V

    goto :goto_0

    .line 191
    .end local v0    # "cb":Lcom/android/systemui/statusbar/policy/WifiP2pController$Callback;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_0
    return-void

    .line 173
    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;->fireDevicesChanged()V

    goto :goto_0

    .line 176
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/WifiP2pControllerImpl$H;->fireConnectionChanged()V

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
