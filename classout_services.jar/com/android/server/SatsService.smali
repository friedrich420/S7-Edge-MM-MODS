.class public final Lcom/android/server/SatsService;
.super Lcom/samsung/android/service/sats/ISatsService$Stub;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SatsService$AtCmdHandler;
    }
.end annotation


# static fields
.field private static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field private static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field private static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field public static final SATS_EXCEPTION_ERROR:I = -0x7

.field public static final SATS_FLAG_NOT_EXISTS:I = -0x2

.field public static final SATS_NO_ERROR:I = 0x0

.field public static final SATS_RETURN_INVALID_ARGUMENTS:I = -0x5

.field public static final SATS_RETURN_NATIVE_ERROR:I = -0x1

.field public static final SATS_RETURN_PERMISSION_DENIED:I = -0x4

.field public static final SATS_SERVICE_NOT_AVAILABLE:I = -0x6

.field public static final SATS_SERVICE_NOT_SUPPORTED:I = 0x0

.field public static final SATS_SERVICE_SUPPORTED:I = 0x1

.field public static final SATS_STRING_NOT_EXISTS:I = -0x3

.field private static final TAG:Ljava/lang/String; = "SatsService"

.field private static mContext:Landroid/content/Context;

.field private static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field private cmdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorCode:I

.field private mThreadUart:Ljava/lang/Thread;

.field private mThreadUartGoWait:Z

.field private mThreadUsb:Ljava/lang/Thread;

.field private final mUEventObserver:Landroid/os/UEventObserver;

.field private rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

.field private serviceInterfaces:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/IWorkOnAt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mLockUEvent:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/service/sats/ISatsService$Stub;-><init>()V

    .line 66
    iput-boolean v4, p0, mThreadUartGoWait:Z

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, serviceInterfaces:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, cmdList:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Lcom/android/server/SatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SatsService$1;-><init>(Lcom/android/server/SatsService;)V

    iput-object v0, p0, mUEventObserver:Landroid/os/UEventObserver;

    .line 74
    sput-object p1, mContext:Landroid/content/Context;

    .line 75
    iput v3, p0, mErrorCode:I

    .line 77
    iget-object v0, p0, serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/ReactiveATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/ReactiveATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, cmdList:Ljava/util/ArrayList;

    const-string v1, "AT+REACTIVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/HdcptestATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/HdcptestATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, cmdList:Ljava/util/ArrayList;

    const-string v1, "AT+HDCPTEST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, serviceInterfaces:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/DevRootKeyATCmd;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/DevRootKeyATCmd;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, cmdList:Ljava/util/ArrayList;

    const-string v1, "AT+DEVROOTK"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string v2, "SATServiceAt"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, mThreadUart:Ljava/lang/Thread;

    .line 90
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/SatsService$AtCmdHandler;

    invoke-direct {v1, p0, v4}, Lcom/android/server/SatsService$AtCmdHandler;-><init>(Lcom/android/server/SatsService;I)V

    const-string v2, "SATServiceData"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, mThreadUsb:Ljava/lang/Thread;

    .line 91
    iget-object v0, p0, mThreadUart:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    iget-object v0, p0, mThreadUsb:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    iget-object v0, p0, mUEventObserver:Landroid/os/UEventObserver;

    const-string v1, "SWITCH_NAME"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 40
    sget-object v0, mLockUEvent:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/SatsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SatsService;

    .prologue
    .line 40
    iget-boolean v0, p0, mThreadUartGoWait:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/SatsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SatsService;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, mThreadUartGoWait:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/SatsService;)Ljava/lang/Thread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SatsService;

    .prologue
    .line 40
    iget-object v0, p0, mThreadUart:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SatsService;

    .prologue
    .line 40
    iget-object v0, p0, cmdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/SatsService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SatsService;

    .prologue
    .line 40
    iget-object v0, p0, serviceInterfaces:Ljava/util/ArrayList;

    return-object v0
.end method
