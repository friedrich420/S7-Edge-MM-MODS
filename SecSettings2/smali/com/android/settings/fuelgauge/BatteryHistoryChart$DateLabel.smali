.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DateLabel"
.end annotation


# instance fields
.field final label:Ljava/lang/String;

.field final width:I

.field final x:I


# direct methods
.method constructor <init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V
    .locals 3
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "x"    # I
    .param p3, "cal"    # Ljava/util/Calendar;
    .param p4, "dayFirst"    # Z

    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    .line 363
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    if-eqz p4, :cond_1

    const-string v1, "dM"

    :goto_0
    invoke-static {v2, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, "bestFormat":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    const-string v0, "M/d"

    .line 368
    :cond_0
    invoke-static {v0, p3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    .line 370
    return-void

    .line 363
    .end local v0    # "bestFormat":Ljava/lang/String;
    :cond_1
    const-string v1, "Md"

    goto :goto_0
.end method
