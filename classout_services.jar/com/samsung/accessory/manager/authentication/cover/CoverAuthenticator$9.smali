.class Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$9;
.super Ljava/lang/Object;
.source "CoverAuthenticator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onNfcRestrictionPolicyChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

.field final synthetic val$allowed:Z


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;Z)V
    .registers 3

    .prologue
    .line 790
    iput-object p1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iput-boolean p2, p0, val$allowed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 793
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getBlockedType()I

    move-result v0

    .line 795
    .local v0, "blockdType":I
    iget-boolean v1, p0, val$allowed:Z

    if-eqz v1, :cond_37

    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->getCoverSwitchState()I
    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$200(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)I

    move-result v1

    if-lt v1, v4, :cond_37

    .line 797
    if-nez v0, :cond_2a

    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v1, :cond_2a

    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    iget-object v1, v1, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mLastCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 799
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->setCoverVerified(ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V
    invoke-static {v1, v2, v2, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$1700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZZLcom/samsung/accessory/manager/authentication/cover/CoverInfo;Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)V

    .line 801
    :cond_2a
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const/4 v2, 0x4

    # setter for: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mAuthType:I
    invoke-static {v1, v2}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$802(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)I

    .line 802
    iget-object v1, p0, this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    const-wide/16 v2, 0x0

    # invokes: Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->startAuthentication(ZJ)V
    invoke-static {v1, v4, v2, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->access$700(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;ZJ)V

    .line 804
    :cond_37
    return-void
.end method
