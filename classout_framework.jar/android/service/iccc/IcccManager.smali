.class public Landroid/service/iccc/IcccManager;
.super Ljava/lang/Object;
.source "IcccManager.java"


# instance fields
.field mService:Landroid/service/iccc/IIcccManager;


# direct methods
.method public constructor <init>(Landroid/service/iccc/IIcccManager;)V
    .registers 2
    .param p1, "service"    # Landroid/service/iccc/IIcccManager;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, mService:Landroid/service/iccc/IIcccManager;

    .line 20
    return-void
.end method


# virtual methods
.method public Iccc_ReadData_Platform(I)I
    .registers 4
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    const-string v0, "ICCC"

    const-string v1, "My method Iccc_ReadData_Platform in manager Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, mService:Landroid/service/iccc/IIcccManager;

    if-eqz v0, :cond_12

    .line 26
    iget-object v0, p0, mService:Landroid/service/iccc/IIcccManager;

    invoke-interface {v0, p1}, Landroid/service/iccc/IIcccManager;->Iccc_ReadData_Platform(I)I

    move-result v0

    .line 28
    :goto_11
    return v0

    :cond_12
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public Iccc_SaveData_Platform(II)I
    .registers 5
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    const-string v0, "ICCC"

    const-string v1, "My method Iccc_SaveData_Platform in manager Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, mService:Landroid/service/iccc/IIcccManager;

    if-eqz v0, :cond_12

    .line 34
    iget-object v0, p0, mService:Landroid/service/iccc/IIcccManager;

    invoke-interface {v0, p1, p2}, Landroid/service/iccc/IIcccManager;->Iccc_SaveData_Platform(II)I

    move-result v0

    .line 36
    :goto_11
    return v0

    :cond_12
    const/4 v0, -0x1

    goto :goto_11
.end method

.method public TimaSetLicenseStatusJNI()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const-string v0, "ICCC"

    const-string v1, "My method TimaSetLicenseStatusJNI in manager Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iget-object v0, p0, mService:Landroid/service/iccc/IIcccManager;

    if-eqz v0, :cond_12

    .line 42
    iget-object v0, p0, mService:Landroid/service/iccc/IIcccManager;

    invoke-interface {v0}, Landroid/service/iccc/IIcccManager;->TimaSetLicenseStatusJNI()I

    move-result v0

    .line 44
    :goto_11
    return v0

    :cond_12
    const/4 v0, -0x1

    goto :goto_11
.end method
