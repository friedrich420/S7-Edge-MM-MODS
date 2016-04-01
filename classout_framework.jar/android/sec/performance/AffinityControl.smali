.class public Landroid/sec/performance/AffinityControl;
.super Ljava/lang/Object;
.source "AffinityControl.java"


# static fields
.field public static final DEBUG:Z

.field private static final HMP_CORE_FRONT:I = 0x0

.field private static final HMP_CORE_REAR:I = 0x1

.field private static final HMP_PROPERTY:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "AffinityControl"

.field private static nBig:[I

.field private static nLittle:[I

.field private static strHmpCore:[Ljava/lang/String;


# instance fields
.field private bigIndex:I

.field private littleIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 16
    const-string/jumbo v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_d
    sput-boolean v0, DEBUG:Z

    .line 22
    sput-object v2, strHmpCore:[Ljava/lang/String;

    .line 23
    sput-object v2, nLittle:[I

    .line 24
    sput-object v2, nBig:[I

    return-void

    .line 16
    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public constructor <init>()V
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v4, p0, littleIndex:I

    .line 26
    iput v4, p0, bigIndex:I

    .line 34
    const-string v4, "AffinityControl"

    const-string v5, "[Java Side], AffinityControl Class Initialized"

    invoke-static {v4, v5}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v4, ""

    if-eqz v4, :cond_88

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_88

    .line 37
    const-string v4, ""

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    sput-object v4, strHmpCore:[Ljava/lang/String;

    .line 38
    sget-object v4, strHmpCore:[Ljava/lang/String;

    array-length v4, v4

    if-le v4, v8, :cond_74

    const-string v4, "B"

    sget-object v5, strHmpCore:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 39
    iput v6, p0, littleIndex:I

    iput v7, p0, bigIndex:I

    .line 44
    :goto_3d
    sget-object v4, strHmpCore:[Ljava/lang/String;

    iget v5, p0, littleIndex:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [I

    sput-object v4, nLittle:[I

    .line 45
    sget-object v4, strHmpCore:[Ljava/lang/String;

    iget v5, p0, bigIndex:I

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-array v4, v4, [I

    sput-object v4, nBig:[I

    .line 47
    const/4 v3, 0x0

    .line 48
    .local v3, "offsetLittle":I
    sget-object v4, nLittle:[I

    array-length v2, v4

    .line 49
    .local v2, "offsetBig":I
    iget v4, p0, littleIndex:I

    if-ne v4, v6, :cond_65

    .line 50
    sget-object v4, nBig:[I

    array-length v3, v4

    .line 51
    const/4 v2, 0x0

    .line 54
    :cond_65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_66
    sget-object v4, nLittle:[I

    array-length v4, v4

    if-ge v0, v4, :cond_79

    .line 55
    sget-object v4, nLittle:[I

    add-int v5, v0, v3

    aput v5, v4, v0

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    .line 41
    .end local v0    # "i":I
    .end local v2    # "offsetBig":I
    .end local v3    # "offsetLittle":I
    :cond_74
    iput v7, p0, littleIndex:I

    iput v6, p0, bigIndex:I

    goto :goto_3d

    .line 57
    .restart local v0    # "i":I
    .restart local v2    # "offsetBig":I
    .restart local v3    # "offsetLittle":I
    :cond_79
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_7a
    sget-object v4, nBig:[I

    array-length v4, v4

    if-ge v1, v4, :cond_88

    .line 58
    sget-object v4, nBig:[I

    add-int v5, v1, v2

    aput v5, v4, v1

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 61
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "offsetBig":I
    .end local v3    # "offsetLittle":I
    :cond_88
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_7

    .line 176
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_7
    return-void
.end method

.method private native native_set_affinity(I[I)I
.end method

.method public static readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v3, 0x0

    .line 182
    .local v3, "strTemp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 184
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v6, "UTF-16"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_13} :catch_5c
    .catchall {:try_start_2 .. :try_end_13} :catchall_99

    .line 185
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readSysfs:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_38} :catch_bf
    .catchall {:try_start_13 .. :try_end_38} :catchall_bc

    .line 191
    if-eqz v1, :cond_3d

    .line 192
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3f

    :cond_3d
    move-object v0, v1

    .line 198
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    :cond_3e
    :goto_3e
    return-object v3

    .line 194
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_3f
    move-exception v2

    .line 195
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 197
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_3e

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catch_5c
    move-exception v2

    .line 188
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5d
    :try_start_5d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_77
    .catchall {:try_start_5d .. :try_end_77} :catchall_99

    .line 191
    if-eqz v0, :cond_3e

    .line 192
    :try_start_79
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_3e

    .line 194
    :catch_7d
    move-exception v2

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 190
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_99
    move-exception v4

    .line 191
    :goto_9a
    if-eqz v0, :cond_9f

    .line 192
    :try_start_9c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_9f} :catch_a0

    .line 196
    :cond_9f
    :goto_9f
    throw v4

    .line 194
    :catch_a0
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    .line 190
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catchall_bc
    move-exception v4

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_9a

    .line 187
    .end local v0    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_bf
    move-exception v2

    move-object v0, v1

    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    goto :goto_5d
.end method


# virtual methods
.method public ClearAffinity(I)I
    .registers 9
    .param p1, "pid"    # I

    .prologue
    const/4 v4, 0x1

    .line 146
    const-string v5, "AffinityControl"

    const-string v6, "/sys/devices/system/cpu/kernel_max"

    invoke-static {v5, v6}, readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "num_of_core":Ljava/lang/String;
    if-eqz v3, :cond_32

    .line 150
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 151
    .local v2, "num_core":I
    add-int/lit8 v5, v2, 0x1

    new-array v1, v5, [I

    .line 152
    .local v1, "input_cpu_list":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-gt v0, v2, :cond_1b

    .line 153
    aput v0, v1, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 156
    :cond_1b
    invoke-direct {p0, p1, v1}, native_set_affinity(I[I)I

    move-result v5

    if-ne v5, v4, :cond_29

    .line 157
    const-string v5, "AffinityControl"

    const-string v6, "clear_affinity_failed"

    invoke-static {v5, v6}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v0    # "i":I
    .end local v1    # "input_cpu_list":[I
    .end local v2    # "num_core":I
    :goto_28
    return v4

    .line 160
    .restart local v0    # "i":I
    .restart local v1    # "input_cpu_list":[I
    .restart local v2    # "num_core":I
    :cond_29
    const-string v4, "AffinityControl"

    const-string v5, "clear_affinity_success"

    invoke-static {v4, v5}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v4, 0x0

    goto :goto_28

    .line 165
    .end local v0    # "i":I
    .end local v1    # "input_cpu_list":[I
    .end local v2    # "num_core":I
    :cond_32
    const-string v5, "AffinityControl"

    const-string v6, "clear_affinity_failed"

    invoke-static {v5, v6}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28
.end method

.method public varargs SetAffinity(I[I)I
    .registers 6
    .param p1, "pid"    # I
    .param p2, "cpu_list"    # [I

    .prologue
    const/4 v0, 0x1

    .line 76
    invoke-direct {p0, p1, p2}, native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_10

    .line 77
    const-string v1, "AffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_f
    return v0

    .line 80
    :cond_10
    const-string v0, "AffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public SetAffinityForBig(I)I
    .registers 5
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x1

    .line 122
    const-string v1, ""

    if-eqz v1, :cond_1d

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 123
    sget-object v1, nBig:[I

    invoke-direct {p0, p1, v1}, native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_1e

    .line 124
    const-string v1, "AffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_1d
    :goto_1d
    return v0

    .line 127
    :cond_1e
    const-string v0, "AffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public SetAffinityForLittle(I)I
    .registers 5
    .param p1, "pid"    # I

    .prologue
    const/4 v0, 0x1

    .line 97
    const-string v1, ""

    if-eqz v1, :cond_1d

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 98
    sget-object v1, nLittle:[I

    invoke-direct {p0, p1, v1}, native_set_affinity(I[I)I

    move-result v1

    if-ne v1, v0, :cond_1e

    .line 99
    const-string v1, "AffinityControl"

    const-string/jumbo v2, "sched_set_affinity_failed"

    invoke-static {v1, v2}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_1d
    :goto_1d
    return v0

    .line 102
    :cond_1e
    const-string v0, "AffinityControl"

    const-string/jumbo v1, "sched_set_affinity_success"

    invoke-static {v0, v1}, logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    goto :goto_1d
.end method
