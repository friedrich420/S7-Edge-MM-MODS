.class public Landroid/service/notification/ZenModeConfig$ScheduleInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScheduleInfo"
.end annotation


# instance fields
.field public days:[I

.field public endHour:I

.field public endMinute:I

.field public startHour:I

.field public startMinute:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 874
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, <init>()V

    .line 875
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v1, p0, days:[I

    if-eqz v1, :cond_1b

    .line 876
    iget-object v1, p0, days:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, days:[I

    .line 877
    iget-object v1, p0, days:[I

    iget-object v2, v0, days:[I

    iget-object v3, p0, days:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 879
    :cond_1b
    iget v1, p0, startHour:I

    iput v1, v0, startHour:I

    .line 880
    iget v1, p0, startMinute:I

    iput v1, v0, startMinute:I

    .line 881
    iget v1, p0, endHour:I

    iput v1, v0, endHour:I

    .line 882
    iget v1, p0, endMinute:I

    iput v1, v0, endMinute:I

    .line 883
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 864
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v2, :cond_6

    .line 866
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 865
    check-cast v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 866
    .local v0, "other":Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    iget-object v2, p0, days:[I

    # invokes: Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->access$200([I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, days:[I

    # invokes: Landroid/service/notification/ZenModeConfig;->toDayList([I)Ljava/lang/String;
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->access$200([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, startHour:I

    iget v3, v0, startHour:I

    if-ne v2, v3, :cond_5

    iget v2, p0, startMinute:I

    iget v3, v0, startMinute:I

    if-ne v2, v3, :cond_5

    iget v2, p0, endHour:I

    iget v3, v0, endHour:I

    if-ne v2, v3, :cond_5

    iget v2, p0, endMinute:I

    iget v3, v0, endMinute:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method
