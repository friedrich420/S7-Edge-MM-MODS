.class public Lcom/android/internal/util/UserIcons;
.super Ljava/lang/Object;
.source "UserIcons.java"


# static fields
.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final LOG_USERICON_TAG:Ljava/lang/String; = "UserIcon"

.field private static final TAG_FOTA:Ljava/lang/String; = "fota"

.field private static final USER_DRAWABLES:[I

.field private static final USER_ICON_COLORS:[I

.field static mFotaVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, USER_ICON_COLORS:[I

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, USER_DRAWABLES:[I

    .line 63
    const/4 v0, 0x0

    sput-object v0, mFotaVersion:Ljava/lang/String;

    return-void

    .line 47
    :array_14
    .array-data 4
        0x106005b
        0x106005c
        0x106005d
    .end array-data

    .line 53
    :array_1e
    .array-data 4
        0x10800f2
        0x10800f3
        0x10800f4
        0x10800f5
        0x10800f6
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 7
    .param p0, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v5, 0x0

    .line 68
    if-nez p0, :cond_5

    .line 69
    const/4 v0, 0x0

    .line 77
    :goto_4
    return-object v0

    .line 71
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 72
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 73
    .local v2, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 74
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 75
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v5, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public static getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;
    .registers 10
    .param p0, "userId"    # I
    .param p1, "light"    # Z

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0x2710

    const/4 v5, 0x0

    .line 118
    sget-object v2, mFotaVersion:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 119
    invoke-static {}, readFotaLocked()Ljava/lang/String;

    move-result-object v2

    sput-object v2, mFotaVersion:Ljava/lang/String;

    .line 121
    :cond_e
    sget-object v2, mFotaVersion:Ljava/lang/String;

    if-nez v2, :cond_16

    .line 122
    const-string v2, "LL"

    sput-object v2, mFotaVersion:Ljava/lang/String;

    .line 125
    :cond_16
    const-string v2, "UserIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultUserIcon , userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFotaVersion : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, mFotaVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    sget-object v2, mFotaVersion:Ljava/lang/String;

    const-string v3, "KK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 127
    if-eq p0, v6, :cond_63

    .line 129
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, USER_DRAWABLES:[I

    sget-object v4, USER_DRAWABLES:[I

    array-length v4, v4

    rem-int v4, p0, v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 130
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 152
    :goto_62
    return-object v1

    .line 134
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_63
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10800f6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 135
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_62

    .line 141
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7a
    if-eqz p1, :cond_ae

    const v0, 0x1060064

    .line 142
    .local v0, "colorResId":I
    :goto_7f
    if-eq p0, v6, :cond_b2

    .line 144
    sget-object v2, USER_ICON_COLORS:[I

    sget-object v3, USER_ICON_COLORS:[I

    array-length v3, v3

    rem-int v3, p0, v3

    aget v0, v2, v3

    .line 149
    :goto_8a
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805c5

    invoke-virtual {v2, v3, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 150
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 151
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_62

    .line 141
    .end local v0    # "colorResId":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_ae
    const v0, 0x1060063

    goto :goto_7f

    .line 147
    .restart local v0    # "colorResId":I
    :cond_b2
    const v0, 0x106005e

    goto :goto_8a
.end method

.method public static getDefaultUserIconForBMode(IZZ)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p0, "userId"    # I
    .param p1, "light"    # Z
    .param p2, "isPrimary"    # Z

    .prologue
    const/4 v5, 0x0

    .line 89
    const-string v2, "UserIcon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultUserIconForBMode , userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPrimary : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-eqz p1, :cond_5c

    const v0, 0x1060064

    .line 91
    .local v0, "colorResId":I
    :goto_28
    const/16 v2, -0x2710

    if-eq p0, v2, :cond_60

    .line 93
    sget-object v2, USER_ICON_COLORS:[I

    sget-object v3, USER_ICON_COLORS:[I

    array-length v3, v3

    rem-int v3, p0, v3

    aget v0, v2, v3

    .line 98
    :goto_35
    const/4 v1, 0x0

    .line 99
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_64

    .line 100
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805c7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 105
    :goto_43
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 106
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    return-object v1

    .line 90
    .end local v0    # "colorResId":I
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_5c
    const v0, 0x1060063

    goto :goto_28

    .line 96
    .restart local v0    # "colorResId":I
    :cond_60
    const v0, 0x106005e

    goto :goto_35

    .line 103
    .restart local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10805c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_43
.end method

.method private static readFotaLocked()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v11, 0x2

    .line 157
    new-instance v5, Ljava/io/File;

    const-string v9, "/data/system/users"

    const-string v10, "fota.xml"

    invoke-direct {v5, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v5, "mIsFotaFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 159
    .local v0, "fis":Ljava/io/FileInputStream;
    new-instance v1, Landroid/util/XmlMoreAtomicFile;

    invoke-direct {v1, v5}, Landroid/util/XmlMoreAtomicFile;-><init>(Ljava/io/File;)V

    .line 160
    .local v1, "fotaFile":Landroid/util/XmlMoreAtomicFile;
    const/4 v3, 0x0

    .line 162
    .local v3, "mFotaVersion":Ljava/lang/String;
    :try_start_11
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 163
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 164
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v6, v0, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 167
    :cond_1d
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    if-eq v8, v11, :cond_26

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1d

    .line 171
    :cond_26
    if-eq v8, v11, :cond_34

    .line 172
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 173
    const-string v9, "LL"
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_2d} :catch_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_2d} :catch_5d
    .catchall {:try_start_11 .. :try_end_2d} :catchall_6b

    .line 186
    if-eqz v0, :cond_32

    .line 188
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_73

    :cond_32
    :goto_32
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .local v4, "mFotaVersion":Ljava/lang/String;
    :goto_33
    return-object v4

    .line 176
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_34
    :try_start_34
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "fota"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_48

    .line 177
    const/4 v9, 0x0

    const-string/jumbo v10, "version"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_47} :catch_4f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_47} :catch_5d
    .catchall {:try_start_34 .. :try_end_47} :catchall_6b

    move-result-object v3

    .line 186
    :cond_48
    if-eqz v0, :cond_4d

    .line 188
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_75

    :cond_4d
    :goto_4d
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v4    # "mFotaVersion":Ljava/lang/String;
    goto :goto_33

    .line 179
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    :catch_4f
    move-exception v2

    .line 180
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_50
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 181
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_6b

    .line 186
    if-eqz v0, :cond_5b

    .line 188
    :try_start_58
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_77

    :cond_5b
    :goto_5b
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v4    # "mFotaVersion":Ljava/lang/String;
    goto :goto_33

    .line 182
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    :catch_5d
    move-exception v7

    .line 183
    .local v7, "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5e
    invoke-virtual {v1}, Landroid/util/XmlMoreAtomicFile;->processDamagedFile()V

    .line 184
    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_5e .. :try_end_64} :catchall_6b

    .line 186
    if-eqz v0, :cond_69

    .line 188
    :try_start_66
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_79

    :cond_69
    :goto_69
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v4    # "mFotaVersion":Ljava/lang/String;
    goto :goto_33

    .line 186
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .end local v7    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    :catchall_6b
    move-exception v9

    if-eqz v0, :cond_71

    .line 188
    :try_start_6e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_7b

    :cond_71
    :goto_71
    move-object v4, v3

    .line 192
    .end local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v4    # "mFotaVersion":Ljava/lang/String;
    goto :goto_33

    .line 189
    .end local v4    # "mFotaVersion":Ljava/lang/String;
    .restart local v3    # "mFotaVersion":Ljava/lang/String;
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :catch_73
    move-exception v9

    goto :goto_32

    :catch_75
    move-exception v9

    goto :goto_4d

    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v2    # "ioe":Ljava/io/IOException;
    :catch_77
    move-exception v9

    goto :goto_5b

    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v7    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_79
    move-exception v9

    goto :goto_69

    .end local v7    # "pe":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_7b
    move-exception v9

    goto :goto_71
.end method
