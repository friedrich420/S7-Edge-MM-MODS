.class Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;
.super Ljava/lang/Object;
.source "GuideLine.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 34
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v26, v0

    .line 202
    .local v26, "x":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v27, v0

    .line 204
    .local v27, "y":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v28

    packed-switch v28, :pswitch_data_0

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->hide()V

    .line 525
    :cond_0
    :goto_0
    const/16 v28, 0x1

    return v28

    .line 208
    :pswitch_0
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 209
    .local v8, "displayMetrix":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 210
    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->updateWindowRects()Z

    move-result v29

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mInitCenterBarPoint:Z
    invoke-static/range {v28 .. v29}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$002(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;Z)Z

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Landroid/content/Context;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSelective1Orientation(Landroid/content/Context;)Z

    move-result v28

    if-eqz v28, :cond_6

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    const/4 v9, 0x1

    .line 216
    .local v9, "displayOrientation":I
    :goto_1
    const/16 v21, 0x0

    .line 217
    .local v21, "shouldFake":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$200(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v28

    if-eqz v28, :cond_1

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$200(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v28

    const/16 v29, 0x2

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$200(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowStyleFromRecentTask:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static/range {v29 .. v29}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$200(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getAppRequestOrientation()I

    move-result v29

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v9, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->shouldFakeOrientation(IILandroid/graphics/Rect;)Z

    move-result v21

    .line 221
    :cond_1
    if-eqz v21, :cond_5

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMinimumSizeRatioForSelectiveOrientation:F
    invoke-static/range {v30 .. v30}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)F

    move-result v30

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMinimumSizeRatioForSelectiveOrientation:F
    invoke-static/range {v30 .. v30}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$300(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)F

    move-result v30

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    .line 252
    .end local v9    # "displayOrientation":I
    .end local v21    # "shouldFake":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 253
    .local v6, "d":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->headerWidth:I

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->headerHeight:I

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    check-cast v28, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpHeader:Landroid/widget/FrameLayout$LayoutParams;

    .line 259
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mTaskId = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsRunningTask:Z

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsTopRunning:Z

    .line 264
    const/16 v16, 0x0

    .line 266
    .local v16, "obscuredZone":I
    const/16 v23, 0x0

    .line 267
    .local v23, "taskCheck":Z
    const/16 v25, 0x0

    .line 269
    .local v25, "topRunningCheck":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v28, v0

    const/16 v29, 0xf

    const/16 v30, 0xa

    invoke-virtual/range {v28 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v24

    .line 270
    .local v24, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 271
    .local v14, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v28

    and-int v28, v28, v16

    if-nez v28, :cond_2

    .line 274
    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v28

    or-int v16, v16, v28

    .line 275
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "obscuredZone |= info.multiWindowStyle.getZone() : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-boolean v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->isHomeType:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 290
    .end local v14    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    if-eqz v23, :cond_d

    if-eqz v25, :cond_d

    const/16 v28, 0x1

    :goto_4
    move/from16 v0, v28

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsTopRunning:Z

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->isFullScreenOnly(Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z
    invoke-static/range {v29 .. v30}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$400(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsFullScreenOnly:Z

    .line 295
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ACTION_DRAG_STARTED / mFrontActivityMultiWindowStyle :"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n mIsFullScreenOnly : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsFullScreenOnly:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "obscuredZone":I
    .end local v23    # "taskCheck":Z
    .end local v24    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v25    # "topRunningCheck":Z
    :cond_4
    const/4 v9, 0x2

    goto/16 :goto_1

    .line 225
    .restart local v9    # "displayOrientation":I
    .restart local v21    # "shouldFake":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    goto/16 :goto_2

    .line 229
    .end local v9    # "displayOrientation":I
    .end local v21    # "shouldFake":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRequestScreenOrientation:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    .line 230
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_7

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    goto/16 :goto_2

    .line 234
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    goto/16 :goto_2

    .line 237
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRequestScreenOrientation:I

    move/from16 v28, v0

    if-nez v28, :cond_a

    .line 238
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_9

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    goto/16 :goto_2

    .line 242
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    goto/16 :goto_2

    .line 246
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFloatingMinimumSizeRatio:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    goto/16 :goto_2

    .line 281
    .restart local v6    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v16    # "obscuredZone":I
    .restart local v23    # "taskCheck":Z
    .restart local v24    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v25    # "topRunningCheck":Z
    :cond_b
    iget v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 282
    const/16 v23, 0x1

    .line 285
    :cond_c
    const/16 v28, 0xf

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 286
    const/16 v25, 0x1

    .line 287
    goto/16 :goto_3

    .line 290
    .end local v14    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_d
    const/16 v28, 0x0

    goto/16 :goto_4

    .line 301
    .end local v6    # "d":Landroid/graphics/drawable/Drawable;
    .end local v7    # "display":Landroid/view/Display;
    .end local v8    # "displayMetrix":Landroid/util/DisplayMetrics;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v16    # "obscuredZone":I
    .end local v23    # "taskCheck":Z
    .end local v24    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v25    # "topRunningCheck":Z
    :pswitch_1
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mGuideLineDragListener event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v28

    if-eqz v28, :cond_e

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mHandler:Landroid/os/Handler;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsFullScreenOnly:Z

    move/from16 v28, v0

    if-eqz v28, :cond_f

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setX(F)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setY(F)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const v29, 0x10805d5

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 332
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v31, v0

    invoke-virtual/range {v29 .. v31}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->isFullGuideLine(Landroid/content/Intent;I)Z

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFullGuideRect:Z

    .line 334
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mGuideLineDragListener mFullGuideRect = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFullGuideRect:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFullGuideRect:Z

    move/from16 v28, v0

    if-nez v28, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsFullScreenOnly:Z

    move/from16 v28, v0

    if-nez v28, :cond_10

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getCurrentGuideRect(II)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    .line 340
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->inDockingArea:Z

    goto/16 :goto_0

    .line 315
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v26, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setX(F)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v27, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setY(F)V

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const v29, 0x10805d5

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpHeader:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->headerWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpHeader:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->headerHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpHeader:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->headerWidth:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v26, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setX(F)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v27, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->headerHeight:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setY(F)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 338
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getRectByZone(I)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    goto/16 :goto_6

    .line 345
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFullGuideRect:Z

    move/from16 v28, v0

    if-nez v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsFullScreenOnly:Z

    move/from16 v28, v0

    if-nez v28, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsPenWindowOnly:Z

    move/from16 v28, v0

    if-nez v28, :cond_12

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getCurrentGuideRect(II)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    .line 347
    const-string v28, "GuideLine"

    const-string v29, "mController.getCurrentGuideRect(x, y)"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsFullScreenOnly:Z

    move/from16 v28, v0

    if-eqz v28, :cond_13

    .line 393
    :cond_11
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 349
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getRectByZone(I)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    .line 350
    const-string v28, "GuideLine"

    const-string v29, "mController.getRectByZone(MultiWindowStyle.ZONE_UNKNOWN)"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 357
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v27

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->isDocking(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;II)Z

    move-result v28

    if-eqz v28, :cond_15

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->inDockingArea:Z

    move/from16 v28, v0

    if-nez v28, :cond_11

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayOrientation:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_14

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setX(F)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setY(F)V

    .line 367
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDockingHightlightColor:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->width()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/Rect;->height()I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->inDockingArea:Z

    .line 375
    const-string v28, "GuideLine"

    const-string v29, "Set mDocking true"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 363
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setX(F)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setY(F)V

    goto/16 :goto_9

    .line 378
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v26, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setX(F)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v27, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setY(F)V

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const v29, 0x10805d5

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->lpBody:Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->headerWidth:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v26, v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setX(F)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v27, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->headerHeight:I

    move/from16 v30, v0

    div-int/lit8 v30, v30, 0x2

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setY(F)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/ImageView;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_16

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->inDockingArea:Z

    goto/16 :goto_8

    .line 399
    :pswitch_3
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ACTION_DROP / event = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v22, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 404
    .local v22, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsFullScreenOnly:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1a

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v22, v0

    .line 435
    :goto_a
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_20

    const/4 v15, 0x1

    .line 436
    .local v15, "isSplit":Z
    :goto_b
    const/16 v17, 0xf

    .line 437
    .local v17, "oppsiteZone":I
    const/16 v18, 0x0

    .line 440
    .local v18, "oppsiteZonePackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v28, v0

    const/16 v29, 0xf

    const/16 v30, 0xa

    invoke-virtual/range {v28 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getRunningTasks(II)Ljava/util/List;

    move-result-object v24

    .line 441
    .restart local v24    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_17
    :goto_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_18

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 442
    .restart local v14    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "- info = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_21

    .line 444
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "-- equal! mFrontActivityMultiWindowStyle : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsRunningTask:Z

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 464
    .end local v14    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_18
    if-eqz v15, :cond_25

    .line 465
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v12, v0, [Ljava/lang/String;

    .line 466
    .local v12, "features":[Ljava/lang/String;
    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v11, v0, [Ljava/lang/String;

    .line 468
    .local v11, "extras":[Ljava/lang/String;
    const/16 v28, 0x0

    const-string v29, "RCSP"

    aput-object v29, v12, v28

    .line 469
    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v29

    aput-object v29, v11, v28

    .line 471
    const/16 v28, 0x1

    const-string v29, "PAIR"

    aput-object v29, v12, v28

    .line 472
    const/16 v29, 0x1

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v28

    const/16 v30, 0x3

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_24

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " | "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    :goto_d
    aput-object v28, v11, v29

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Landroid/content/Context;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v12, v11, v1}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 487
    .end local v11    # "extras":[Ljava/lang/String;
    .end local v12    # "features":[Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsRunningTask:Z

    move/from16 v28, v0

    if-eqz v28, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v28, v0

    if-ltz v28, :cond_27

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v29, v0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v31

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->moveOnlySpecificTaskToFront(ILandroid/os/Bundle;ILcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 489
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "moveOnlySpecificTaskToFront - style: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :goto_f
    if-eqz v15, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mInitCenterBarPoint:Z
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Z

    move-result v28

    if-eqz v28, :cond_19

    .line 502
    new-instance v19, Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayWidth:I

    move/from16 v28, v0

    div-int/lit8 v28, v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mDisplayHeight:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 503
    .local v19, "point":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setCenterBarPoint(ILandroid/graphics/Point;)V

    .line 504
    new-instance v20, Landroid/content/Intent;

    const-string v28, "com.sec.android.action.ARRANGE_CONTROLL_BAR"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v20, "refreshCenterbarIntent":Landroid/content/Intent;
    const-string v28, "com.sec.android.extra.CONTROL_BAR_POS"

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    .end local v19    # "point":Landroid/graphics/Point;
    .end local v20    # "refreshCenterbarIntent":Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowBody:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mRecentPenWindowHeader:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    const/16 v29, 0x8

    invoke-virtual/range {v28 .. v29}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->hide()V

    goto/16 :goto_0

    .line 406
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "isSplit":Z
    .end local v17    # "oppsiteZone":I
    .end local v18    # "oppsiteZonePackage":Ljava/lang/String;
    .end local v24    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v26

    move/from16 v2, v27

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->isDocking(II)Z
    invoke-static {v0, v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$500(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;II)Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 407
    const-string v28, "GuideLine"

    const-string v29, "isDocking"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # invokes: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->isAvailableSplitFrontActivity()Z
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$600(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Z

    move-result v28

    if-eqz v28, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFullGuideRect:Z

    move/from16 v28, v0

    if-nez v28, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsPenWindowOnly:Z

    move/from16 v28, v0

    if-nez v28, :cond_1c

    .line 409
    const/16 v28, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    if-nez v28, :cond_1b

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getCurrentGuideRect(II)Landroid/graphics/Rect;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    .line 413
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mController:Lcom/android/systemui/multiwindow/centerbarwindow/Controller;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rect:Landroid/graphics/Rect;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/android/systemui/multiwindow/centerbarwindow/Controller;->getZoneByRect(Landroid/graphics/Rect;)I

    move-result v5

    .line 414
    .local v5, "currentZone":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto/16 :goto_a

    .line 416
    .end local v5    # "currentZone":I
    :cond_1c
    const/16 v28, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    goto/16 :goto_a

    .line 419
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v26, v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rawX:I

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    move/from16 v29, v0

    div-int/lit8 v29, v29, 0x2

    sub-int v29, v27, v29

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rawY:I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rawY:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mStatusBarHeight:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1e

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mStatusBarHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rawY:I

    .line 426
    :cond_1e
    new-instance v22, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .end local v22    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v28, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(I)V

    .line 427
    .restart local v22    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/16 v28, 0x800

    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 428
    new-instance v28, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rawX:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rawY:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rawX:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingWidth:I

    move/from16 v32, v0

    add-int v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->rawY:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->floatingHeight:I

    move/from16 v33, v0

    add-int v32, v32, v33

    invoke-direct/range {v28 .. v32}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mOptionFixedSize:Z
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Z

    move-result v28

    if-eqz v28, :cond_1f

    .line 430
    const/high16 v28, 0x10000

    const/16 v29, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 432
    :cond_1f
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "not isDocking - style : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 435
    :cond_20
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 450
    .restart local v13    # "i$":Ljava/util/Iterator;
    .restart local v14    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v15    # "isSplit":Z
    .restart local v17    # "oppsiteZone":I
    .restart local v18    # "oppsiteZonePackage":Ljava/lang/String;
    .restart local v24    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->needMoveOnlySpecificTaskToFront(I)Z

    move-result v28

    if-eqz v28, :cond_22

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v29

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIsRunningTask:Z

    .line 454
    :cond_22
    if-eqz v15, :cond_17

    if-nez v18, :cond_17

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mFrontActivityMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v28

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v29

    xor-int v17, v17, v29

    move/from16 v0, v28

    move/from16 v1, v17

    if-ne v0, v1, :cond_23

    .line 457
    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c

    .line 458
    :cond_23
    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v28

    if-nez v28, :cond_17

    .line 459
    iget-object v0, v14, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_c

    .line 472
    .end local v14    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local v11    # "extras":[Ljava/lang/String;
    .restart local v12    # "features":[Ljava/lang/String;
    :cond_24
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, "|"

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_d

    .line 477
    .end local v11    # "extras":[Ljava/lang/String;
    .end local v12    # "features":[Ljava/lang/String;
    :cond_25
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v28

    if-eqz v28, :cond_26

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Landroid/content/Context;

    move-result-object v28

    const-string v29, "RCPO"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 482
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Landroid/content/Context;

    move-result-object v28

    const-string v29, "RCSP"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v28 .. v30}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 492
    :cond_27
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mContext:Landroid/content/Context;
    invoke-static/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->access$100(Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;)Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    sget-object v30, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual/range {v28 .. v30}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 494
    const-string v28, "GuideLine"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "startActivityAsUser : - style: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " : "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->mTaskId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    .line 496
    :catch_0
    move-exception v10

    .line 497
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_f

    .line 518
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v15    # "isSplit":Z
    .end local v17    # "oppsiteZone":I
    .end local v18    # "oppsiteZonePackage":Ljava/lang/String;
    .end local v22    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v24    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine$1;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/multiwindow/centerbarwindow/GuideLine;->hide()V

    goto/16 :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
