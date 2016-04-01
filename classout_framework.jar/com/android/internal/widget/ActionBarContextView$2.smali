.class Lcom/android/internal/widget/ActionBarContextView$2;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarContextView;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, this$0:Lcom/android/internal/widget/ActionBarContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 22
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 264
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [I

    .line 265
    .local v11, "screenPos":[I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 266
    .local v3, "contentFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/internal/widget/ActionBarContextView;->getLocationOnScreen([I)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ActionBarContextView;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 270
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x1050017

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 271
    .local v13, "statusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarContextView;->getWidth()I

    move-result v15

    .line 272
    .local v15, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarContextView;->getHeight()I

    move-result v7

    .line 273
    .local v7, "height":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v12, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 274
    .local v12, "screenWidth":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v10, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 275
    .local v10, "screenHeight":I
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    .line 279
    .local v5, "density":F
    sget-boolean v18, Lcom/android/internal/widget/AbsActionBarView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v18, :cond_d5

    .line 280
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 285
    .local v2, "cheatSheet":Landroid/widget/Toast;
    :goto_80
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e4

    .line 286
    const/16 v6, 0x35

    .line 292
    .local v6, "gravity":I
    :goto_8e
    const/16 v18, 0x1

    aget v18, v11, v18

    sub-int v9, v18, v13

    .line 293
    .local v9, "offsetY":I
    const/16 v18, 0x0

    aget v18, v11, v18

    add-int v19, v7, v9

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v6, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/internal/widget/ActionBarContextView;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/internal/widget/ActionBarContextView;->access$000(Lcom/android/internal/widget/ActionBarContextView;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    .line 297
    .local v8, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v8, :cond_cf

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v18

    if-eqz v18, :cond_cf

    .line 298
    const/high16 v18, 0x40800000    # 4.0f

    mul-float v18, v18, v5

    move/from16 v0, v18

    float-to-int v14, v0

    .line 299
    .local v14, "tempToastHeight":I
    const/16 v18, 0x0

    aget v16, v11, v18

    .line 300
    .local v16, "xOffset":I
    const/16 v18, 0x1

    aget v18, v11, v18

    add-int v17, v18, v7

    .line 303
    .local v17, "yOffset":I
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v6, v0, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 306
    .end local v14    # "tempToastHeight":I
    .end local v16    # "xOffset":I
    .end local v17    # "yOffset":I
    :cond_cf
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 307
    const/16 v18, 0x1

    return v18

    .line 282
    .end local v2    # "cheatSheet":Landroid/widget/Toast;
    .end local v6    # "gravity":I
    .end local v8    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v9    # "offsetY":I
    :cond_d5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .restart local v2    # "cheatSheet":Landroid/widget/Toast;
    goto :goto_80

    .line 289
    :cond_e4
    const/16 v6, 0x33

    .restart local v6    # "gravity":I
    goto :goto_8e
.end method
