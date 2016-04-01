.class Landroid/widget/DayPickerPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "DayPickerPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;,
        Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final MONTHS_IN_YEAR:I = 0xc


# instance fields
.field private mCalendarTextColor:Landroid/content/res/ColorStateList;

.field private final mCalendarViewId:I

.field private mCount:I

.field private mDayHighlightColor:Landroid/content/res/ColorStateList;

.field private mDayOfWeekTextAppearance:I

.field private mDaySelectorColor:Landroid/content/res/ColorStateList;

.field private mDayTextAppearance:I

.field private mFirstDayOfWeek:I

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/widget/DayPickerPagerAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutResId:I

.field private final mMaxDate:Ljava/util/Calendar;

.field private final mMinDate:Ljava/util/Calendar;

.field private mMonthTextAppearance:I

.field private final mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

.field private mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

.field private mSelectedDay:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResId"    # I
    .param p3, "calendarViewId"    # I

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, mMinDate:Ljava/util/Calendar;

    .line 43
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, mMaxDate:Ljava/util/Calendar;

    .line 45
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, mItems:Landroid/util/SparseArray;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, mSelectedDay:Ljava/util/Calendar;

    .line 290
    new-instance v1, Landroid/widget/DayPickerPagerAdapter$1;

    invoke-direct {v1, p0}, Landroid/widget/DayPickerPagerAdapter$1;-><init>(Landroid/widget/DayPickerPagerAdapter;)V

    iput-object v1, p0, mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    .line 68
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, mInflater:Landroid/view/LayoutInflater;

    .line 69
    iput p2, p0, mLayoutResId:I

    .line 70
    iput p3, p0, mCalendarViewId:I

    .line 72
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101042c

    aput v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 74
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, mDayHighlightColor:Landroid/content/res/ColorStateList;

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/DayPickerPagerAdapter;

    .prologue
    .line 39
    iget-object v0, p0, mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    return-object v0
.end method

.method private getMonthForPosition(I)I
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 189
    iget-object v0, p0, mMinDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0xc

    return v0
.end method

.method private getPositionForDay(Ljava/util/Calendar;)I
    .registers 9
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 198
    if-nez p1, :cond_6

    .line 199
    const/4 v1, -0x1

    .line 205
    :goto_5
    return v1

    .line 202
    :cond_6
    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v2, v3, v4

    .line 203
    .local v2, "yearOffset":I
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int v0, v3, v4

    .line 204
    .local v0, "monthOffset":I
    mul-int/lit8 v3, v2, 0xc

    add-int v1, v3, v0

    .line 205
    .local v1, "position":I
    goto :goto_5
.end method

.method private getYearForPosition(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 193
    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p1

    div-int/lit8 v0, v1, 0xc

    .line 194
    .local v0, "yearOffset":I
    iget-object v1, p0, mMinDate:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 269
    move-object v0, p3

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 270
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 272
    iget-object v1, p0, mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 273
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, mCount:I

    return v0
.end method

.method getDayOfWeekTextAppearance()I
    .registers 2

    .prologue
    .line 166
    iget v0, p0, mDayOfWeekTextAppearance:I

    return v0
.end method

.method getDayTextAppearance()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, mDayTextAppearance:I

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, mFirstDayOfWeek:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 277
    move-object v0, p1

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 278
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->position:I

    return v1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 283
    iget-object v1, p0, mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v0, v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 284
    .local v0, "v":Landroid/widget/SimpleMonthView;
    if-eqz v0, :cond_11

    .line 285
    invoke-virtual {v0}, Landroid/widget/SimpleMonthView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 287
    :goto_10
    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 14
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 210
    iget-object v4, p0, mInflater:Landroid/view/LayoutInflater;

    iget v9, p0, mLayoutResId:I

    const/4 v10, 0x0

    invoke-virtual {v4, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 212
    .local v8, "itemView":Landroid/view/View;
    iget v4, p0, mCalendarViewId:I

    invoke-virtual {v8, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SimpleMonthView;

    .line 213
    .local v0, "v":Landroid/widget/SimpleMonthView;
    iget-object v4, p0, mOnDayClickListener:Landroid/widget/SimpleMonthView$OnDayClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setOnDayClickListener(Landroid/widget/SimpleMonthView$OnDayClickListener;)V

    .line 214
    iget v4, p0, mMonthTextAppearance:I

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setMonthTextAppearance(I)V

    .line 215
    iget v4, p0, mDayOfWeekTextAppearance:I

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextAppearance(I)V

    .line 216
    iget v4, p0, mDayTextAppearance:I

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayTextAppearance(I)V

    .line 218
    iget-object v4, p0, mDaySelectorColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_2e

    .line 219
    iget-object v4, p0, mDaySelectorColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDaySelectorColor(Landroid/content/res/ColorStateList;)V

    .line 222
    :cond_2e
    iget-object v4, p0, mDayHighlightColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_37

    .line 223
    iget-object v4, p0, mDayHighlightColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayHighlightColor(Landroid/content/res/ColorStateList;)V

    .line 226
    :cond_37
    iget-object v4, p0, mCalendarTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_4a

    .line 227
    iget-object v4, p0, mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setMonthTextColor(Landroid/content/res/ColorStateList;)V

    .line 228
    iget-object v4, p0, mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V

    .line 229
    iget-object v4, p0, mCalendarTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v4}, Landroid/widget/SimpleMonthView;->setDayTextColor(Landroid/content/res/ColorStateList;)V

    .line 232
    :cond_4a
    invoke-direct {p0, p2}, getMonthForPosition(I)I

    move-result v2

    .line 233
    .local v2, "month":I
    invoke-direct {p0, p2}, getYearForPosition(I)I

    move-result v3

    .line 236
    .local v3, "year":I
    iget-object v4, p0, mSelectedDay:Ljava/util/Calendar;

    if-eqz v4, :cond_ab

    iget-object v4, p0, mSelectedDay:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_ab

    .line 237
    iget-object v4, p0, mSelectedDay:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 243
    .local v1, "selectedDay":I
    :goto_66
    iget-object v4, p0, mMinDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_ad

    iget-object v4, p0, mMinDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_ad

    .line 244
    iget-object v4, p0, mMinDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 250
    .local v5, "enabledDayRangeStart":I
    :goto_7f
    iget-object v4, p0, mMaxDate:Ljava/util/Calendar;

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v2, :cond_af

    iget-object v4, p0, mMaxDate:Ljava/util/Calendar;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v3, :cond_af

    .line 251
    iget-object v4, p0, mMaxDate:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 256
    .local v6, "enabledDayRangeEnd":I
    :goto_98
    iget v4, p0, mFirstDayOfWeek:I

    invoke-virtual/range {v0 .. v6}, Landroid/widget/SimpleMonthView;->setMonthParams(IIIIII)V

    .line 259
    new-instance v7, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    invoke-direct {v7, p2, v8, v0}, Landroid/widget/DayPickerPagerAdapter$ViewHolder;-><init>(ILandroid/view/View;Landroid/widget/SimpleMonthView;)V

    .line 260
    .local v7, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v4, p0, mItems:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 262
    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    return-object v7

    .line 239
    .end local v1    # "selectedDay":I
    .end local v5    # "enabledDayRangeStart":I
    .end local v6    # "enabledDayRangeEnd":I
    .end local v7    # "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    :cond_ab
    const/4 v1, -0x1

    .restart local v1    # "selectedDay":I
    goto :goto_66

    .line 246
    :cond_ad
    const/4 v5, 0x1

    .restart local v5    # "enabledDayRangeStart":I
    goto :goto_7f

    .line 253
    :cond_af
    const/16 v6, 0x1f

    .restart local v6    # "enabledDayRangeEnd":I
    goto :goto_98
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 184
    move-object v0, p2

    check-cast v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 185
    .local v0, "holder":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    iget-object v1, v0, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->container:Landroid/view/View;

    if-ne p1, v1, :cond_9

    const/4 v1, 0x1

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method setCalendarTextColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "calendarTextColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 150
    iput-object p1, p0, mCalendarTextColor:Landroid/content/res/ColorStateList;

    .line 151
    return-void
.end method

.method setDayOfWeekTextAppearance(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 162
    iput p1, p0, mDayOfWeekTextAppearance:I

    .line 163
    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "selectorColor"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 154
    iput-object p1, p0, mDaySelectorColor:Landroid/content/res/ColorStateList;

    .line 155
    return-void
.end method

.method setDayTextAppearance(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 170
    iput p1, p0, mDayTextAppearance:I

    .line 171
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 6
    .param p1, "weekStart"    # I

    .prologue
    .line 97
    iput p1, p0, mFirstDayOfWeek:I

    .line 100
    iget-object v3, p0, mItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 101
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 102
    iget-object v3, p0, mItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    iget-object v2, v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    .line 103
    .local v2, "monthView":Landroid/widget/SimpleMonthView;
    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->setFirstDayOfWeek(I)V

    .line 101
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 105
    .end local v2    # "monthView":Landroid/widget/SimpleMonthView;
    :cond_1b
    return-void
.end method

.method setMonthTextAppearance(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 158
    iput p1, p0, mMonthTextAppearance:I

    .line 159
    return-void
.end method

.method public setOnDaySelectedListener(Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .prologue
    .line 146
    iput-object p1, p0, mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    .line 147
    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 11
    .param p1, "min"    # Ljava/util/Calendar;
    .param p2, "max"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 79
    iget-object v2, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 80
    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 82
    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v1, v2, v3

    .line 83
    .local v1, "diffYear":I
    iget-object v2, p0, mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, mMinDate:Ljava/util/Calendar;

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    sub-int v0, v2, v3

    .line 84
    .local v0, "diffMonth":I
    mul-int/lit8 v2, v1, 0xc

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mCount:I

    .line 87
    invoke-virtual {p0}, notifyDataSetChanged()V

    .line 88
    return-void
.end method

.method public setSelectedDay(Ljava/util/Calendar;)V
    .registers 10
    .param p1, "day"    # Ljava/util/Calendar;

    .prologue
    const/4 v7, 0x0

    .line 117
    iget-object v5, p0, mSelectedDay:Ljava/util/Calendar;

    invoke-direct {p0, v5}, getPositionForDay(Ljava/util/Calendar;)I

    move-result v4

    .line 118
    .local v4, "oldPosition":I
    invoke-direct {p0, p1}, getPositionForDay(Ljava/util/Calendar;)I

    move-result v2

    .line 121
    .local v2, "newPosition":I
    if-eq v4, v2, :cond_1f

    if-ltz v4, :cond_1f

    .line 122
    iget-object v5, p0, mItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 123
    .local v3, "oldMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    if-eqz v3, :cond_1f

    .line 124
    iget-object v5, v3, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 129
    .end local v3    # "oldMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    :cond_1f
    if-ltz v2, :cond_35

    .line 130
    iget-object v5, p0, mItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;

    .line 131
    .local v1, "newMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    if-eqz v1, :cond_35

    .line 132
    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 133
    .local v0, "dayOfMonth":I
    iget-object v5, v1, Landroid/widget/DayPickerPagerAdapter$ViewHolder;->calendar:Landroid/widget/SimpleMonthView;

    invoke-virtual {v5, v0}, Landroid/widget/SimpleMonthView;->setSelectedDay(I)V

    .line 137
    .end local v0    # "dayOfMonth":I
    .end local v1    # "newMonthView":Landroid/widget/DayPickerPagerAdapter$ViewHolder;
    :cond_35
    iput-object p1, p0, mSelectedDay:Ljava/util/Calendar;

    .line 138
    return-void
.end method
