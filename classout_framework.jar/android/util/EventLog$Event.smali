.class public final Landroid/util/EventLog$Event;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field private static final DATA_OFFSET:I = 0x4

.field private static final FLOAT_TYPE:B = 0x4t

.field private static final HEADER_SIZE_OFFSET:I = 0x2

.field private static final INT_TYPE:B = 0x0t

.field private static final LENGTH_OFFSET:I = 0x0

.field private static final LIST_TYPE:B = 0x3t

.field private static final LONG_TYPE:B = 0x1t

.field private static final NANOSECONDS_OFFSET:I = 0x10

.field private static final PROCESS_OFFSET:I = 0x4

.field private static final SECONDS_OFFSET:I = 0xc

.field private static final STRING_TYPE:B = 0x2t

.field private static final THREAD_OFFSET:I = 0x8

.field private static final V1_PAYLOAD_START:I = 0x14


# instance fields
.field private final mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>([B)V
    .registers 4
    .param p1, "data"    # [B

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, mBuffer:Ljava/nio/ByteBuffer;

    .line 82
    iget-object v0, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 83
    return-void
.end method

.method private decodeObject()Ljava/lang/Object;
    .registers 10

    .prologue
    .line 131
    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 132
    .local v5, "type":B
    packed-switch v5, :pswitch_data_86

    .line 161
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown entry type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 134
    :pswitch_22
    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 158
    :cond_2c
    :goto_2c
    return-object v0

    .line 137
    :pswitch_2d
    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_2c

    .line 140
    :pswitch_38
    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_2c

    .line 144
    :pswitch_43
    :try_start_43
    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 145
    .local v3, "length":I
    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 146
    .local v4, "start":I
    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    add-int v7, v4, v3

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    new-instance v0, Ljava/lang/String;

    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v4, v3, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_63
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_63} :catch_64

    goto :goto_2c

    .line 148
    .end local v3    # "length":I
    .end local v4    # "start":I
    :catch_64
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v6, "EventLog"

    const-string v7, "UTF-8 is not supported"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v0, 0x0

    goto :goto_2c

    .line 154
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :pswitch_6e
    iget-object v6, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 155
    .restart local v3    # "length":I
    if-gez v3, :cond_78

    add-int/lit16 v3, v3, 0x100

    .line 156
    :cond_78
    new-array v0, v3, [Ljava/lang/Object;

    .line 157
    .local v0, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7b
    if-ge v2, v3, :cond_2c

    invoke-direct {p0}, decodeObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 132
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2d
        :pswitch_43
        :pswitch_6e
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized getData()Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 113
    monitor-enter p0

    :try_start_2
    iget-object v3, p0, mBuffer:Ljava/nio/ByteBuffer;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    .line 114
    .local v1, "offset":I
    if-nez v1, :cond_d

    .line 115
    const/16 v1, 0x14

    .line 117
    :cond_d
    iget-object v3, p0, mBuffer:Ljava/nio/ByteBuffer;

    iget-object v4, p0, mBuffer:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    iget-object v3, p0, mBuffer:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v1, 0x4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 119
    invoke-direct {p0}, decodeObject()Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_24} :catch_27
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_24} :catch_48
    .catchall {:try_start_2 .. :try_end_24} :catchall_45

    move-result-object v2

    .line 125
    .end local v1    # "offset":I
    :goto_25
    monitor-exit p0

    return-object v2

    .line 120
    :catch_27
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_28
    const-string v3, "EventLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal entry payload: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, getTag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_45

    goto :goto_25

    .line 113
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_45
    move-exception v2

    monitor-exit p0

    throw v2

    .line 123
    :catch_48
    move-exception v0

    .line 124
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    :try_start_49
    const-string v3, "EventLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Truncated entry payload: tag="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, getTag()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_65
    .catchall {:try_start_49 .. :try_end_65} :catchall_45

    goto :goto_25
.end method

.method public getProcessId()I
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, mBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTag()I
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, mBuffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 104
    .local v0, "offset":I
    if-nez v0, :cond_b

    .line 105
    const/16 v0, 0x14

    .line 107
    :cond_b
    iget-object v1, p0, mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public getThreadId()I
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getTimeNanos()J
    .registers 5

    .prologue
    .line 97
    iget-object v0, p0, mBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x3b9aca00

    mul-long/2addr v0, v2

    iget-object v2, p0, mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
