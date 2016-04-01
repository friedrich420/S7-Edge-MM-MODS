.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$RequestIdGenerator;
.super Ljava/lang/Object;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestIdGenerator"
.end annotation


# instance fields
.field fraction:I

.field random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    const/4 v0, 0x0

    iput v0, p0, fraction:I

    .line 855
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, random:Ljava/util/Random;

    .line 856
    return-void
.end method


# virtual methods
.method public getNextContainerRequestId()I
    .registers 4

    .prologue
    .line 859
    iget v0, p0, fraction:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, fraction:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_d

    .line 860
    const/4 v0, 0x1

    iput v0, p0, fraction:I

    .line 862
    :cond_d
    iget v0, p0, fraction:I

    iget-object v1, p0, random:Ljava/util/Random;

    const v2, 0x186a0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method
