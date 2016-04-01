.class Landroid/widget/NumberPicker$PressedStateHelper;
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
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .registers 3

    .prologue
    .line 2307
    iput-object p1, p0, this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2311
    const/4 v0, 0x1

    iput v0, p0, MODE_PRESS:I

    .line 2312
    const/4 v0, 0x2

    iput v0, p0, MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .registers 6
    .param p1, "button"    # I

    .prologue
    .line 2332
    invoke-virtual {p0}, cancel()V

    .line 2333
    const/4 v0, 0x1

    iput v0, p0, mMode:I

    .line 2334
    iput p1, p0, mManagedButton:I

    .line 2335
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2336
    return-void
.end method

.method public buttonTapped(I)V
    .registers 3
    .param p1, "button"    # I

    .prologue
    .line 2339
    invoke-virtual {p0}, cancel()V

    .line 2340
    const/4 v0, 0x2

    iput v0, p0, mMode:I

    .line 2341
    iput p1, p0, mManagedButton:I

    .line 2342
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2343
    return-void
.end method

.method public cancel()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2318
    iput v4, p0, mMode:I

    .line 2319
    iput v4, p0, mManagedButton:I

    .line 2320
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2321
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 2322
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # setter for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->access$1502(Landroid/widget/NumberPicker;Z)Z

    .line 2323
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$1700(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$1800(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2325
    :cond_2e
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # setter for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Landroid/widget/NumberPicker;->access$1902(Landroid/widget/NumberPicker;Z)Z

    .line 2326
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2327
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2000(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2329
    :cond_4c
    return-void
.end method

.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2347
    iget v0, p0, mMode:I

    packed-switch v0, :pswitch_data_a2

    .line 2381
    :goto_7
    return-void

    .line 2349
    :pswitch_8
    iget v0, p0, mManagedButton:I

    packed-switch v0, :pswitch_data_aa

    goto :goto_7

    .line 2351
    :pswitch_e
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # setter for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Landroid/widget/NumberPicker;->access$1502(Landroid/widget/NumberPicker;Z)Z

    .line 2352
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2200(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$2300(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2355
    :pswitch_2b
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # setter for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Landroid/widget/NumberPicker;->access$1902(Landroid/widget/NumberPicker;Z)Z

    .line 2356
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2400(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2361
    :pswitch_42
    iget v0, p0, mManagedButton:I

    packed-switch v0, :pswitch_data_b2

    goto :goto_7

    .line 2363
    :pswitch_48
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1500(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2364
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2367
    :cond_5a
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # ^= operator for: Landroid/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Landroid/widget/NumberPicker;->access$1580(Landroid/widget/NumberPicker;I)Z

    .line 2368
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$1600(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2500(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$2600(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_7

    .line 2371
    :pswitch_77
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$1900(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 2372
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2375
    :cond_89
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    # ^= operator for: Landroid/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v5}, Landroid/widget/NumberPicker;->access$1980(Landroid/widget/NumberPicker;I)Z

    .line 2376
    iget-object v0, p0, this$0:Landroid/widget/NumberPicker;

    iget-object v1, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$2700(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$2100(Landroid/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto/16 :goto_7

    .line 2347
    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_42
    .end packed-switch

    .line 2349
    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_e
        :pswitch_2b
    .end packed-switch

    .line 2361
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_48
        :pswitch_77
    .end packed-switch
.end method
