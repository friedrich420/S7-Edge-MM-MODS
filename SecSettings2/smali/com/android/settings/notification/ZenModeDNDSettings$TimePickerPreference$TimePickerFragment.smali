.class public Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;
.super Landroid/app/DialogFragment;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Lcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimePickerFragment"
.end annotation


# instance fields
.field public pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mHourOfDay:I
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->access$1900(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mMinute:I
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->access$2000(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v8, 0x1

    .line 751
    .local v8, "usePref":Z
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 752
    .local v7, "c":Ljava/util/Calendar;
    if-eqz v8, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mHourOfDay:I
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->access$1900(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)I

    move-result v4

    .line 753
    .local v4, "hour":I
    :goto_1
    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->mMinute:I
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->access$2000(Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;)I

    move-result v5

    .line 754
    .local v5, "minute":I
    :goto_2
    new-instance v0, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f0227

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/touchwiz/app/TwTimePickerDialog;-><init>(Landroid/content/Context;ILcom/sec/android/touchwiz/app/TwTimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    .line 750
    .end local v4    # "hour":I
    .end local v5    # "minute":I
    .end local v7    # "c":Ljava/util/Calendar;
    .end local v8    # "usePref":Z
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 752
    .restart local v7    # "c":Ljava/util/Calendar;
    .restart local v8    # "usePref":Z
    :cond_1
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    goto :goto_1

    .line 753
    .restart local v4    # "hour":I
    :cond_2
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    goto :goto_2
.end method

.method public onTimeSet(Lcom/sec/android/touchwiz/widget/TwTimePicker;II)V
    .locals 1
    .param p1, "view"    # Lcom/sec/android/touchwiz/widget/TwTimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference$TimePickerFragment;->pref:Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;

    invoke-virtual {v0, p2, p3}, Lcom/android/settings/notification/ZenModeDNDSettings$TimePickerPreference;->setTime(II)V

    .line 762
    :cond_0
    return-void
.end method
