.class Landroid/widget/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar;)V
    .registers 2

    .prologue
    .line 1309
    iput-object p1, p0, this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/ProgressBar;
    .param p2, "x1"    # Landroid/widget/ProgressBar$1;

    .prologue
    .line 1309
    invoke-direct {p0, p1}, <init>(Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1311
    iget-object v4, p0, this$0:Landroid/widget/ProgressBar;

    monitor-enter v4

    .line 1312
    :try_start_3
    iget-object v3, p0, this$0:Landroid/widget/ProgressBar;

    # getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1313
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, v0, :cond_2e

    .line 1314
    iget-object v3, p0, this$0:Landroid/widget/ProgressBar;

    # getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar$RefreshData;

    .line 1315
    .local v2, "rd":Landroid/widget/ProgressBar$RefreshData;
    iget-object v3, p0, this$0:Landroid/widget/ProgressBar;

    iget v5, v2, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v6, v2, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v7, v2, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    const/4 v8, 0x1

    # invokes: Landroid/widget/ProgressBar;->doRefreshProgress(IIZZ)V
    invoke-static {v3, v5, v6, v7, v8}, Landroid/widget/ProgressBar;->access$200(Landroid/widget/ProgressBar;IIZZ)V

    .line 1316
    invoke-virtual {v2}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    .line 1313
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 1318
    .end local v2    # "rd":Landroid/widget/ProgressBar$RefreshData;
    :cond_2e
    iget-object v3, p0, this$0:Landroid/widget/ProgressBar;

    # getter for: Landroid/widget/ProgressBar;->mRefreshData:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/widget/ProgressBar;->access$100(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1319
    iget-object v3, p0, this$0:Landroid/widget/ProgressBar;

    const/4 v5, 0x0

    # setter for: Landroid/widget/ProgressBar;->mRefreshIsPosted:Z
    invoke-static {v3, v5}, Landroid/widget/ProgressBar;->access$302(Landroid/widget/ProgressBar;Z)Z

    .line 1320
    monitor-exit v4

    .line 1321
    return-void

    .line 1320
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_3f
    move-exception v3

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v3
.end method
