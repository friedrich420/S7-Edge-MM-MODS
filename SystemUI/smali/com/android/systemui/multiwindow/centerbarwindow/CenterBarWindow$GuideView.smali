.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;
.super Landroid/view/View;
.source "CenterBarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GuideView"
.end annotation


# instance fields
.field private mContainer:Landroid/widget/PopupWindow;

.field private mShowing:Z

.field private mView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "resourceId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 650
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 651
    const-string v0, "CenterBarWindow"

    const-string v1, "GuideView - GuideView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    .line 653
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 654
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setLayoutInsetDecor(Z)V

    .line 656
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 657
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v1, 0x8d4

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 658
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setShowForAllUsers(Z)V

    .line 659
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 660
    iput-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mShowing:Z

    .line 661
    const v0, 0x7f0e00cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mView:Landroid/widget/ImageView;

    .line 662
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 663
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 681
    const-string v0, "CenterBarWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GuideView - dismiss() : mShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mShowing:Z

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 684
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 685
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mShowing:Z

    .line 687
    :cond_0
    return-void
.end method

.method public setDrawable(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 690
    iget-object v0, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 691
    return-void
.end method

.method public show(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 666
    const-string v1, "CenterBarWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GuideView - show() : mShowing = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mShowing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mShowing:Z

    if-nez v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 669
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 670
    iget-object v2, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    check-cast v1, Landroid/os/Binder;

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 671
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 672
    .local v0, "alphaAnimation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 673
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 674
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mShowing:Z

    .line 678
    .end local v0    # "alphaAnimation":Landroid/view/animation/Animation;
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$GuideView;->mContainer:Landroid/widget/PopupWindow;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method
