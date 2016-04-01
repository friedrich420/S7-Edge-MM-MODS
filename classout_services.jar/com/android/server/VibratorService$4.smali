.class Lcom/android/server/VibratorService$4;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .registers 2

    .prologue
    .line 1085
    iput-object p1, p0, this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1088
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 1089
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v3

    monitor-enter v3

    .line 1095
    :try_start_14
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    if-eqz v2, :cond_2d

    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/VibratorService$Vibration;->isSystemHapticFeedback()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 1097
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->doCancelVibrateLocked()V
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 1101
    :cond_2d
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1102
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_37
    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 1103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$Vibration;

    .line 1104
    .local v1, "vibration":Lcom/android/server/VibratorService$Vibration;
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v2

    if-eq v1, v2, :cond_37

    .line 1105
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # invokes: Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    invoke-static {v2, v1}, Lcom/android/server/VibratorService;->access$2200(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V

    .line 1106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_37

    .line 1109
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    .end local v1    # "vibration":Lcom/android/server/VibratorService$Vibration;
    :catchall_54
    move-exception v2

    monitor-exit v3
    :try_end_56
    .catchall {:try_start_14 .. :try_end_56} :catchall_54

    throw v2

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_57
    :try_start_57
    monitor-exit v3
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_54

    .line 1114
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/VibratorService$Vibration;>;"
    :cond_58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 1115
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    const/4 v3, 0x1

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v2, v3}, Lcom/android/server/VibratorService;->access$2302(Lcom/android/server/VibratorService;Z)Z

    .line 1117
    :cond_6a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    .line 1118
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v2, v4}, Lcom/android/server/VibratorService;->access$2302(Lcom/android/server/VibratorService;Z)Z

    .line 1120
    :cond_7b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.intent.action.HMT_DISCONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 1121
    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # setter for: Lcom/android/server/VibratorService;->mHMTMount:Z
    invoke-static {v2, v4}, Lcom/android/server/VibratorService;->access$2302(Lcom/android/server/VibratorService;Z)Z

    .line 1142
    :cond_8c
    return-void
.end method
