.class Lcom/android/server/LockSettingsService$CredentialInfo;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CredentialInfo"
.end annotation


# instance fields
.field public credential:Ljava/lang/String;

.field public isMdfppEnabled:Z

.field public isSdpEnabled:Z

.field public lockType:I

.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field public userId:I

.field public verifType:I


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;IIILjava/lang/String;)V
    .registers 9
    .param p2, "userId"    # I
    .param p3, "lockType"    # I
    .param p4, "verifType"    # I
    .param p5, "credential"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 707
    iput-object p1, p0, this$0:Lcom/android/server/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 708
    iput p2, p0, userId:I

    .line 709
    iput p3, p0, lockType:I

    .line 710
    iput p4, p0, verifType:I

    .line 711
    iput-object p5, p0, credential:Ljava/lang/String;

    .line 712
    and-int/lit8 v0, p4, 0x3

    if-lez v0, :cond_1d

    move v0, v1

    :goto_14
    iput-boolean v0, p0, isSdpEnabled:Z

    .line 714
    and-int/lit8 v0, p4, 0x5

    if-lez v0, :cond_1f

    :goto_1a
    iput-boolean v1, p0, isMdfppEnabled:Z

    .line 716
    return-void

    :cond_1d
    move v0, v2

    .line 712
    goto :goto_14

    :cond_1f
    move v1, v2

    .line 714
    goto :goto_1a
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .registers 3

    .prologue
    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### Dump : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, lockType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, verifType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HIDDEN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, isSdpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, isMdfppEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
