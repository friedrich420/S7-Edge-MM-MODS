.class Lcom/android/systemui/recents/views/DualScreenViewControl$6;
.super Ljava/lang/Object;
.source "DualScreenViewControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/DualScreenViewControl;->makeLaunchRunnable(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/DualScreenViewControl;

.field final synthetic val$fromScreen:I

.field final synthetic val$isActive:Z

.field final synthetic val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

.field final synthetic val$taskId:I

.field final synthetic val$taskName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/DualScreenViewControl;IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->this$0:Lcom/android/systemui/recents/views/DualScreenViewControl;

    iput p2, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$fromScreen:I

    iput p3, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$taskId:I

    iput-boolean p4, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$isActive:Z

    iput-object p5, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$taskName:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 310
    sget-boolean v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 311
    const-string v1, "DualScreenViewControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "launchTask - fromScreen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$fromScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  taskId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  isActive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$isActive:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  taskName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$taskName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    iget v1, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$fromScreen:I

    if-nez v1, :cond_2

    .line 315
    .local v11, "toScreen":I
    :goto_0
    # getter for: Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;
    invoke-static {}, Lcom/android/systemui/recents/views/DualScreenViewControl;->access$000()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->this$0:Lcom/android/systemui/recents/views/DualScreenViewControl;

    # getter for: Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;->access$100(Lcom/android/systemui/recents/views/DualScreenViewControl;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 317
    .local v8, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v8, :cond_1

    iget-object v0, v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget-object v1, v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->headerBM:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->transform:Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-object v5, v5, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHandler()Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$listener:Landroid/app/ActivityOptions$OnAnimationStartedListener;

    invoke-static/range {v0 .. v7}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v9

    .line 327
    .local v9, "opt":Landroid/app/ActivityOptions;
    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v10

    .line 329
    .local v10, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$isActive:Z

    if-eqz v0, :cond_5

    .line 330
    iget v1, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$taskId:I

    invoke-static {v11}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    :goto_2
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveTaskToScreen(ILcom/samsung/android/dualscreen/DualScreen;ILandroid/os/Bundle;)V

    .line 337
    .end local v9    # "opt":Landroid/app/ActivityOptions;
    .end local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_1
    :goto_3
    monitor-exit v12

    .line 338
    return-void

    .end local v8    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v11    # "toScreen":I
    :cond_2
    move v11, v0

    .line 313
    goto :goto_0

    .line 324
    .restart local v8    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v11    # "toScreen":I
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "opt":Landroid/app/ActivityOptions;
    goto :goto_1

    .line 330
    .restart local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 334
    :cond_5
    iget-object v0, v8, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$taskId:I

    iget-object v2, p0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;->val$taskName:Ljava/lang/String;

    invoke-virtual {v10, v0, v1, v2, v9}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto :goto_3

    .line 337
    .end local v8    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v9    # "opt":Landroid/app/ActivityOptions;
    .end local v10    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
