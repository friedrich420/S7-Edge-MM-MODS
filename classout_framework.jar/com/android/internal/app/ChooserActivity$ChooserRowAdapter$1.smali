.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$1;
.super Landroid/database/DataSetObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity;)V
    .registers 3

    .prologue
    .line 1071
    iput-object p1, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput-object p2, p0, val$this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 1074
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 1075
    iget-object v6, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->getServiceTargetRowCount()I

    move-result v3

    .line 1076
    .local v3, "rcount":I
    iget-object v6, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v6

    if-eqz v6, :cond_1b

    iget-object v6, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v6

    array-length v6, v6

    if-eq v6, v3, :cond_7d

    .line 1078
    :cond_1b
    iget-object v6, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v1

    .line 1079
    .local v1, "old":[Lcom/android/internal/app/ChooserActivity$RowScale;
    if-eqz v1, :cond_48

    array-length v2, v1

    .line 1080
    .local v2, "oldRCount":I
    :goto_24
    iget-object v6, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    new-array v7, v3, [Lcom/android/internal/app/ChooserActivity$RowScale;

    # setter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6, v7}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$402(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;[Lcom/android/internal/app/ChooserActivity$RowScale;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    .line 1081
    if-eqz v1, :cond_3d

    if-lez v3, :cond_3d

    .line 1082
    iget-object v6, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v6

    array-length v7, v1

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v5, v6, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1086
    :cond_3d
    move v0, v3

    .local v0, "i":I
    :goto_3e
    if-ge v0, v2, :cond_4a

    .line 1087
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    .line 1086
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .end local v0    # "i":I
    .end local v2    # "oldRCount":I
    :cond_48
    move v2, v5

    .line 1079
    goto :goto_24

    .line 1090
    .restart local v0    # "i":I
    .restart local v2    # "oldRCount":I
    :cond_4a
    move v0, v2

    :goto_4b
    if-ge v0, v3, :cond_6c

    .line 1091
    new-instance v5, Lcom/android/internal/app/ChooserActivity$RowScale;

    iget-object v6, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/app/ChooserActivity$RowScale;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V

    iget-object v6, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$500(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/app/ChooserActivity$RowScale;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v4

    .line 1093
    .local v4, "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    iget-object v5, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    aput-object v4, v5, v0

    .line 1090
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 1101
    .end local v4    # "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    :cond_6c
    move v0, v2

    :goto_6d
    if-ge v0, v3, :cond_7d

    .line 1102
    iget-object v5, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$RowScale;->startAnimation()V

    .line 1101
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 1106
    .end local v0    # "i":I
    .end local v1    # "old":[Lcom/android/internal/app/ChooserActivity$RowScale;
    .end local v2    # "oldRCount":I
    :cond_7d
    iget-object v5, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v5}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetChanged()V

    .line 1107
    return-void
.end method

.method public onInvalidated()V
    .registers 6

    .prologue
    .line 1111
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 1112
    iget-object v4, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    invoke-virtual {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->notifyDataSetInvalidated()V

    .line 1113
    iget-object v4, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 1114
    iget-object v4, p0, this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    # getter for: Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->mServiceTargetScale:[Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-static {v4}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$400(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)[Lcom/android/internal/app/ChooserActivity$RowScale;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/app/ChooserActivity$RowScale;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_18
    if-ge v1, v2, :cond_22

    aget-object v3, v0, v1

    .line 1115
    .local v3, "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$RowScale;->cancelAnimation()V

    .line 1114
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1118
    .end local v0    # "arr$":[Lcom/android/internal/app/ChooserActivity$RowScale;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "rs":Lcom/android/internal/app/ChooserActivity$RowScale;
    :cond_22
    return-void
.end method
