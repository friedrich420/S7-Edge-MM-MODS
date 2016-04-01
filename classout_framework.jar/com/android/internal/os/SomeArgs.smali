.class public final Lcom/android/internal/os/SomeArgs;
.super Ljava/lang/Object;
.source "SomeArgs.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field static final WAIT_FINISHED:I = 0x2

.field static final WAIT_NONE:I = 0x0

.field static final WAIT_WAITING:I = 0x1

.field private static sPool:Lcom/android/internal/os/SomeArgs;

.field private static sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public arg3:Ljava/lang/Object;

.field public arg4:Ljava/lang/Object;

.field public arg5:Ljava/lang/Object;

.field public arg6:Ljava/lang/Object;

.field public arg7:Ljava/lang/Object;

.field public arg8:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field public argi4:I

.field public argi5:I

.field public argi6:I

.field private mInPool:Z

.field private mNext:Lcom/android/internal/os/SomeArgs;

.field mWaitState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, mWaitState:I

    .line 60
    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, arg1:Ljava/lang/Object;

    .line 107
    iput-object v0, p0, arg2:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, arg3:Ljava/lang/Object;

    .line 109
    iput-object v0, p0, arg4:Ljava/lang/Object;

    .line 110
    iput-object v0, p0, arg5:Ljava/lang/Object;

    .line 111
    iput-object v0, p0, arg6:Ljava/lang/Object;

    .line 112
    iput-object v0, p0, arg7:Ljava/lang/Object;

    .line 113
    iput-object v0, p0, arg8:Ljava/lang/Object;

    .line 114
    iput v1, p0, argi1:I

    .line 115
    iput v1, p0, argi2:I

    .line 116
    iput v1, p0, argi3:I

    .line 117
    iput v1, p0, argi4:I

    .line 118
    iput v1, p0, argi5:I

    .line 119
    iput v1, p0, argi6:I

    .line 120
    return-void
.end method

.method public static obtain()Lcom/android/internal/os/SomeArgs;
    .registers 3

    .prologue
    .line 63
    sget-object v2, sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 64
    :try_start_3
    sget v1, sPoolSize:I

    if-lez v1, :cond_1d

    .line 65
    sget-object v0, sPool:Lcom/android/internal/os/SomeArgs;

    .line 66
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    sget-object v1, sPool:Lcom/android/internal/os/SomeArgs;

    iget-object v1, v1, mNext:Lcom/android/internal/os/SomeArgs;

    sput-object v1, sPool:Lcom/android/internal/os/SomeArgs;

    .line 67
    const/4 v1, 0x0

    iput-object v1, v0, mNext:Lcom/android/internal/os/SomeArgs;

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, v0, mInPool:Z

    .line 69
    sget v1, sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, sPoolSize:I

    .line 70
    monitor-exit v2

    .line 72
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Lcom/android/internal/os/SomeArgs;

    invoke-direct {v0}, <init>()V

    monitor-exit v2

    goto :goto_1c

    .line 74
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method public complete()V
    .registers 3

    .prologue
    .line 78
    monitor-enter p0

    .line 79
    :try_start_1
    iget v0, p0, mWaitState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not waiting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0

    .line 82
    :cond_11
    const/4 v0, 0x2

    :try_start_12
    iput v0, p0, mWaitState:I

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 84
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_e

    .line 85
    return-void
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 88
    iget-boolean v0, p0, mInPool:Z

    if-eqz v0, :cond_c

    .line 89
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_c
    iget v0, p0, mWaitState:I

    if-eqz v0, :cond_11

    .line 103
    :goto_10
    return-void

    .line 94
    :cond_11
    sget-object v1, sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_14
    invoke-direct {p0}, clear()V

    .line 96
    sget v0, sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_2c

    .line 97
    sget-object v0, sPool:Lcom/android/internal/os/SomeArgs;

    iput-object v0, p0, mNext:Lcom/android/internal/os/SomeArgs;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, mInPool:Z

    .line 99
    sput-object p0, sPool:Lcom/android/internal/os/SomeArgs;

    .line 100
    sget v0, sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, sPoolSize:I

    .line 102
    :cond_2c
    monitor-exit v1

    goto :goto_10

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_14 .. :try_end_30} :catchall_2e

    throw v0
.end method
