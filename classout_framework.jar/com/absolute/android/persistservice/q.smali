.class Lcom/absolute/android/persistservice/q;
.super Lcom/absolute/android/persistservice/ac;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/absolute/android/persistservice/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 465
    const-class v0, Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/absolute/android/persistservice/l;Landroid/content/Context;Lcom/absolute/android/persistservice/v;)V
    .registers 5

    .prologue
    .line 475
    iput-object p1, p0, b:Lcom/absolute/android/persistservice/l;

    .line 476
    const-string v0, "abt-persistence-watchdog"

    invoke-direct {p0, p2, p3, v0}, Lcom/absolute/android/persistservice/ac;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    .line 477
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .registers 3

    .prologue
    .line 465
    invoke-direct {p0, p1}, b(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .registers 3

    .prologue
    .line 501
    iget-object v0, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 502
    invoke-virtual {p0}, e()Z

    .line 503
    return-object v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/q;Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .registers 3

    .prologue
    .line 465
    invoke-direct {p0, p1, p2}, a(Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V
    .registers 4

    .prologue
    .line 487
    iget-object v0, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    invoke-virtual {p0}, e()Z

    .line 489
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .registers 3

    .prologue
    .line 514
    iget-object v0, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 465
    invoke-direct {p0, p1}, d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    .registers 3

    .prologue
    .line 465
    invoke-direct {p0, p1}, a(Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 525
    iget-object v0, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 526
    sget-boolean v1, a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 527
    :cond_14
    if-eqz v0, :cond_27

    .line 528
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-eqz v1, :cond_27

    .line 529
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    .line 530
    iget-object v1, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    invoke-virtual {p0}, e()Z

    .line 534
    :cond_27
    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 465
    invoke-direct {p0, p1}, e(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 543
    iget-object v0, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 544
    sget-boolean v1, a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 545
    :cond_14
    if-eqz v0, :cond_30

    .line 546
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    if-eqz v1, :cond_30

    .line 547
    :cond_22
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->b()V

    .line 548
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->e()V

    .line 549
    iget-object v1, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    invoke-virtual {p0}, e()Z

    .line 553
    :cond_30
    return-void
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 465
    invoke-direct {p0, p1}, c(Ljava/lang/String;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 562
    iget-object v0, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 563
    sget-boolean v1, a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 564
    :cond_14
    if-eqz v0, :cond_24

    .line 565
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->c()V

    .line 566
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->f()V

    .line 567
    iget-object v1, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 568
    invoke-virtual {p0}, e()Z

    .line 570
    :cond_24
    return-void
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/q;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 465
    invoke-direct {p0, p1}, f(Ljava/lang/String;)V

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 578
    iget-object v0, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    .line 579
    sget-boolean v1, a:Z

    if-nez v1, :cond_14

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 580
    :cond_14
    if-eqz v0, :cond_21

    .line 581
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->h()V

    .line 582
    iget-object v1, p0, c:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, e()Z

    .line 585
    :cond_21
    return-void
.end method


# virtual methods
.method protected c()V
    .registers 1

    .prologue
    .line 593
    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 599
    new-instance v1, Lcom/absolute/android/persistservice/q;

    iget-object v2, p0, b:Lcom/absolute/android/persistservice/l;

    iget-object v3, p0, d:Landroid/content/Context;

    iget-object v4, p0, e:Lcom/absolute/android/persistservice/v;

    invoke-direct {v1, v2, v3, v4}, <init>(Lcom/absolute/android/persistservice/l;Landroid/content/Context;Lcom/absolute/android/persistservice/v;)V

    .line 601
    :try_start_c
    invoke-virtual {v1, p1}, k(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0, v1}, equals(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_12} :catch_18

    move-result v1

    if-nez v1, :cond_16

    .line 604
    :goto_15
    return v0

    .line 602
    :cond_16
    const/4 v0, 0x0

    goto :goto_15

    .line 603
    :catch_18
    move-exception v1

    goto :goto_15
.end method
