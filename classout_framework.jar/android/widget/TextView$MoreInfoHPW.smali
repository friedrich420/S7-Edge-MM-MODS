.class Landroid/widget/TextView$MoreInfoHPW;
.super Landroid/widget/HoverPopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreInfoHPW"
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ID_INFOVIEW:I = 0x7011214

.field private static final TAG:Ljava/lang/String; = "MoreInfoHPW"


# instance fields
.field private mInitialMaxLine:I

.field private mLastOrientation:I

.field mParentTextView:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/view/View;I)V
    .registers 6
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "type"    # I

    .prologue
    .line 12165
    iput-object p1, p0, this$0:Landroid/widget/TextView;

    .line 12166
    invoke-direct {p0, p2, p3}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 12161
    const/4 v0, 0x0

    iput v0, p0, mLastOrientation:I

    .line 12162
    const/4 v0, 0x7

    iput v0, p0, mInitialMaxLine:I

    .line 12163
    const/4 v0, 0x0

    iput-object v0, p0, mParentTextView:Landroid/widget/TextView;

    .line 12167
    iget-object v0, p0, mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    .line 12168
    iget-object v0, p0, mParentView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mParentTextView:Landroid/widget/TextView;

    .line 12176
    :goto_1a
    return-void

    .line 12171
    :cond_1b
    const-string v0, "MoreInfoHPW"

    const-string v1, "Parent view is not a TextView"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12172
    new-instance v0, Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$1800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mParentTextView:Landroid/widget/TextView;

    goto :goto_1a
.end method


# virtual methods
.method public isHoverPopupPossible()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 12198
    const/4 v1, 0x1

    .line 12200
    .local v1, "ret":Z
    iget v3, p0, mPopupType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_41

    .line 12201
    iget-boolean v3, p0, mShowPopupAlways:Z

    if-eqz v3, :cond_c

    .line 12236
    :goto_b
    return v2

    .line 12205
    :cond_c
    const/4 v1, 0x0

    .line 12207
    iget-object v3, p0, mContentText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 12210
    const/4 v1, 0x1

    :cond_16
    :goto_16
    move v2, v1

    .line 12236
    goto :goto_b

    .line 12211
    :cond_18
    iget-object v3, p0, mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    if-ne v3, v2, :cond_2a

    iget-object v2, p0, mParentTextView:Landroid/widget/TextView;

    # invokes: Landroid/widget/TextView;->canMarquee()Z
    invoke-static {v2}, Landroid/widget/TextView;->access$1900(Landroid/widget/TextView;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 12212
    const/4 v1, 0x1

    goto :goto_16

    .line 12213
    :cond_2a
    iget-object v2, p0, mParentTextView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 12214
    iget-object v2, p0, mParentTextView:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mLayout:Landroid/text/Layout;
    invoke-static {v2}, Landroid/widget/TextView;->access$1200(Landroid/widget/TextView;)Landroid/text/Layout;

    move-result-object v0

    .line 12217
    .local v0, "l":Landroid/text/Layout;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-lez v2, :cond_16

    .line 12218
    const/4 v1, 0x1

    goto :goto_16

    .line 12234
    .end local v0    # "l":Landroid/text/Layout;
    :cond_41
    invoke-super {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v1

    goto :goto_16
.end method

.method protected makeDefaultContentView()V
    .registers 9

    .prologue
    const v7, 0x7011214

    .line 12241
    const/4 v4, 0x0

    .line 12243
    .local v4, "v":Landroid/widget/TextView;
    iget-object v5, p0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$2000(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 12245
    .local v2, "orientation":I
    iget-object v5, p0, mContentView:Landroid/view/View;

    if-eqz v5, :cond_24

    iget-object v5, p0, mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v7, :cond_24

    iget v5, p0, mLastOrientation:I

    if-eq v2, v5, :cond_8e

    .line 12250
    :cond_24
    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v5, :cond_32

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v6, "gt5note"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    :cond_32
    invoke-virtual {p0}, getUspLevel()I

    move-result v5

    const/4 v6, 0x3

    if-le v5, v6, :cond_83

    .line 12251
    :cond_39
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$2100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x103012b

    invoke-direct {v0, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 12252
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 12256
    .end local v0    # "context":Landroid/content/Context;
    .local v1, "inflater":Landroid/view/LayoutInflater;
    :goto_4b
    const v5, 0x1090077

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4    # "v":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .line 12258
    .restart local v4    # "v":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 12259
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setId(I)V

    .line 12260
    invoke-virtual {v4}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    iput v5, p0, mInitialMaxLine:I

    .line 12262
    iput v2, p0, mLastOrientation:I

    .line 12269
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_64
    iget-object v5, p0, mContentText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_93

    iget-object v3, p0, mContentText:Ljava/lang/CharSequence;

    .line 12271
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_6e
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9a

    .line 12272
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12273
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 12278
    :goto_80
    iput-object v4, p0, mContentView:Landroid/view/View;

    .line 12279
    return-void

    .line 12254
    .end local v3    # "text":Ljava/lang/CharSequence;
    :cond_83
    iget-object v5, p0, this$0:Landroid/widget/TextView;

    # getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/widget/TextView;->access$2200(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .restart local v1    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_4b

    .line 12265
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_8e
    iget-object v4, p0, mContentView:Landroid/view/View;

    .end local v4    # "v":Landroid/widget/TextView;
    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "v":Landroid/widget/TextView;
    goto :goto_64

    .line 12269
    :cond_93
    iget-object v5, p0, mParentTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_6e

    .line 12275
    .restart local v3    # "text":Ljava/lang/CharSequence;
    :cond_9a
    const/4 v4, 0x0

    goto :goto_80
.end method

.method protected setInstanceByType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 12180
    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->setInstanceByType(I)V

    .line 12181
    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 12182
    const/16 v0, 0x3231

    iput v0, p0, mPopupGravity:I

    .line 12184
    const v0, 0x10304f8

    iput v0, p0, mAnimationStyle:I

    .line 12185
    const/16 v0, 0x12c

    iput v0, p0, mHoverDetectTimeMS:I

    .line 12194
    :cond_13
    return-void
.end method
