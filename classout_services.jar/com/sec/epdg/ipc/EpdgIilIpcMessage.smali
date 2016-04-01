.class public Lcom/sec/epdg/ipc/EpdgIilIpcMessage;
.super Lcom/sec/epdg/ipc/EpdgIpcMessage;
.source "EpdgIilIpcMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[NETIPCMESSAGE]"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "mainCmd"    # I
    .param p2, "subCmd"    # I
    .param p3, "cmdType"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>(III)V

    .line 19
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .param p1, "data"    # [B
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/ipc/EpdgIpcMessage;-><init>([BI)V

    .line 23
    return-void
.end method


# virtual methods
.method public decodeIilSsacInfo()Lcom/sec/epdg/ipc/EpdgIilSsacInfo;
    .registers 8

    .prologue
    .line 27
    const-string v5, "[NETIPCMESSAGE]"

    const-string/jumbo v6, "decodeIilSsacInfo()"

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, mIpcBody:[B

    .line 29
    .local v0, "ipcBody":[B
    const/4 v5, 0x0

    aget-byte v3, v0, v5

    .line 30
    .local v3, "voiceFactor":I
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x0

    add-int/2addr v5, v6

    mul-int/lit16 v4, v5, 0x3e8

    .line 31
    .local v4, "voiceTime":I
    const/4 v5, 0x3

    aget-byte v1, v0, v5

    .line 32
    .local v1, "videoFactor":I
    const/4 v5, 0x5

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x4

    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x0

    add-int/2addr v5, v6

    mul-int/lit16 v2, v5, 0x3e8

    .line 34
    .local v2, "videoTime":I
    new-instance v5, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;

    invoke-direct {v5, v3, v4, v1, v2}, Lcom/sec/epdg/ipc/EpdgIilSsacInfo;-><init>(IIII)V

    return-object v5
.end method
