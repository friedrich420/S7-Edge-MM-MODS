.class Landroid/widget/Spinner$DropdownPopup;
.super Landroid/widget/ListPopupWindow;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mHintText:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 1271
    iput-object p1, p0, this$0:Landroid/widget/Spinner;

    .line 1272
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1274
    invoke-virtual {p0, p1}, setAnchorView(Landroid/view/View;)V

    .line 1275
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setModal(Z)V

    .line 1276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setPromptPosition(I)V

    .line 1277
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/Spinner$DropdownPopup$1;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/widget/Spinner;)V

    invoke-virtual {p0, v0}, setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1286
    return-void
.end method

.method static synthetic access$300(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1266
    iget-object v0, p0, mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$801(Landroid/widget/Spinner$DropdownPopup;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/Spinner$DropdownPopup;

    .prologue
    .line 1266
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    return-void
.end method


# virtual methods
.method computeContentWidth()V
    .registers 12

    .prologue
    .line 1304
    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1305
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x0

    .line 1308
    .local v4, "hOffset":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1309
    .local v1, "contentFrame":Landroid/graphics/Rect;
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v8, v1}, Landroid/widget/Spinner;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1312
    if-eqz v0, :cond_a8

    .line 1313
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1314
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_9e

    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v4, v8, Landroid/graphics/Rect;->right:I

    .line 1319
    :goto_2a
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getPaddingLeft()I

    move-result v5

    .line 1320
    .local v5, "spinnerPaddingLeft":I
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getPaddingRight()I

    move-result v6

    .line 1321
    .local v6, "spinnerPaddingRight":I
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->getWidth()I

    move-result v7

    .line 1323
    .local v7, "spinnerWidth":I
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_c6

    .line 1324
    iget-object v9, p0, this$0:Landroid/widget/Spinner;

    iget-object v8, p0, mAdapter:Landroid/widget/ListAdapter;

    check-cast v8, Landroid/widget/SpinnerAdapter;

    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v2

    .line 1329
    .local v2, "contentWidth":I
    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v9

    iget-object v9, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v3, v8, v9

    .line 1331
    .local v3, "contentWidthLimit":I
    if-le v2, v3, :cond_6c

    .line 1332
    move v2, v3

    .line 1335
    :cond_6c
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v8}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 1336
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8}, setContentWidth(I)V

    .line 1347
    .end local v2    # "contentWidth":I
    .end local v3    # "contentWidthLimit":I
    :goto_7b
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v8}, Landroid/widget/Spinner;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_dc

    .line 1348
    sub-int v8, v7, v6

    invoke-virtual {p0}, getWidth()I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1353
    :goto_8b
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v8}, Landroid/widget/Spinner;->access$500(Landroid/widget/Spinner;)Z

    move-result v8

    if-eqz v8, :cond_de

    .line 1354
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mDropdownHorizontalOffset:I
    invoke-static {v8}, Landroid/widget/Spinner;->access$600(Landroid/widget/Spinner;)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, setHorizontalOffset(I)V

    .line 1358
    :goto_9d
    return-void

    .line 1314
    .end local v5    # "spinnerPaddingLeft":I
    .end local v6    # "spinnerPaddingRight":I
    .end local v7    # "spinnerWidth":I
    :cond_9e
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v4, v8

    goto :goto_2a

    .line 1316
    :cond_a8
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v8

    iget-object v9, p0, this$0:Landroid/widget/Spinner;

    # getter for: Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v9}, Landroid/widget/Spinner;->access$400(Landroid/widget/Spinner;)Landroid/graphics/Rect;

    move-result-object v9

    const/4 v10, 0x0

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iput v10, v8, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2a

    .line 1338
    .restart local v2    # "contentWidth":I
    .restart local v3    # "contentWidthLimit":I
    .restart local v5    # "spinnerPaddingLeft":I
    .restart local v6    # "spinnerPaddingRight":I
    .restart local v7    # "spinnerWidth":I
    :cond_bb
    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {p0, v8}, setContentWidth(I)V

    goto :goto_7b

    .line 1341
    .end local v2    # "contentWidth":I
    .end local v3    # "contentWidthLimit":I
    :cond_c6
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d4

    .line 1342
    sub-int v8, v7, v5

    sub-int/2addr v8, v6

    invoke-virtual {p0, v8}, setContentWidth(I)V

    goto :goto_7b

    .line 1344
    :cond_d4
    iget-object v8, p0, this$0:Landroid/widget/Spinner;

    iget v8, v8, Landroid/widget/Spinner;->mDropDownWidth:I

    invoke-virtual {p0, v8}, setContentWidth(I)V

    goto :goto_7b

    .line 1350
    :cond_dc
    add-int/2addr v4, v5

    goto :goto_8b

    .line 1356
    :cond_de
    invoke-virtual {p0, v4}, setHorizontalOffset(I)V

    goto :goto_9d
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1295
    iget-object v0, p0, mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1290
    invoke-super {p0, p1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1291
    iput-object p1, p0, mAdapter:Landroid/widget/ListAdapter;

    .line 1292
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1300
    iput-object p1, p0, mHintText:Ljava/lang/CharSequence;

    .line 1301
    return-void
.end method

.method public show(II)V
    .registers 8
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 1361
    invoke-virtual {p0}, isShowing()Z

    move-result v3

    .line 1363
    .local v3, "wasShowing":Z
    invoke-virtual {p0}, computeContentWidth()V

    .line 1365
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, setInputMethodMode(I)V

    .line 1366
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1367
    invoke-virtual {p0}, getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1368
    .local v1, "listView":Landroid/widget/ListView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1369
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1370
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1371
    iget-object v4, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {p0, v4}, setSelection(I)V

    .line 1373
    if-eqz v3, :cond_28

    .line 1408
    :cond_27
    :goto_27
    return-void

    .line 1382
    :cond_28
    iget-object v4, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1383
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v2, :cond_27

    .line 1384
    new-instance v0, Landroid/widget/Spinner$DropdownPopup$2;

    invoke-direct {v0, p0}, Landroid/widget/Spinner$DropdownPopup$2;-><init>(Landroid/widget/Spinner$DropdownPopup;)V

    .line 1398
    .local v0, "layoutListener":Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1399
    new-instance v4, Landroid/widget/Spinner$DropdownPopup$3;

    invoke-direct {v4, p0, v0}, Landroid/widget/Spinner$DropdownPopup$3;-><init>(Landroid/widget/Spinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p0, v4}, setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    goto :goto_27
.end method
