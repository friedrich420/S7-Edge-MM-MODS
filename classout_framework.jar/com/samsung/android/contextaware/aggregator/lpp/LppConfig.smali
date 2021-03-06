.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
.super Ljava/lang/Object;
.source "LppConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private GPSAlways:Z

.field public GPSKeepOn_Timer:I

.field public GPSRequest_APDR:I

.field private GPSRequest_By:I

.field public GPSRequest_Timer:I

.field private LogConfig:Ljava/lang/String;

.field private LogFlags:[Z

.field private LogFolderName:Ljava/lang/String;

.field private flag_log:Z

.field public transient looper:Landroid/os/Looper;

.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gPSRequest_APDR"    # I
    .param p3, "gPSRequest_Timer"    # I
    .param p4, "gPSKeepOn_Timer"    # I

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, flag_log:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, GPSAlways:Z

    .line 19
    const-string v0, "LPPTest"

    iput-object v0, p0, LogFolderName:Ljava/lang/String;

    .line 20
    const-string v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, LogConfig:Ljava/lang/String;

    .line 22
    iput v1, p0, GPSRequest_By:I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, GPSRequest_APDR:I

    .line 24
    const/16 v0, 0x2d

    iput v0, p0, GPSRequest_Timer:I

    .line 25
    const/16 v0, 0xf

    iput v0, p0, GPSKeepOn_Timer:I

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_30

    iput-object v0, p0, LogFlags:[Z

    .line 57
    iput p2, p0, GPSRequest_APDR:I

    .line 58
    iput p3, p0, GPSRequest_Timer:I

    .line 59
    iput p4, p0, GPSKeepOn_Timer:I

    .line 60
    iput-object p1, p0, mcontext:Landroid/content/Context;

    .line 61
    return-void

    .line 26
    :array_30
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .registers 7
    .param p1, "mlppconfig"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v3, p0, flag_log:Z

    .line 18
    const/4 v2, 0x1

    iput-boolean v2, p0, GPSAlways:Z

    .line 19
    const-string v2, "LPPTest"

    iput-object v2, p0, LogFolderName:Ljava/lang/String;

    .line 20
    const-string v2, "[LPPTest Configuration]\r\n"

    iput-object v2, p0, LogConfig:Ljava/lang/String;

    .line 22
    iput v3, p0, GPSRequest_By:I

    .line 23
    const/16 v2, 0x64

    iput v2, p0, GPSRequest_APDR:I

    .line 24
    const/16 v2, 0x2d

    iput v2, p0, GPSRequest_Timer:I

    .line 25
    const/16 v2, 0xf

    iput v2, p0, GPSKeepOn_Timer:I

    .line 26
    new-array v2, v4, [Z

    fill-array-data v2, :array_56

    iput-object v2, p0, LogFlags:[Z

    .line 64
    invoke-virtual {p1}, getLogFlags()[Z

    move-result-object v1

    .line 65
    .local v1, "logflags":[Z
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_2c
    if-ge v0, v4, :cond_37

    .line 66
    iget-object v2, p0, LogFlags:[Z

    aget-boolean v3, v1, v0

    aput-boolean v3, v2, v0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 68
    :cond_37
    iget v2, p1, GPSRequest_APDR:I

    iput v2, p0, GPSRequest_APDR:I

    .line 69
    iget v2, p1, GPSRequest_Timer:I

    iput v2, p0, GPSRequest_Timer:I

    .line 70
    iget v2, p1, GPSKeepOn_Timer:I

    iput v2, p0, GPSKeepOn_Timer:I

    .line 71
    invoke-virtual {p1}, getConfigStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LogConfig:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, getLogFolderNameStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LogFolderName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, mcontext:Landroid/content/Context;

    .line 74
    return-void

    .line 26
    :array_56
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ZZZZIIIILjava/lang/String;Ljava/lang/String;)V
    .registers 14
    .param p1, "Log_Sensor"    # Z
    .param p2, "Log_PDRLOC"    # Z
    .param p3, "Log_Result"    # Z
    .param p4, "Log_ResultKML"    # Z
    .param p5, "gPSRequest_By"    # I
    .param p6, "gPSRequest_APDR"    # I
    .param p7, "gPSRequest_Timer"    # I
    .param p8, "gPSKeepOn_Timer"    # I
    .param p9, "strConfig"    # Ljava/lang/String;
    .param p10, "strFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, flag_log:Z

    .line 18
    iput-boolean v2, p0, GPSAlways:Z

    .line 19
    const-string v0, "LPPTest"

    iput-object v0, p0, LogFolderName:Ljava/lang/String;

    .line 20
    const-string v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, LogConfig:Ljava/lang/String;

    .line 22
    iput v1, p0, GPSRequest_By:I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, GPSRequest_APDR:I

    .line 24
    const/16 v0, 0x2d

    iput v0, p0, GPSRequest_Timer:I

    .line 25
    const/16 v0, 0xf

    iput v0, p0, GPSKeepOn_Timer:I

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_46

    iput-object v0, p0, LogFlags:[Z

    .line 44
    iget-object v0, p0, LogFlags:[Z

    aput-boolean p1, v0, v1

    .line 45
    iget-object v0, p0, LogFlags:[Z

    aput-boolean p2, v0, v2

    .line 46
    iget-object v0, p0, LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 47
    iget-object v0, p0, LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 48
    iput p5, p0, GPSRequest_By:I

    .line 49
    iput p6, p0, GPSRequest_APDR:I

    .line 50
    iput p7, p0, GPSRequest_Timer:I

    .line 51
    iput p8, p0, GPSKeepOn_Timer:I

    .line 52
    iput-object p9, p0, LogConfig:Ljava/lang/String;

    .line 53
    iput-object p10, p0, LogFolderName:Ljava/lang/String;

    .line 54
    return-void

    .line 26
    :array_46
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(ZZZZIZLjava/lang/String;)V
    .registers 11
    .param p1, "Log_Sensor"    # Z
    .param p2, "Log_PDRLOC"    # Z
    .param p3, "Log_Result"    # Z
    .param p4, "Log_ResultKML"    # Z
    .param p5, "APDR_Request"    # I
    .param p6, "GPS_Always"    # Z
    .param p7, "Log_FolderN"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean v1, p0, flag_log:Z

    .line 18
    iput-boolean v2, p0, GPSAlways:Z

    .line 19
    const-string v0, "LPPTest"

    iput-object v0, p0, LogFolderName:Ljava/lang/String;

    .line 20
    const-string v0, "[LPPTest Configuration]\r\n"

    iput-object v0, p0, LogConfig:Ljava/lang/String;

    .line 22
    iput v1, p0, GPSRequest_By:I

    .line 23
    const/16 v0, 0x64

    iput v0, p0, GPSRequest_APDR:I

    .line 24
    const/16 v0, 0x2d

    iput v0, p0, GPSRequest_Timer:I

    .line 25
    const/16 v0, 0xf

    iput v0, p0, GPSKeepOn_Timer:I

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Z

    fill-array-data v0, :array_3e

    iput-object v0, p0, LogFlags:[Z

    .line 32
    iget-object v0, p0, LogFlags:[Z

    aput-boolean p1, v0, v1

    .line 33
    iget-object v0, p0, LogFlags:[Z

    aput-boolean p2, v0, v2

    .line 34
    iget-object v0, p0, LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 35
    iget-object v0, p0, LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 36
    iput-boolean p6, p0, GPSAlways:Z

    .line 37
    iput-object p7, p0, LogFolderName:Ljava/lang/String;

    .line 39
    return-void

    .line 26
    :array_3e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public getConfigStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, LogConfig:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public getLogCommand()Z
    .registers 2

    .prologue
    .line 99
    iget-boolean v0, p0, flag_log:Z

    return v0
.end method

.method public getLogFlags()[Z
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, LogFlags:[Z

    return-object v0
.end method

.method public getLogFolderNameStr()Ljava/lang/String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, LogFolderName:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    iput-object p1, p0, mcontext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method public setLogParameter(ZZZZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "Log_Sensor"    # Z
    .param p2, "Log_PDRLOC"    # Z
    .param p3, "Log_Result"    # Z
    .param p4, "Log_ResultKML"    # Z
    .param p5, "strConfig"    # Ljava/lang/String;
    .param p6, "strFolderName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 77
    iput-boolean v2, p0, flag_log:Z

    .line 78
    iget-object v0, p0, LogFlags:[Z

    const/4 v1, 0x0

    aput-boolean p1, v0, v1

    .line 79
    iget-object v0, p0, LogFlags:[Z

    aput-boolean p2, v0, v2

    .line 80
    iget-object v0, p0, LogFlags:[Z

    const/4 v1, 0x2

    aput-boolean p3, v0, v1

    .line 81
    iget-object v0, p0, LogFlags:[Z

    const/4 v1, 0x3

    aput-boolean p4, v0, v1

    .line 82
    iput-object p5, p0, LogConfig:Ljava/lang/String;

    .line 83
    iput-object p6, p0, LogFolderName:Ljava/lang/String;

    .line 84
    return-void
.end method
