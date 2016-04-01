.class abstract Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/DatePicker$DatePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractDatePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/DatePicker;

.field protected mOnDateChangedListener:Landroid/widget/DatePicker$OnDateChangedListener;

.field protected mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;Landroid/content/Context;)V
    .registers 4
    .param p1, "delegator"    # Landroid/widget/DatePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    iput-object p1, p0, mDelegator:Landroid/widget/DatePicker;

    .line 532
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 534
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, setCurrentLocale(Ljava/util/Locale;)V

    .line 535
    return-void
.end method


# virtual methods
.method protected onLocaleChanged(Ljava/util/Locale;)V
    .registers 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 557
    return-void
.end method

.method protected onValidationChanged(Z)V
    .registers 3
    .param p1, "valid"    # Z

    .prologue
    .line 550
    iget-object v0, p0, mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    if-eqz v0, :cond_9

    .line 551
    iget-object v0, p0, mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/widget/DatePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 553
    :cond_9
    return-void
.end method

.method protected setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 538
    iget-object v0, p0, mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 539
    iput-object p1, p0, mCurrentLocale:Ljava/util/Locale;

    .line 540
    invoke-virtual {p0, p1}, onLocaleChanged(Ljava/util/Locale;)V

    .line 542
    :cond_d
    return-void
.end method

.method public setValidationCallback(Landroid/widget/DatePicker$ValidationCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/widget/DatePicker$ValidationCallback;

    .prologue
    .line 546
    iput-object p1, p0, mValidationCallback:Landroid/widget/DatePicker$ValidationCallback;

    .line 547
    return-void
.end method
