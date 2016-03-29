.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$12;
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
    .line 333
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 336
    :try_start_0
    const-string v0, "CenterBarWindowService"

    const-string v1, "mOutsideTouchEventReceiver : onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService$12;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->mCenterBarWindow:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindowService;)Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->hideButtonsPopupWindow(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 340
    :catch_0
    move-exception v0

    goto :goto_0
.end method
