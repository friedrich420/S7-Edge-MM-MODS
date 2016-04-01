.class Lcom/absolute/android/persistservice/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

.field private h:Z


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V
    .registers 9

    .prologue
    .line 3597
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3598
    iput-object p2, p0, b:Ljava/lang/String;

    .line 3599
    iput-object p3, p0, c:Ljava/lang/String;

    .line 3600
    iput-object p4, p0, d:Ljava/lang/String;

    .line 3601
    iput-object p5, p0, e:Ljava/lang/String;

    .line 3602
    iput-object p6, p0, f:Ljava/lang/String;

    .line 3603
    iput-object p7, p0, g:Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    .line 3604
    iput-boolean p8, p0, h:Z

    .line 3605
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3564
    iget-object v0, p0, b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3564
    iget-object v0, p0, d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3564
    iget-object v0, p0, c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3564
    iget-object v0, p0, e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3564
    iget-object v0, p0, f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/f;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
    .registers 2

    .prologue
    .line 3564
    iget-object v0, p0, g:Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    return-object v0
.end method

.method static synthetic g(Lcom/absolute/android/persistservice/f;)Z
    .registers 2

    .prologue
    .line 3564
    iget-boolean v0, p0, h:Z

    return v0
.end method
