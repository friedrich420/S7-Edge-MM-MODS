.class public Lcom/android/server/wm/CustomStartingWindowData;
.super Ljava/lang/Object;
.source "CustomStartingWindowData.java"


# static fields
.field private static final CUSTOM_STARTING_WINDOW_FILE_NAME:Ljava/lang/String; = "CustomStartingWindowImage"

.field public static final CUSTOM_STARTING_WINDOW_IMAGE_PATH:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH"

.field public static final CUSTOM_STARTING_WINDOW_IMAGE_PATH_QUALIFIER:Ljava/lang/String; = "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

.field public static final CUSTOM_STARTING_WINDOW_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.LAYOUT_RESID"

.field public static final CUSTOM_STARTING_WINDOW_REVERSE_LAYOUT_RESID:Ljava/lang/String; = "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

.field static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CustomStartingWindowData"

.field private static mContext:Landroid/content/Context;


# instance fields
.field public bitmapIsLoaded:Z

.field public customImage:Ljava/lang/String;

.field private customImageQualifier:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field public resIdOfDefaultLayout:I

.field public resIdOfReverseLayout:I

.field public taskUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 65
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, key:Ljava/lang/String;

    .line 81
    iput-object v2, p0, packageName:Ljava/lang/String;

    .line 84
    const/4 v0, -0x1

    iput v0, p0, taskUserId:I

    .line 90
    iput v1, p0, resIdOfDefaultLayout:I

    .line 93
    iput v1, p0, resIdOfReverseLayout:I

    .line 96
    iput-object v2, p0, customImage:Ljava/lang/String;

    .line 98
    iput-object v2, p0, customImageQualifier:Ljava/lang/String;

    .line 101
    iput-boolean v1, p0, bitmapIsLoaded:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;I)V
    .registers 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "_taskUserId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string v1, ""

    iput-object v1, p0, key:Ljava/lang/String;

    .line 81
    iput-object v5, p0, packageName:Ljava/lang/String;

    .line 84
    const/4 v1, -0x1

    iput v1, p0, taskUserId:I

    .line 90
    iput v4, p0, resIdOfDefaultLayout:I

    .line 93
    iput v4, p0, resIdOfReverseLayout:I

    .line 96
    iput-object v5, p0, customImage:Ljava/lang/String;

    .line 98
    iput-object v5, p0, customImageQualifier:Ljava/lang/String;

    .line 101
    iput-boolean v4, p0, bitmapIsLoaded:Z

    .line 109
    if-nez p1, :cond_1b

    .line 143
    :cond_1a
    :goto_1a
    return-void

    .line 114
    :cond_1b
    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, key:Ljava/lang/String;

    .line 115
    iget-object v1, p0, key:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, key:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, packageName:Ljava/lang/String;

    .line 119
    iput p3, p0, taskUserId:I

    .line 123
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 124
    .local v0, "metaData":Landroid/os/Bundle;
    if-eqz v0, :cond_1a

    .line 126
    const-string v1, "com.samsung.android.startingwindow.LAYOUT_RESID"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, resIdOfDefaultLayout:I

    .line 127
    iget v1, p0, resIdOfDefaultLayout:I

    if-eqz v1, :cond_51

    .line 128
    const-string v1, "CustomStartingWindowData"

    const-string v2, "CustomStartingWindow DefaultLayout support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_51
    const-string v1, "com.samsung.android.startingwindow.REVERSE_LAYOUT_RESID"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, resIdOfReverseLayout:I

    .line 133
    iget v1, p0, resIdOfReverseLayout:I

    if-eqz v1, :cond_64

    .line 134
    const-string v1, "CustomStartingWindowData"

    const-string v2, "CustomStartingWindow Reverse Layout support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_64
    const-string v1, "com.samsung.android.startingwindow.IMAGE_PATH"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, customImage:Ljava/lang/String;

    .line 138
    const-string v1, "com.samsung.android.startingwindow.IMAGE_PATH_QUALIFIER"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, customImageQualifier:Ljava/lang/String;

    .line 139
    iget-object v1, p0, customImage:Ljava/lang/String;

    if-nez v1, :cond_7c

    iget-object v1, p0, customImageQualifier:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 140
    :cond_7c
    const-string v1, "CustomStartingWindowData"

    const-string v2, "CustomStartingWindow custom Image Path support app"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public static getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .registers 5
    .param p0, "qual"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/io/File;
    .param p2, "rotation"    # I

    .prologue
    .line 194
    invoke-static {p0, p1}, getQualifierFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 197
    packed-switch p2, :pswitch_data_18

    .line 205
    :pswitch_7
    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage.jpg"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .local v0, "file":Ljava/io/File;
    :goto_e
    return-object v0

    .line 200
    .end local v0    # "file":Ljava/io/File;
    :pswitch_f
    new-instance v0, Ljava/io/File;

    const-string v1, "CustomStartingWindowImage_rotated.jpg"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .restart local v0    # "file":Ljava/io/File;
    goto :goto_e

    .line 197
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_f
        :pswitch_7
        :pswitch_f
    .end packed-switch
.end method

.method public static getQualifierFilePath(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 13
    .param p0, "qual"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/io/File;

    .prologue
    .line 213
    if-eqz p0, :cond_84

    .line 214
    const-string/jumbo v6, "qualifier"

    .line 215
    .local v6, "qualifierFilePath":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 217
    .local v7, "qualifiers":[Ljava/lang/String;
    const/4 v2, 0x1

    .line 218
    .local v2, "findFolder":Z
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_13
    if-ge v3, v4, :cond_7c

    aget-object v5, v0, v3

    .line 219
    .local v5, "qualifier":Ljava/lang/String;
    const-string/jumbo v9, "locale"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_42

    .line 220
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 218
    :cond_3f
    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 221
    :cond_42
    const-string/jumbo v9, "font"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    .line 222
    sget-object v9, mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->getFontPathFlipFont(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "selectedFont":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 224
    if-eqz v8, :cond_3f

    .line 225
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3f

    .line 230
    .end local v5    # "qualifier":Ljava/lang/String;
    .end local v8    # "selectedFont":Ljava/lang/String;
    :cond_7c
    if-eqz v6, :cond_84

    .line 231
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local p1    # "filePath":Ljava/io/File;
    .local v1, "filePath":Ljava/io/File;
    move-object p1, v1

    .line 235
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "filePath":Ljava/io/File;
    .end local v2    # "findFolder":Z
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "qualifierFilePath":Ljava/lang/String;
    .end local v7    # "qualifiers":[Ljava/lang/String;
    .restart local p1    # "filePath":Ljava/io/File;
    :cond_84
    return-object p1
.end method


# virtual methods
.method public getBitmap(I)Landroid/graphics/Bitmap;
    .registers 16
    .param p1, "rotation"    # I

    .prologue
    const-wide/16 v12, 0x400

    const/4 v7, 0x0

    .line 146
    const/4 v2, 0x0

    .line 148
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, customImage:Ljava/lang/String;

    if-nez v8, :cond_d

    iget-object v8, p0, customImageQualifier:Ljava/lang/String;

    if-nez v8, :cond_d

    .line 190
    :cond_c
    :goto_c
    return-object v7

    .line 152
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 153
    .local v0, "before":J
    const/4 v5, 0x0

    .line 155
    .local v5, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 156
    .local v3, "customImageFile":Ljava/io/File;
    iget-object v8, p0, customImage:Ljava/lang/String;

    if-eqz v8, :cond_21

    iget-object v8, p0, customImage:Ljava/lang/String;

    const-string v9, "auto"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_25

    :cond_21
    iget-object v8, p0, customImageQualifier:Ljava/lang/String;

    if-eqz v8, :cond_d7

    .line 159
    :cond_25
    new-instance v6, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/custom_image/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, taskUserId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v6, "tmpFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 161
    const-string v8, "CustomStartingWindowData"

    const-string v9, "CustomStartingWindow system takes"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    move-object v3, v6

    .line 170
    .end local v6    # "tmpFile":Ljava/io/File;
    :goto_59
    if-eqz v3, :cond_67

    .line 171
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_67

    .line 172
    iget-object v8, p0, customImageQualifier:Ljava/lang/String;

    invoke-static {v8, v3, p1}, getBitmapFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v5

    .line 176
    :cond_67
    if-eqz v5, :cond_11b

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_11b

    .line 178
    :try_start_6f
    new-instance v8, Landroid/graphics/BitmapFactory;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 179
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_a7

    const-string v8, "CustomStartingWindowData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomStartingWindow getImageFromCustomFile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bitmap : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6f .. :try_end_a7} :catch_e0

    :cond_a7
    move-object v7, v2

    .line 190
    goto/16 :goto_c

    .line 164
    .restart local v6    # "tmpFile":Ljava/io/File;
    :cond_aa
    new-instance v3, Ljava/io/File;

    .end local v3    # "customImageFile":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/user/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, taskUserId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/custom_image/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "customImageFile":Ljava/io/File;
    goto :goto_59

    .line 167
    .end local v6    # "tmpFile":Ljava/io/File;
    :cond_d7
    new-instance v3, Ljava/io/File;

    .end local v3    # "customImageFile":Ljava/io/File;
    iget-object v8, p0, customImage:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "customImageFile":Ljava/io/File;
    goto/16 :goto_59

    .line 180
    :catch_e0
    move-exception v4

    .line 181
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_c

    const-string v8, "CustomStartingWindowData"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CustomStartingWindow taking bitmap from custom file is fail by OOM. just show original starting window. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v10

    div-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 185
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :cond_11b
    sget-boolean v8, SAFE_DEBUG:Z

    if-eqz v8, :cond_c

    const-string v8, "CustomStartingWindowData"

    const-string v9, "CustomStartingWindow getTaskImage from file is failed. file not exists"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c
.end method
