.class public final Lcom/android/server/power/Slog;
.super Ljava/lang/Object;
.source "Slog.java"


# static fields
.field private static final BEGINNING_OF_LATEST_LINE:I = 0x1f4

.field private static final LAST_PMSLOG_PATH:Ljava/lang/String; = "/data/log/Last.kpsn"

.field private static final LOG_SWITCH_BOOT:I = 0x0

.field private static final LOG_SWITCH_LATEST:I = 0x1

.field private static final MAX_LOG_LINE:I = 0x1388

.field private static final PMSLOG_PATH:Ljava/lang/String; = "/data/log/Latest.kpsn"

.field private static final TAG:Ljava/lang/String; = "PMS_SLog"

.field private static mCalendar:Ljava/util/Calendar;

.field private static mCurrentLine:I

.field private static mLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogSwitch:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 66
    sput v0, mCurrentLine:I

    .line 67
    sput v0, mLogSwitch:I

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mLogList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 195
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 196
    :cond_24
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 200
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "D "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 201
    :cond_24
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 232
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 233
    :cond_24
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 237
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "E "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 238
    :cond_24
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 207
    :cond_24
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "I "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 212
    :cond_24
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized notePMSLogList(Ljava/lang/String;)I
    .registers 11
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x1388

    const/4 v8, 0x0

    .line 85
    const-class v3, Lcom/android/server/power/Slog;

    monitor-enter v3

    :try_start_6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    sput-object v2, mCalendar:Ljava/util/Calendar;

    .line 86
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "tid":Ljava/lang/String;
    const-string v2, "%02d-%02d %02d:%02d:%02d.%03d "

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, mCalendar:Ljava/util/Calendar;

    sget-object v7, mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, mCalendar:Ljava/util/Calendar;

    sget-object v7, mCalendar:Ljava/util/Calendar;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, mCalendar:Ljava/util/Calendar;

    sget-object v7, mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, mCalendar:Ljava/util/Calendar;

    sget-object v7, mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, mCalendar:Ljava/util/Calendar;

    sget-object v7, mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xd

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    sget-object v6, mCalendar:Ljava/util/Calendar;

    sget-object v7, mCalendar:Ljava/util/Calendar;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "strNow":Ljava/lang/String;
    sget v2, mCurrentLine:I

    if-lt v2, v9, :cond_a4

    .line 92
    const-string v2, "PMS_SLog"

    const-string v4, "Approached max !!! "

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/16 v2, 0x1f4

    sput v2, mCurrentLine:I

    .line 94
    const/4 v2, 0x1

    sput v2, mLogSwitch:I

    .line 95
    sget-object v2, mLogList:Ljava/util/ArrayList;

    sget v4, mCurrentLine:I

    const-string v5, "============== beginning of PMS latest ============== \n"

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget v2, mCurrentLine:I

    add-int/lit8 v2, v2, 0x1

    sput v2, mCurrentLine:I

    .line 99
    :cond_a4
    sget v2, mLogSwitch:I

    if-nez v2, :cond_dc

    .line 100
    sget-object v2, mLogList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget v2, mCurrentLine:I

    add-int/lit8 v2, v2, 0x1

    sput v2, mCurrentLine:I
    :try_end_da
    .catchall {:try_start_6 .. :try_end_da} :catchall_115

    .line 107
    :cond_da
    :goto_da
    monitor-exit v3

    return v8

    .line 102
    :cond_dc
    :try_start_dc
    sget v2, mCurrentLine:I

    if-ge v2, v9, :cond_da

    .line 103
    sget-object v2, mLogList:Ljava/util/ArrayList;

    sget v4, mCurrentLine:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget v2, mCurrentLine:I

    add-int/lit8 v2, v2, 0x1

    sput v2, mCurrentLine:I
    :try_end_114
    .catchall {:try_start_dc .. :try_end_114} :catchall_115

    goto :goto_da

    .line 85
    .end local v0    # "strNow":Ljava/lang/String;
    .end local v1    # "tid":Ljava/lang/String;
    :catchall_115
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Landroid/util/secutil/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized saveLastPMSLog(Z)I
    .registers 10
    .param p0, "last"    # Z

    .prologue
    const/4 v5, -0x1

    .line 147
    const-class v6, Lcom/android/server/power/Slog;

    monitor-enter v6

    :try_start_4
    sget-boolean v7, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v7, :cond_50

    .line 148
    sget-object v7, mLogList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 150
    .local v4, "size":I
    if-eqz v4, :cond_47

    .line 152
    if-eqz p0, :cond_3a

    .line 153
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/log/Last.kpsn"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, "file":Ljava/io/File;
    :goto_19
    sget-object v5, mLogList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_59

    move-result-object v3

    .line 160
    .local v3, "iterator":Ljava/util/Iterator;
    :try_start_1f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    .local v2, "fos":Ljava/io/FileOutputStream;
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_5c
    .catchall {:try_start_1f .. :try_end_27} :catchall_59

    move-result v5

    if-eqz v5, :cond_42

    .line 163
    :try_start_2a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_37} :catch_38
    .catchall {:try_start_2a .. :try_end_37} :catchall_59

    goto :goto_24

    .line 165
    .end local v0    # "element":Ljava/lang/String;
    :catch_38
    move-exception v5

    goto :goto_24

    .line 155
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "iterator":Ljava/util/Iterator;
    :cond_3a
    :try_start_3a
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/log/Latest.kpsn"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_59

    .restart local v1    # "file":Ljava/io/File;
    goto :goto_19

    .line 167
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "iterator":Ljava/util/Iterator;
    :cond_42
    :try_start_42
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_5c
    .catchall {:try_start_42 .. :try_end_45} :catchall_59

    .line 178
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "iterator":Ljava/util/Iterator;
    .end local v4    # "size":I
    :goto_45
    monitor-exit v6

    return v4

    .line 173
    .restart local v4    # "size":I
    :cond_47
    :try_start_47
    const-string v7, "PMS_SLog"

    const-string v8, "Normal_log size is zero"

    invoke-static {v7, v8}, i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 174
    goto :goto_45

    .line 177
    .end local v4    # "size":I
    :cond_50
    const-string v7, "PMS_SLog"

    const-string v8, "Pass savePMSLog"

    invoke-static {v7, v8}, i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_47 .. :try_end_57} :catchall_59

    move v4, v5

    .line 178
    goto :goto_45

    .line 147
    :catchall_59
    move-exception v5

    monitor-exit v6

    throw v5

    .line 168
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "iterator":Ljava/util/Iterator;
    .restart local v4    # "size":I
    :catch_5c
    move-exception v5

    goto :goto_45
.end method

.method public static declared-synchronized savePMSLog(Ljava/io/PrintWriter;)I
    .registers 8
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v3, -0x1

    .line 119
    const-class v4, Lcom/android/server/power/Slog;

    monitor-enter v4

    :try_start_4
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v5, :cond_33

    .line 120
    sget-object v5, mLogList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 122
    .local v2, "size":I
    if-eqz v2, :cond_29

    .line 123
    sget-object v3, mLogList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 125
    .local v1, "iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 127
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_4 .. :try_end_25} :catchall_26

    goto :goto_16

    .line 119
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v2    # "size":I
    :catchall_26
    move-exception v3

    monitor-exit v4

    throw v3

    .line 131
    .restart local v2    # "size":I
    :cond_29
    :try_start_29
    const-string v5, "PMS_SLog"

    const-string v6, "Normal_log size is zero"

    invoke-static {v5, v6}, i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_26

    move v2, v3

    .line 136
    .end local v2    # "size":I
    :cond_31
    :goto_31
    monitor-exit v4

    return v2

    .line 135
    :cond_33
    :try_start_33
    const-string v5, "PMS_SLog"

    const-string v6, "Pass savePMSLog"

    invoke-static {v5, v6}, i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_26

    move v2, v3

    .line 136
    goto :goto_31
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 185
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 186
    :cond_24
    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 190
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "V "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 191
    :cond_24
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 218
    :cond_24
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 222
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_PMS_LOG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "W "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, notePMSLogList(Ljava/lang/String;)I

    .line 223
    :cond_24
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 228
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 265
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 256
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
