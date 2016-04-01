.class public Landroid/widget/DateTimeView;
.super Landroid/widget/TextView;
.source "DateTimeView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimeView$1;,
        Landroid/widget/DateTimeView$ReceiverInfo;
    }
.end annotation


# static fields
.field private static final SHOW_MONTH_DAY_YEAR:I = 0x1

.field private static final SHOW_TIME:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DateTimeView"

.field private static final TWELVE_HOURS_IN_MINUTES:J = 0x2d0L

.field private static final TWENTY_FOUR_HOURS_IN_MILLIS:J = 0x5265c00L

.field private static final sReceiverInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/widget/DateTimeView$ReceiverInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLastDisplay:I

.field mLastFormat:Ljava/text/DateFormat;

.field mTime:Ljava/util/Date;

.field mTimeMillis:J

.field private mUpdateTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, sReceiverInfo:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, mLastDisplay:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, mLastDisplay:I

    .line 72
    return-void
.end method

.method static synthetic access$100(Landroid/widget/DateTimeView;)J
    .registers 3
    .param p0, "x0"    # Landroid/widget/DateTimeView;

    .prologue
    .line 48
    iget-wide v0, p0, mUpdateTimeMillis:J

    return-wide v0
.end method

.method private getTimeFormat()Ljava/text/DateFormat;
    .registers 2

    .prologue
    .line 193
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method clearFormatAndUpdate()V
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, mLastFormat:Ljava/text/DateFormat;

    .line 198
    invoke-virtual {p0}, update()V

    .line 199
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 77
    sget-object v1, sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 78
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-nez v0, :cond_18

    .line 79
    new-instance v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .end local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/widget/DateTimeView$ReceiverInfo;-><init>(Landroid/widget/DateTimeView$1;)V

    .line 80
    .restart local v0    # "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    sget-object v1, sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 82
    :cond_18
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->addView(Landroid/widget/DateTimeView;)V

    .line 83
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 88
    sget-object v1, sReceiverInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DateTimeView$ReceiverInfo;

    .line 89
    .local v0, "ri":Landroid/widget/DateTimeView$ReceiverInfo;
    if-eqz v0, :cond_10

    .line 90
    invoke-virtual {v0, p0}, Landroid/widget/DateTimeView$ReceiverInfo;->removeView(Landroid/widget/DateTimeView;)V

    .line 92
    :cond_10
    return-void
.end method

.method public setTime(J)V
    .registers 12
    .param p1, "time"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 96
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 97
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 98
    iput v6, v7, Landroid/text/format/Time;->second:I

    .line 99
    invoke-virtual {v7, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, mTimeMillis:J

    .line 100
    new-instance v0, Ljava/util/Date;

    iget v1, v7, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x76c

    iget v2, v7, Landroid/text/format/Time;->month:I

    iget v3, v7, Landroid/text/format/Time;->monthDay:I

    iget v4, v7, Landroid/text/format/Time;->hour:I

    iget v5, v7, Landroid/text/format/Time;->minute:I

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    iput-object v0, p0, mTime:Ljava/util/Date;

    .line 101
    invoke-virtual {p0}, update()V

    .line 102
    return-void
.end method

.method update()V
    .registers 27

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, mTime:Ljava/util/Date;

    move-object/from16 v19, v0

    if-nez v19, :cond_9

    .line 190
    :goto_8
    return-void

    .line 109
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 112
    .local v14, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, mTime:Ljava/util/Date;

    move-object/from16 v18, v0

    .line 114
    .local v18, "time":Ljava/util/Date;
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 115
    .local v16, "t":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v0, v0, mTimeMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 116
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 118
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0xc

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 119
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v22

    .line 120
    .local v22, "twelveHoursBefore":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0xc

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 121
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 122
    .local v20, "twelveHoursAfter":J
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 123
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 124
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 125
    .local v10, "midnightBefore":J
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 126
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 128
    .local v8, "midnightAfter":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 129
    .local v12, "nowMillis":J
    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 130
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v16

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 131
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v12

    .line 135
    cmp-long v19, v12, v10

    if-ltz v19, :cond_b2

    cmp-long v19, v12, v8

    if-ltz v19, :cond_ba

    :cond_b2
    cmp-long v19, v12, v22

    if-ltz v19, :cond_f6

    cmp-long v19, v12, v20

    if-gez v19, :cond_f6

    .line 137
    :cond_ba
    const/4 v4, 0x0

    .line 147
    .local v4, "display":I
    :goto_bb
    move-object/from16 v0, p0

    iget v0, v0, mLastDisplay:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v4, v0, :cond_f8

    move-object/from16 v0, p0

    iget-object v0, v0, mLastFormat:Ljava/text/DateFormat;

    move-object/from16 v19, v0

    if-eqz v19, :cond_f8

    .line 149
    move-object/from16 v0, p0

    iget-object v5, v0, mLastFormat:Ljava/text/DateFormat;

    .line 165
    .local v5, "format":Ljava/text/DateFormat;
    :goto_d1
    move-object/from16 v0, p0

    iget-object v0, v0, mTime:Ljava/util/Date;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 166
    .local v17, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, setText(Ljava/lang/CharSequence;)V

    .line 169
    if-nez v4, :cond_12e

    .line 171
    cmp-long v19, v20, v8

    if-lez v19, :cond_12b

    .end local v20    # "twelveHoursAfter":J
    :goto_ea
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, mUpdateTimeMillis:J

    .line 189
    .end local v22    # "twelveHoursBefore":J
    :goto_f0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 190
    .local v6, "finish":J
    goto/16 :goto_8

    .line 141
    .end local v4    # "display":I
    .end local v5    # "format":Ljava/text/DateFormat;
    .end local v6    # "finish":J
    .end local v17    # "text":Ljava/lang/String;
    .restart local v20    # "twelveHoursAfter":J
    .restart local v22    # "twelveHoursBefore":J
    :cond_f6
    const/4 v4, 0x1

    .restart local v4    # "display":I
    goto :goto_bb

    .line 151
    :cond_f8
    packed-switch v4, :pswitch_data_150

    .line 159
    new-instance v19, Ljava/lang/RuntimeException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "unknown display value: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 153
    :pswitch_11b
    invoke-direct/range {p0 .. p0}, getTimeFormat()Ljava/text/DateFormat;

    move-result-object v5

    .line 161
    .restart local v5    # "format":Ljava/text/DateFormat;
    :goto_11f
    move-object/from16 v0, p0

    iput-object v5, v0, mLastFormat:Ljava/text/DateFormat;

    goto :goto_d1

    .line 156
    .end local v5    # "format":Ljava/text/DateFormat;
    :pswitch_124
    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v5

    .line 157
    .restart local v5    # "format":Ljava/text/DateFormat;
    goto :goto_11f

    .restart local v17    # "text":Ljava/lang/String;
    :cond_12b
    move-wide/from16 v20, v8

    .line 171
    goto :goto_ea

    .line 174
    :cond_12e
    move-object/from16 v0, p0

    iget-wide v0, v0, mTimeMillis:J

    move-wide/from16 v24, v0

    cmp-long v19, v24, v12

    if-gez v19, :cond_141

    .line 176
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, mUpdateTimeMillis:J

    goto :goto_f0

    .line 180
    :cond_141
    cmp-long v19, v22, v10

    if-gez v19, :cond_14c

    .end local v22    # "twelveHoursBefore":J
    :goto_145
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, mUpdateTimeMillis:J

    goto :goto_f0

    .restart local v22    # "twelveHoursBefore":J
    :cond_14c
    move-wide/from16 v22, v10

    goto :goto_145

    .line 151
    nop

    :pswitch_data_150
    .packed-switch 0x0
        :pswitch_11b
        :pswitch_124
    .end packed-switch
.end method
