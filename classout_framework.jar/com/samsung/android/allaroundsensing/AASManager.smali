.class public final Lcom/samsung/android/allaroundsensing/AASManager;
.super Ljava/lang/Object;
.source "AASManager.java"


# static fields
.field private static RETURN_ERROR:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AASManager"


# instance fields
.field final mService:Lcom/samsung/android/allaroundsensing/IAASManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, RETURN_ERROR:F

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/allaroundsensing/IAASManager;)V
    .registers 4
    .param p1, "service"    # Lcom/samsung/android/allaroundsensing/IAASManager;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_c

    .line 31
    const-string v0, "AASManager"

    const-string v1, "In Constructor Stub-Service(IAASManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_c
    iput-object p1, p0, mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    .line 33
    return-void
.end method

.method private onError(Ljava/lang/Exception;)V
    .registers 4
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 93
    const-string v0, "AASManager"

    const-string v1, "Error AASManager"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    return-void
.end method


# virtual methods
.method public getBrightnessValue()F
    .registers 3

    .prologue
    .line 37
    iget-object v1, p0, mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    if-nez v1, :cond_7

    .line 38
    sget v1, RETURN_ERROR:F

    .line 44
    :goto_6
    return v1

    .line 42
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1}, Lcom/samsung/android/allaroundsensing/IAASManager;->getBrightnessValue()F
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 43
    :catch_e
    move-exception v0

    .line 44
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, RETURN_ERROR:F

    goto :goto_6
.end method

.method public getBrightnessValueEnable()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 50
    iget-object v2, p0, mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    if-nez v2, :cond_6

    .line 57
    :goto_5
    return v1

    .line 55
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v2}, Lcom/samsung/android/allaroundsensing/IAASManager;->getBrightnessValueEnable()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 56
    :catch_d
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setBrightnessValue(F)V
    .registers 4
    .param p1, "value"    # F

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/IAASManager;->setBrightnessValue(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 72
    :goto_5
    return-void

    .line 69
    :catch_6
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, onError(Ljava/lang/Exception;)V

    goto :goto_5
.end method

.method public setBrightnessValue(J)V
    .registers 3
    .param p1, "value"    # J

    .prologue
    .line 77
    return-void
.end method

.method public setBrightnessValueEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 86
    :try_start_0
    iget-object v1, p0, mService:Lcom/samsung/android/allaroundsensing/IAASManager;

    invoke-interface {v1, p1}, Lcom/samsung/android/allaroundsensing/IAASManager;->setBrightnessValueEnable(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 90
    :goto_5
    return-void

    .line 87
    :catch_6
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-direct {p0, v0}, onError(Ljava/lang/Exception;)V

    goto :goto_5
.end method
