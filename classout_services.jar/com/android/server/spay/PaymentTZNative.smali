.class Lcom/android/server/spay/PaymentTZNative;
.super Ljava/lang/Object;
.source "PaymentTZNative.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field private mMOPTZNativePtr_:J

.field private mRecvBufSize:I

.field private mSendBufSize:I

.field private mTAId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7
    .param p1, "taId"    # I
    .param p2, "sendbufsize"    # I
    .param p3, "recvbufsize"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative constructor: taId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_1f
    iput p1, p0, mTAId:I

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mMOPTZNativePtr_:J

    .line 27
    iput p2, p0, mSendBufSize:I

    .line 28
    iput p3, p0, mRecvBufSize:I

    .line 29
    return-void
.end method

.method private native nativeGenerateDeviceCertificates(Ljava/lang/String;)Z
.end method

.method private native nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z
.end method


# virtual methods
.method public generateDeviceCertificates(Ljava/lang/String;)Z
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative::generateDeviceCertificates: service ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1c
    invoke-direct {p0, p1}, nativeGenerateDeviceCertificates(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadTA(IJJ)Z
    .registers 14
    .param p1, "taFd"    # I
    .param p2, "taOffset"    # J
    .param p4, "taSize"    # J

    .prologue
    .line 32
    iget-wide v0, p0, mMOPTZNativePtr_:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    .line 33
    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::loadTA called for TA that is already loaded. Call Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    const/4 v0, 0x1

    .line 49
    :goto_10
    return v0

    .line 37
    :cond_11
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1f

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p4, v0

    if-lez v0, :cond_28

    .line 38
    :cond_1f
    const-string v0, "PaymentManagerService"

    const-string v1, "SpayFw_loadTA: cannot get ta offset or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    goto :goto_10

    .line 42
    :cond_28
    long-to-int v2, p2

    long-to-int v3, p4

    iget v4, p0, mTAId:I

    iget v5, p0, mSendBufSize:I

    iget v6, p0, mRecvBufSize:I

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, nativeCreateTLCommunicationContext(IIIIII)J

    move-result-wide v0

    iput-wide v0, p0, mMOPTZNativePtr_:J

    .line 43
    iget-wide v0, p0, mMOPTZNativePtr_:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_49

    .line 44
    const-string v0, "PaymentManagerService"

    const-string v1, "Error: nativeCreateTLCommunicationContext failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/4 v0, 0x0

    goto :goto_10

    .line 48
    :cond_49
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_67

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PaymentTZNative::loadTA: mMOPTZNativePtr_ = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, mMOPTZNativePtr_:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_67
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public native nativeCreateTLCommunicationContext(IIIIII)J
.end method

.method public native nativeDestroyTLCommunicationContext()V
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 8
    .param p1, "request"    # Landroid/spay/TACommandRequest;

    .prologue
    .line 65
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_28

    const-string v2, "PaymentManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PaymentTZNative::processTACommand: request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; mMOPTZNativePtr_ = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, mMOPTZNativePtr_:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_28
    new-instance v0, Landroid/spay/TACommandResponse;

    invoke-direct {v0}, Landroid/spay/TACommandResponse;-><init>()V

    .line 67
    .local v0, "response":Landroid/spay/TACommandResponse;
    invoke-direct {p0, p1, v0}, nativeProcessTACommand(Landroid/spay/TACommandRequest;Landroid/spay/TACommandResponse;)Z

    move-result v1

    .line 68
    .local v1, "ret":Z
    if-nez v1, :cond_3b

    .line 69
    const-string v2, "PaymentManagerService"

    const-string v3, "PaymentTZNative::processTACommand: Error: nativeProcessTACommand returned failure"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v0, 0x0

    .line 72
    .end local v0    # "response":Landroid/spay/TACommandResponse;
    :cond_3b
    return-object v0
.end method

.method public unloadTA()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 54
    iget-wide v0, p0, mMOPTZNativePtr_:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 55
    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::unloadTA called for TA that is not loaded. Call Ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_f
    :goto_f
    return-void

    .line 59
    :cond_10
    invoke-virtual {p0}, nativeDestroyTLCommunicationContext()V

    .line 60
    iput-wide v2, p0, mMOPTZNativePtr_:J

    .line 61
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "PaymentManagerService"

    const-string v1, "PaymentTZNative::unloadTA called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method
