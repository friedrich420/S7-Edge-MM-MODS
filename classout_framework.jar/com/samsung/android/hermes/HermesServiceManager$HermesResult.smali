.class public Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermesResult"
.end annotation


# instance fields
.field private data:Ljava/lang/Object;

.field private event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

.field private id:I

.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 944
    iput-object p1, p0, this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    const/4 v0, 0x0

    iput v0, p0, id:I

    .line 939
    iput-object v1, p0, data:Ljava/lang/Object;

    .line 941
    iput-object v1, p0, event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .line 946
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;ILjava/lang/Object;)V
    .registers 6
    .param p2, "id"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 949
    iput-object p1, p0, this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    const/4 v0, 0x0

    iput v0, p0, id:I

    .line 939
    iput-object v1, p0, data:Ljava/lang/Object;

    .line 941
    iput-object v1, p0, event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .line 950
    iput p2, p0, id:I

    .line 951
    iput-object p3, p0, data:Ljava/lang/Object;

    .line 952
    iput-object v1, p0, event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .line 953
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;ILjava/lang/Object;Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V
    .registers 7
    .param p2, "id"    # I
    .param p3, "data"    # Ljava/lang/Object;
    .param p4, "event"    # Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .prologue
    const/4 v1, 0x0

    .line 956
    iput-object p1, p0, this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 937
    const/4 v0, 0x0

    iput v0, p0, id:I

    .line 939
    iput-object v1, p0, data:Ljava/lang/Object;

    .line 941
    iput-object v1, p0, event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .line 957
    iput p2, p0, id:I

    .line 958
    iput-object p3, p0, data:Ljava/lang/Object;

    .line 959
    iput-object p4, p0, event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .line 960
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;
    .param p1, "x1"    # I

    .prologue
    .line 936
    invoke-direct {p0, p1}, setId(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;Ljava/lang/Object;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 936
    invoke-direct {p0, p1}, setData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hermes/HermesServiceManager$HermesResult;
    .param p1, "x1"    # Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .prologue
    .line 936
    invoke-direct {p0, p1}, setEvent(Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V

    return-void
.end method

.method private setData(Ljava/lang/Object;)V
    .registers 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 985
    iput-object p1, p0, data:Ljava/lang/Object;

    .line 986
    return-void
.end method

.method private setEvent(Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;)V
    .registers 2
    .param p1, "event"    # Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .prologue
    .line 999
    iput-object p1, p0, event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    .line 1000
    return-void
.end method

.method private setId(I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    .line 972
    iput p1, p0, id:I

    .line 973
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 981
    iget-object v0, p0, data:Ljava/lang/Object;

    return-object v0
.end method

.method public getEvent()Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
    .registers 2

    .prologue
    .line 995
    iget-object v0, p0, event:Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .prologue
    .line 968
    iget v0, p0, id:I

    return v0
.end method
