.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3;
.super Landroid/content/BroadcastReceiver;
.source "CenterBarWindowService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    const-string v0, "CenterBarWindowService"

    const-string v1, "mMultiWindowStatusReceiver : onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3$1;-><init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$3;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_0
    return-void
.end method
