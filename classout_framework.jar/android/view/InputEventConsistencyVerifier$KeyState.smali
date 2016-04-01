.class final Landroid/view/InputEventConsistencyVerifier$KeyState;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputEventConsistencyVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyState"
.end annotation


# static fields
.field private static mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private static mRecycledListLock:Ljava/lang/Object;


# instance fields
.field public deviceId:I

.field public keyCode:I

.field public next:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field public source:I

.field public unhandled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 768
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mRecycledListLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    return-void
.end method

.method public static obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .registers 6
    .param p0, "deviceId"    # I
    .param p1, "source"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 782
    sget-object v2, mRecycledListLock:Ljava/lang/Object;

    monitor-enter v2

    .line 783
    :try_start_3
    sget-object v0, mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 784
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v0, :cond_16

    .line 785
    iget-object v1, v0, next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v1, mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 789
    :goto_b
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    .line 790
    iput p0, v0, deviceId:I

    .line 791
    iput p1, v0, source:I

    .line 792
    iput p2, v0, keyCode:I

    .line 793
    const/4 v1, 0x0

    iput-boolean v1, v0, unhandled:Z

    .line 794
    return-object v0

    .line 787
    :cond_16
    :try_start_16
    new-instance v0, Landroid/view/InputEventConsistencyVerifier$KeyState;

    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    invoke-direct {v0}, <init>()V

    .restart local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    goto :goto_b

    .line 789
    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_1c

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 3

    .prologue
    .line 798
    sget-object v1, mRecycledListLock:Ljava/lang/Object;

    monitor-enter v1

    .line 799
    :try_start_3
    sget-object v0, mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v0, p0, next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 800
    iget-object v0, p0, next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    sput-object v0, mRecycledList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 801
    monitor-exit v1

    .line 802
    return-void

    .line 801
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v0
.end method
