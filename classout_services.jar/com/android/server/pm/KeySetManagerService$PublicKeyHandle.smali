.class Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/KeySetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PublicKeyHandle"
.end annotation


# instance fields
.field private final mId:J

.field private final mKey:Ljava/security/PublicKey;

.field private mRefCount:I

.field final synthetic this$0:Lcom/android/server/pm/KeySetManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V
    .registers 6
    .param p2, "id"    # J
    .param p4, "refCount"    # I
    .param p5, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 82
    iput-object p1, p0, this$0:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-wide p2, p0, mId:J

    .line 84
    iput p4, p0, mRefCount:I

    .line 85
    iput-object p5, p0, mKey:Ljava/security/PublicKey;

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$1;)V
    .registers 7
    .param p1, "x0"    # Lcom/android/server/pm/KeySetManagerService;
    .param p2, "x1"    # J
    .param p4, "x2"    # I
    .param p5, "x3"    # Ljava/security/PublicKey;
    .param p6, "x4"    # Lcom/android/server/pm/KeySetManagerService$1;

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, <init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V
    .registers 7
    .param p2, "id"    # J
    .param p4, "key"    # Ljava/security/PublicKey;

    .prologue
    .line 73
    iput-object p1, p0, this$0:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-wide p2, p0, mId:J

    .line 75
    const/4 v0, 0x1

    iput v0, p0, mRefCount:I

    .line 76
    iput-object p4, p0, mKey:Ljava/security/PublicKey;

    .line 77
    return-void
.end method


# virtual methods
.method public decrRefCountLPw()J
    .registers 3

    .prologue
    .line 106
    iget v0, p0, mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mRefCount:I

    .line 107
    iget v0, p0, mRefCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .prologue
    .line 89
    iget-wide v0, p0, mId:J

    return-wide v0
.end method

.method public getKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, mKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getRefCountLPr()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, mRefCount:I

    return v0
.end method

.method public incrRefCountLPw()V
    .registers 2

    .prologue
    .line 101
    iget v0, p0, mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mRefCount:I

    .line 102
    return-void
.end method
