.class public final Lcom/android/server/power/PowerManagerUtil;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/PowerManagerUtil$TraceDumper;,
        Lcom/android/server/power/PowerManagerUtil$Sales;,
        Lcom/android/server/power/PowerManagerUtil$TimeMeasurement;
    }
.end annotation


# static fields
.field public static final A8SKT_PROJECT:Z

.field public static final AX_PROJECT:Z

.field public static final CHAGALLATT_PROJECT:Z

.field private static final DEBUG_LOW:Z

.field private static final DEBUG_UNKNOWN:Z

.field public static final GALAXY_VIEW_LTE:Z

.field public static final GALAXY_VIEW_WIFI:Z

.field public static final GT58_PROJECT:Z

.field public static final GT_PROJECT:Z

.field public static final HERO_PROJECT:Z

.field public static final MANUAL_AUTOBRIGHTNESS_FEATURE:Z = true

.field public static final NOBLE_PROJECT:Z

.field public static final NOVEL_PROJECT:Z

.field public static final SEC_FEATURE_BATTERY_SIMULATION:Z

.field public static final SEC_FEATURE_DECOUPLE_FOR_DOZE:Z = true

.field public static final SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

.field public static final SEC_FEATURE_MARKER_TRACKER:Z = true

.field public static final SEC_FEATURE_MAXMANUAL_HBM:Z

.field public static final SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

.field public static final SEC_FEATURE_USE_LOCKZONE:Z

.field public static final SEC_FEATURE_USE_PMS_LOG:Z

.field public static final SEC_FEATURE_ZEROLUX_MINUSSTEP:Z

.field public static final SEC_MANUALTABLE_1:Z

.field public static final SEC_MANUALTABLE_2:Z

.field private static final SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "PowerManagerUtil"

.field public static final T_PROJECT:Z

.field public static final T_TMO_PROJECT:Z

.field public static final USE_AUTO_BRIGHTNESS_DETAIL:Z

.field public static final USE_EBOOK_AUTO_BRIGHTNESS_TABLE:Z = false

.field public static final USE_PERSONAL_AUTO_BRIGHTNESS:Z = true

.field public static final ZERO2_PROJECT:Z

.field public static final ZERO_PROJECT:Z

.field public static final mIsMocha:Z

.field private static final mProductName:Ljava/lang/String;

.field public static final mSCafeName:Ljava/lang/String;

.field public static final upgradeLollipop:Z


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    const-string/jumbo v0, "ro.product.device"

    const-string v3, "NONE"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, mProductName:Ljava/lang/String;

    .line 45
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "marinelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "SCV31"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "404SC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "SC-04G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "SC-05G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_229

    :cond_4f
    move v0, v2

    :goto_50
    sput-boolean v0, ZERO_PROJECT:Z

    .line 51
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tblte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, T_PROJECT:Z

    .line 52
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_73

    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gts2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22c

    :cond_73
    move v0, v2

    :goto_74
    sput-boolean v0, GT_PROJECT:Z

    .line 56
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gvwifi"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, GALAXY_VIEW_WIFI:Z

    .line 57
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gvlte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, GALAXY_VIEW_LTE:Z

    .line 58
    sget-boolean v0, GALAXY_VIEW_WIFI:Z

    if-nez v0, :cond_22f

    sget-boolean v0, GALAXY_VIEW_LTE:Z

    if-nez v0, :cond_22f

    move v0, v2

    :goto_95
    sput-boolean v0, SEC_FEATURE_USE_LOCKZONE:Z

    .line 62
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt58"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ad

    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gt5note8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_232

    :cond_ad
    move v0, v2

    :goto_ae
    sput-boolean v0, GT58_PROJECT:Z

    .line 63
    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "chagalllteatt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, CHAGALLATT_PROJECT:Z

    .line 64
    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "a8elteskt"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, A8SKT_PROJECT:Z

    .line 65
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trltetmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f0

    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tbltetmo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f0

    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "trltetmofrp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f0

    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "tbltetmofrp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_235

    :cond_f0
    move v0, v2

    :goto_f1
    sput-boolean v0, T_TMO_PROJECT:Z

    .line 69
    sget-boolean v0, GT58_PROJECT:Z

    if-nez v0, :cond_103

    sget-boolean v0, CHAGALLATT_PROJECT:Z

    if-nez v0, :cond_103

    sget-boolean v0, A8SKT_PROJECT:Z

    if-nez v0, :cond_103

    sget-boolean v0, T_TMO_PROJECT:Z

    if-eqz v0, :cond_238

    :cond_103
    move v0, v2

    :goto_104
    sput-boolean v0, SEC_FEATURE_DIM_BRIGHTNESS_BELOW_BATTERY_LEVEL_1:Z

    .line 74
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "novel"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, NOVEL_PROJECT:Z

    .line 75
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "noble"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, NOBLE_PROJECT:Z

    .line 76
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "zen"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, ZERO2_PROJECT:Z

    .line 77
    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "hero"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, HERO_PROJECT:Z

    .line 78
    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "a3x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15a

    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "a5x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15a

    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "a7x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15a

    sget-object v0, mProductName:Ljava/lang/String;

    const-string v3, "a9x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23b

    :cond_15a
    move v0, v2

    :goto_15b
    sput-boolean v0, AX_PROJECT:Z

    .line 85
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil$Sales;->VZW:Z

    if-nez v0, :cond_23e

    move v0, v2

    :goto_162
    sput-boolean v0, SEC_FEATURE_MAXMANUAL_HBM:Z

    .line 89
    sget-boolean v0, NOBLE_PROJECT:Z

    if-nez v0, :cond_16c

    sget-boolean v0, ZERO2_PROJECT:Z

    if-eqz v0, :cond_241

    :cond_16c
    move v0, v2

    :goto_16d
    sput-boolean v0, SEC_MANUALTABLE_1:Z

    .line 90
    sget-boolean v0, HERO_PROJECT:Z

    sput-boolean v0, SEC_MANUALTABLE_2:Z

    .line 99
    const-string/jumbo v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, mSCafeName:Ljava/lang/String;

    .line 100
    sget-object v0, mSCafeName:Ljava/lang/String;

    const-string/jumbo v3, "mocha"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, mIsMocha:Z

    .line 101
    sget-object v0, mSCafeName:Ljava/lang/String;

    const-string v3, "americano"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    sget-object v0, mProductName:Ljava/lang/String;

    const-string/jumbo v3, "gprimelte"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    :cond_19c
    sget-boolean v0, mIsMocha:Z

    if-eqz v0, :cond_244

    :cond_1a0
    move v0, v2

    :goto_1a1
    sput-boolean v0, upgradeLollipop:Z

    .line 102
    sget-boolean v0, upgradeLollipop:Z

    if-eqz v0, :cond_247

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTOMATIC_BRIGHTNESS_DETAIL"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_247

    move v0, v2

    :goto_1b4
    sput-boolean v0, USE_AUTO_BRIGHTNESS_DETAIL:Z

    .line 112
    sget-boolean v0, ZERO_PROJECT:Z

    if-nez v0, :cond_1c2

    sget-boolean v0, NOBLE_PROJECT:Z

    if-nez v0, :cond_1c2

    sget-boolean v0, ZERO2_PROJECT:Z

    if-eqz v0, :cond_24a

    :cond_1c2
    move v0, v2

    :goto_1c3
    sput-boolean v0, SEC_FEATURE_ZEROLUX_MINUSSTEP:Z

    .line 116
    const-string v0, "Unknown"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24d

    move v0, v2

    :goto_1d5
    sput-boolean v0, DEBUG_UNKNOWN:Z

    .line 117
    const-string v0, "0x4f4c"

    const-string/jumbo v3, "ro.debug_level"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24f

    move v0, v2

    :goto_1e7
    sput-boolean v0, DEBUG_LOW:Z

    .line 118
    const-string/jumbo v0, "true"

    const-string/jumbo v3, "ro.product_ship"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, SHIP_BUILD:Z

    .line 120
    sget-boolean v0, DEBUG_UNKNOWN:Z

    if-nez v0, :cond_251

    sget-boolean v0, DEBUG_LOW:Z

    if-nez v0, :cond_251

    move v0, v2

    :goto_209
    sput-boolean v0, SEC_FEATURE_USE_PMS_LOG:Z

    .line 121
    sget-boolean v0, DEBUG_UNKNOWN:Z

    if-nez v0, :cond_253

    sget-boolean v0, DEBUG_LOW:Z

    if-nez v0, :cond_253

    sget-boolean v0, SHIP_BUILD:Z

    if-nez v0, :cond_253

    move v0, v2

    :goto_218
    sput-boolean v0, SEC_FEATURE_BATTERY_SIMULATION:Z

    .line 124
    sget-boolean v0, DEBUG_UNKNOWN:Z

    if-nez v0, :cond_255

    sget-boolean v0, DEBUG_LOW:Z

    if-nez v0, :cond_255

    sget-boolean v0, SHIP_BUILD:Z

    if-nez v0, :cond_255

    :goto_226
    sput-boolean v2, SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    return-void

    :cond_229
    move v0, v1

    .line 45
    goto/16 :goto_50

    :cond_22c
    move v0, v1

    .line 52
    goto/16 :goto_74

    :cond_22f
    move v0, v1

    .line 58
    goto/16 :goto_95

    :cond_232
    move v0, v1

    .line 62
    goto/16 :goto_ae

    :cond_235
    move v0, v1

    .line 65
    goto/16 :goto_f1

    :cond_238
    move v0, v1

    .line 69
    goto/16 :goto_104

    :cond_23b
    move v0, v1

    .line 78
    goto/16 :goto_15b

    :cond_23e
    move v0, v1

    .line 85
    goto/16 :goto_162

    :cond_241
    move v0, v1

    .line 89
    goto/16 :goto_16d

    :cond_244
    move v0, v1

    .line 101
    goto/16 :goto_1a1

    :cond_247
    move v0, v1

    .line 102
    goto/16 :goto_1b4

    :cond_24a
    move v0, v1

    .line 112
    goto/16 :goto_1c3

    :cond_24d
    move v0, v1

    .line 116
    goto :goto_1d5

    :cond_24f
    move v0, v1

    .line 117
    goto :goto_1e7

    :cond_251
    move v0, v1

    .line 120
    goto :goto_209

    :cond_253
    move v0, v1

    .line 121
    goto :goto_218

    :cond_255
    move v2, v1

    .line 124
    goto :goto_226
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    return-void
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .registers 9
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 133
    const/4 v2, 0x0

    .line 134
    .local v2, "out":Ljava/io/FileOutputStream;
    const-string v4, "PowerManagerUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "fileWriteInt to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_24
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2e} :catch_3e
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_40

    .line 141
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_2e
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 142
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3c} :catch_4d

    move-object v2, v3

    .line 151
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_3d
    return-void

    .line 138
    :catch_3e
    move-exception v0

    .local v0, "e":Ljava/io/FileNotFoundException;
    goto :goto_3d

    .line 143
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_40
    move-exception v0

    .line 144
    .local v0, "e":Ljava/io/IOException;
    :goto_41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 146
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_3d

    .line 147
    :catch_48
    move-exception v1

    .line 148
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3d

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_4d
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_41
.end method
