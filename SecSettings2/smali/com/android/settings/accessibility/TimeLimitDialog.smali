.class public Lcom/android/settings/accessibility/TimeLimitDialog;
.super Lcom/sec/android/touchwiz/app/TwTimePickerDialog;
.source "TimeLimitDialog.java"


# instance fields
.field calendar:Ljava/util/Calendar;

.field dateformat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I
    .param p5, "is24HourView"    # Z

    .prologue
    .line 20
    const v2, 0x7f0f0227

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;-><init>(Landroid/content/Context;ILcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->calendar:Ljava/util/Calendar;

    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/TimeLimitDialog;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->dateformat:Ljava/text/DateFormat;

    .line 23
    invoke-direct {p0, p3, p4}, Lcom/android/settings/accessibility/TimeLimitDialog;->updateTitle(II)V

    .line 24
    return-void
.end method

.method private getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private updateTitle(II)V
    .locals 2
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 35
    iget-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->calendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 36
    iget-object v0, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->dateformat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/android/settings/accessibility/TimeLimitDialog;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/TimeLimitDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 38
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 50
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "hour":I
    const-string v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 52
    .local v1, "minute":I
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/TimeLimitDialog;->updateTitle(II)V

    .line 53
    return-void
.end method

.method public onTimeChanged(Lcom/sec/android/touchwiz/widget/TwTimePicker;II)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 29
    invoke-direct {p0, p2, p3}, Lcom/android/settings/accessibility/TimeLimitDialog;->updateTitle(II)V

    .line 30
    return-void
.end method
