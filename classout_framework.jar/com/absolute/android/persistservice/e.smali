.class Lcom/absolute/android/persistservice/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/absolute/android/persistence/IABTDownloadReceiver;

.field private i:I

.field private j:Z


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V
    .registers 11

    .prologue
    .line 3653
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3654
    iput-object p2, p0, b:Ljava/lang/String;

    .line 3655
    iput p3, p0, c:I

    .line 3656
    iput-object p4, p0, d:Ljava/lang/String;

    .line 3657
    iput-object p5, p0, e:Ljava/lang/String;

    .line 3658
    iput-object p6, p0, f:Ljava/lang/String;

    .line 3659
    iput-object p7, p0, g:Ljava/lang/String;

    .line 3660
    iput-object p8, p0, h:Lcom/absolute/android/persistence/IABTDownloadReceiver;

    .line 3661
    iput p9, p0, i:I

    .line 3662
    iput-boolean p10, p0, j:Z

    .line 3663
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3612
    iget-object v0, p0, b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/e;)I
    .registers 2

    .prologue
    .line 3612
    iget v0, p0, c:I

    return v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3612
    iget-object v0, p0, d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3612
    iget-object v0, p0, e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3612
    iget-object v0, p0, g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3612
    iget-object v0, p0, f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;
    .registers 2

    .prologue
    .line 3612
    iget-object v0, p0, h:Lcom/absolute/android/persistence/IABTDownloadReceiver;

    return-object v0
.end method

.method static synthetic h(Lcom/absolute/android/persistservice/e;)I
    .registers 2

    .prologue
    .line 3612
    iget v0, p0, i:I

    return v0
.end method

.method static synthetic i(Lcom/absolute/android/persistservice/e;)Z
    .registers 2

    .prologue
    .line 3612
    iget-boolean v0, p0, j:Z

    return v0
.end method
