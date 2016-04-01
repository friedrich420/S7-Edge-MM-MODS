.class public Lcom/android/server/pm/SELinuxMMAC$MDMID;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDMID"
.end annotation


# instance fields
.field public certs:Ljava/lang/String;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 221
    if-eqz p1, :cond_1f

    instance-of v2, p1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    if-eqz v2, :cond_1f

    move-object v0, p1

    .line 222
    check-cast v0, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .line 223
    .local v0, "s":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v2, p0, certs:Ljava/lang/String;

    iget-object v3, v0, certs:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, p0, packageName:Ljava/lang/String;

    iget-object v3, v0, packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 v1, 0x1

    .line 225
    .end local v0    # "s":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_1f
    return v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, certs:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
