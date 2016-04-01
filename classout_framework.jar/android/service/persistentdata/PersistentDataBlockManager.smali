.class public Landroid/service/persistentdata/PersistentDataBlockManager;
.super Ljava/lang/Object;
.source "PersistentDataBlockManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private sService:Landroid/service/persistentdata/IPersistentDataBlockService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const-class v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/service/persistentdata/IPersistentDataBlockService;)V
    .registers 2
    .param p1, "service"    # Landroid/service/persistentdata/IPersistentDataBlockService;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    .line 51
    return-void
.end method

.method private onError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 3

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getDataBlockSize()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 93
    :goto_6
    return v1

    .line 91
    :catch_7
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getting data block size"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    .line 93
    const/4 v1, -0x1

    goto :goto_6
.end method

.method public getMaximumDataBlockSize()J
    .registers 5

    .prologue
    .line 104
    :try_start_0
    iget-object v1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getMaximumDataBlockSize()J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    .line 107
    :goto_6
    return-wide v2

    .line 105
    :catch_7
    move-exception v0

    .line 106
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getting maximum data block size"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    .line 107
    const-wide/16 v2, -0x1

    goto :goto_6
.end method

.method public getOemUnlockEnabled()Z
    .registers 3

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->getOemUnlockEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 142
    :goto_6
    return v1

    .line 140
    :catch_7
    move-exception v0

    .line 141
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getting OEM unlock enabled bit"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->isEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 154
    :goto_6
    return v1

    .line 152
    :catch_7
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "getting FRP flag"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    .line 154
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public read()[B
    .registers 3

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->read()[B
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 79
    :goto_6
    return-object v1

    .line 77
    :catch_7
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "reading data"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 128
    :try_start_0
    iget-object v1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->setOemUnlockEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 132
    :goto_5
    return-void

    .line 129
    :catch_6
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting OEM unlock enabled to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public wipe()V
    .registers 3

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1}, Landroid/service/persistentdata/IPersistentDataBlockService;->wipe()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 121
    :goto_5
    return-void

    .line 118
    :catch_6
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "wiping persistent partition"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    goto :goto_5
.end method

.method public write([B)I
    .registers 4
    .param p1, "data"    # [B

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, sService:Landroid/service/persistentdata/IPersistentDataBlockService;

    invoke-interface {v1, p1}, Landroid/service/persistentdata/IPersistentDataBlockService;->write([B)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 67
    :goto_6
    return v1

    .line 65
    :catch_7
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "writing data"

    invoke-direct {p0, v1}, onError(Ljava/lang/String;)V

    .line 67
    const/4 v1, -0x1

    goto :goto_6
.end method
