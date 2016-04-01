.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$19;
.super Landroid/hardware/camera2/CameraManager$TorchCallback;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 4300
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$TorchCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTorchModeChanged(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 4311
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeChanged mCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1100()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_46

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 4313
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    # setter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z
    invoke-static {v0, p2}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1202(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z

    .line 4315
    :cond_46
    return-void
.end method

.method public onTorchModeUnavailable(Ljava/lang/String;)V
    .registers 5
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 4303
    const-string v0, "SamsungWindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTorchModeUnavailable mCameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cameraId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1100()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    # getter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mCameraId:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4305
    iget-object v0, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->bIsTorchOn:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$1202(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Z)Z

    .line 4307
    :cond_3d
    return-void
.end method
