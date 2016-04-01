.class public Landroid/util/DisplayMetrics;
.super Ljava/lang/Object;
.source "DisplayMetrics.java"


# static fields
.field public static final DENSITY_280:I = 0x118

.field public static final DENSITY_360:I = 0x168

.field public static final DENSITY_400:I = 0x190

.field public static final DENSITY_420:I = 0x1a4

.field public static final DENSITY_560:I = 0x230

.field public static final DENSITY_DEFAULT:I = 0xa0

.field public static final DENSITY_DEFAULT_SCALE:F = 0.00625f

.field public static DENSITY_DEVICE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DENSITY_HIGH:I = 0xf0

.field public static final DENSITY_LOW:I = 0x78

.field public static final DENSITY_MEDIUM:I = 0xa0

.field public static final DENSITY_TV:I = 0xd5

.field public static final DENSITY_XHIGH:I = 0x140

.field public static final DENSITY_XXHIGH:I = 0x1e0

.field public static final DENSITY_XXXHIGH:I = 0x280


# instance fields
.field public density:F

.field public densityDpi:I

.field public heightPixels:I

.field public noncompatDensity:F

.field public noncompatDensityDpi:I

.field public noncompatHeightPixels:I

.field public noncompatScaledDensity:F

.field public noncompatWidthPixels:I

.field public noncompatXdpi:F

.field public noncompatYdpi:F

.field public scaledDensity:F

.field public widthPixels:I

.field public xdpi:F

.field public ydpi:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 141
    invoke-static {}, getDeviceDensity()I

    move-result v0

    sput v0, DENSITY_DEVICE:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    return-void
.end method

.method private static getDeviceDensity()I
    .registers 3

    .prologue
    .line 328
    const-string/jumbo v0, "qemu.sf.lcd_density"

    const-string/jumbo v1, "ro.sf.lcd_density"

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Landroid/util/DisplayMetrics;)Z
    .registers 4
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 281
    invoke-virtual {p0, p1}, equalsPhysical(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget v0, p0, scaledDensity:F

    iget v1, p1, scaledDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    iget v0, p0, noncompatScaledDensity:F

    iget v1, p1, noncompatScaledDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 271
    instance-of v0, p1, Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/util/DisplayMetrics;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, equals(Landroid/util/DisplayMetrics;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public equalsPhysical(Landroid/util/DisplayMetrics;)Z
    .registers 4
    .param p1, "other"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 296
    if-eqz p1, :cond_58

    iget v0, p0, widthPixels:I

    iget v1, p1, widthPixels:I

    if-ne v0, v1, :cond_58

    iget v0, p0, heightPixels:I

    iget v1, p1, heightPixels:I

    if-ne v0, v1, :cond_58

    iget v0, p0, density:F

    iget v1, p1, density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, densityDpi:I

    iget v1, p1, densityDpi:I

    if-ne v0, v1, :cond_58

    iget v0, p0, xdpi:F

    iget v1, p1, xdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, ydpi:F

    iget v1, p1, ydpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, noncompatWidthPixels:I

    iget v1, p1, noncompatWidthPixels:I

    if-ne v0, v1, :cond_58

    iget v0, p0, noncompatHeightPixels:I

    iget v1, p1, noncompatHeightPixels:I

    if-ne v0, v1, :cond_58

    iget v0, p0, noncompatDensity:F

    iget v1, p1, noncompatDensity:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, noncompatDensityDpi:I

    iget v1, p1, noncompatDensityDpi:I

    if-ne v0, v1, :cond_58

    iget v0, p0, noncompatXdpi:F

    iget v1, p1, noncompatXdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    iget v0, p0, noncompatYdpi:F

    iget v1, p1, noncompatYdpi:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_58

    const/4 v0, 0x1

    :goto_57
    return v0

    :cond_58
    const/4 v0, 0x0

    goto :goto_57
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 313
    iget v0, p0, widthPixels:I

    iget v1, p0, heightPixels:I

    mul-int/2addr v0, v1

    iget v1, p0, densityDpi:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public setTo(Landroid/util/DisplayMetrics;)V
    .registers 3
    .param p1, "o"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 236
    iget v0, p1, widthPixels:I

    iput v0, p0, widthPixels:I

    .line 237
    iget v0, p1, heightPixels:I

    iput v0, p0, heightPixels:I

    .line 238
    iget v0, p1, density:F

    iput v0, p0, density:F

    .line 239
    iget v0, p1, densityDpi:I

    iput v0, p0, densityDpi:I

    .line 240
    iget v0, p1, scaledDensity:F

    iput v0, p0, scaledDensity:F

    .line 241
    iget v0, p1, xdpi:F

    iput v0, p0, xdpi:F

    .line 242
    iget v0, p1, ydpi:F

    iput v0, p0, ydpi:F

    .line 243
    iget v0, p1, noncompatWidthPixels:I

    iput v0, p0, noncompatWidthPixels:I

    .line 244
    iget v0, p1, noncompatHeightPixels:I

    iput v0, p0, noncompatHeightPixels:I

    .line 245
    iget v0, p1, noncompatDensity:F

    iput v0, p0, noncompatDensity:F

    .line 246
    iget v0, p1, noncompatDensityDpi:I

    iput v0, p0, noncompatDensityDpi:I

    .line 247
    iget v0, p1, noncompatScaledDensity:F

    iput v0, p0, noncompatScaledDensity:F

    .line 248
    iget v0, p1, noncompatXdpi:F

    iput v0, p0, noncompatXdpi:F

    .line 249
    iget v0, p1, noncompatYdpi:F

    iput v0, p0, noncompatYdpi:F

    .line 250
    return-void
.end method

.method public setToDefaults()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 253
    iput v0, p0, widthPixels:I

    .line 254
    iput v0, p0, heightPixels:I

    .line 255
    sget v0, DENSITY_DEVICE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    iput v0, p0, density:F

    .line 256
    sget v0, DENSITY_DEVICE:I

    iput v0, p0, densityDpi:I

    .line 257
    iget v0, p0, density:F

    iput v0, p0, scaledDensity:F

    .line 258
    sget v0, DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, xdpi:F

    .line 259
    sget v0, DENSITY_DEVICE:I

    int-to-float v0, v0

    iput v0, p0, ydpi:F

    .line 260
    iget v0, p0, widthPixels:I

    iput v0, p0, noncompatWidthPixels:I

    .line 261
    iget v0, p0, heightPixels:I

    iput v0, p0, noncompatHeightPixels:I

    .line 262
    iget v0, p0, density:F

    iput v0, p0, noncompatDensity:F

    .line 263
    iget v0, p0, densityDpi:I

    iput v0, p0, noncompatDensityDpi:I

    .line 264
    iget v0, p0, scaledDensity:F

    iput v0, p0, noncompatScaledDensity:F

    .line 265
    iget v0, p0, xdpi:F

    iput v0, p0, noncompatXdpi:F

    .line 266
    iget v0, p0, ydpi:F

    iput v0, p0, noncompatYdpi:F

    .line 267
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayMetrics{density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", scaledDensity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, scaledDensity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", xdpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, xdpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ydpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, ydpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
