.class Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;
.super Ljava/lang/Object;
.source "RecentsMultiWindowActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    .line 392
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_7

    .line 394
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 395
    .local v1, "x":F
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    .line 428
    .end local v1    # "x":F
    :cond_2
    :goto_0
    return v2

    .line 398
    .restart local v1    # "x":F
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 400
    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v3, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F

    goto :goto_0

    .line 403
    :pswitch_1
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_6

    .line 404
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerCount:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$100(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    .line 406
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .line 407
    .local v0, "fr":Lcom/android/systemui/multiwindow/SplitAppListFragment;
    iget-object v2, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->scrollAnimation(FF)V

    .line 408
    const/4 v2, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "fr":Lcom/android/systemui/multiwindow/SplitAppListFragment;
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v3, v1}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$700(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)F

    move-result v3

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_2

    .line 417
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mAppListViewPagerAdapter:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;
    invoke-static {v3}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$600(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # getter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mViewPagerScrollIdlePage:I
    invoke-static {v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$000(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$SpiltPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/multiwindow/SplitAppListFragment;

    .line 418
    .restart local v0    # "fr":Lcom/android/systemui/multiwindow/SplitAppListFragment;
    invoke-virtual {v0, v5, v5}, Lcom/android/systemui/multiwindow/SplitAppListFragment;->scrollAnimation(FF)V

    .line 419
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v3, v5}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F

    goto/16 :goto_0

    .line 426
    .end local v0    # "fr":Lcom/android/systemui/multiwindow/SplitAppListFragment;
    .end local v1    # "x":F
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity$6;->this$0:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    # setter for: Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mStartTouchX:F
    invoke-static {v3, v5}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->access$702(Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;F)F

    goto/16 :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
