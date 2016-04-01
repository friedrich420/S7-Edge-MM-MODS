.class public Lcom/samsung/android/graphics/systemOp/SystemOp;
.super Ljava/lang/Object;
.source "SystemOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;,
        Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    }
.end annotation


# static fields
.field public static final CoreType_ERROR:I = 0x0

.field public static final CoreType_kCoreTypeBig:I = 0x2

.field public static final CoreType_kCoreTypeLittle:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method public static getCPUCoreCount()I
    .registers 8

    .prologue
    .line 27
    const/4 v3, 0x0

    .line 28
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 31
    .local v1, "coreCount":I
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/exynos_info/core_status"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_71

    .line 34
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_e
    :goto_e
    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_70

    .line 35
    const-string v5, "cpu "

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 36
    const-string v5, "cpu "

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 37
    .local v4, "strs":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_41

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "little"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_e

    :cond_41
    const-string/jumbo v5, "noncpu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_47} :catch_4d
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_47} :catch_71

    move-result v5

    if-nez v5, :cond_e

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 44
    .end local v4    # "strs":[Ljava/lang/String;
    :catch_4d
    move-exception v2

    .line 45
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 46
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JAVA getCPUCoreCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_70} :catch_71

    .line 54
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_70
    :goto_70
    return v1

    .line 50
    :catch_71
    move-exception v2

    .line 51
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 52
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------ getCPUCoreCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70
.end method

.method public static getCPUCoreStatus(I)Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    .registers 9
    .param p0, "coreNu"    # I

    .prologue
    const/4 v5, 0x0

    .line 67
    new-instance v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;

    invoke-direct {v1}, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;-><init>()V

    .line 68
    .local v1, "coreStatus":Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I

    .line 69
    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z

    .line 70
    const/4 v3, 0x0

    .line 73
    .local v3, "line":Ljava/lang/String;
    :try_start_b
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/exynos_info/core_status"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_17} :catch_8f

    .line 77
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_17
    :try_start_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 80
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "little"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 81
    const/4 v5, 0x1

    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I

    .line 87
    :goto_45
    const-string v5, ": "

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 88
    .local v4, "strs":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_b4

    .line 89
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z

    .line 109
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "strs":[Ljava/lang/String;
    :cond_5a
    :goto_5a
    return-object v1

    .line 82
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_5b
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b0

    .line 83
    const/4 v5, 0x2

    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6a} :catch_6b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_6a} :catch_8f

    goto :goto_45

    .line 98
    :catch_6b
    move-exception v2

    .line 99
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JAVA getCPUCoreStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_8e} :catch_8f

    goto :goto_5a

    .line 104
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_8f
    move-exception v2

    .line 105
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 106
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------ getCPUCoreStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5a

    .line 85
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_b0
    const/4 v5, 0x0

    :try_start_b1
    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I

    goto :goto_45

    .line 90
    .restart local v4    # "strs":[Ljava/lang/String;
    :cond_b4
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c3

    .line 91
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z

    goto :goto_5a

    .line 93
    :cond_c3
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c6} :catch_6b
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_c6} :catch_8f

    goto :goto_5a
.end method

.method public static getCpuInfo()Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;
    .registers 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 124
    new-instance v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;

    invoke-direct {v1}, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;-><init>()V

    .line 125
    .local v1, "cpuInfo":Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->processor:Ljava/lang/String;

    .line 126
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->features:Ljava/lang/String;

    .line 127
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuImplementer:I

    .line 128
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuArchitecture:Ljava/lang/String;

    .line 129
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuVariant:I

    .line 130
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuPart:I

    .line 131
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuRevision:I

    .line 132
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->hardware:Ljava/lang/String;

    .line 134
    const/4 v4, 0x0

    .line 137
    .local v4, "line":Ljava/lang/String;
    :try_start_20
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2c} :catch_8a

    .line 141
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_74

    .line 142
    const-string v6, ": "

    const/4 v7, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 144
    .local v5, "strs":[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v8, :cond_2c

    .line 145
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Processor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_75

    .line 146
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->processor:Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_50} :catch_51
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_50} :catch_8a

    goto :goto_2c

    .line 173
    .end local v5    # "strs":[Ljava/lang/String;
    :catch_51
    move-exception v2

    .line 174
    .local v2, "e":Ljava/lang/Exception;
    :try_start_52
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    const-string v6, "SystemOp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JAVA getCpuInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_74} :catch_8a

    .line 184
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_74
    :goto_74
    return-object v1

    .line 147
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "strs":[Ljava/lang/String;
    :cond_75
    const/4 v6, 0x0

    :try_start_76
    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Features"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_ab

    .line 148
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->features:Ljava/lang/String;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_89} :catch_51
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_89} :catch_8a

    goto :goto_2c

    .line 179
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "strs":[Ljava/lang/String;
    :catch_8a
    move-exception v2

    .line 180
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 181
    const-string v6, "SystemOp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------ getCpuInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74

    .line 149
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "strs":[Ljava/lang/String;
    :cond_ab
    const/4 v6, 0x0

    :try_start_ac
    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU implementer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_ea

    .line 150
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_2c

    .line 152
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuImplementer:I

    goto/16 :goto_2c

    .line 154
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_ea
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU architecture"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_100

    .line 155
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuArchitecture:Ljava/lang/String;

    goto/16 :goto_2c

    .line 156
    :cond_100
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU variant"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_13f

    .line 157
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 158
    .restart local v3    # "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_2c

    .line 159
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuVariant:I

    goto/16 :goto_2c

    .line 161
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_13f
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU part"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_17e

    .line 162
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 163
    .restart local v3    # "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_2c

    .line 164
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuPart:I

    goto/16 :goto_2c

    .line 166
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_17e
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU revision"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_19a

    .line 167
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuRevision:I

    goto/16 :goto_2c

    .line 168
    :cond_19a
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2c

    .line 169
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->hardware:Ljava/lang/String;
    :try_end_1ae
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_1ae} :catch_51
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_1ae} :catch_8a

    goto/16 :goto_2c
.end method

.method public static getDFSPowerLevel()I
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "edsService":Landroid/os/ISecExternalDisplayService;
    const-string v3, "SecExternalDisplayService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 211
    if-eqz v1, :cond_12

    .line 213
    :try_start_e
    invoke-interface {v1}, Landroid/os/ISecExternalDisplayService;->SecExternalDisplayGetFPS()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_13
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_18

    move-result v2

    .line 223
    :cond_12
    :goto_12
    return v2

    .line 214
    :catch_13
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 218
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_12
.end method

.method public static getDisplayRefreshRate()F
    .registers 6

    .prologue
    .line 249
    invoke-static {}, getDFSPowerLevel()I

    move-result v0

    .line 250
    .local v0, "dfs":I
    if-lez v0, :cond_a

    const/16 v2, 0x64

    if-le v0, v2, :cond_2a

    .line 251
    :cond_a
    const-string v2, "SystemOp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRefreshRate getDFSPowerLevel failed: dfs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x0

    .line 259
    :goto_29
    return v1

    .line 257
    :cond_2a
    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x42300000    # 44.0f

    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 259
    .local v1, "refreshRate":F
    goto :goto_29
.end method

.method public static isDFSAvailable()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 229
    const/4 v1, 0x0

    .line 230
    .local v1, "edsService":Landroid/os/ISecExternalDisplayService;
    const-string v3, "SecExternalDisplayService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_13

    .line 234
    const/4 v3, -0x1

    :try_start_f
    invoke-interface {v1, v3}, Landroid/os/ISecExternalDisplayService;->SecExternalDisplaySetFPS(I)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_12} :catch_14
    .catch Ljava/lang/NoSuchMethodError; {:try_start_f .. :try_end_12} :catch_19

    move-result v2

    .line 244
    :cond_13
    :goto_13
    return v2

    .line 235
    :catch_14
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_13

    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_13
.end method

.method public static isSamsungDevice()Z
    .registers 2

    .prologue
    .line 16
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 17
    .local v0, "brand":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 19
    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 20
    const/4 v1, 0x1

    .line 22
    :goto_14
    return v1

    :cond_15
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public static setDFSPowerLevel(I)Z
    .registers 5
    .param p0, "powerLevel"    # I

    .prologue
    const/4 v2, 0x0

    .line 188
    const/4 v1, 0x0

    .line 189
    .local v1, "edsService":Landroid/os/ISecExternalDisplayService;
    const-string v3, "SecExternalDisplayService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ISecExternalDisplayService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ISecExternalDisplayService;

    move-result-object v1

    .line 191
    if-eqz v1, :cond_12

    .line 193
    :try_start_e
    invoke-interface {v1, p0}, Landroid/os/ISecExternalDisplayService;->SecExternalDisplaySetFPS(I)Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_11} :catch_13
    .catch Ljava/lang/NoSuchMethodError; {:try_start_e .. :try_end_11} :catch_18

    move-result v2

    .line 203
    :cond_12
    :goto_12
    return v2

    .line 194
    :catch_13
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_12

    .line 198
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_18
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_12
.end method

.method public static setDisplayRefreshRate(F)Z
    .registers 5
    .param p0, "fps"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x41700000    # 15.0f

    .line 263
    cmpg-float v2, p0, v3

    if-ltz v2, :cond_d

    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_16

    .line 264
    :cond_d
    const-string v2, "SystemOp"

    const-string/jumbo v3, "setDisplayRefreshRate input fps is outof range [15-60] "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_15
    return v1

    .line 267
    :cond_16
    sub-float v2, p0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42300000    # 44.0f

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 269
    .local v0, "DFSPowerLevel":I
    invoke-static {v0}, setDFSPowerLevel(I)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 270
    const-string v2, "SystemOp"

    const-string/jumbo v3, "setDisplayRefreshRate java failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 273
    :cond_2e
    const/4 v1, 0x1

    goto :goto_15
.end method
