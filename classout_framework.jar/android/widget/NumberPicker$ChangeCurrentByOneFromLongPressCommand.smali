.class Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 2

    .prologue
    .line 2400
    iput-object p1, p0, this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2400
    invoke-direct {p0, p1}, setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .registers 2
    .param p1, "increment"    # Z

    .prologue
    .line 2404
    iput-boolean p1, p0, mIncrement:Z

    .line 2405
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 2410
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mIsParentThemeDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1300(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2411
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-boolean v1, p0, mIncrement:Z

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 2412
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2800(Landroid/widget/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2422
    :goto_1b
    return-void

    .line 2414
    :cond_1c
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mHasSelectorWheel:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$2900(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4f

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDecrementButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3000(Landroid/widget/NumberPicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-eq v0, v1, :cond_3c

    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mIncrementButton:Landroid/widget/ImageButton;
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$3100(Landroid/widget/NumberPicker;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isShown()Z

    move-result v0

    if-ne v0, v1, :cond_4f

    .line 2415
    :cond_3c
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-boolean v1, p0, mIncrement:Z

    # invokes: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    .line 2416
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mLongPressUpdateInterval:J
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2800(Landroid/widget/NumberPicker;)J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1b

    .line 2418
    :cond_4f
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1b
.end method
