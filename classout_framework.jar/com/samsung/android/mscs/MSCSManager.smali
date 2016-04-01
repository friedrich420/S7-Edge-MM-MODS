.class public final Lcom/samsung/android/mscs/MSCSManager;
.super Ljava/lang/Object;
.source "MSCSManager.java"


# static fields
.field private static RETURN_ERROR:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "MSCSManager"


# instance fields
.field final mService:Lcom/samsung/android/mscs/IMSCSManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    const-wide/16 v0, -0x1

    sput-wide v0, RETURN_ERROR:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mscs/IMSCSManager;)V
    .registers 4
    .param p1, "service"    # Lcom/samsung/android/mscs/IMSCSManager;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_c

    .line 32
    const-string v0, "MSCSManager"

    const-string v1, "In Constructor Stub-Service(IMSCSManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_c
    iput-object p1, p0, mService:Lcom/samsung/android/mscs/IMSCSManager;

    .line 34
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 79
    const-string v0, "MSCSManager"

    const-string v1, "Error MSCSManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    return-void
.end method


# virtual methods
.method public getGalleryModeEnable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v2, p0, mService:Lcom/samsung/android/mscs/IMSCSManager;

    if-nez v2, :cond_6

    .line 58
    :goto_5
    return v1

    .line 56
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mscs/IMSCSManager;

    invoke-interface {v2}, Lcom/samsung/android/mscs/IMSCSManager;->getGalleryModeEnable()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 57
    :catch_d
    move-exception v0

    .line 58
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public getVideoModeEnable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 38
    iget-object v2, p0, mService:Lcom/samsung/android/mscs/IMSCSManager;

    if-nez v2, :cond_6

    .line 45
    :goto_5
    return v1

    .line 43
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mscs/IMSCSManager;

    invoke-interface {v2}, Lcom/samsung/android/mscs/IMSCSManager;->getVideoModeEnable()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 44
    :catch_d
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setGalleryModeEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 72
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/mscs/IMSCSManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/mscs/IMSCSManager;->setGalleryModeEnable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 76
    :goto_5
    return-void

    .line 73
    :catch_6
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, onError(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public setVideoModeEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/mscs/IMSCSManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/mscs/IMSCSManager;->setVideoModeEnable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 68
    :goto_5
    return-void

    .line 65
    :catch_6
    move-exception v0

    .line 66
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, onError(Ljava/lang/Exception;)V

    goto :goto_5
.end method
