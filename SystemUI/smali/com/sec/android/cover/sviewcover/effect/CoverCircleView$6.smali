.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 709
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 711
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 712
    const/4 v1, 0x0

    .line 713
    .local v1, "startIntent":Landroid/content/Intent;
    sget-object v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$19;->$SwitchMap$com$sec$android$cover$sviewcover$effect$CoverCircleView$WidgetType:[I

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v3, v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 724
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAnimationEnd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v4, v4, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetType:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .end local v1    # "startIntent":Landroid/content/Intent;
    :goto_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v2, :cond_0

    .line 736
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->resetPreviewView()V

    .line 738
    :cond_0
    return-void

    .line 715
    .restart local v1    # "startIntent":Landroid/content/Intent;
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$600(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    invoke-static {v2}, Lcom/sec/android/cover/CoverUtils;->getCameraIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 716
    goto :goto_0

    .line 718
    :pswitch_1
    invoke-static {}, Lcom/sec/android/cover/CoverUtils;->getFavoriteContactIntent()Landroid/content/Intent;

    move-result-object v1

    .line 719
    goto :goto_0

    .line 721
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mShortcutManager:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;
    invoke-static {v2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$700(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v3, v3, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mWidgetSide:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;

    invoke-virtual {v3}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$WidgetSide;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v1

    .line 722
    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v3, "ActivityNotFoundException !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 732
    .end local v0    # "exception":Landroid/content/ActivityNotFoundException;
    .end local v1    # "startIntent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$6;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v2, v2, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->TAG:Ljava/lang/String;

    const-string v3, "onAnimationEnd() cover open !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 713
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
