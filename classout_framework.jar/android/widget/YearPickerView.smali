.class Landroid/widget/YearPickerView;
.super Landroid/widget/ListView;
.source "YearPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/YearPickerView$OnYearSelectedListener;,
        Landroid/widget/YearPickerView$YearAdapter;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/YearPickerView$YearAdapter;

.field private final mChildSize:I

.field private mCurrentTimeMillis:J

.field private mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

.field private final mViewSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 56
    .local v0, "frame":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {p0, v0}, setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 59
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, mViewSize:I

    .line 60
    const v2, 0x1050118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, mChildSize:I

    .line 62
    new-instance v2, Landroid/widget/YearPickerView$1;

    invoke-direct {v2, p0}, Landroid/widget/YearPickerView$1;-><init>(Landroid/widget/YearPickerView;)V

    invoke-virtual {p0, v2}, setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    new-instance v2, Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/YearPickerView$YearAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    .line 75
    iget-object v2, p0, mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {p0, v2}, setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    return-void
.end method

.method static synthetic access$000(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/widget/YearPickerView;

    .prologue
    .line 34
    iget-object v0, p0, mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/YearPickerView;

    .prologue
    .line 34
    iget-object v0, p0, mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    return-object v0
.end method


# virtual methods
.method public getFirstPositionOffset()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 235
    .local v0, "firstChild":Landroid/view/View;
    if-nez v0, :cond_8

    .line 238
    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_7
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 247
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_12

    .line 248
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 249
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 251
    :cond_12
    return-void
.end method

.method public setDate(J)V
    .registers 4
    .param p1, "currentTimeMillis"    # J

    .prologue
    .line 83
    iput-wide p1, p0, mCurrentTimeMillis:J

    .line 84
    return-void
.end method

.method public setOnYearSelectedListener(Landroid/widget/YearPickerView$OnYearSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/YearPickerView$OnYearSelectedListener;

    .prologue
    .line 79
    iput-object p1, p0, mOnYearSelectedListener:Landroid/widget/YearPickerView$OnYearSelectedListener;

    .line 80
    return-void
.end method

.method public setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .registers 4
    .param p1, "min"    # Ljava/util/Calendar;
    .param p2, "max"    # Ljava/util/Calendar;

    .prologue
    .line 111
    iget-object v0, p0, mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/widget/YearPickerView$YearAdapter;->setRange(Ljava/util/Calendar;Ljava/util/Calendar;)V

    .line 112
    return-void
.end method

.method public setSelectionCentered(I)V
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 106
    iget v1, p0, mViewSize:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, mChildSize:I

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 107
    .local v0, "offset":I
    invoke-virtual {p0, p1, v0}, setSelectionFromTop(II)V

    .line 108
    return-void
.end method

.method public setYear(I)V
    .registers 3
    .param p1, "year"    # I

    .prologue
    .line 92
    iget-object v0, p0, mAdapter:Landroid/widget/YearPickerView$YearAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/YearPickerView$YearAdapter;->setSelection(I)Z

    .line 94
    new-instance v0, Landroid/widget/YearPickerView$2;

    invoke-direct {v0, p0, p1}, Landroid/widget/YearPickerView$2;-><init>(Landroid/widget/YearPickerView;I)V

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method
