.class Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenCaptureTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/ScreenCaptureTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->ScreenCapture:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$100(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    # invokes: Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenCapture()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$200(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    # setter for: Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->ScreenCapture:Z
    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$102(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v1, "com.samsung.systemui.statusbar.NOTIFICATION_EXPAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->ScreenCapture:Z
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$100(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    # getter for: Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$300(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/qs/QSTile$Host;->getKeyguardMonitor()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    # invokes: Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->doScreenCapture()V
    invoke-static {v1}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$200(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;)V

    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/ScreenCaptureTile$1;->this$0:Lcom/android/systemui/qs/tiles/ScreenCaptureTile;

    # setter for: Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->ScreenCapture:Z
    invoke-static {v1, v4}, Lcom/android/systemui/qs/tiles/ScreenCaptureTile;->access$102(Lcom/android/systemui/qs/tiles/ScreenCaptureTile;Z)Z

    goto :goto_0
.end method
