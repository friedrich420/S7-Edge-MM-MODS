.class Lcom/android/server/smartclip/SpenGestureManagerService$2;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .prologue
    .line 313
    iput-object p1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v3, 0x1

    .line 317
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    if-ne v1, v3, :cond_31

    .line 318
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, " onCoverStateChanged : SWITCH_STATE_COVER_OPEN"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v1, v3}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 326
    :goto_13
    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z
    invoke-static {v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 327
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 328
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "cover_opened"

    iget-object v2, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$700(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 329
    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    .line 331
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_30
    return-void

    .line 321
    :cond_31
    sget-object v1, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v2, " onCoverStateChanged : SWITCH_STATE_COVER_CLOSE"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v1, p0, this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mClearCoverOpened:Z
    invoke-static {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$702(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    goto :goto_13
.end method
