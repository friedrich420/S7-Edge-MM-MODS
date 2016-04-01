.class public Landroid/widget/Chronometer;
.super Landroid/widget/TextView;
.source "Chronometer.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Chronometer$OnChronometerTickListener;
    }
.end annotation


# static fields
.field private static final HOUR_IN_SEC:I = 0xe10

.field private static final MIN_IN_SEC:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "Chronometer"

.field private static final TICK_WHAT:I = 0x2


# instance fields
.field private mBase:J

.field private mFormat:Ljava/lang/String;

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mFormatterArgs:[Ljava/lang/Object;

.field private mFormatterLocale:Ljava/util/Locale;

.field private mHandler:Landroid/os/Handler;

.field private mLogged:Z

.field private mNow:J

.field private mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

.field private mRecycle:Ljava/lang/StringBuilder;

.field private mRunning:Z

.field private mStarted:Z

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 71
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, mFormatterArgs:[Ljava/lang/Object;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, mRecycle:Ljava/lang/StringBuilder;

    .line 270
    new-instance v1, Landroid/widget/Chronometer$1;

    invoke-direct {v1, p0}, Landroid/widget/Chronometer$1;-><init>(Landroid/widget/Chronometer;)V

    iput-object v1, p0, mHandler:Landroid/os/Handler;

    .line 105
    sget-object v1, Lcom/android/internal/R$styleable;->Chronometer:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, setFormat(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    invoke-direct {p0}, init()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Landroid/widget/Chronometer;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Chronometer;

    .prologue
    .line 47
    iget-boolean v0, p0, mRunning:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/Chronometer;J)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/Chronometer;
    .param p1, "x1"    # J

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, updateText(J)V

    return-void
.end method

.method private static formatDuration(J)Ljava/lang/String;
    .registers 14
    .param p0, "ms"    # J

    .prologue
    .line 289
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 290
    .local v4, "res":Landroid/content/res/Resources;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v6, "text":Ljava/lang/StringBuilder;
    const-wide/16 v8, 0x3e8

    div-long v8, p0, v8

    long-to-int v0, v8

    .line 293
    .local v0, "duration":I
    if-gez v0, :cond_11

    .line 294
    neg-int v0, v0

    .line 297
    :cond_11
    const/4 v2, 0x0

    .line 298
    .local v2, "h":I
    const/4 v3, 0x0

    .line 300
    .local v3, "m":I
    const/16 v7, 0xe10

    if-lt v0, v7, :cond_1c

    .line 301
    div-int/lit16 v2, v0, 0xe10

    .line 302
    mul-int/lit16 v7, v2, 0xe10

    sub-int/2addr v0, v7

    .line 304
    :cond_1c
    const/16 v7, 0x3c

    if-lt v0, v7, :cond_25

    .line 305
    div-int/lit8 v3, v0, 0x3c

    .line 306
    mul-int/lit8 v7, v3, 0x3c

    sub-int/2addr v0, v7

    .line 308
    :cond_25
    move v5, v0

    .line 311
    .local v5, "s":I
    if-lez v2, :cond_3c

    .line 312
    const v7, 0x1140004

    const/4 v8, 0x1

    :try_start_2c
    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v2, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    :cond_3c
    if-lez v3, :cond_5d

    .line 316
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_49

    .line 317
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 319
    :cond_49
    const v7, 0x1140003

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_5d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_68

    .line 324
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :cond_68
    const v7, 0x1140002

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v5, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c .. :try_end_7c} :catch_81

    .line 332
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_80
    return-object v7

    .line 328
    :catch_81
    move-exception v1

    .line 330
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v7, 0x0

    goto :goto_80
.end method

.method private init()V
    .registers 3

    .prologue
    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mBase:J

    .line 115
    iget-wide v0, p0, mBase:J

    invoke-direct {p0, v0, v1}, updateText(J)V

    .line 116
    return-void
.end method

.method private updateRunning()V
    .registers 7

    .prologue
    const/4 v4, 0x2

    .line 257
    iget-boolean v1, p0, mVisible:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, p0, mStarted:Z

    if-eqz v1, :cond_2a

    const/4 v0, 0x1

    .line 258
    .local v0, "running":Z
    :goto_a
    iget-boolean v1, p0, mRunning:Z

    if-eq v0, v1, :cond_29

    .line 259
    if-eqz v0, :cond_2c

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, updateText(J)V

    .line 261
    invoke-virtual {p0}, dispatchChronometerTick()V

    .line 262
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 266
    :goto_27
    iput-boolean v0, p0, mRunning:Z

    .line 268
    :cond_29
    return-void

    .line 257
    .end local v0    # "running":Z
    :cond_2a
    const/4 v0, 0x0

    goto :goto_a

    .line 264
    .restart local v0    # "running":Z
    :cond_2c
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_27
.end method

.method private declared-synchronized updateText(J)V
    .registers 12
    .param p1, "now"    # J

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, mNow:J

    .line 231
    iget-wide v6, p0, mBase:J

    sub-long v2, p1, v6

    .line 232
    .local v2, "seconds":J
    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    .line 233
    iget-object v5, p0, mRecycle:Ljava/lang/StringBuilder;

    invoke-static {v5, v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, mFormat:Ljava/lang/String;

    if-eqz v5, :cond_49

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 237
    .local v1, "loc":Ljava/util/Locale;
    iget-object v5, p0, mFormatter:Ljava/util/Formatter;

    if-eqz v5, :cond_24

    iget-object v5, p0, mFormatterLocale:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 238
    :cond_24
    iput-object v1, p0, mFormatterLocale:Ljava/util/Locale;

    .line 239
    new-instance v5, Ljava/util/Formatter;

    iget-object v6, p0, mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v5, v6, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v5, p0, mFormatter:Ljava/util/Formatter;

    .line 241
    :cond_2f
    iget-object v5, p0, mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 242
    iget-object v5, p0, mFormatterArgs:[Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_71

    .line 244
    :try_start_3a
    iget-object v5, p0, mFormatter:Ljava/util/Formatter;

    iget-object v6, p0, mFormat:Ljava/lang/String;

    iget-object v7, p0, mFormatterArgs:[Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 245
    iget-object v5, p0, mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_48
    .catch Ljava/util/IllegalFormatException; {:try_start_3a .. :try_end_48} :catch_4e
    .catchall {:try_start_3a .. :try_end_48} :catchall_71

    move-result-object v4

    .line 253
    .end local v1    # "loc":Ljava/util/Locale;
    :cond_49
    :goto_49
    :try_start_49
    invoke-virtual {p0, v4}, setText(Ljava/lang/CharSequence;)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_71

    .line 254
    monitor-exit p0

    return-void

    .line 246
    .restart local v1    # "loc":Ljava/util/Locale;
    :catch_4e
    move-exception v0

    .line 247
    .local v0, "ex":Ljava/util/IllegalFormatException;
    :try_start_4f
    iget-boolean v5, p0, mLogged:Z

    if-nez v5, :cond_49

    .line 248
    const-string v5, "Chronometer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal format string: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mFormat:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v5, 0x1

    iput-boolean v5, p0, mLogged:Z
    :try_end_70
    .catchall {:try_start_4f .. :try_end_70} :catchall_71

    goto :goto_49

    .line 230
    .end local v0    # "ex":Ljava/util/IllegalFormatException;
    .end local v1    # "loc":Ljava/util/Locale;
    .end local v2    # "seconds":J
    .end local v4    # "text":Ljava/lang/String;
    :catchall_71
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method dispatchChronometerTick()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 284
    :cond_9
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 342
    const-class v0, Landroid/widget/Chronometer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBase()J
    .registers 3

    .prologue
    .line 134
    iget-wide v0, p0, mBase:J

    return-wide v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 5

    .prologue
    .line 337
    iget-wide v0, p0, mNow:J

    iget-wide v2, p0, mBase:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, formatDuration(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 217
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, mVisible:Z

    .line 219
    invoke-direct {p0}, updateRunning()V

    .line 220
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3
    .param p1, "visibility"    # I

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 225
    if-nez p1, :cond_c

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, mVisible:Z

    .line 226
    invoke-direct {p0}, updateRunning()V

    .line 227
    return-void

    .line 225
    :cond_c
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setBase(J)V
    .registers 6
    .param p1, "base"    # J
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 125
    iput-wide p1, p0, mBase:J

    .line 126
    invoke-virtual {p0}, dispatchChronometerTick()V

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, updateText(J)V

    .line 128
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .registers 4
    .param p1, "format"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 150
    iput-object p1, p0, mFormat:Ljava/lang/String;

    .line 151
    if-eqz p1, :cond_15

    iget-object v0, p0, mFormatBuilder:Ljava/lang/StringBuilder;

    if-nez v0, :cond_15

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, mFormatBuilder:Ljava/lang/StringBuilder;

    .line 154
    :cond_15
    return-void
.end method

.method public setOnChronometerTickListener(Landroid/widget/Chronometer$OnChronometerTickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Chronometer$OnChronometerTickListener;

    .prologue
    .line 169
    iput-object p1, p0, mOnChronometerTickListener:Landroid/widget/Chronometer$OnChronometerTickListener;

    .line 170
    return-void
.end method

.method public setStarted(Z)V
    .registers 2
    .param p1, "started"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 211
    iput-boolean p1, p0, mStarted:Z

    .line 212
    invoke-direct {p0}, updateRunning()V

    .line 213
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, mStarted:Z

    .line 190
    invoke-direct {p0}, updateRunning()V

    .line 191
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, mStarted:Z

    .line 202
    invoke-direct {p0}, updateRunning()V

    .line 203
    return-void
.end method
