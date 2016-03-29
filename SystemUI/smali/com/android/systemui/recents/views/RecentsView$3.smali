.class Lcom/android/systemui/recents/views/RecentsView$3;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsView;->postDrawHeaderThumbnailTransitionRunnable(Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsView;

.field final synthetic val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

.field final synthetic val$offsetX:I

.field final synthetic val$offsetY:I

.field final synthetic val$transform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field final synthetic val$transitStartedListener:Landroid/app/ActivityOptions$OnTransitionStartedListener;

.field final synthetic val$tv:Lcom/android/systemui/recents/views/TaskView;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V
    .locals 0

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView$3;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iput p3, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$offsetX:I

    iput p4, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$offsetY:I

    iput-object p5, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iput-object p6, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$animStartedListener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    iput-object p7, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$transitStartedListener:Landroid/app/ActivityOptions$OnTransitionStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->unsetFocusedTask()V

    .line 1226
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v13

    .line 1227
    .local v13, "scale":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    float-to-int v12, v0

    .line 1228
    .local v12, "fromHeaderWidth":I
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    float-to-int v11, v0

    .line 1230
    .local v11, "fromHeaderHeight":I
    if-eqz v12, :cond_1

    if-nez v11, :cond_2

    .line 1231
    :cond_1
    const/4 v11, 0x1

    move v12, v11

    .line 1234
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1239
    .local v1, "b":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1240
    .local v9, "c":Landroid/graphics/Canvas;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskView;->getScaleX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getScaleY()F

    move-result v2

    invoke-virtual {v9, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1241
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$tv:Lcom/android/systemui/recents/views/TaskView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/TaskView;->mHeaderView:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v0, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 1242
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1244
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1246
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView$3;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget v2, v2, Lcom/android/systemui/recents/views/RecentsView;->mLaunchTaskViewX:I

    iget v3, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$offsetX:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView$3;->this$0:Lcom/android/systemui/recents/views/RecentsView;

    iget v3, v3, Lcom/android/systemui/recents/views/RecentsView;->mLaunchTaskViewY:I

    iget v4, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$offsetY:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView$3;->val$transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    new-instance v6, Lcom/android/systemui/recents/views/RecentsView$3$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/recents/views/RecentsView$3$1;-><init>(Lcom/android/systemui/recents/views/RecentsView$3;)V

    new-instance v7, Lcom/android/systemui/recents/views/RecentsView$3$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/views/RecentsView$3$2;-><init>(Lcom/android/systemui/recents/views/RecentsView$3;)V

    const/4 v8, 0x1

    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowManager;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :goto_0
    return-void

    .line 1282
    :catch_0
    move-exception v10

    .line 1283
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "RecentsView"

    const-string v2, "Error overriding app transition"

    invoke-static {v0, v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
