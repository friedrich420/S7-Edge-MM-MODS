.class Landroid/widget/TimePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .registers 8
    .param p1, "spinner"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 131
    iget-object v2, p0, this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-virtual {v2}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v2

    if-nez v2, :cond_34

    .line 132
    const/16 v1, 0xb

    .line 133
    .local v1, "oldValueNeedAmPmChange":I
    const/16 v0, 0xc

    .line 134
    .local v0, "newValueNeedAmPmChange":I
    iget-object v2, p0, this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$000(Landroid/widget/TimePickerSpinnerDelegate;)C

    move-result v2

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_19

    .line 135
    const/16 v1, 0xb

    .line 136
    const/4 v0, 0x0

    .line 138
    :cond_19
    if-ne p2, v1, :cond_1d

    if-eq p3, v0, :cond_21

    :cond_1d
    if-ne p2, v0, :cond_34

    if-ne p3, v1, :cond_34

    .line 140
    :cond_21
    iget-object v3, p0, this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v2, p0, this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # getter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v2

    if-nez v2, :cond_3a

    const/4 v2, 0x1

    :goto_2c
    # setter for: Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z
    invoke-static {v3, v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    .line 141
    iget-object v2, p0, this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$200(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 144
    .end local v0    # "newValueNeedAmPmChange":I
    .end local v1    # "oldValueNeedAmPmChange":I
    :cond_34
    iget-object v2, p0, this$0:Landroid/widget/TimePickerSpinnerDelegate;

    # invokes: Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V
    invoke-static {v2}, Landroid/widget/TimePickerSpinnerDelegate;->access$300(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 145
    return-void

    .line 140
    .restart local v0    # "newValueNeedAmPmChange":I
    .restart local v1    # "oldValueNeedAmPmChange":I
    :cond_3a
    const/4 v2, 0x0

    goto :goto_2c
.end method
