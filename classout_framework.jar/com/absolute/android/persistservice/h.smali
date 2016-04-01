.class Lcom/absolute/android/persistservice/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Ljava/lang/String;

.field private c:Lcom/absolute/android/persistence/IABTResultReceiver;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 4

    .prologue
    .line 2940
    iput-object p1, p0, a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2941
    iput-object p2, p0, b:Ljava/lang/String;

    .line 2942
    iput-object p3, p0, c:Lcom/absolute/android/persistence/IABTResultReceiver;

    .line 2943
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/h;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2931
    iget-object v0, p0, b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;
    .registers 2

    .prologue
    .line 2931
    iget-object v0, p0, c:Lcom/absolute/android/persistence/IABTResultReceiver;

    return-object v0
.end method
