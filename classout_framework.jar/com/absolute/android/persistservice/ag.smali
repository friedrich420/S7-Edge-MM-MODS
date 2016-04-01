.class Lcom/absolute/android/persistservice/ag;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ae;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ae;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/ae;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ae;Lcom/absolute/android/persistservice/af;)V
    .registers 3

    .prologue
    .line 176
    invoke-direct {p0, p1}, <init>(Lcom/absolute/android/persistservice/ae;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 179
    monitor-enter p0

    :try_start_2
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_37

    .line 181
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ae;->a(Lcom/absolute/android/persistservice/ae;)Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_4b

    move-result v0

    if-eqz v0, :cond_37

    .line 184
    :try_start_e
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ae;->b(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistence/IABTPing;

    move-result-object v0

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->ping()Z

    .line 189
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ae;->d(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistservice/l;

    move-result-object v0

    iget-object v1, p0, a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ae;->c(Lcom/absolute/android/persistservice/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/l;->c(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_26} :catch_39
    .catchall {:try_start_e .. :try_end_26} :catchall_4b

    .line 205
    :goto_26
    const/4 v0, 0x3

    :try_start_27
    invoke-virtual {p0, v0}, removeMessages(I)V

    .line 206
    const/4 v0, 0x3

    iget-object v1, p0, a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ae;->e(Lcom/absolute/android/persistservice/ae;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, sendEmptyMessageDelayed(IJ)Z
    :try_end_37
    .catchall {:try_start_27 .. :try_end_37} :catchall_4b

    .line 209
    :cond_37
    monitor-exit p0

    return-void

    .line 191
    :catch_39
    move-exception v0

    .line 195
    :try_start_3a
    iget-object v0, p0, a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ae;->d(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistservice/l;

    move-result-object v0

    iget-object v1, p0, a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ae;->c(Lcom/absolute/android/persistservice/ae;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_4b

    goto :goto_26

    .line 179
    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
