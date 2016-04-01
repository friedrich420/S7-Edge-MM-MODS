.class Lcom/android/server/accessibility/DisplayAdjustmentUtils;
.super Ljava/lang/Object;
.source "DisplayAdjustmentUtils.java"


# static fields
.field private static final DEFAULT_DISPLAY_DALTONIZER:I = 0xc

.field private static final GRAYSCALE_MATRIX:[F

.field private static final INVERSION_MATRIX_VALUE_ONLY:[F

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 34
    const-class v0, Lcom/android/server/accessibility/DisplayAdjustmentUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOG_TAG:Ljava/lang/String;

    .line 37
    new-array v0, v1, [F

    fill-array-data v0, :array_1a

    sput-object v0, GRAYSCALE_MATRIX:[F

    .line 51
    new-array v0, v1, [F

    fill-array-data v0, :array_3e

    sput-object v0, INVERSION_MATRIX_VALUE_ONLY:[F

    return-void

    .line 37
    nop

    :array_1a
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 51
    :array_3e
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyAdjustments(Landroid/content/Context;I)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 89
    .local v0, "colorMatrix":[F
    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v1, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_15

    .line 91
    sget-object v3, INVERSION_MATRIX_VALUE_ONLY:[F

    invoke-static {v0, v3}, multiply([F[F)[F

    move-result-object v0

    .line 94
    :cond_15
    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v1, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_38

    .line 96
    const-string v3, "accessibility_display_daltonizer"

    const/16 v4, 0xc

    invoke-static {v1, v3, v4, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 100
    .local v2, "daltonizerMode":I
    if-nez v2, :cond_34

    .line 101
    sget-object v3, GRAYSCALE_MATRIX:[F

    invoke-static {v0, v3}, multiply([F[F)[F

    move-result-object v0

    .line 102
    invoke-static {v5}, setDaltonizerMode(I)V

    .line 110
    .end local v2    # "daltonizerMode":I
    :goto_30
    invoke-static {v0}, setColorTransform([F)V

    .line 111
    return-void

    .line 104
    .restart local v2    # "daltonizerMode":I
    :cond_34
    invoke-static {v2}, setDaltonizerMode(I)V

    goto :goto_30

    .line 107
    .end local v2    # "daltonizerMode":I
    :cond_38
    invoke-static {v5}, setDaltonizerMode(I)V

    goto :goto_30
.end method

.method public static hasAdjustments(Landroid/content/Context;I)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_f

    .line 79
    :cond_e
    :goto_e
    return v1

    .line 74
    :cond_f
    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_e

    move v1, v2

    .line 79
    goto :goto_e
.end method

.method private static multiply([F[F)[F
    .registers 8
    .param p0, "matrix"    # [F
    .param p1, "other"    # [F

    .prologue
    const/4 v1, 0x0

    .line 114
    if-nez p0, :cond_4

    .line 119
    .end local p1    # "other":[F
    :goto_3
    return-object p1

    .line 117
    .restart local p1    # "other":[F
    :cond_4
    const/16 v2, 0x10

    new-array v0, v2, [F

    .local v0, "result":[F
    move-object v2, p0

    move v3, v1

    move-object v4, p1

    move v5, v1

    .line 118
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    move-object p1, v0

    .line 119
    goto :goto_3
.end method

.method private static setColorTransform([F)V
    .registers 8
    .param p0, "m"    # [F

    .prologue
    .line 152
    :try_start_0
    const-string v4, "SurfaceFlinger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 153
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_32

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    .local v0, "data":Landroid/os/Parcel;
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    if-eqz p0, :cond_24

    .line 157
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_18
    const/16 v4, 0x10

    if-ge v3, v4, :cond_28

    .line 159
    aget v4, p0, v3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 162
    .end local v3    # "i":I
    :cond_24
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    :cond_28
    const/16 v4, 0x3f7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v2, v4, v0, v5, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_32} :catch_33

    .line 170
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_32
    :goto_32
    return-void

    .line 167
    :catch_33
    move-exception v1

    .line 168
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v4, LOG_TAG:Ljava/lang/String;

    const-string v5, "Failed to set color transform"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method private static setDaltonizerMode(I)V
    .registers 7
    .param p0, "mode"    # I

    .prologue
    .line 130
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 131
    .local v2, "flinger":Landroid/os/IBinder;
    if-eqz v2, :cond_1e

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 133
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/16 v3, 0x3f6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 136
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 141
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "flinger":Landroid/os/IBinder;
    :cond_1e
    :goto_1e
    return-void

    .line 138
    :catch_1f
    move-exception v1

    .line 139
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v3, LOG_TAG:Ljava/lang/String;

    const-string v4, "Failed to set Daltonizer mode"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method
