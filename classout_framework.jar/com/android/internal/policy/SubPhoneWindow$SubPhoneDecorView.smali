.class final Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView;
.super Lcom/android/internal/policy/PhoneWindow$DecorView;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/SubPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubPhoneDecorView"
.end annotation


# instance fields
.field private mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

.field final synthetic this$0:Lcom/android/internal/policy/SubPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/SubPhoneWindow;Landroid/content/Context;I)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    .line 153
    iput-object p1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    .line 154
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    .line 155
    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, -0x1

    .line 224
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mIsBorder:Z
    invoke-static {v1}, Lcom/android/internal/policy/SubPhoneWindow;->access$200(Lcom/android/internal/policy/SubPhoneWindow;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 225
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/SubPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 226
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/SubPhoneWindow;->access$000(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_24

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v1, v3, :cond_24

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v1, v3, :cond_2b

    .line 229
    :cond_24
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/policy/SubPhoneWindow;->mIsBorder:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/SubPhoneWindow;->access$202(Lcom/android/internal/policy/SubPhoneWindow;Z)Z

    .line 242
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2a
    :goto_2a
    return-void

    .line 232
    .restart local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_2b
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_62

    .line 240
    :goto_38
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;
    invoke-static {v1}, Lcom/android/internal/policy/SubPhoneWindow;->access$300(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/android/internal/policy/multiwindow/Border;

    move-result-object v1

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/internal/policy/multiwindow/Border;->drawFocusBorder(Landroid/graphics/Canvas;II)V

    goto :goto_2a

    .line 234
    :pswitch_4a
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;
    invoke-static {v1}, Lcom/android/internal/policy/SubPhoneWindow;->access$300(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/android/internal/policy/multiwindow/Border;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/Border;->setDrawOption(I)V

    goto :goto_38

    .line 237
    :pswitch_56
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;
    invoke-static {v1}, Lcom/android/internal/policy/SubPhoneWindow;->access$300(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/android/internal/policy/multiwindow/Border;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/multiwindow/Border;->setDrawOption(I)V

    goto :goto_38

    .line 232
    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_56
    .end packed-switch
.end method

.method private initResizeHelper()V
    .registers 31

    .prologue
    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # invokes: Lcom/android/internal/policy/SubPhoneWindow;->getStackBoxBounds()Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/SubPhoneWindow;->access$400(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v4

    .line 246
    .local v4, "stackBounds":Landroid/graphics/Rect;
    if-nez v4, :cond_b

    .line 315
    :goto_a
    return-void

    .line 249
    :cond_b
    const/4 v8, 0x0

    .line 250
    .local v8, "minWidth":I
    const/4 v9, 0x0

    .line 251
    .local v9, "minHeight":I
    const/4 v10, 0x0

    .line 252
    .local v10, "maxWidth":I
    const/4 v11, 0x0

    .line 253
    .local v11, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e010d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v24, v2, v3

    .line 254
    .local v24, "maxSizeRatio":F
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a7

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/SubPhoneWindow;->access$500(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/SubPhoneWindow;->access$500(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 262
    :goto_4c
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->appWidth:I

    move/from16 v26, v0

    .line 263
    .local v26, "screenWidth":I
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->appHeight:I

    move/from16 v25, v0

    .line 265
    .local v25, "screenHeight":I
    move/from16 v0, v26

    int-to-float v2, v0

    mul-float v2, v2, v24

    float-to-int v10, v2

    .line 266
    move/from16 v0, v25

    int-to-float v2, v0

    mul-float v2, v2, v24

    float-to-int v11, v2

    .line 268
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v26

    int-to-float v3, v0

    div-float v23, v2, v3

    .line 269
    .local v23, "hScale":F
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move/from16 v0, v25

    int-to-float v3, v0

    div-float v29, v2, v3

    .line 271
    .local v29, "vScale":F
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 272
    .local v5, "resizeBounds":Landroid/graphics/Rect;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v7}, Lcom/android/internal/policy/SubPhoneWindow;->access$700(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(ILandroid/os/IBinder;)Landroid/view/DisplayInfo;

    move-result-object v22

    .line 274
    .local v22, "displayInfo":Landroid/view/DisplayInfo;
    if-nez v22, :cond_c0

    .line 275
    const-string v2, "SubPhoneWindow"

    const-string v3, "Could not get display information from display manager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 258
    .end local v5    # "resizeBounds":Landroid/graphics/Rect;
    .end local v22    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v23    # "hScale":F
    .end local v25    # "screenHeight":I
    .end local v26    # "screenWidth":I
    .end local v29    # "vScale":F
    :cond_a7
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/SubPhoneWindow;->access$600(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/internal/policy/SubPhoneWindow;->access$600(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    goto :goto_4c

    .line 279
    .restart local v5    # "resizeBounds":Landroid/graphics/Rect;
    .restart local v22    # "displayInfo":Landroid/view/DisplayInfo;
    .restart local v23    # "hScale":F
    .restart local v25    # "screenHeight":I
    .restart local v26    # "screenWidth":I
    .restart local v29    # "vScale":F
    :cond_c0
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int v27, v2, v3

    .line 280
    .local v27, "test":I
    move/from16 v0, v27

    int-to-float v2, v0

    mul-float v28, v2, v23

    .line 281
    .local v28, "test2":F
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v23

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 282
    .local v21, "absWidth":I
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/DisplayInfo;->appHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v29

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v20

    .line 284
    .local v20, "absHeight":I
    move-object/from16 v0, v22

    iget v2, v0, Landroid/view/DisplayInfo;->rotation:I

    packed-switch v2, :pswitch_data_144

    .line 290
    :pswitch_fc
    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v20

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    .line 296
    :goto_102
    new-instance v6, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v6, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    .local v6, "paddingRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    if-nez v2, :cond_130

    .line 299
    new-instance v2, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v7, Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView$1;-><init>(Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView;)V

    invoke-direct/range {v2 .. v11}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;-><init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    goto/16 :goto_a

    .line 287
    .end local v6    # "paddingRect":Landroid/graphics/Rect;
    :pswitch_129
    iget v2, v5, Landroid/graphics/Rect;->right:I

    add-int v2, v2, v21

    iput v2, v5, Landroid/graphics/Rect;->right:I

    goto :goto_102

    .line 313
    .restart local v6    # "paddingRect":Landroid/graphics/Rect;
    :cond_130
    move-object/from16 v0, p0

    iget-object v12, v0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v12 .. v19}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    goto/16 :goto_a

    .line 284
    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_129
        :pswitch_fc
        :pswitch_129
    .end packed-switch
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 197
    invoke-direct {p0, p1}, drawBorder(Landroid/graphics/Canvas;)V

    .line 198
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    iget-object v0, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/SubPhoneWindow;->access$000(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v0}, Lcom/android/internal/policy/SubPhoneWindow;->access$000(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 203
    iget-object v0, p0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_29

    .line 204
    :cond_26
    invoke-direct {p0}, initResizeHelper()V

    .line 206
    :cond_29
    iget-object v0, p0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->dispathcHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 207
    const/4 v0, 0x1

    .line 210
    :goto_32
    return v0

    :cond_33
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_32
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 160
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/SubPhoneWindow;->access$000(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # getter for: Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/SubPhoneWindow;->access$000(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_4e

    .line 185
    :cond_22
    :goto_22
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_26
    return v0

    .line 163
    :pswitch_27
    invoke-direct {p0}, initResizeHelper()V

    .line 164
    iget-object v1, p0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->begin(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 165
    iget-object v1, p0, this$0:Lcom/android/internal/policy/SubPhoneWindow;

    # invokes: Lcom/android/internal/policy/SubPhoneWindow;->forceHideInputMethod()Z
    invoke-static {v1}, Lcom/android/internal/policy/SubPhoneWindow;->access$100(Lcom/android/internal/policy/SubPhoneWindow;)Z

    goto :goto_26

    .line 171
    :pswitch_38
    iget-object v1, p0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    if-nez v1, :cond_3f

    .line 172
    invoke-direct {p0}, initResizeHelper()V

    .line 174
    :cond_3f
    iget-object v1, p0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->move(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_26

    .line 181
    :pswitch_48
    iget-object v0, p0, mResizeHelper:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;->finish(Landroid/view/MotionEvent;)Z

    goto :goto_22

    .line 161
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_27
        :pswitch_48
        :pswitch_38
        :pswitch_48
    .end packed-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->draw(Landroid/graphics/Canvas;)V

    .line 191
    invoke-direct {p0, p1}, drawBorder(Landroid/graphics/Canvas;)V

    .line 192
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onAttachedToWindow()V

    .line 216
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 220
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    return-void
.end method
