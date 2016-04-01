.class Landroid/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2

    .prologue
    .line 1334
    iput-object p1, p0, this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1339
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_28

    .line 1358
    :goto_9
    :pswitch_9
    return-void

    .line 1341
    :pswitch_a
    iget-object v0, p0, this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V
    invoke-static {v0, v2}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;I)V

    .line 1357
    :goto_f
    iget-object v0, p0, this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->tryVibrate()V
    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->access$400(Landroid/widget/TimePickerClockDelegate;)V

    goto :goto_9

    .line 1344
    :pswitch_15
    iget-object v0, p0, this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->setAmOrPm(I)V
    invoke-static {v0, v1}, Landroid/widget/TimePickerClockDelegate;->access$200(Landroid/widget/TimePickerClockDelegate;I)V

    goto :goto_f

    .line 1347
    :pswitch_1b
    iget-object v0, p0, this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V
    invoke-static {v0, v2, v1, v1}, Landroid/widget/TimePickerClockDelegate;->access$300(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_f

    .line 1350
    :pswitch_21
    iget-object v0, p0, this$0:Landroid/widget/TimePickerClockDelegate;

    # invokes: Landroid/widget/TimePickerClockDelegate;->setCurrentItemShowing(IZZ)V
    invoke-static {v0, v1, v1, v1}, Landroid/widget/TimePickerClockDelegate;->access$300(Landroid/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_f

    .line 1339
    nop

    :pswitch_data_28
    .packed-switch 0x10204ad
        :pswitch_1b
        :pswitch_9
        :pswitch_21
        :pswitch_9
        :pswitch_a
        :pswitch_15
    .end packed-switch
.end method
