.class Landroid/widget/CalendarViewMaterialDelegate;
.super Landroid/widget/CalendarView$AbstractCalendarViewDelegate;
.source "CalendarViewMaterialDelegate.java"


# instance fields
.field private final mDayPickerView:Landroid/widget/DayPickerView;

.field private mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

.field private final mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;


# direct methods
.method public constructor <init>(Landroid/widget/CalendarView;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "delegator"    # Landroid/widget/CalendarView;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/CalendarView$AbstractCalendarViewDelegate;-><init>(Landroid/widget/CalendarView;Landroid/content/Context;)V

    .line 113
    new-instance v0, Landroid/widget/CalendarViewMaterialDelegate$1;

    invoke-direct {v0, p0}, Landroid/widget/CalendarViewMaterialDelegate$1;-><init>(Landroid/widget/CalendarViewMaterialDelegate;)V

    iput-object v0, p0, mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    .line 35
    new-instance v0, Landroid/widget/DayPickerView;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/widget/DayPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    .line 36
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    iget-object v1, p0, mOnDaySelectedListener:Landroid/widget/DayPickerView$OnDaySelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/DayPickerView;->setOnDaySelectedListener(Landroid/widget/DayPickerView$OnDaySelectedListener;)V

    .line 38
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {p1, v0}, Landroid/widget/CalendarView;->addView(Landroid/view/View;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/DayPickerView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewMaterialDelegate;

    .prologue
    .line 26
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/CalendarViewMaterialDelegate;)Landroid/widget/CalendarView$OnDateChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/CalendarViewMaterialDelegate;

    .prologue
    .line 26
    iget-object v0, p0, mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    return-object v0
.end method


# virtual methods
.method public getDate()J
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDateTextAppearance()I
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayTextAppearance()I

    move-result v0

    return v0
.end method

.method public getFirstDayOfWeek()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getFirstDayOfWeek()I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .registers 3

    .prologue
    .line 80
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeekDayTextAppearance()I
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0}, Landroid/widget/DayPickerView;->getDayOfWeekTextAppearance()I

    move-result v0

    return v0
.end method

.method public setDate(J)V
    .registers 6
    .param p1, "date"    # J

    .prologue
    .line 95
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 96
    return-void
.end method

.method public setDate(JZZ)V
    .registers 6
    .param p1, "date"    # J
    .param p3, "animate"    # Z
    .param p4, "center"    # Z

    .prologue
    .line 100
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DayPickerView;->setDate(JZ)V

    .line 101
    return-void
.end method

.method public setDateTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 54
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayTextAppearance(I)V

    .line 55
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "firstDayOfWeek"    # I

    .prologue
    .line 85
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setFirstDayOfWeek(I)V

    .line 86
    return-void
.end method

.method public setMaxDate(J)V
    .registers 4
    .param p1, "maxDate"    # J

    .prologue
    .line 75
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMaxDate(J)V

    .line 76
    return-void
.end method

.method public setMinDate(J)V
    .registers 4
    .param p1, "minDate"    # J

    .prologue
    .line 65
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/DayPickerView;->setMinDate(J)V

    .line 66
    return-void
.end method

.method public setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/CalendarView$OnDateChangeListener;

    .prologue
    .line 110
    iput-object p1, p0, mOnDateChangeListener:Landroid/widget/CalendarView$OnDateChangeListener;

    .line 111
    return-void
.end method

.method public setWeekDayTextAppearance(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 43
    iget-object v0, p0, mDayPickerView:Landroid/widget/DayPickerView;

    invoke-virtual {v0, p1}, Landroid/widget/DayPickerView;->setDayOfWeekTextAppearance(I)V

    .line 44
    return-void
.end method
