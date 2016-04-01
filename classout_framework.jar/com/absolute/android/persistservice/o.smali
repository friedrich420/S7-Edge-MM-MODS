.class Lcom/absolute/android/persistservice/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/n;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/n;)V
    .registers 2

    .prologue
    .line 723
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/n;Lcom/absolute/android/persistservice/m;)V
    .registers 3

    .prologue
    .line 723
    invoke-direct {p0, p1}, <init>(Lcom/absolute/android/persistservice/n;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 728
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_3a

    .line 729
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 731
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/n;

    invoke-static {v1}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistservice/n;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 732
    if-nez v1, :cond_3b

    .line 734
    iget-object v1, p0, a:Lcom/absolute/android/persistservice/n;

    iget-object v1, v1, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    iget-object v1, v1, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is no longer being monitored via running services check."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    .line 774
    :cond_3a
    :goto_3a
    return-void

    .line 739
    :cond_3b
    iget-object v2, p0, a:Lcom/absolute/android/persistservice/n;

    iget-object v2, v2, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    invoke-static {v2}, Lcom/absolute/android/persistservice/l;->a(Lcom/absolute/android/persistservice/l;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 742
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 744
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 745
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v3, v2

    :goto_5b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 746
    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    .line 747
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 748
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_73
    move-object v3, v2

    .line 750
    goto :goto_5b

    .line 751
    :cond_75
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_95

    .line 755
    iget-object v2, p0, a:Lcom/absolute/android/persistservice/n;

    iget-object v2, v2, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v2, v0, v6}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    .line 771
    :goto_82
    invoke-virtual {p0, v5, v0}, removeMessages(ILjava/lang/Object;)V

    .line 772
    invoke-virtual {p0, v5, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v0, v2, v3}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3a

    .line 761
    :cond_95
    iget-object v2, p0, a:Lcom/absolute/android/persistservice/n;

    iget-object v2, v2, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/l;->c(Ljava/lang/String;)V

    goto :goto_82

    :cond_9d
    move-object v2, v3

    goto :goto_73
.end method
