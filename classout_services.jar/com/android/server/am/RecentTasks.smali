.class Lcom/android/server/am/RecentTasks;
.super Ljava/util/ArrayList;
.source "RecentTasks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# static fields
.field private static final MAX_RECENT_BITMAPS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_TASKS:Ljava/lang/String; = "ActivityManager"

.field private static sTaskRecordComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpRecents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpActivityInfo:Landroid/content/pm/ActivityInfo;

.field private final tmpAppInfo:Landroid/content/pm/ApplicationInfo;

.field private final tmpAvailActCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpAvailAppCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 590
    new-instance v0, Lcom/android/server/am/RecentTasks$1;

    invoke-direct {v0}, Lcom/android/server/am/RecentTasks$1;-><init>()V

    sput-object v0, sTaskRecordComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTmpRecents:Ljava/util/ArrayList;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, tmpAvailActCache:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, tmpAvailAppCache:Ljava/util/HashMap;

    .line 62
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    iput-object v0, p0, tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 63
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v0, p0, tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 66
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 67
    return-void
.end method

.method private final moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z
    .registers 16
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "taskIndex"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v12, -0x1

    .line 225
    invoke-virtual {p0}, size()I

    move-result v4

    .line 226
    .local v4, "recentsCount":I
    move-object v6, p1

    .line 227
    .local v6, "top":Lcom/android/server/am/TaskRecord;
    move v7, p2

    .line 228
    .local v7, "topIndex":I
    :goto_9
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_14

    if-lez v7, :cond_14

    .line 229
    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 230
    add-int/lit8 v7, v7, -0x1

    goto :goto_9

    .line 235
    :cond_14
    iget v10, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v10, v11, :cond_96

    move v5, v8

    .line 236
    .local v5, "sane":Z
    :goto_1b
    move v1, v7

    .line 237
    .local v1, "endIndex":I
    move-object v3, v6

    .line 238
    .local v3, "prev":Lcom/android/server/am/TaskRecord;
    :cond_1d
    if-ge v1, v4, :cond_52

    .line 239
    invoke-virtual {p0, v1}, get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 242
    .local v0, "cur":Lcom/android/server/am/TaskRecord;
    if-ne v0, v6, :cond_98

    .line 244
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_2f

    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-eq v10, v12, :cond_f3

    .line 245
    :cond_2f
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": first task has next affiliate: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v5, 0x0

    .line 301
    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_52
    :goto_52
    if-eqz v5, :cond_83

    .line 302
    if-ge v1, p2, :cond_83

    .line 303
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": did not extend to task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    const/4 v5, 0x0

    .line 308
    :cond_83
    if-eqz v5, :cond_1da

    .line 311
    move v2, v7

    .local v2, "i":I
    :goto_86
    if-gt v2, v1, :cond_1db

    .line 314
    invoke-virtual {p0, v2}, remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/TaskRecord;

    .line 315
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    sub-int v9, v2, v7

    invoke-virtual {p0, v9, v0}, add(ILjava/lang/Object;)V

    .line 311
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .end local v1    # "endIndex":I
    .end local v2    # "i":I
    .end local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .end local v5    # "sane":Z
    :cond_96
    move v5, v9

    .line 235
    goto :goto_1b

    .line 252
    .restart local v0    # "cur":Lcom/android/server/am/TaskRecord;
    .restart local v1    # "endIndex":I
    .restart local v3    # "prev":Lcom/android/server/am/TaskRecord;
    .restart local v5    # "sane":Z
    :cond_98
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v10, v3, :cond_a2

    iget v10, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    iget v11, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v10, v11, :cond_f3

    .line 254
    :cond_a2
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": middle task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has bad next affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", expected "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v5, 0x0

    .line 260
    goto/16 :goto_52

    .line 263
    :cond_f3
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-ne v10, v12, :cond_12c

    .line 265
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v10, :cond_52

    .line 266
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": last task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has previous affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v5, 0x0

    goto/16 :goto_52

    .line 275
    :cond_12c
    iget-object v10, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v10, :cond_16d

    .line 276
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has previous affiliate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but should be id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v5, 0x0

    .line 281
    goto/16 :goto_52

    .line 284
    :cond_16d
    iget v10, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v10, v11, :cond_1b0

    .line 285
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain @"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " has affiliated id "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but should be "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/4 v5, 0x0

    .line 290
    goto/16 :goto_52

    .line 292
    :cond_1b0
    move-object v3, v0

    .line 293
    add-int/lit8 v1, v1, 0x1

    .line 294
    if-lt v1, v4, :cond_1d

    .line 295
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad chain ran off index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": last task "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/4 v5, 0x0

    .line 298
    goto/16 :goto_52

    .end local v0    # "cur":Lcom/android/server/am/TaskRecord;
    :cond_1da
    move v8, v9

    .line 323
    :cond_1db
    return v8
.end method

.method private processNextAffiliateChainLocked(I)I
    .registers 14
    .param p1, "start"    # I

    .prologue
    .line 599
    invoke-virtual {p0, p1}, get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 600
    .local v6, "startTask":Lcom/android/server/am/TaskRecord;
    iget v0, v6, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 603
    .local v0, "affiliateId":I
    iget v9, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v9, v0, :cond_1a

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_1a

    iget-object v9, v6, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v9, :cond_1a

    .line 608
    const/4 v9, 0x1

    iput-boolean v9, v6, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 609
    add-int/lit8 v9, p1, 0x1

    .line 667
    :goto_19
    return v9

    .line 613
    :cond_1a
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 614
    invoke-virtual {p0}, size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "i":I
    :goto_25
    if-lt v2, p1, :cond_3c

    .line 615
    invoke-virtual {p0, v2}, get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/TaskRecord;

    .line 616
    .local v7, "task":Lcom/android/server/am/TaskRecord;
    iget v9, v7, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v9, v0, :cond_39

    .line 617
    invoke-virtual {p0, v2}, remove(I)Ljava/lang/Object;

    .line 618
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    :cond_39
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    .line 624
    .end local v7    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3c
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    sget-object v10, sTaskRecordComparator:Ljava/util/Comparator;

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 628
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 629
    .local v1, "first":Lcom/android/server/am/TaskRecord;
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 630
    iget-object v9, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_77

    .line 631
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 1 first.next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 633
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v1, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 636
    :cond_77
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 637
    .local v8, "tmpSize":I
    const/4 v2, 0x0

    :goto_7e
    add-int/lit8 v9, v8, -0x1

    if-ge v2, v9, :cond_111

    .line 638
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    .line 639
    .local v4, "next":Lcom/android/server/am/TaskRecord;
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    .line 640
    .local v5, "prev":Lcom/android/server/am/TaskRecord;
    iget-object v9, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v5, :cond_cf

    .line 641
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 2 next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setting prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    invoke-virtual {v4, v5}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 644
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 646
    :cond_cf
    iget-object v9, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eq v9, v4, :cond_10a

    .line 647
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 3 prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " setting next="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    invoke-virtual {v5, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 650
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 652
    :cond_10a
    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 637
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7e

    .line 655
    .end local v4    # "next":Lcom/android/server/am/TaskRecord;
    .end local v5    # "prev":Lcom/android/server/am/TaskRecord;
    :cond_111
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    add-int/lit8 v10, v8, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 656
    .local v3, "last":Lcom/android/server/am/TaskRecord;
    iget-object v9, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v9, :cond_143

    .line 657
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Link error 4 last.prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 659
    iget-object v9, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v9, v3, v10}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 663
    :cond_143
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v9}, addAll(ILjava/util/Collection;)Z

    .line 664
    iget-object v9, p0, mTmpRecents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 667
    add-int v9, p1, v8

    goto/16 :goto_19
.end method


# virtual methods
.method final addLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 16
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 327
    iget v11, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v12, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v11, v12, :cond_10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_10

    iget v11, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1a

    :cond_10
    const/4 v0, 0x1

    .line 331
    .local v0, "isAffiliated":Z
    :goto_11
    invoke-virtual {p0}, size()I

    move-result v6

    .line 333
    .local v6, "recentsCount":I
    iget-object v11, p1, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v11, :cond_1c

    .line 478
    :cond_19
    :goto_19
    return-void

    .line 327
    .end local v0    # "isAffiliated":Z
    .end local v6    # "recentsCount":I
    :cond_1a
    const/4 v0, 0x0

    goto :goto_11

    .line 339
    .restart local v0    # "isAffiliated":Z
    .restart local v6    # "recentsCount":I
    :cond_1c
    if-nez v0, :cond_27

    if-lez v6, :cond_27

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, get(I)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, p1, :cond_19

    .line 345
    :cond_27
    if-eqz v0, :cond_3c

    if-lez v6, :cond_3c

    iget-boolean v11, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v11, :cond_3c

    iget v12, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v12, v11, :cond_19

    .line 352
    :cond_3c
    const/4 v3, 0x0

    .line 355
    .local v3, "needAffiliationFix":Z
    if-nez v0, :cond_54

    .line 356
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v1

    .line 357
    .local v1, "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 358
    .local v7, "root":Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_54

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v11}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z

    move-result v11

    if-eqz v11, :cond_54

    .line 359
    const/4 v11, 0x0

    iput-boolean v11, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 366
    .end local v1    # "mApplicationInfos":Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    .end local v7    # "root":Lcom/android/server/am/ActivityRecord;
    :cond_54
    iget-boolean v11, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v11, :cond_75

    .line 367
    invoke-virtual {p0, p1}, indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 368
    .local v8, "taskIndex":I
    if-ltz v8, :cond_a2

    .line 369
    if-nez v0, :cond_6e

    .line 371
    invoke-virtual {p0, v8}, remove(I)Ljava/lang/Object;

    .line 372
    const/4 v11, 0x0

    invoke-virtual {p0, v11, p1}, add(ILjava/lang/Object;)V

    .line 373
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, p1, v12}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_19

    .line 379
    :cond_6e
    invoke-direct {p0, p1, v8}, moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v11

    if-nez v11, :cond_19

    .line 386
    const/4 v3, 0x1

    .line 395
    .end local v8    # "taskIndex":I
    :cond_75
    :goto_75
    const/4 v11, 0x1

    invoke-virtual {p0, p1, v11}, trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I

    .line 397
    invoke-virtual {p0}, size()I

    move-result v6

    .line 398
    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v2

    .line 399
    .local v2, "maxRecents":I
    :goto_81
    if-lt v6, v2, :cond_bc

    .line 402
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {p0, v11}, get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    iget v11, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v12, v11}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskRemoved(I)V

    .line 405
    add-int/lit8 v11, v6, -0x1

    invoke-virtual {p0, v11}, remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    .line 406
    .local v10, "tr":Lcom/android/server/am/TaskRecord;
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 407
    add-int/lit8 v6, v6, -0x1

    .line 408
    goto :goto_81

    .line 389
    .end local v2    # "maxRecents":I
    .end local v10    # "tr":Lcom/android/server/am/TaskRecord;
    .restart local v8    # "taskIndex":I
    :cond_a2
    const-string v11, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Task with inRecent not in recents: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v3, 0x1

    goto :goto_75

    .line 409
    .end local v8    # "taskIndex":I
    .restart local v2    # "maxRecents":I
    :cond_bc
    const/4 v11, 0x1

    iput-boolean v11, p1, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 410
    if-eqz v0, :cond_c3

    if-eqz v3, :cond_e2

    .line 413
    :cond_c3
    const/4 v11, 0x0

    invoke-virtual {p0, v11, p1}, add(ILjava/lang/Object;)V

    .line 461
    :cond_c7
    :goto_c7
    if-eqz v3, :cond_ce

    .line 463
    iget v11, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p0, v11}, cleanupLocked(I)V

    .line 468
    :cond_ce
    const/4 v11, 0x0

    invoke-virtual {p1, v11}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    .line 469
    .local v9, "topRecord":Lcom/android/server/am/ActivityRecord;
    iget-object v11, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v11, v9}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Lcom/android/server/am/ActivityRecord;)V

    .line 471
    if-eqz v9, :cond_109

    .line 472
    iget-object v11, v9, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v11, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto/16 :goto_19

    .line 415
    .end local v9    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_e2
    if-eqz v0, :cond_c7

    .line 418
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 419
    .local v4, "other":Lcom/android/server/am/TaskRecord;
    if-nez v4, :cond_ea

    .line 420
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 422
    :cond_ea
    if-eqz v4, :cond_107

    .line 423
    invoke-virtual {p0, v4}, indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 424
    .local v5, "otherIndex":I
    if-ltz v5, :cond_105

    .line 427
    iget-object v11, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v4, v11, :cond_103

    .line 430
    add-int/lit8 v8, v5, 0x1

    .line 438
    .restart local v8    # "taskIndex":I
    :goto_f8
    invoke-virtual {p0, v8, p1}, add(ILjava/lang/Object;)V

    .line 441
    invoke-direct {p0, p1, v8}, moveAffiliatedTasksToFront(Lcom/android/server/am/TaskRecord;I)Z

    move-result v11

    if-nez v11, :cond_19

    .line 448
    const/4 v3, 0x1

    .line 449
    goto :goto_c7

    .line 434
    .end local v8    # "taskIndex":I
    :cond_103
    move v8, v5

    .restart local v8    # "taskIndex":I
    goto :goto_f8

    .line 452
    .end local v8    # "taskIndex":I
    :cond_105
    const/4 v3, 0x1

    goto :goto_c7

    .line 457
    .end local v5    # "otherIndex":I
    :cond_107
    const/4 v3, 0x1

    goto :goto_c7

    .line 473
    .end local v4    # "other":Lcom/android/server/am/TaskRecord;
    .restart local v9    # "topRecord":Lcom/android/server/am/ActivityRecord;
    :cond_109
    iget-object v11, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_19

    .line 474
    iget-object v11, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    iget-object v12, p1, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ActivityRecord;

    iget-object v11, v11, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    iput-object v11, p1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto/16 :goto_19
.end method

.method cleanupLocked(I)V
    .registers 15
    .param p1, "userId"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, size()I

    move-result v5

    .line 113
    .local v5, "recentsCount":I
    if-nez v5, :cond_7

    .line 222
    :cond_6
    return-void

    .line 119
    :cond_7
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 120
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    const/4 v10, -0x1

    if-ne p1, v10, :cond_30

    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getUsersLocked()[I

    move-result-object v9

    .line 122
    .local v9, "users":[I
    :goto_14
    const/4 v8, 0x0

    .local v8, "userIdx":I
    :goto_15
    array-length v10, v9

    if-ge v8, v10, :cond_11b

    .line 123
    aget v7, v9, v8

    .line 124
    .local v7, "user":I
    invoke-virtual {p0}, size()I

    move-result v10

    add-int/lit8 v5, v10, -0x1

    .line 125
    move v3, v5

    .local v3, "i":I
    :goto_21
    if-ltz v3, :cond_117

    .line 126
    invoke-virtual {p0, v3}, get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/TaskRecord;

    .line 127
    .local v6, "task":Lcom/android/server/am/TaskRecord;
    iget v10, v6, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v10, v7, :cond_37

    .line 125
    :cond_2d
    :goto_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    .line 120
    .end local v3    # "i":I
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    .end local v7    # "user":I
    .end local v8    # "userIdx":I
    .end local v9    # "users":[I
    :cond_30
    const/4 v10, 0x1

    new-array v9, v10, [I

    const/4 v10, 0x0

    aput p1, v9, v10

    goto :goto_14

    .line 131
    .restart local v3    # "i":I
    .restart local v6    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v7    # "user":I
    .restart local v8    # "userIdx":I
    .restart local v9    # "users":[I
    :cond_37
    iget-boolean v10, v6, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-eqz v10, :cond_69

    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_69

    .line 134
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskRemoved(I)V

    .line 138
    invoke-virtual {p0, v3}, remove(I)Ljava/lang/Object;

    .line 139
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 140
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing auto-remove without activity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 144
    :cond_69
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v10, :cond_2d

    .line 145
    iget-object v10, p0, tmpAvailActCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 146
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_8c

    .line 148
    :try_start_79
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    const/16 v11, 0x2200

    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_80} :catch_ef

    move-result-object v0

    .line 155
    if-nez v0, :cond_85

    .line 156
    iget-object v0, p0, tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 158
    :cond_85
    iget-object v10, p0, tmpAvailActCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_8c
    iget-object v10, p0, tmpActivityInfo:Landroid/content/pm/ActivityInfo;

    if-ne v0, v10, :cond_fa

    .line 164
    iget-object v10, p0, tmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 165
    .local v1, "app":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_bb

    .line 167
    :try_start_a0
    iget-object v10, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2200

    invoke-interface {v4, v10, v11, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_ab
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_ab} :catch_f2

    move-result-object v1

    .line 174
    if-nez v1, :cond_b0

    .line 175
    iget-object v1, p0, tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    :cond_b0
    iget-object v10, p0, tmpAvailAppCache:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_bb
    iget-object v10, p0, tmpAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eq v1, v10, :cond_c6

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_f5

    .line 183
    :cond_c6
    iget-object v10, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget v11, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskRemoved(I)V

    .line 186
    invoke-virtual {p0, v3}, remove(I)Ljava/lang/Object;

    .line 187
    invoke-virtual {v6}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 188
    const-string v10, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Removing no longer valid recent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2d

    .line 151
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_ef
    move-exception v2

    .line 153
    .local v2, "e":Landroid/os/RemoteException;
    goto/16 :goto_2d

    .line 170
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :catch_f2
    move-exception v2

    .line 172
    .restart local v2    # "e":Landroid/os/RemoteException;
    goto/16 :goto_2d

    .line 194
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_f5
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_2d

    .line 197
    .end local v1    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_fa
    iget-boolean v10, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v10, :cond_10d

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v10, :cond_10d

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_112

    .line 204
    :cond_10d
    const/4 v10, 0x0

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_2d

    .line 208
    :cond_112
    const/4 v10, 0x1

    iput-boolean v10, v6, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    goto/16 :goto_2d

    .line 122
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v6    # "task":Lcom/android/server/am/TaskRecord;
    :cond_117
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_15

    .line 216
    .end local v3    # "i":I
    .end local v7    # "user":I
    :cond_11b
    const/4 v3, 0x0

    .line 217
    .restart local v3    # "i":I
    invoke-virtual {p0}, size()I

    move-result v5

    .line 218
    :goto_120
    if-ge v3, v5, :cond_6

    .line 219
    invoke-direct {p0, v3}, processNextAffiliateChainLocked(I)I

    move-result v3

    goto :goto_120
.end method

.method removeTasksForUserLocked(I)V
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 82
    if-gtz p1, :cond_1b

    .line 83
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t remove recent task on user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :goto_1a
    return-void

    .line 87
    :cond_1b
    invoke-virtual {p0}, size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_21
    if-ltz v0, :cond_3f

    .line 88
    invoke-virtual {p0, v0}, get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    .line 89
    .local v1, "tr":Lcom/android/server/am/TaskRecord;
    iget v2, v1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v2, p1, :cond_3c

    .line 94
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    iget v3, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskRemoved(I)V

    .line 97
    invoke-virtual {p0, v0}, remove(I)Ljava/lang/Object;

    .line 98
    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 87
    :cond_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_21

    .line 103
    .end local v1    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_3f
    iget-object v2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto :goto_1a
.end method

.method taskForIdLocked(I)Lcom/android/server/am/TaskRecord;
    .registers 6
    .param p1, "id"    # I

    .prologue
    .line 70
    invoke-virtual {p0}, size()I

    move-result v1

    .line 71
    .local v1, "recentsCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-ge v0, v1, :cond_15

    .line 72
    invoke-virtual {p0, v0}, get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 73
    .local v2, "tr":Lcom/android/server/am/TaskRecord;
    iget v3, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v3, p1, :cond_12

    .line 77
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_11
    return-object v2

    .line 71
    .restart local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 77
    .end local v2    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_15
    const/4 v2, 0x0

    goto :goto_11
.end method

.method trimForTaskLocked(Lcom/android/server/am/TaskRecord;Z)I
    .registers 22
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "doTrim"    # Z

    .prologue
    .line 485
    invoke-virtual/range {p0 .. p0}, size()I

    move-result v10

    .line 486
    .local v10, "recentsCount":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 487
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_55

    invoke-virtual {v6}, Landroid/content/Intent;->isDocument()Z

    move-result v17

    if-eqz v17, :cond_55

    const/4 v4, 0x1

    .line 488
    .local v4, "document":Z
    :goto_11
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    move/from16 v17, v0

    add-int/lit8 v7, v17, -0x1

    .line 491
    .local v7, "maxRecents":I
    const/4 v8, 0x0

    .line 492
    .local v8, "numOfRecent":I
    const/4 v9, 0x0

    .line 494
    .local v9, "numOfTask":I
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/MultiWindowPolicy;->getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I

    move-result v9

    .line 498
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    if-ge v5, v10, :cond_13d

    .line 499
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/TaskRecord;

    .line 500
    .local v14, "tr":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p1

    if-eq v0, v14, :cond_f9

    .line 501
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v17, v0

    iget v0, v14, Lcom/android/server/am/TaskRecord;->userId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_57

    .line 498
    :cond_52
    :goto_52
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 487
    .end local v4    # "document":Z
    .end local v5    # "i":I
    .end local v7    # "maxRecents":I
    .end local v8    # "numOfRecent":I
    .end local v9    # "numOfTask":I
    .end local v14    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_55
    const/4 v4, 0x0

    goto :goto_11

    .line 506
    .restart local v4    # "document":Z
    .restart local v5    # "i":I
    .restart local v7    # "maxRecents":I
    .restart local v8    # "numOfRecent":I
    .restart local v9    # "numOfTask":I
    .restart local v14    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_57
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6f

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7f

    :cond_6f
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    if-eqz v17, :cond_7f

    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v9, v0, :cond_7f

    .line 509
    add-int/lit8 v8, v8, 0x1

    if-lt v8, v9, :cond_52

    .line 515
    :cond_7f
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v5, v0, :cond_88

    .line 516
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->freeLastThumbnail()V

    .line 518
    :cond_88
    iget-object v15, v14, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 519
    .local v15, "trIntent":Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_ea

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_ea

    const/4 v12, 0x1

    .line 521
    .local v12, "sameAffinity":Z
    :goto_a3
    if-eqz v6, :cond_ec

    invoke-virtual {v6, v15}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v17

    if-eqz v17, :cond_ec

    const/4 v13, 0x1

    .line 522
    .local v13, "sameIntent":Z
    :goto_ac
    if-eqz v15, :cond_ee

    invoke-virtual {v15}, Landroid/content/Intent;->isDocument()Z

    move-result v17

    if-eqz v17, :cond_ee

    const/16 v16, 0x1

    .line 523
    .local v16, "trIsDocument":Z
    :goto_b6
    if-eqz v4, :cond_f1

    if-eqz v16, :cond_f1

    const/4 v3, 0x1

    .line 524
    .local v3, "bothDocuments":Z
    :goto_bb
    if-nez v12, :cond_c1

    if-nez v13, :cond_c1

    if-eqz v3, :cond_52

    .line 528
    :cond_c1
    if-eqz v3, :cond_f5

    .line 530
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f3

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    if-eqz v17, :cond_f3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v17, v0

    iget-object v0, v14, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f3

    const/4 v11, 0x1

    .line 533
    .local v11, "sameActivity":Z
    :goto_e2
    if-eqz v11, :cond_52

    .line 536
    if-lez v7, :cond_f9

    .line 537
    add-int/lit8 v7, v7, -0x1

    .line 538
    goto/16 :goto_52

    .line 519
    .end local v3    # "bothDocuments":Z
    .end local v11    # "sameActivity":Z
    .end local v12    # "sameAffinity":Z
    .end local v13    # "sameIntent":Z
    .end local v16    # "trIsDocument":Z
    :cond_ea
    const/4 v12, 0x0

    goto :goto_a3

    .line 521
    .restart local v12    # "sameAffinity":Z
    :cond_ec
    const/4 v13, 0x0

    goto :goto_ac

    .line 522
    .restart local v13    # "sameIntent":Z
    :cond_ee
    const/16 v16, 0x0

    goto :goto_b6

    .line 523
    .restart local v16    # "trIsDocument":Z
    :cond_f1
    const/4 v3, 0x0

    goto :goto_bb

    .line 530
    .restart local v3    # "bothDocuments":Z
    :cond_f3
    const/4 v11, 0x0

    goto :goto_e2

    .line 542
    :cond_f5
    if-nez v4, :cond_52

    if-nez v16, :cond_52

    .line 548
    .end local v3    # "bothDocuments":Z
    .end local v12    # "sameAffinity":Z
    .end local v13    # "sameIntent":Z
    .end local v15    # "trIntent":Landroid/content/Intent;
    .end local v16    # "trIsDocument":Z
    :cond_f9
    if-nez p2, :cond_fc

    .line 586
    .end local v5    # "i":I
    .end local v14    # "tr":Lcom/android/server/am/TaskRecord;
    :goto_fb
    return v5

    .line 556
    .restart local v5    # "i":I
    .restart local v14    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_fc
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMultiWindowPolicy:Lcom/android/server/am/MultiWindowPolicy;

    move-object/from16 v17, v0

    iget v0, v14, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/am/MultiWindowPolicy;->notifyTaskRemoved(I)V

    .line 563
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 564
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, remove(I)Ljava/lang/Object;

    .line 565
    move-object/from16 v0, p1

    if-eq v0, v14, :cond_11e

    .line 566
    invoke-virtual {v14}, Lcom/android/server/am/TaskRecord;->removedFromRecents()V

    .line 568
    :cond_11e
    add-int/lit8 v5, v5, -0x1

    .line 569
    add-int/lit8 v10, v10, -0x1

    .line 570
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move-object/from16 v17, v0

    if-nez v17, :cond_12c

    .line 573
    move-object/from16 p1, v14

    .line 575
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    goto/16 :goto_52

    .line 580
    .end local v14    # "tr":Lcom/android/server/am/TaskRecord;
    :cond_13d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_16d

    .line 581
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/TaskRecord;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 586
    :cond_16d
    const/4 v5, -0x1

    goto :goto_fb
.end method
