.class Lcom/sec/android/cover/manager/CoverPopupManager$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverPopupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverPopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverPopupManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverPopupManager;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPopupManager$2;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 3
    .param p1, "covered"    # Z

    .prologue
    .line 73
    const-string v0, "CoverPopupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverAppCovered() covered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$2;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    .line 79
    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 2
    .param p1, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 56
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    const-string v0, "CoverPopupManager"

    const-string v1, "onCoverStateChanged() cover open"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$2;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    .line 62
    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "CoverPopupManager"

    const-string v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$2;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    .line 69
    return-void
.end method
