.class Lcom/android/server/policy/GlobalActions$39;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .registers 2

    .prologue
    .line 4295
    iput-object p1, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4297
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_43e

    .line 4522
    :cond_5
    :goto_5
    return-void

    .line 4299
    :pswitch_6
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v11

    if-eqz v11, :cond_174

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_174

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$7600(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_174

    .line 4300
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 4301
    const/4 v6, 0x0

    .line 4302
    .local v6, "view":Landroid/view/View;
    const/4 v3, 0x0

    .line 4303
    .local v3, "ll":Landroid/widget/LinearLayout;
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v11

    if-nez v11, :cond_8c

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v11

    if-nez v11, :cond_8c

    .line 4304
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6500(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-result-object v11

    const v12, 0x102039e

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "ll":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .line 4309
    .restart local v3    # "ll":Landroid/widget/LinearLayout;
    :goto_47
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_48
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_af

    .line 4310
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9c

    .line 4311
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5300(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_79

    .line 4312
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5300(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4319
    :cond_79
    :goto_79
    if-eqz v6, :cond_89

    .line 4320
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4309
    :cond_89
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 4306
    .end local v0    # "i":I
    :cond_8c
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6600(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const v12, 0x102039e

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "ll":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3    # "ll":Landroid/widget/LinearLayout;
    goto :goto_47

    .line 4315
    .restart local v0    # "i":I
    :cond_9c
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_79

    .line 4316
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_79

    .line 4324
    :cond_af
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/policy/GlobalActions;->requestUpdateWindowBlur(F)V

    .line 4326
    if-eqz v3, :cond_122

    .line 4327
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8500(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_dc

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8500(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_dc

    .line 4328
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8600(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_dc

    .line 4329
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8500(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    .line 4332
    :cond_dc
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v11

    if-nez v11, :cond_107

    .line 4333
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    if-eqz v11, :cond_107

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_107

    .line 4334
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8600(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_107

    .line 4335
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->dismiss()V

    .line 4340
    :cond_107
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/server/policy/GlobalActions$39$1;

    invoke-direct {v12, p0}, Lcom/android/server/policy/GlobalActions$39$1;-><init>(Lcom/android/server/policy/GlobalActions$39;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 4367
    :cond_122
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_14a

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_14a

    .line 4368
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 4370
    :cond_14a
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_5

    .line 4371
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_5

    .line 4375
    .end local v0    # "i":I
    .end local v3    # "ll":Landroid/widget/LinearLayout;
    .end local v6    # "view":Landroid/view/View;
    :cond_174
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8500(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_1a5

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8500(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1a5

    .line 4376
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_19c

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1a5

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8600(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_1a5

    .line 4377
    :cond_19c
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8500(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    .line 4380
    :cond_1a5
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6300()Z

    move-result v11

    if-nez v11, :cond_1dc

    .line 4381
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    if-eqz v11, :cond_1dc

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_1dc

    .line 4382
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1d3

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_1dc

    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8600(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_1dc

    .line 4383
    :cond_1d3
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->dismiss()V

    .line 4388
    :cond_1dc
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_213

    .line 4389
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4390
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    .line 4391
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$4502(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    .line 4392
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4302(Z)Z

    .line 4393
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    .line 4394
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$7602(Lcom/android/server/policy/GlobalActions;Z)Z

    .line 4395
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$300()Z

    move-result v11

    if-nez v11, :cond_213

    .line 4396
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4602(Z)Z

    .line 4400
    :cond_213
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4600()Z

    move-result v11

    if-eqz v11, :cond_5

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$300()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4401
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "showing dialog because mIsMiniDialogMode and mIsMiniCoverOpened are true."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4602(Z)Z

    .line 4403
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$302(Z)Z

    .line 4404
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_240

    .line 4405
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 4407
    :cond_240
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_5

    .line 4417
    :pswitch_247
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 4418
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 4424
    :pswitch_25a
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_26b

    .line 4425
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 4427
    :cond_26b
    sget-object v11, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-eqz v11, :cond_5

    .line 4428
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_5

    .line 4434
    :pswitch_27a
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 4436
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_5

    .line 4440
    :pswitch_28a
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9100(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v11

    if-eqz v11, :cond_2c6

    .line 4442
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAirplaneModeOn.updateState"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4443
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9100(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v11

    iget-object v12, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v12}, Lcom/android/server/policy/GlobalActions;->access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4444
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_2c6

    .line 4445
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v12, p0, this$0:Lcom/android/server/policy/GlobalActions;

    iget v12, v12, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v13, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v13}, Lcom/android/server/policy/GlobalActions;->access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v13

    # invokes: Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    invoke-static {v11, v12, v13}, Lcom/android/server/policy/GlobalActions;->access$8100(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    .line 4448
    :cond_2c6
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 4449
    const-string v11, "GlobalActions"

    const-string/jumbo v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAdapter.notifyDataSetChanged"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_5

    .line 4454
    :pswitch_2e1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4455
    .local v2, "intent":Landroid/content/Intent;
    const-string v11, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4456
    const-string/jumbo v11, "suppressCoverUI"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4457
    const-string/jumbo v11, "miniModeUI"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4458
    const-string/jumbo v12, "sender"

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4459
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 4465
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_30e
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 4468
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_317
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_371

    .line 4469
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 4470
    .local v7, "viewLand1":Landroid/view/View;
    sget-object v11, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_36e

    .line 4471
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5300(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 4472
    .local v9, "viewPort1":Landroid/view/View;
    const v11, 0x10203af

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 4473
    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    const v11, 0x102000b

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4474
    .local v4, "messageView":Landroid/widget/TextView;
    const v11, 0x10203ad

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4475
    .local v5, "statusView":Landroid/widget/TextView;
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v11, v1, v12}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 4476
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    invoke-static {v11, v9, v12}, Lcom/android/server/policy/GlobalActions;->access$6100(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    .line 4468
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v9    # "viewPort1":Landroid/view/View;
    :cond_36e
    add-int/lit8 v0, v0, 0x1

    goto :goto_317

    .line 4479
    .end local v7    # "viewLand1":Landroid/view/View;
    :cond_371
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4400()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4480
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6600(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const-string v12, "HideConfirmLandscape"

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 4481
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4482
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9200(Lcom/android/server/policy/GlobalActions;)V

    .line 4483
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    goto/16 :goto_5

    .line 4488
    .end local v0    # "i":I
    :pswitch_396
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 4491
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_39f
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4900(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_3f9

    .line 4492
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5300(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 4493
    .local v10, "viewPort2":Landroid/view/View;
    sget-object v11, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f6

    .line 4494
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 4495
    .local v8, "viewLand2":Landroid/view/View;
    const v11, 0x10203af

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 4496
    .restart local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    const v11, 0x102000b

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 4497
    .restart local v4    # "messageView":Landroid/widget/TextView;
    const v11, 0x10203ad

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 4498
    .restart local v5    # "statusView":Landroid/widget/TextView;
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v11, v1, v12}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    .line 4499
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    invoke-static {v11, v8, v12}, Lcom/android/server/policy/GlobalActions;->access$6200(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    .line 4491
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v8    # "viewLand2":Landroid/view/View;
    :cond_3f6
    add-int/lit8 v0, v0, 0x1

    goto :goto_39f

    .line 4502
    .end local v10    # "viewPort2":Landroid/view/View;
    :cond_3f9
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4300()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 4503
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6600(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const-string v12, "HideConfirmPortrait"

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    .line 4504
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5300(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 4505
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9300(Lcom/android/server/policy/GlobalActions;)V

    .line 4506
    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4302(Z)Z

    goto/16 :goto_5

    .line 4511
    .end local v0    # "i":I
    :pswitch_41e
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 4512
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$5700(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_5

    .line 4516
    :pswitch_42e
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 4517
    iget-object v11, p0, this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$6900(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_5

    .line 4297
    :pswitch_data_43e
    .packed-switch 0x0
        :pswitch_6
        :pswitch_247
        :pswitch_27a
        :pswitch_28a
        :pswitch_2e1
        :pswitch_25a
        :pswitch_30e
        :pswitch_396
        :pswitch_41e
        :pswitch_42e
    .end packed-switch
.end method
