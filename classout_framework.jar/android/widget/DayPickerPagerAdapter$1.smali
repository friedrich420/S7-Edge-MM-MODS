.class Landroid/widget/DayPickerPagerAdapter$1;
.super Ljava/lang/Object;
.source "DayPickerPagerAdapter.java"

# interfaces
.implements Landroid/widget/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerPagerAdapter;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerPagerAdapter;)V
    .registers 2

    .prologue
    .line 290
    iput-object p1, p0, this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V
    .registers 5
    .param p1, "view"    # Landroid/widget/SimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    .line 293
    if-eqz p2, :cond_1a

    .line 294
    iget-object v0, p0, this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/DayPickerPagerAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 296
    iget-object v0, p0, this$0:Landroid/widget/DayPickerPagerAdapter;

    # getter for: Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerPagerAdapter;->access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 297
    iget-object v0, p0, this$0:Landroid/widget/DayPickerPagerAdapter;

    # getter for: Landroid/widget/DayPickerPagerAdapter;->mOnDaySelectedListener:Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/DayPickerPagerAdapter;->access$000(Landroid/widget/DayPickerPagerAdapter;)Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;

    move-result-object v0

    iget-object v1, p0, this$0:Landroid/widget/DayPickerPagerAdapter;

    invoke-interface {v0, v1, p2}, Landroid/widget/DayPickerPagerAdapter$OnDaySelectedListener;->onDaySelected(Landroid/widget/DayPickerPagerAdapter;Ljava/util/Calendar;)V

    .line 300
    :cond_1a
    return-void
.end method
