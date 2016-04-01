.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSystemUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateLongpressGesture(Z)V
    .registers 7
    .param p0, "bEnable"    # Z

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_11} :catch_71
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_54
    .catchall {:try_start_1 .. :try_end_11} :catchall_60

    move-result v4

    if-nez v4, :cond_1a

    .line 164
    :cond_14
    if-eqz v2, :cond_19

    .line 165
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_67

    .line 170
    .end local v1    # "file":Ljava/io/File;
    :cond_19
    :goto_19
    return-void

    .line 151
    .restart local v1    # "file":Ljava/io/File;
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_71
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_54
    .catchall {:try_start_1a .. :try_end_1f} :catchall_60

    .line 152
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p0, :cond_37

    .line 153
    :try_start_21
    const-string/jumbo v4, "set_longpress_enable,0"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 157
    :goto_2d
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_30} :catch_44
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_30} :catch_6e
    .catchall {:try_start_21 .. :try_end_30} :catchall_6b

    .line 164
    if-eqz v3, :cond_35

    .line 165
    :try_start_32
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_51

    :cond_35
    move-object v2, v3

    .line 168
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_19

    .line 155
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_37
    :try_start_37
    const-string/jumbo v4, "set_longpress_enable,1"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_43} :catch_6e
    .catchall {:try_start_37 .. :try_end_43} :catchall_6b

    goto :goto_2d

    .line 158
    :catch_44
    move-exception v0

    move-object v2, v3

    .line 159
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_46
    :try_start_46
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_60

    .line 164
    if-eqz v2, :cond_19

    .line 165
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_19

    .line 167
    :catch_4f
    move-exception v4

    goto :goto_19

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_51
    move-exception v4

    move-object v2, v3

    .line 169
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_19

    .line 160
    .end local v1    # "file":Ljava/io/File;
    :catch_54
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    :goto_55
    :try_start_55
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_60

    .line 164
    if-eqz v2, :cond_19

    .line 165
    :try_start_5a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_5e

    goto :goto_19

    .line 167
    :catch_5e
    move-exception v4

    goto :goto_19

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_60
    move-exception v4

    .line 164
    :goto_61
    if-eqz v2, :cond_66

    .line 165
    :try_start_63
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_69

    .line 168
    :cond_66
    :goto_66
    throw v4

    .line 167
    .restart local v1    # "file":Ljava/io/File;
    :catch_67
    move-exception v4

    goto :goto_19

    .end local v1    # "file":Ljava/io/File;
    :catch_69
    move-exception v5

    goto :goto_66

    .line 163
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_6b
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_61

    .line 160
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_6e
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_55

    .line 158
    .end local v1    # "file":Ljava/io/File;
    :catch_71
    move-exception v0

    goto :goto_46
.end method

.method public static updateSysfsBarLength(I)V
    .registers 9
    .param p0, "barLength"    # I

    .prologue
    .line 199
    if-ltz p0, :cond_6

    const/16 v5, 0xa0

    if-le p0, v5, :cond_7

    .line 225
    :cond_6
    :goto_6
    return-void

    .line 202
    :cond_7
    const/4 v3, 0x0

    .line 204
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_8
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_18} :catch_72
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_18} :catch_7e
    .catchall {:try_start_8 .. :try_end_18} :catchall_8c

    move-result v5

    if-nez v5, :cond_23

    .line 219
    :cond_1b
    if-eqz v3, :cond_6

    .line 220
    :try_start_1d
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_6

    .line 222
    :catch_21
    move-exception v5

    goto :goto_6

    .line 208
    :cond_23
    :try_start_23
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_72
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_7e
    .catchall {:try_start_23 .. :try_end_28} :catchall_8c

    .line 209
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_28
    new-instance v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_sidescreen_x_length,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "command":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 211
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 212
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSysfsBarLength: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_68} :catch_9b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_68} :catch_98
    .catchall {:try_start_28 .. :try_end_68} :catchall_95

    .line 219
    if-eqz v4, :cond_6d

    .line 220
    :try_start_6a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6f

    :cond_6d
    move-object v3, v4

    .line 223
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_6

    .line 222
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_6f
    move-exception v5

    move-object v3, v4

    .line 224
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_6

    .line 213
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_72
    move-exception v1

    .line 214
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_73
    :try_start_73
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_8c

    .line 219
    if-eqz v3, :cond_6

    .line 220
    :try_start_78
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c

    goto :goto_6

    .line 222
    :catch_7c
    move-exception v5

    goto :goto_6

    .line 215
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_7e
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/IOException;
    :goto_7f
    :try_start_7f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_8c

    .line 219
    if-eqz v3, :cond_6

    .line 220
    :try_start_84
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_89

    goto/16 :goto_6

    .line 222
    :catch_89
    move-exception v5

    goto/16 :goto_6

    .line 218
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_8c
    move-exception v5

    .line 219
    :goto_8d
    if-eqz v3, :cond_92

    .line 220
    :try_start_8f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93

    .line 223
    :cond_92
    :goto_92
    throw v5

    .line 222
    :catch_93
    move-exception v6

    goto :goto_92

    .line 218
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catchall_95
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_8d

    .line 215
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_98
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_7f

    .line 213
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_9b
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_73
.end method

.method public static updateSysfsDeadZone(I)V
    .registers 9
    .param p0, "deadzone"    # I

    .prologue
    .line 173
    const/4 v3, 0x0

    .line 175
    .local v3, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_11} :catch_69
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_75
    .catchall {:try_start_1 .. :try_end_11} :catchall_81

    move-result v5

    if-nez v5, :cond_1a

    .line 190
    :cond_14
    if-eqz v3, :cond_19

    .line 191
    :try_start_16
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_88

    .line 196
    .end local v2    # "file":Ljava/io/File;
    :cond_19
    :goto_19
    return-void

    .line 179
    .restart local v2    # "file":Ljava/io/File;
    :cond_1a
    :try_start_1a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_69
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_75
    .catchall {:try_start_1a .. :try_end_1f} :catchall_81

    .line 180
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_1f
    new-instance v0, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set_dead_zone,"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "command":Ljava/lang/String;
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/OutputStream;->write([B)V

    .line 182
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 183
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSysfsDeadZone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_5f} :catch_92
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_5f} :catch_8f
    .catchall {:try_start_1f .. :try_end_5f} :catchall_8c

    .line 190
    if-eqz v4, :cond_64

    .line 191
    :try_start_61
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_66

    :cond_64
    move-object v3, v4

    .line 194
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_19

    .line 193
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_66
    move-exception v5

    move-object v3, v4

    .line 195
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_19

    .line 184
    .end local v0    # "command":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :catch_69
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_6a
    :try_start_6a
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_81

    .line 190
    if-eqz v3, :cond_19

    .line 191
    :try_start_6f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_72} :catch_73

    goto :goto_19

    .line 193
    :catch_73
    move-exception v5

    goto :goto_19

    .line 186
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_75
    move-exception v1

    .line 187
    .local v1, "e":Ljava/io/IOException;
    :goto_76
    :try_start_76
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_81

    .line 190
    if-eqz v3, :cond_19

    .line 191
    :try_start_7b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_19

    .line 193
    :catch_7f
    move-exception v5

    goto :goto_19

    .line 189
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_81
    move-exception v5

    .line 190
    :goto_82
    if-eqz v3, :cond_87

    .line 191
    :try_start_84
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_8a

    .line 194
    :cond_87
    :goto_87
    throw v5

    .line 193
    .restart local v2    # "file":Ljava/io/File;
    :catch_88
    move-exception v5

    goto :goto_19

    .end local v2    # "file":Ljava/io/File;
    :catch_8a
    move-exception v6

    goto :goto_87

    .line 189
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catchall_8c
    move-exception v5

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_82

    .line 186
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_8f
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_76

    .line 184
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_92
    move-exception v1

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    goto :goto_6a
.end method

.method public static updateSysfsGripDisable(Z)V
    .registers 8
    .param p0, "bDisable"    # Z

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 230
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_24

    .line 232
    :cond_14
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "updateSysfsGripDisable : file did not exists or canWrite"

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1e} :catch_96
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1e} :catch_79
    .catchall {:try_start_1 .. :try_end_1e} :catchall_85

    .line 249
    if-eqz v2, :cond_23

    .line 250
    :try_start_20
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_8c

    .line 255
    .end local v1    # "file":Ljava/io/File;
    :cond_23
    :goto_23
    return-void

    .line 235
    .restart local v1    # "file":Ljava/io/File;
    :cond_24
    :try_start_24
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSysfsGripDisable : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_44} :catch_96
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_44} :catch_79
    .catchall {:try_start_24 .. :try_end_44} :catchall_85

    .line 237
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p0, :cond_5c

    .line 238
    :try_start_46
    const-string/jumbo v4, "set_grip_detection,0"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 242
    :goto_52
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_55} :catch_69
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_55} :catch_93
    .catchall {:try_start_46 .. :try_end_55} :catchall_90

    .line 249
    if-eqz v3, :cond_5a

    .line 250
    :try_start_57
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_76

    :cond_5a
    move-object v2, v3

    .line 253
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_23

    .line 240
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_5c
    :try_start_5c
    const-string/jumbo v4, "set_grip_detection,1"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_68} :catch_69
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_68} :catch_93
    .catchall {:try_start_5c .. :try_end_68} :catchall_90

    goto :goto_52

    .line 243
    :catch_69
    move-exception v0

    move-object v2, v3

    .line 244
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_85

    .line 249
    if-eqz v2, :cond_23

    .line 250
    :try_start_70
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_23

    .line 252
    :catch_74
    move-exception v4

    goto :goto_23

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_76
    move-exception v4

    move-object v2, v3

    .line 254
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_23

    .line 245
    .end local v1    # "file":Ljava/io/File;
    :catch_79
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/IOException;
    :goto_7a
    :try_start_7a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_85

    .line 249
    if-eqz v2, :cond_23

    .line 250
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_83

    goto :goto_23

    .line 252
    :catch_83
    move-exception v4

    goto :goto_23

    .line 248
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_85
    move-exception v4

    .line 249
    :goto_86
    if-eqz v2, :cond_8b

    .line 250
    :try_start_88
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8e

    .line 253
    :cond_8b
    :goto_8b
    throw v4

    .line 252
    .restart local v1    # "file":Ljava/io/File;
    :catch_8c
    move-exception v4

    goto :goto_23

    .end local v1    # "file":Ljava/io/File;
    :catch_8e
    move-exception v5

    goto :goto_8b

    .line 248
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_90
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_86

    .line 245
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_93
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_7a

    .line 243
    .end local v1    # "file":Ljava/io/File;
    :catch_96
    move-exception v0

    goto :goto_6b
.end method

.method public static updateWakeupArea(I)V
    .registers 7
    .param p0, "area"    # I

    .prologue
    .line 115
    const/4 v2, 0x0

    .line 117
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_11} :catch_72
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_11} :catch_55
    .catchall {:try_start_1 .. :try_end_11} :catchall_61

    move-result v4

    if-nez v4, :cond_1a

    .line 136
    :cond_14
    if-eqz v2, :cond_19

    .line 137
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19} :catch_68

    .line 142
    .end local v1    # "file":Ljava/io/File;
    :cond_19
    :goto_19
    return-void

    .line 121
    .restart local v1    # "file":Ljava/io/File;
    :cond_1a
    :try_start_1a
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_72
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_55
    .catchall {:try_start_1a .. :try_end_1f} :catchall_61

    .line 122
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    const/4 v4, 0x1

    if-ne p0, v4, :cond_38

    .line 124
    :try_start_22
    const-string/jumbo v4, "select_wakeful_edge,0"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 129
    :goto_2e
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_31} :catch_45
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_31} :catch_6f
    .catchall {:try_start_22 .. :try_end_31} :catchall_6c

    .line 136
    if-eqz v3, :cond_36

    .line 137
    :try_start_33
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_52

    :cond_36
    move-object v2, v3

    .line 140
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_19

    .line 127
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :cond_38
    :try_start_38
    const-string/jumbo v4, "select_wakeful_edge,1"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_44} :catch_45
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_44} :catch_6f
    .catchall {:try_start_38 .. :try_end_44} :catchall_6c

    goto :goto_2e

    .line 130
    :catch_45
    move-exception v0

    move-object v2, v3

    .line 131
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_47
    :try_start_47
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_61

    .line 136
    if-eqz v2, :cond_19

    .line 137
    :try_start_4c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_19

    .line 139
    :catch_50
    move-exception v4

    goto :goto_19

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_52
    move-exception v4

    move-object v2, v3

    .line 141
    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_19

    .line 132
    .end local v1    # "file":Ljava/io/File;
    :catch_55
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    :goto_56
    :try_start_56
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_61

    .line 136
    if-eqz v2, :cond_19

    .line 137
    :try_start_5b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_19

    .line 139
    :catch_5f
    move-exception v4

    goto :goto_19

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_61
    move-exception v4

    .line 136
    :goto_62
    if-eqz v2, :cond_67

    .line 137
    :try_start_64
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_67} :catch_6a

    .line 140
    :cond_67
    :goto_67
    throw v4

    .line 139
    .restart local v1    # "file":Ljava/io/File;
    :catch_68
    move-exception v4

    goto :goto_19

    .end local v1    # "file":Ljava/io/File;
    :catch_6a
    move-exception v5

    goto :goto_67

    .line 135
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_6c
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_62

    .line 132
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_6f
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_56

    .line 130
    .end local v1    # "file":Ljava/io/File;
    :catch_72
    move-exception v0

    goto :goto_47
.end method

.method public static updateWakeupGesture(Landroid/content/Context;IZ)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gestureType"    # I
    .param p2, "bEnable"    # Z

    .prologue
    .line 80
    const-string/jumbo v5, "power"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 81
    .local v4, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 82
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "updateWakeupGesture: factory binary"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_19
    :goto_19
    return-void

    .line 85
    :cond_1a
    if-eqz v4, :cond_19

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 86
    const/4 v2, 0x0

    .line 88
    .local v2, "fos":Ljava/io/OutputStream;
    :try_start_23
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_33} :catch_91
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_33} :catch_76
    .catchall {:try_start_23 .. :try_end_33} :catchall_82

    move-result v5

    if-nez v5, :cond_3e

    .line 105
    :cond_36
    if-eqz v2, :cond_19

    .line 106
    :try_start_38
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_19

    .line 108
    :catch_3c
    move-exception v5

    goto :goto_19

    .line 92
    :cond_3e
    :try_start_3e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_43} :catch_91
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_43} :catch_76
    .catchall {:try_start_3e .. :try_end_43} :catchall_82

    .line 93
    .end local v2    # "fos":Ljava/io/OutputStream;
    .local v3, "fos":Ljava/io/OutputStream;
    if-eqz p2, :cond_5c

    .line 94
    :try_start_45
    const-string/jumbo v5, "second_screen_enable,1"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 98
    :goto_51
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_54
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_54} :catch_69
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_54} :catch_8e
    .catchall {:try_start_45 .. :try_end_54} :catchall_8b

    .line 105
    if-eqz v3, :cond_19

    .line 106
    :try_start_56
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_5a

    goto :goto_19

    .line 108
    :catch_5a
    move-exception v5

    goto :goto_19

    .line 96
    :cond_5c
    :try_start_5c
    const-string/jumbo v5, "second_screen_enable,0"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V
    :try_end_68
    .catch Ljava/io/FileNotFoundException; {:try_start_5c .. :try_end_68} :catch_69
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_68} :catch_8e
    .catchall {:try_start_5c .. :try_end_68} :catchall_8b

    goto :goto_51

    .line 99
    :catch_69
    move-exception v0

    move-object v2, v3

    .line 100
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_82

    .line 105
    if-eqz v2, :cond_19

    .line 106
    :try_start_70
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_19

    .line 108
    :catch_74
    move-exception v5

    goto :goto_19

    .line 101
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_76
    move-exception v0

    .line 102
    .local v0, "e":Ljava/io/IOException;
    :goto_77
    :try_start_77
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_82

    .line 105
    if-eqz v2, :cond_19

    .line 106
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_19

    .line 108
    :catch_80
    move-exception v5

    goto :goto_19

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_82
    move-exception v5

    .line 105
    :goto_83
    if-eqz v2, :cond_88

    .line 106
    :try_start_85
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_89

    .line 109
    :cond_88
    :goto_88
    throw v5

    .line 108
    :catch_89
    move-exception v6

    goto :goto_88

    .line 104
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catchall_8b
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_83

    .line 101
    .end local v2    # "fos":Ljava/io/OutputStream;
    .restart local v3    # "fos":Ljava/io/OutputStream;
    :catch_8e
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/OutputStream;
    .restart local v2    # "fos":Ljava/io/OutputStream;
    goto :goto_77

    .line 99
    .end local v1    # "file":Ljava/io/File;
    :catch_91
    move-exception v0

    goto :goto_6b
.end method
