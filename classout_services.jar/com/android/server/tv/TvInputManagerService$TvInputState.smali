.class final Lcom/android/server/tv/TvInputManagerService$TvInputState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TvInputState"
.end annotation


# instance fields
.field private info:Landroid/media/tv/TvInputInfo;

.field private state:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1903
    const/4 v0, 0x0

    iput v0, p0, state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/tv/TvInputManagerService$1;

    .prologue
    .line 1898
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/tv/TvInputManagerService$TvInputState;)Landroid/media/tv/TvInputInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .prologue
    .line 1898
    iget-object v0, p0, info:Landroid/media/tv/TvInputInfo;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/tv/TvInputManagerService$TvInputState;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .param p1, "x1"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 1898
    iput-object p1, p0, info:Landroid/media/tv/TvInputInfo;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/server/tv/TvInputManagerService$TvInputState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;

    .prologue
    .line 1898
    iget v0, p0, state:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/tv/TvInputManagerService$TvInputState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/tv/TvInputManagerService$TvInputState;
    .param p1, "x1"    # I

    .prologue
    .line 1898
    iput p1, p0, state:I

    return p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, info:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
