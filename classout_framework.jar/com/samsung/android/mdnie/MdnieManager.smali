.class public final Lcom/samsung/android/mdnie/MdnieManager;
.super Ljava/lang/Object;
.source "MdnieManager.java"


# static fields
.field public static final MDNIE_CONTENT_MODE_BROWSER:I = 0x8

.field public static final MDNIE_CONTENT_MODE_CAMERA:I = 0x4

.field public static final MDNIE_CONTENT_MODE_EBOOK:I = 0x9

.field public static final MDNIE_CONTENT_MODE_EMAIL:I = 0xa

.field public static final MDNIE_CONTENT_MODE_GALLERY:I = 0x6

.field public static final MDNIE_CONTENT_MODE_HMT16:I = 0xc

.field public static final MDNIE_CONTENT_MODE_HMT8:I = 0xb

.field public static final MDNIE_CONTENT_MODE_NAVI:I = 0x5

.field public static final MDNIE_CONTENT_MODE_UI:I = 0x0

.field public static final MDNIE_CONTENT_MODE_VIDEO:I = 0x1

.field public static final MDNIE_CONTENT_MODE_VT:I = 0x7

.field public static final MDNIE_SCREEN_ADAPTIVE_MODE:I = 0x4

.field public static final MDNIE_SCREEN_ADOBERGB_MODE:I = 0x2

.field public static final MDNIE_SCREEN_AMOLED_MODE:I = 0x1

.field public static final MDNIE_SCREEN_AMOLED_S_CURVE_MODE:I = 0x0

.field public static final MDNIE_SCREEN_SRGB_MODE:I = 0x3

.field public static final MDNIE_VISION_COLOR_BLIND:I = 0x3

.field public static final MDNIE_VISION_GREY_SCALE:I = 0x4

.field public static final MDNIE_VISION_LOCAL_CE:I = 0x5

.field public static final MDNIE_VISION_LOCAL_CE_TEXT:I = 0x6

.field public static final MDNIE_VISION_NEGATIVE:I = 0x1

.field public static final MDNIE_VISION_NORMAL:I = 0x0

.field public static final MDNIE_VISION_SCREEN_CURTAIN:I = 0x2

.field private static RETURN_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MdnieManager"


# instance fields
.field final mService:Lcom/samsung/android/mdnie/IMdnieManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/4 v0, -0x1

    sput v0, RETURN_ERROR:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/mdnie/IMdnieManager;)V
    .registers 4
    .param p1, "service"    # Lcom/samsung/android/mdnie/IMdnieManager;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_c

    .line 89
    const-string v0, "MdnieManager"

    const-string v1, "In Constructor Stub-Service(IMdnieManager) is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_c
    iput-object p1, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    .line 92
    return-void
.end method


# virtual methods
.method public getContentMode()I
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v1, :cond_7

    .line 110
    sget v1, RETURN_ERROR:I

    .line 116
    :goto_6
    return v1

    .line 114
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/mdnie/IMdnieManager;->getContentMode()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 115
    :catch_e
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, RETURN_ERROR:I

    goto :goto_6
.end method

.method public getScreenMode()I
    .registers 3

    .prologue
    .line 96
    iget-object v1, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v1, :cond_7

    .line 97
    sget v1, RETURN_ERROR:I

    .line 103
    :goto_6
    return v1

    .line 101
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v1}, Lcom/samsung/android/mdnie/IMdnieManager;->getScreenMode()I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 102
    :catch_e
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    sget v1, RETURN_ERROR:I

    goto :goto_6
.end method

.method public setAmoledACL(I)Z
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 153
    :goto_5
    return v1

    .line 151
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setAmoledACL(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 152
    :catch_d
    move-exception v0

    .line 153
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setContentMode(I)Z
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 140
    :goto_5
    return v1

    .line 138
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setContentMode(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 139
    :catch_d
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setScreenMode(I)Z
    .registers 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 128
    :goto_5
    return v1

    .line 126
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setScreenMode(I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 127
    :catch_d
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setmDNIeAccessibilityMode(IZ)Z
    .registers 6
    .param p1, "mode"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 213
    :goto_5
    return v1

    .line 211
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/mdnie/IMdnieManager;->setmDNIeAccessibilityMode(IZ)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 212
    :catch_d
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setmDNIeColorBlind(Z[I)Z
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "result"    # [I

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 165
    :goto_5
    return v1

    .line 163
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/mdnie/IMdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 164
    :catch_d
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setmDNIeEmergencyMode(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 201
    :goto_5
    return v1

    .line 199
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setmDNIeEmergencyMode(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 200
    :catch_d
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setmDNIeNegative(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 177
    :goto_5
    return v1

    .line 175
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setmDNIeNegative(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 176
    :catch_d
    move-exception v0

    .line 177
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public setmDNIeScreenCurtain(Z)Z
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    if-nez v2, :cond_6

    .line 189
    :goto_5
    return v1

    .line 187
    :cond_6
    :try_start_6
    iget-object v2, p0, mService:Lcom/samsung/android/mdnie/IMdnieManager;

    invoke-interface {v2, p1}, Lcom/samsung/android/mdnie/IMdnieManager;->setmDNIeScreenCurtain(Z)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 188
    :catch_d
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method
