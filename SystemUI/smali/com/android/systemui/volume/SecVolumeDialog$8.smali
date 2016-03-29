.class Lcom/android/systemui/volume/SecVolumeDialog$8;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
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
    .line 1389
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->updateWindowWidthH()V
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4800(Lcom/android/systemui/volume/SecVolumeDialog;)V

    .line 1418
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mSpTexts:Lcom/android/systemui/volume/SpTexts;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4900(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/volume/SpTexts;->update()V

    .line 1420
    return-void
.end method

.method public onDismissRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    .line 1398
    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mDialogView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4700(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    .line 1413
    return-void
.end method

.method public onPlaySound()V
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->playSoundH()V

    .line 1444
    return-void
.end method

.method public onShowRequested(I)V
    .locals 1
    .param p1, "reason"    # I

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->showH(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4500(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    .line 1393
    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->showSafetyWarningH(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5100(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    .line 1439
    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5000(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 1434
    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1424
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mSilentMode:Z
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5000(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    .line 1427
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/volume/VolumeDialogController$State;

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->onStateChangedH(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$4600(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    .line 1408
    return-void
.end method

.method public onStopSound()V
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->stopSoundH()V

    .line 1449
    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$8;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->themeChanged()V

    .line 1454
    return-void
.end method
