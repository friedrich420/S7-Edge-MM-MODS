.class Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/ToggleSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ToggleTouchListener"
.end annotation


# instance fields
.field private mFocusInside:Z

.field final synthetic this$0:Lcom/android/systemui/settings/ToggleSlider;

.field private toggleButton:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/ToggleSlider;)V
    .locals 1

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->mFocusInside:Z

    .line 541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    .line 539
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 545
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 546
    .local v0, "action":I
    const-string v1, "ToggleSlider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ToggleSlider   ToggleTouchListener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mIsLightSensorAvailable:Z
    invoke-static {}, Lcom/android/systemui/settings/ToggleSlider;->access$1400()Z

    move-result v1

    if-nez v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mOutdoorToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$1000(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    .line 562
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    if-nez v1, :cond_1

    .line 592
    :goto_1
    return v3

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->this$0:Lcom/android/systemui/settings/ToggleSlider;

    # getter for: Lcom/android/systemui/settings/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v1}, Lcom/android/systemui/settings/ToggleSlider;->access$200(Lcom/android/systemui/settings/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    goto :goto_0

    .line 565
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 588
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 589
    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->mFocusInside:Z

    :goto_2
    move v3, v2

    .line 592
    goto :goto_1

    .line 568
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 569
    iput-boolean v2, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->mFocusInside:Z

    goto :goto_2

    .line 572
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    .line 573
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setPressed(Z)V

    goto :goto_2

    .line 575
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 576
    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->mFocusInside:Z

    goto :goto_2

    .line 580
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->mFocusInside:Z

    if-eqz v1, :cond_3

    .line 581
    iget-object v4, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 583
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->toggleButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setPressed(Z)V

    .line 584
    iput-boolean v3, p0, Lcom/android/systemui/settings/ToggleSlider$ToggleTouchListener;->mFocusInside:Z

    goto :goto_2

    :cond_4
    move v1, v3

    .line 581
    goto :goto_3

    .line 565
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
