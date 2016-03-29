.class final Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeSeekBarChangeListener"
.end annotation


# instance fields
.field private final mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V
    .locals 0
    .param p2, "row"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1553
    iput-object p2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    .line 1554
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Lcom/android/systemui/volume/SecVolumeDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/volume/SecVolumeDialog;
    .param p2, "x1"    # Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;
    .param p3, "x2"    # Lcom/android/systemui/volume/SecVolumeDialog$1;

    .prologue
    .line 1549
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;-><init>(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1558
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1589
    :cond_0
    :goto_0
    return-void

    .line 1559
    :cond_1
    sget-boolean v2, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v2, :cond_2

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-static {v4}, Landroid/media/AudioSystem;->streamToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " onProgressChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fromUser="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    :cond_2
    if-eqz p3, :cond_0

    .line 1562
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    if-lez v2, :cond_3

    .line 1563
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    mul-int/lit8 v0, v2, 0x64

    .line 1564
    .local v0, "minProgress":I
    if-ge p2, v0, :cond_3

    .line 1565
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1566
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->levelMin:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    goto :goto_0

    .line 1571
    .end local v0    # "minProgress":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 1572
    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I
    invoke-static {p2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5900(I)I

    move-result v1

    .line 1580
    .local v1, "userLevel":I
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-ne v2, v1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eqz v2, :cond_0

    if-lez v1, :cond_0

    .line 1581
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;J)J

    .line 1582
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1583
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setStreamVolume(II)V

    .line 1584
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->requestedLevel:I
    invoke-static {v2, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3602(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;I)I

    .line 1585
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x9

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1574
    .end local v1    # "userLevel":I
    :cond_6
    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I
    invoke-static {p1, p2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$6000(Landroid/widget/SeekBar;I)I

    move-result v1

    .line 1575
    .restart local v1    # "userLevel":I
    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    .line 1577
    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1593
    sget-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v0, :cond_0

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartTrackingTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mController:Lcom/android/systemui/volume/VolumeDialogController;
    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2800(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setActiveStream(I)V

    .line 1595
    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->tracking:Z
    invoke-static {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1596
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    .line 1600
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1619
    :cond_0
    :goto_0
    return-void

    .line 1601
    :cond_1
    sget-boolean v1, Lcom/android/systemui/volume/D;->BUG:Z

    if-eqz v1, :cond_2

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopTrackingTouch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->tracking:Z
    invoke-static {v1, v5}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$4002(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;Z)Z

    .line 1603
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->userAttempt:J
    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3302(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;J)J

    .line 1605
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 1606
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedMediaVolumeLevel(I)I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$5900(I)I

    move-result v0

    .line 1614
    .local v0, "userLevel":I
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$2600(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/systemui/volume/Events;->writeEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1615
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->ss:Lcom/android/systemui/volume/VolumeDialogController$StreamState;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$3100(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->level:I

    if-eq v1, v0, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog;->mHandler:Lcom/android/systemui/volume/SecVolumeDialog$H;
    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialog;->access$300(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$H;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    invoke-virtual {v2, v6, v3}, Lcom/android/systemui/volume/SecVolumeDialog$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/volume/SecVolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1608
    .end local v0    # "userLevel":I
    :cond_4
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    # invokes: Lcom/android/systemui/volume/SecVolumeDialog;->getImpliedLevel(Landroid/widget/SeekBar;I)I
    invoke-static {p1, v1}, Lcom/android/systemui/volume/SecVolumeDialog;->access$6000(Landroid/widget/SeekBar;I)I

    move-result v0

    .line 1609
    .restart local v0    # "userLevel":I
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialog$VolumeSeekBarChangeListener;->mRow:Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;

    # getter for: Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->stream:I
    invoke-static {v1}, Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;->access$1600(Lcom/android/systemui/volume/SecVolumeDialog$VolumeRow;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1611
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
