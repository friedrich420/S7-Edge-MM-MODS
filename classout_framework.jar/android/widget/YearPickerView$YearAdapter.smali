.class Landroid/widget/YearPickerView$YearAdapter;
.super Landroid/widget/BaseAdapter;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/YearPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "YearAdapter"
.end annotation


# static fields
.field private static final ITEM_LAYOUT:I = 0x1090169

.field private static final ITEM_TEXT_ACTIVATED_APPEARANCE:I = 0x103041d

.field private static final ITEM_TEXT_APPEARANCE:I = 0x103041c


# instance fields
.field private mActivatedYear:I

.field private mCount:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mMinYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 128
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 129
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 153
    iget v0, p0, mCount:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Integer;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 158
    invoke-virtual {p0, p1}, getYearForPosition(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 163
    invoke-virtual {p0, p1}, getYearForPosition(I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public getPositionForYear(I)I
    .registers 3
    .param p1, "year"    # I

    .prologue
    .line 167
    iget v0, p0, mMinYear:I

    sub-int v0, p1, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 182
    if-nez p2, :cond_35

    move v1, v0

    .line 183
    .local v1, "hasNewView":Z
    :goto_5
    if-eqz v1, :cond_37

    .line 184
    iget-object v6, p0, mInflater:Landroid/view/LayoutInflater;

    const v7, 0x1090169

    invoke-virtual {v6, v7, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 189
    .local v3, "v":Landroid/widget/TextView;
    :goto_12
    invoke-virtual {p0, p1}, getYearForPosition(I)I

    move-result v4

    .line 190
    .local v4, "year":I
    iget v6, p0, mActivatedYear:I

    if-ne v6, v4, :cond_3b

    .line 192
    .local v0, "activated":Z
    :goto_1a
    if-nez v1, :cond_22

    invoke-virtual {v3}, Landroid/widget/TextView;->isActivated()Z

    move-result v5

    if-eq v5, v0, :cond_2d

    .line 194
    :cond_22
    if-eqz v0, :cond_3d

    .line 195
    const v2, 0x103041d

    .line 199
    .local v2, "textAppearanceResId":I
    :goto_27
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 200
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 203
    .end local v2    # "textAppearanceResId":I
    :cond_2d
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-object v3

    .end local v0    # "activated":Z
    .end local v1    # "hasNewView":Z
    .end local v3    # "v":Landroid/widget/TextView;
    .end local v4    # "year":I
    :cond_35
    move v1, v5

    .line 182
    goto :goto_5

    .restart local v1    # "hasNewView":Z
    :cond_37
    move-object v3, p2

    .line 186
    check-cast v3, Landroid/widget/TextView;

    .restart local v3    # "v":Landroid/widget/TextView;
    goto :goto_12

    .restart local v4    # "year":I
    :cond_3b
    move v0, v5

    .line 190
    goto :goto_1a

    .line 197
    .restart local v0    # "activated":Z
    :cond_3d
    const v2, 0x103041c

    .restart local v2    # "textAppearanceResId":I
    goto :goto_27
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public getYearForPosition(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 171
    iget v0, p0, mMinYear:I

    add-int/2addr v0, p1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 229
    const/4 v0, 0x1

    return v0
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 6
    .param p1, "minDate"    # Ljava/util/Calendar;
    .param p2, "maxDate"    # Ljava/util/Calendar;

    .prologue
    const/4 v2, 0x1

    .line 132
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 133
    .local v1, "minYear":I
    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v0, v2, 0x1

    .line 135
    .local v0, "count":I
    iget v2, p0, mMinYear:I

    if-ne v2, v1, :cond_14

    iget v2, p0, mCount:I

    if-eq v2, v0, :cond_1b

    .line 136
    :cond_14
    iput v1, p0, mMinYear:I

    .line 137
    iput v0, p0, mCount:I

    .line 138
    invoke-virtual {p0}, notifyDataSetInvalidated()V

    .line 140
    :cond_1b
    return-void
.end method

.method public setSelection(I)Z
    .registers 3
    .param p1, "year"    # I

    .prologue
    .line 143
    iget v0, p0, mActivatedYear:I

    if-eq v0, p1, :cond_b

    .line 144
    iput p1, p0, mActivatedYear:I

    .line 145
    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 146
    const/4 v0, 0x1

    .line 148
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
