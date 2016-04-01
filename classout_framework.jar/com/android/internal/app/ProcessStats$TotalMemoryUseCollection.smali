.class public Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TotalMemoryUseCollection"
.end annotation


# instance fields
.field final memStates:[I

.field public processStatePss:[J

.field public processStateSamples:[I

.field public processStateTime:[J

.field public processStateWeight:[D

.field final screenStates:[I

.field public sysMemCachedWeight:D

.field public sysMemFreeWeight:D

.field public sysMemKernelWeight:D

.field public sysMemNativeWeight:D

.field public sysMemSamples:I

.field public sysMemUsage:[J

.field public sysMemZRamWeight:D

.field public totalTime:J


# direct methods
.method public constructor <init>([I[I)V
    .registers 5
    .param p1, "_screenStates"    # [I
    .param p2, "_memStates"    # [I

    .prologue
    const/16 v1, 0xe

    .line 3861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3867
    new-array v0, v1, [J

    iput-object v0, p0, processStatePss:[J

    .line 3868
    new-array v0, v1, [D

    iput-object v0, p0, processStateWeight:[D

    .line 3869
    new-array v0, v1, [J

    iput-object v0, p0, processStateTime:[J

    .line 3870
    new-array v0, v1, [I

    iput-object v0, p0, processStateSamples:[I

    .line 3871
    const/16 v0, 0x10

    new-array v0, v0, [J

    iput-object v0, p0, sysMemUsage:[J

    .line 3862
    iput-object p1, p0, screenStates:[I

    .line 3863
    iput-object p2, p0, memStates:[I

    .line 3864
    return-void
.end method
