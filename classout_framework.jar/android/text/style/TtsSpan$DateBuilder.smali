.class public Landroid/text/style/TtsSpan$DateBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$DateBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 1147
    const-string v0, "android.type.date"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1148
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "weekday"    # Ljava/lang/Integer;
    .param p2, "day"    # Ljava/lang/Integer;
    .param p3, "month"    # Ljava/lang/Integer;
    .param p4, "year"    # Ljava/lang/Integer;

    .prologue
    .line 1160
    invoke-direct {p0}, <init>()V

    .line 1161
    if-eqz p1, :cond_c

    .line 1162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1164
    :cond_c
    if-eqz p2, :cond_15

    .line 1165
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, setDay(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1167
    :cond_15
    if-eqz p3, :cond_1e

    .line 1168
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1170
    :cond_1e
    if-eqz p4, :cond_27

    .line 1171
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, setYear(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1173
    :cond_27
    return-void
.end method


# virtual methods
.method public setDay(I)Landroid/text/style/TtsSpan$DateBuilder;
    .registers 3
    .param p1, "day"    # I

    .prologue
    .line 1193
    const-string v0, "android.arg.day"

    invoke-virtual {p0, v0, p1}, setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;
    .registers 3
    .param p1, "month"    # I

    .prologue
    .line 1203
    const-string v0, "android.arg.month"

    invoke-virtual {p0, v0, p1}, setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;
    .registers 3
    .param p1, "weekday"    # I

    .prologue
    .line 1183
    const-string v0, "android.arg.weekday"

    invoke-virtual {p0, v0, p1}, setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public setYear(I)Landroid/text/style/TtsSpan$DateBuilder;
    .registers 3
    .param p1, "year"    # I

    .prologue
    .line 1213
    const-string v0, "android.arg.year"

    invoke-virtual {p0, v0, p1}, setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method
