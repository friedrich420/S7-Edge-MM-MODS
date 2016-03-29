.class final Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$1;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    # getter for: Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HotspotController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 137
    .local v0, "state":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$302(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;I)I

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mHotspotState:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$300(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)I

    move-result v1

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    # invokes: Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->fireCallback(Z)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$400(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;Z)V

    .line 139
    return-void

    .line 138
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    if-nez v1, :cond_2

    .line 120
    # getter for: Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HotspotController"

    const-string v2, "Registering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 122
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 124
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    .line 130
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    if-eqz v1, :cond_1

    .line 126
    # getter for: Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "HotspotController"

    const-string v2, "Unregistering receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;->access$200(Lcom/android/systemui/statusbar/policy/HotspotControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/HotspotControllerImpl$Receiver;->mRegistered:Z

    goto :goto_0
.end method
