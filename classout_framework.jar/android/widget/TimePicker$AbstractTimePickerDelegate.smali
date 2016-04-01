.class abstract Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/TimePicker$TimePickerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractTimePickerDelegate"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mCurrentLocale:Ljava/util/Locale;

.field protected mDelegator:Landroid/widget/TimePicker;

.field protected mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

.field protected mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;)V
    .registers 4
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, mDelegator:Landroid/widget/TimePicker;

    .line 346
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 349
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, setCurrentLocale(Ljava/util/Locale;)V

    .line 350
    return-void
.end method


# virtual methods
.method protected onValidationChanged(Z)V
    .registers 3
    .param p1, "valid"    # Z

    .prologue
    .line 365
    iget-object v0, p0, mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    if-eqz v0, :cond_9

    .line 366
    iget-object v0, p0, mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    invoke-interface {v0, p1}, Landroid/widget/TimePicker$ValidationCallback;->onValidationChanged(Z)V

    .line 368
    :cond_9
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 353
    iget-object v0, p0, mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 357
    :goto_8
    return-void

    .line 356
    :cond_9
    iput-object p1, p0, mCurrentLocale:Ljava/util/Locale;

    goto :goto_8
.end method

.method public setValidationCallback(Landroid/widget/TimePicker$ValidationCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/widget/TimePicker$ValidationCallback;

    .prologue
    .line 361
    iput-object p1, p0, mValidationCallback:Landroid/widget/TimePicker$ValidationCallback;

    .line 362
    return-void
.end method
