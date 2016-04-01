.class public Lcom/android/server/notification/ScheduleCalendar;
.super Ljava/lang/Object;
.source "ScheduleCalendar.java"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mDays:Landroid/util/ArraySet;

    .line 28
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private addDays(JI)J
    .registers 7
    .param p1, "time"    # J
    .param p3, "days"    # I

    .prologue
    .line 113
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 114
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    .line 115
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getDayOfWeek(J)I
    .registers 6
    .param p1, "time"    # J

    .prologue
    .line 99
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 100
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method private getNextTime(JII)J
    .registers 8
    .param p1, "now"    # J
    .param p3, "hr"    # I
    .param p4, "min"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, getTime(JII)J

    move-result-wide v0

    .line 68
    .local v0, "time":J
    cmp-long v2, v0, p1

    if-gtz v2, :cond_d

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, addDays(JI)J

    move-result-wide v0

    .end local v0    # "time":J
    :cond_d
    return-wide v0
.end method

.method private getTime(JII)J
    .registers 8
    .param p1, "millis"    # J
    .param p3, "hour"    # I
    .param p4, "min"    # I

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 73
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 74
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p4}, Ljava/util/Calendar;->set(II)V

    .line 75
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 76
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 77
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private isInSchedule(IJJJ)Z
    .registers 12
    .param p1, "daysOffset"    # I
    .param p2, "time"    # J
    .param p4, "start"    # J
    .param p6, "end"    # J

    .prologue
    .line 91
    const/4 v1, 0x7

    .line 92
    .local v1, "n":I
    invoke-direct {p0, p2, p3}, getDayOfWeek(J)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    rem-int/lit8 v3, p1, 0x7

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    rem-int/lit8 v2, v2, 0x7

    add-int/lit8 v0, v2, 0x1

    .line 93
    .local v0, "day":I
    invoke-direct {p0, p4, p5, p1}, addDays(JI)J

    move-result-wide p4

    .line 94
    invoke-direct {p0, p6, p7, p1}, addDays(JI)J

    move-result-wide p6

    .line 95
    iget-object v2, p0, mDays:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    cmp-long v2, p2, p4

    if-ltz v2, :cond_2e

    cmp-long v2, p2, p6

    if-gez v2, :cond_2e

    const/4 v2, 0x1

    :goto_2d
    return v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method private updateDays()V
    .registers 4

    .prologue
    .line 104
    iget-object v1, p0, mDays:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 105
    iget-object v1, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v1, :cond_29

    iget-object v1, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-eqz v1, :cond_29

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_10
    iget-object v1, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    array-length v1, v1

    if-ge v0, v1, :cond_29

    .line 107
    iget-object v1, p0, mDays:Landroid/util/ArraySet;

    iget-object v2, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 110
    .end local v0    # "i":I
    :cond_29
    return-void
.end method


# virtual methods
.method public getNextChangeTime(J)J
    .registers 10
    .param p1, "now"    # J

    .prologue
    .line 60
    iget-object v4, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-nez v4, :cond_7

    const-wide/16 v4, 0x0

    .line 63
    :goto_6
    return-wide v4

    .line 61
    :cond_7
    iget-object v4, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v5, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v4, v5}, getNextTime(JII)J

    move-result-wide v2

    .line 62
    .local v2, "nextStart":J
    iget-object v4, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v4, v4, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v5, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v5, v5, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, p1, p2, v4, v5}, getNextTime(JII)J

    move-result-wide v0

    .line 63
    .local v0, "nextEnd":J
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_6
.end method

.method public isInSchedule(J)Z
    .registers 14
    .param p1, "time"    # J

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 81
    iget-object v0, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, mDays:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    move v0, v8

    .line 87
    :goto_f
    return v0

    .line 82
    :cond_10
    iget-object v0, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v1, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, getTime(JII)J

    move-result-wide v4

    .line 83
    .local v4, "start":J
    iget-object v0, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    iget-object v1, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-direct {p0, p1, p2, v0, v1}, getTime(JII)J

    move-result-wide v6

    .line 84
    .local v6, "end":J
    cmp-long v0, v6, v4

    if-gtz v0, :cond_30

    .line 85
    invoke-direct {p0, v6, v7, v9}, addDays(JI)J

    move-result-wide v6

    .line 87
    :cond_30
    const/4 v1, -0x1

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, isInSchedule(IJJJ)Z

    move-result v0

    if-nez v0, :cond_42

    move-object v0, p0

    move v1, v8

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, isInSchedule(IJJJ)Z

    move-result v0

    if-eqz v0, :cond_44

    :cond_42
    move v0, v9

    goto :goto_f

    :cond_44
    move v0, v8

    goto :goto_f
.end method

.method public nextScheduleStart(J)J
    .registers 12
    .param p1, "time"    # J

    .prologue
    const-wide v6, 0x7fffffffffffffffL

    .line 44
    iget-object v1, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    if-eqz v1, :cond_11

    iget-object v1, p0, mDays:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-nez v1, :cond_13

    :cond_11
    move-wide v4, v6

    .line 52
    :cond_12
    :goto_12
    return-wide v4

    .line 45
    :cond_13
    iget-object v1, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    iget-object v8, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    iget v8, v8, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-direct {p0, p1, p2, v1, v8}, getTime(JII)J

    move-result-wide v2

    .line 46
    .local v2, "start":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_20
    const/4 v1, 0x7

    if-ge v0, v1, :cond_34

    .line 47
    invoke-direct {p0, v2, v3, v0}, addDays(JI)J

    move-result-wide v4

    .line 48
    .local v4, "t":J
    cmp-long v1, v4, p1

    if-lez v1, :cond_31

    invoke-virtual {p0, v4, v5}, isInSchedule(J)Z

    move-result v1

    if-nez v1, :cond_12

    .line 46
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .end local v4    # "t":J
    :cond_34
    move-wide v4, v6

    .line 52
    goto :goto_12
.end method

.method public setSchedule(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)V
    .registers 3
    .param p1, "schedule"    # Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .prologue
    .line 38
    iget-object v0, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 41
    :goto_8
    return-void

    .line 39
    :cond_9
    iput-object p1, p0, mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    .line 40
    invoke-direct {p0}, updateDays()V

    goto :goto_8
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 56
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScheduleCalendar[mDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mDays:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
