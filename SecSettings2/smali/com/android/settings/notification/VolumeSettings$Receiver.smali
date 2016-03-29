.class Lcom/android/settings/notification/VolumeSettings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/VolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field private mRegistered:Z

.field final synthetic this$0:Lcom/android/settings/notification/VolumeSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/VolumeSettings;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/android/settings/notification/VolumeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/VolumeSettings;Lcom/android/settings/notification/VolumeSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/notification/VolumeSettings;
    .param p2, "x1"    # Lcom/android/settings/notification/VolumeSettings$1;

    .prologue
    .line 453
    invoke-direct {p0, p1}, Lcom/android/settings/notification/VolumeSettings$Receiver;-><init>(Lcom/android/settings/notification/VolumeSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 471
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    const-string v1, "VolumeSettings"

    const-string v2, "onReceive : NotificationManager.ACTION_EFFECTS_SUPPRESSOR_CHANGED received"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/android/settings/notification/VolumeSettings;

    # getter for: Lcom/android/settings/notification/VolumeSettings;->mHandler:Lcom/android/settings/notification/VolumeSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/VolumeSettings;->access$300(Lcom/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/VolumeSettings$H;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VolumeSettings$H;->sendEmptyMessage(I)Z

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const-string v1, "VolumeSettings"

    const-string v2, "onReceive : AudioManager.INTERNAL_RINGER_MODE_CHANGED_ACTION received"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/android/settings/notification/VolumeSettings;

    # getter for: Lcom/android/settings/notification/VolumeSettings;->mHandler:Lcom/android/settings/notification/VolumeSettings$H;
    invoke-static {v1}, Lcom/android/settings/notification/VolumeSettings;->access$300(Lcom/android/settings/notification/VolumeSettings;)Lcom/android/settings/notification/VolumeSettings$H;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/VolumeSettings$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public register(Z)V
    .locals 2
    .param p1, "register"    # Z

    .prologue
    .line 457
    iget-boolean v1, p0, Lcom/android/settings/notification/VolumeSettings$Receiver;->mRegistered:Z

    if-ne v1, p1, :cond_0

    .line 467
    :goto_0
    return-void

    .line 458
    :cond_0
    if-eqz p1, :cond_1

    .line 459
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 460
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.ACTION_EFFECTS_SUPPRESSOR_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 461
    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/android/settings/notification/VolumeSettings;

    # getter for: Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/VolumeSettings;->access$1000(Lcom/android/settings/notification/VolumeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 466
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/notification/VolumeSettings$Receiver;->mRegistered:Z

    goto :goto_0

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSettings$Receiver;->this$0:Lcom/android/settings/notification/VolumeSettings;

    # getter for: Lcom/android/settings/notification/VolumeSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/notification/VolumeSettings;->access$1000(Lcom/android/settings/notification/VolumeSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_1
.end method
