.class public Lcom/android/server/job/JobStore;
.super Ljava/lang/Object;
.source "JobStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobStore$1;,
        Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;,
        Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final JOBS_FILE_VERSION:I = 0x0

.field private static final MAX_OPS_BEFORE_WRITE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobStore"

.field private static final XML_TAG_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_TAG_ONEOFF:Ljava/lang/String; = "one-off"

.field private static final XML_TAG_PARAMS_CONSTRAINTS:Ljava/lang/String; = "constraints"

.field private static final XML_TAG_PERIODIC:Ljava/lang/String; = "periodic"

.field private static sSingleton:Lcom/android/server/job/JobStore;

.field private static final sSingletonLock:Ljava/lang/Object;


# instance fields
.field final mContext:Landroid/content/Context;

.field private mDirtyOperations:I

.field private final mIoHandler:Landroid/os/Handler;

.field final mJobSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mJobsFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sSingletonLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dataDir"    # Ljava/io/File;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, mIoHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 108
    const/4 v2, 0x0

    iput v2, p0, mDirtyOperations:I

    .line 110
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "system"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "job"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 112
    .local v0, "jobDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 113
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "jobs.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, mJobsFile:Landroid/util/AtomicFile;

    .line 115
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, mJobSet:Landroid/util/ArraySet;

    .line 117
    iget-object v2, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, readJobMapFromDisk(Landroid/util/ArraySet;)V

    .line 118
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/job/JobStore;)Landroid/util/AtomicFile;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobStore;

    .prologue
    .line 65
    iget-object v0, p0, mJobsFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/job/JobStore;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/job/JobStore;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, mDirtyOperations:I

    return p1
.end method

.method static initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;
    .registers 5
    .param p0, "jobManagerService"    # Lcom/android/server/job/JobSchedulerService;

    .prologue
    .line 84
    sget-object v1, sSingletonLock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_3
    sget-object v0, sSingleton:Lcom/android/server/job/JobStore;

    if-nez v0, :cond_16

    .line 86
    new-instance v0, Lcom/android/server/job/JobStore;

    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v2, v3}, <init>(Landroid/content/Context;Ljava/io/File;)V

    sput-object v0, sSingleton:Lcom/android/server/job/JobStore;

    .line 89
    :cond_16
    sget-object v0, sSingleton:Lcom/android/server/job/JobStore;

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public static initAndGetForTesting(Landroid/content/Context;Ljava/io/File;)Lcom/android/server/job/JobStore;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dataDir"    # Ljava/io/File;

    .prologue
    .line 98
    new-instance v0, Lcom/android/server/job/JobStore;

    invoke-direct {v0, p0, p1}, <init>(Landroid/content/Context;Ljava/io/File;)V

    .line 99
    .local v0, "jobStoreUnderTest":Lcom/android/server/job/JobStore;
    invoke-virtual {v0}, clear()V

    .line 100
    return-object v0
.end method

.method private maybeWriteStatusToDiskAsync()V
    .registers 4

    .prologue
    .line 254
    iget v0, p0, mDirtyOperations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mDirtyOperations:I

    .line 255
    iget v0, p0, mDirtyOperations:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_16

    .line 259
    iget-object v0, p0, mIoHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/job/JobStore$WriteJobsMapToDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Lcom/android/server/job/JobStore$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 261
    :cond_16
    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 127
    iget-object v1, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    .local v0, "replaced":Z
    iget-object v1, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 130
    invoke-direct {p0}, maybeWriteStatusToDiskAsync()V

    .line 135
    :cond_14
    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 180
    invoke-direct {p0}, maybeWriteStatusToDiskAsync()V

    .line 181
    return-void
.end method

.method containsJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 3
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 152
    iget-object v0, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsJobIdForUid(II)Z
    .registers 6
    .param p1, "jobId"    # I
    .param p2, "uId"    # I

    .prologue
    .line 142
    iget-object v2, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_23

    .line 143
    iget-object v2, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 144
    .local v1, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    if-ne v2, p2, :cond_20

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    if-ne v2, p1, :cond_20

    .line 145
    const/4 v2, 0x1

    .line 148
    .end local v1    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :goto_1f
    return v2

    .line 142
    .restart local v1    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 148
    .end local v1    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_23
    const/4 v2, 0x0

    goto :goto_1f
.end method

.method public getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    .line 221
    iget-object v2, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 224
    .local v1, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    if-ne v2, p1, :cond_6

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v2

    if-ne v2, p2, :cond_6

    .line 228
    .end local v1    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :goto_1e
    return-object v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public getJobs()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, mJobSet:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getJobsByUid(I)Ljava/util/List;
    .registers 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "matchingJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 207
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 208
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_b

    .line 209
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 212
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_21
    return-object v1
.end method

.method public getJobsByUser(I)Ljava/util/List;
    .registers 6
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v1, "matchingJobs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    iget-object v3, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 192
    .local v2, "ts":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_b

    .line 193
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 196
    .end local v2    # "ts":Lcom/android/server/job/controllers/JobStatus;
    :cond_25
    return-object v1
.end method

.method public readJobMapFromDisk(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 265
    .local p1, "jobSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    new-instance v0, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;

    invoke-direct {v0, p0, p1}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;-><init>(Lcom/android/server/job/JobStore;Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Lcom/android/server/job/JobStore$ReadJobMapFromDiskRunnable;->run()V

    .line 266
    return-void
.end method

.method public remove(Lcom/android/server/job/controllers/JobStatus;)Z
    .registers 4
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 164
    iget-object v1, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 165
    .local v0, "removed":Z
    if-nez v0, :cond_a

    .line 169
    const/4 v0, 0x0

    .line 174
    .end local v0    # "removed":Z
    :cond_9
    :goto_9
    return v0

    .line 171
    .restart local v0    # "removed":Z
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 172
    invoke-direct {p0}, maybeWriteStatusToDiskAsync()V

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, mJobSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method
