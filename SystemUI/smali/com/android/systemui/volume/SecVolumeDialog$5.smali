.class Lcom/android/systemui/volume/SecVolumeDialog$5;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/SecVolumeDialog;->initRow(IIIZ)Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;

.field final synthetic val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

.field final synthetic val$stream:I


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)V
    .locals 0

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    iput p3, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$stream:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 633
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x7

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->iconState:I
    invoke-static {v7}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$2700(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 634
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    .line 635
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    if-eq v4, v8, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2900(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_7

    .line 636
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/VolumeDialogController;->hasVibrator()Z

    move-result v0

    .line 637
    .local v0, "hasVibrator":Z
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mState:Lcom/android/systemui/volume/VolumeDialogController$State;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$3000(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController$State;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$State;->ringerModeInternal:I

    if-ne v4, v8, :cond_6

    .line 638
    if-eqz v0, :cond_2

    .line 639
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 656
    .end local v0    # "hasVibrator":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const-wide/16 v4, 0x0

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {v3, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;J)J

    .line 657
    return-void

    .line 640
    .restart local v0    # "hasVibrator":Z
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mVoiceCapable:Z
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2900(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 641
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    goto :goto_0

    .line 643
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_5

    .line 644
    .local v2, "wasZero":Z
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$stream:I

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    :cond_4
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .end local v2    # "wasZero":Z
    :cond_5
    move v2, v3

    .line 643
    goto :goto_1

    .line 647
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    invoke-virtual {v4, v8, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 648
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v3

    iget v3, v3, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v3, :cond_1

    .line 649
    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$stream:I

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 653
    .end local v0    # "hasVibrator":Z
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-nez v4, :cond_9

    move v1, v2

    .line 654
    .local v1, "vmute":Z
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$stream:I

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$5;->val$row:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->lastAudibleLevel:I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3200(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    :cond_8
    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .end local v1    # "vmute":Z
    :cond_9
    move v1, v3

    .line 653
    goto :goto_2
.end method
