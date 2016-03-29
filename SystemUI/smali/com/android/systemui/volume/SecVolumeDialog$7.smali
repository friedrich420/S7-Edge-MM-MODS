.class Lcom/android/systemui/volume/SecVolumeDialog$7;
.super Lcom/android/systemui/volume/SafetyWarningDialog;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->showSafetyWarningH(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 1325
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/volume/SafetyWarningDialog;-><init>(Landroid/content/Context;Landroid/media/AudioManager;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1328
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog;->mSafetyWarning:Lcom/android/systemui/volume/SafetyWarningDialog;
    invoke-static {v0, v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4202(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SafetyWarningDialog;)Lcom/android/systemui/volume/SafetyWarningDialog;

    .line 1330
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4300(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 1332
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$7;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->recheckH(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    invoke-static {v0, v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4400(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    .line 1333
    return-void

    .line 1330
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
