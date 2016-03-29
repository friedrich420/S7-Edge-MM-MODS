.class Lcom/android/systemui/volume/SecVolumeDialog$3;
.super Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
.source "SecVolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/volume/VolumeDialogController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/volume/SecVolumeDialog$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V
    .locals 3
    .param p1, "state"    # Lcom/samsung/android/sdk/cover/ScoverState;

    .prologue
    const/4 v1, 0x1

    .line 386
    invoke-virtual {p1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$502(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 388
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCoverStateChanged : isCoverOpen = true, cover is opened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 420
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCoverOpened:Z
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$502(Lcom/android/systemui/volume/SecVolumeDialog;Z)Z

    .line 404
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mScover:Lcom/samsung/android/sdk/cover/Scover;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$600(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/Scover;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$700(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$700(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$700(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v1

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$802(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    .line 407
    :cond_1
    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverStateChanged : isCoverOpen = false, cover is closed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mCoverType:I
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$800(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 414
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$3;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->onDismissSafeVolumeWarning()V
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$900(Lcom/android/systemui/volume/SecVolumeDialog;)V

    goto :goto_0
.end method
