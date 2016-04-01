.class public Lcom/android/internal/app/AlertController$ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ButtonBarLayout"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1295
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1296
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1291
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1292
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1287
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1288
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1282
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1283
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 14
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x1

    const/high16 v9, -0x80000000

    .line 1300
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1302
    invoke-virtual {p0}, getChildCount()I

    move-result v3

    .line 1303
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "beforeChildrenWidth":I
    const/4 v0, 0x0

    .line 1304
    .local v0, "afterChildrenWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, getPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v8

    sub-int v6, v7, v8

    .line 1305
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-virtual {p0}, getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v8

    sub-int v4, v7, v8

    .line 1307
    .local v4, "height":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2b
    if-ge v5, v3, :cond_55

    .line 1308
    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1309
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_52

    instance-of v7, v2, Landroid/widget/Space;

    if-nez v7, :cond_52

    .line 1310
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v1, v7

    .line 1311
    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/view/View;->measure(II)V

    .line 1313
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v0, v7

    .line 1307
    :cond_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 1317
    .end local v2    # "child":Landroid/view/View;
    :cond_55
    if-lt v1, v0, :cond_59

    if-ge v6, v0, :cond_66

    .line 1318
    :cond_59
    invoke-virtual {p0}, getOrientation()I

    move-result v7

    if-eq v7, v10, :cond_62

    .line 1319
    invoke-virtual {p0, v10}, setOrientation(I)V

    .line 1325
    :cond_62
    :goto_62
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 1326
    return-void

    .line 1321
    :cond_66
    invoke-virtual {p0}, getOrientation()I

    move-result v7

    if-eqz v7, :cond_62

    .line 1322
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, setOrientation(I)V

    goto :goto_62
.end method
