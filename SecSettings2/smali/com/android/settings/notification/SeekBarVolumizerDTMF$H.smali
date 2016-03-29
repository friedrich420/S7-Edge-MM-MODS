.class final Lcom/android/settings/notification/SeekBarVolumizerDTMF$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizerDTMF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SeekBarVolumizerDTMF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/SeekBarVolumizerDTMF;


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 312
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF$H;->this$0:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    # getter for: Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->access$000(Lcom/android/settings/notification/SeekBarVolumizerDTMF;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF$H;->this$0:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    # getter for: Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->access$000(Lcom/android/settings/notification/SeekBarVolumizerDTMF;)Landroid/widget/SeekBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF$H;->this$0:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF$H;->this$0:Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    # getter for: Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->access$000(Lcom/android/settings/notification/SeekBarVolumizerDTMF;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # setter for: Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I
    invoke-static {v0, v1}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->access$102(Lcom/android/settings/notification/SeekBarVolumizerDTMF;I)I

    .line 316
    const-string v0, "SeekBarVolumizerDTMF"

    const-string v1, "handleMessage():UPDATE_SLIDER"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    return-void
.end method
