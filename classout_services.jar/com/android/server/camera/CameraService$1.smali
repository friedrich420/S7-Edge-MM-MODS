.class Lcom/android/server/camera/CameraService$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/camera/CameraService;


# direct methods
.method constructor <init>(Lcom/android/server/camera/CameraService;)V
    .registers 2

    .prologue
    .line 102
    iput-object p1, p0, this$0:Lcom/android/server/camera/CameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 124
    :goto_6
    return-void

    .line 108
    :cond_7
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_66

    :cond_f
    :goto_f
    packed-switch v1, :pswitch_data_7c

    goto :goto_6

    .line 114
    :pswitch_13
    iget-object v1, p0, this$0:Lcom/android/server/camera/CameraService;

    # getter for: Lcom/android/server/camera/CameraService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/camera/CameraService;->access$000(Lcom/android/server/camera/CameraService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 116
    :try_start_1a
    iget-object v1, p0, this$0:Lcom/android/server/camera/CameraService;

    # getter for: Lcom/android/server/camera/CameraService;->mEnabledCameraUsers:Ljava/util/Set;
    invoke-static {v1}, Lcom/android/server/camera/CameraService;->access$100(Lcom/android/server/camera/CameraService;)Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_59

    monitor-exit v2

    goto :goto_6

    .line 118
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_1a .. :try_end_26} :catchall_24

    throw v1

    .line 108
    :sswitch_27
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x0

    goto :goto_f

    :sswitch_31
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x1

    goto :goto_f

    :sswitch_3b
    const-string v2, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x2

    goto :goto_f

    :sswitch_45
    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x3

    goto :goto_f

    :sswitch_4f
    const-string v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x4

    goto :goto_f

    .line 117
    :cond_59
    :try_start_59
    iget-object v1, p0, this$0:Lcom/android/server/camera/CameraService;

    iget-object v3, p0, this$0:Lcom/android/server/camera/CameraService;

    # getter for: Lcom/android/server/camera/CameraService;->mLastUser:I
    invoke-static {v3}, Lcom/android/server/camera/CameraService;->access$200(Lcom/android/server/camera/CameraService;)I

    move-result v3

    # invokes: Lcom/android/server/camera/CameraService;->switchUserLocked(I)V
    invoke-static {v1, v3}, Lcom/android/server/camera/CameraService;->access$300(Lcom/android/server/camera/CameraService;I)V

    .line 118
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_59 .. :try_end_65} :catchall_24

    goto :goto_6

    .line 108
    :sswitch_data_66
    .sparse-switch
        -0x7ad942ef -> :sswitch_31
        -0x16fbb1bb -> :sswitch_45
        -0xc02da2e -> :sswitch_3b
        0x3eac4465 -> :sswitch_4f
        0x42dd01f1 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method
