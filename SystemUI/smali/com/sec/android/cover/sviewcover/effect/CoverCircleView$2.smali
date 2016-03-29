.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;
.super Ljava/lang/Object;
.source "CoverCircleView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onFinishInflate()V
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
    .line 293
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 297
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCoverView:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->getUiAlpha()F

    move-result v1

    const v2, 0x3dcccccd    # 0.1f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    iget-object v1, v1, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mPreviewContainer:Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverPreviewContainer;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 305
    :cond_2
    iget-object v1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCustomCircletouchHandler:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;
    invoke-static {v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$2;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mCustomCircletouchHandler:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$500(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$CustomCircletouchHandler;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
