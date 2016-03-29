.class public final Lcom/android/settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final CONTACT_ID_PROJ:[Ljava/lang/String;

.field private static final CONTACT_NUMBER:[Ljava/lang/String;

.field private static final OWNER_NUMBER_PROJ:[Ljava/lang/String;

.field static checksum:Ljava/util/zip/Checksum;

.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->checksum:Ljava/util/zip/Checksum;

    .line 402
    new-instance v0, Lcom/android/settings/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 426
    new-instance v0, Lcom/android/settings/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .line 512
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->CONTACT_ID_PROJ:[Ljava/lang/String;

    .line 795
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->OWNER_NUMBER_PROJ:[Ljava/lang/String;

    .line 841
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->CONTACT_NUMBER:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$000()Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method public static checkUltraPowerSavingMode(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 389
    const/4 v1, 0x0

    .line 390
    .local v1, "mIsUltraPowerSavingMode":Z
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v0

    .line 392
    .local v0, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x200

    invoke-virtual {v0, v2}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 393
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sizeDimen"    # I
    .param p2, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 697
    const/4 v6, 0x0

    .line 698
    .local v6, "resultIcon":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 699
    .local v2, "mask":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 701
    .local v7, "scaledSource":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v8, v9

    .line 703
    .local v8, "size":I
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 704
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 705
    .local v3, "maskCanvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 706
    .local v4, "maskPaint":Landroid/graphics/Paint;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 707
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a0065

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 708
    div-int/lit8 v9, v8, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v8, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, v8, 0x2

    int-to-float v11, v11

    invoke-virtual {v3, v9, v10, v11, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 710
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 711
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 712
    const/4 v9, 0x1

    invoke-static {v7, v8, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 714
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 716
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 717
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0, v7, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 719
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 720
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 721
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v2, v9, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 722
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 727
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    if-eqz v2, :cond_1

    .line 728
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 730
    :cond_1
    if-eqz v7, :cond_2

    .line 731
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 734
    .end local v3    # "maskCanvas":Landroid/graphics/Canvas;
    .end local v4    # "maskPaint":Landroid/graphics/Paint;
    :cond_2
    :goto_0
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v9

    .line 724
    :catch_0
    move-exception v1

    .line 725
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    if-eqz v2, :cond_3

    .line 728
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 730
    :cond_3
    if-eqz v7, :cond_2

    .line 731
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 727
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v2, :cond_4

    .line 728
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 730
    :cond_4
    if-eqz v7, :cond_5

    .line 731
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    throw v9
.end method

.method public static getContactImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 656
    const/4 v10, 0x0

    .line 657
    .local v10, "phones":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 659
    .local v8, "clsInputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 660
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_2

    .line 661
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 662
    .local v1, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "photo_uri"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 665
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 666
    const-string v2, "photo_uri"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 667
    .local v13, "uriString":Ljava/lang/String;
    if-eqz v13, :cond_2

    .line 668
    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 669
    .local v11, "photo":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    .line 671
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020231

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 672
    .local v7, "btDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 673
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v6, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 675
    .local v12, "resizeBitmap":Landroid/graphics/Bitmap;
    const v2, 0x7f0c00ac

    invoke-static {p0, v2, v12}, Lcom/android/settings/bluetooth/Utils;->cropIcon(Landroid/content/Context;ILandroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 682
    if-eqz v10, :cond_0

    .line 683
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_0
    if-eqz v8, :cond_1

    .line 687
    :try_start_1
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 693
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "btDrawable":Landroid/graphics/drawable/Drawable;
    .end local v11    # "photo":Landroid/net/Uri;
    .end local v12    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "uriString":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 688
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "btDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v11    # "photo":Landroid/net/Uri;
    .restart local v12    # "resizeBitmap":Landroid/graphics/Bitmap;
    .restart local v13    # "uriString":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 689
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 682
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "btDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "e":Ljava/io/IOException;
    .end local v11    # "photo":Landroid/net/Uri;
    .end local v12    # "resizeBitmap":Landroid/graphics/Bitmap;
    .end local v13    # "uriString":Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_3

    .line 683
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_3
    if-eqz v8, :cond_4

    .line 687
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 693
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_4
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 688
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catch_1
    move-exception v9

    .line 689
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 679
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .line 680
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 682
    if-eqz v10, :cond_5

    .line 683
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_5
    if-eqz v8, :cond_4

    .line 687
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 688
    :catch_3
    move-exception v9

    .line 689
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 682
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 683
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_6
    if-eqz v8, :cond_7

    .line 687
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 690
    :cond_7
    :goto_2
    throw v2

    .line 688
    :catch_4
    move-exception v9

    .line 689
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getContactTint(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 542
    invoke-static {p0, p1}, Lcom/android/settings/bluetooth/Utils;->retrieveContactId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 543
    .local v0, "contactId":I
    rem-int/lit8 v1, v0, 0x4

    packed-switch v1, :pswitch_data_0

    .line 551
    const v1, 0x7f0a0065

    :goto_0
    return v1

    .line 545
    :pswitch_0
    const v1, 0x7f0a0066

    goto :goto_0

    .line 547
    :pswitch_1
    const v1, 0x7f0a0067

    goto :goto_0

    .line 549
    :pswitch_2
    const v1, 0x7f0a0068

    goto :goto_0

    .line 543
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getDeviceTypeIndex([B)I
    .locals 6
    .param p0, "mdType"    # [B

    .prologue
    const v0, 0x7f020240

    const v1, 0x7f02023a

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0xb

    .line 180
    if-eqz p0, :cond_1f

    .line 181
    const/16 v2, 0xa

    aget-byte v2, p0, v2

    packed-switch v2, :pswitch_data_0

    .line 296
    const/4 v0, 0x0

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 183
    :pswitch_0
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_1

    const v0, 0x7f020231

    goto :goto_0

    .line 184
    :cond_1
    const v0, 0x7f020231

    goto :goto_0

    .line 187
    :pswitch_1
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_2

    const v0, 0x7f02023f

    goto :goto_0

    .line 188
    :cond_2
    const v0, 0x7f02023f

    goto :goto_0

    .line 191
    :pswitch_2
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_3

    const v0, 0x7f020243

    goto :goto_0

    .line 192
    :cond_3
    const v0, 0x7f020243

    goto :goto_0

    .line 195
    :pswitch_3
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_4

    const v0, 0x7f020235

    goto :goto_0

    .line 196
    :cond_4
    aget-byte v0, p0, v3

    if-ne v0, v5, :cond_5

    const v0, 0x7f020230

    goto :goto_0

    .line 197
    :cond_5
    const v0, 0x7f020230

    goto :goto_0

    .line 200
    :pswitch_4
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_6

    const v0, 0x7f020233

    goto :goto_0

    .line 201
    :cond_6
    aget-byte v0, p0, v3

    if-ne v0, v5, :cond_7

    const v0, 0x7f02022a

    goto :goto_0

    .line 202
    :cond_7
    aget-byte v0, p0, v3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    const v0, 0x7f02022f

    goto :goto_0

    .line 203
    :cond_8
    const v0, 0x7f020215

    goto :goto_0

    .line 206
    :pswitch_5
    aget-byte v1, p0, v3

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 210
    :pswitch_6
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_9

    const v0, 0x7f02023d

    goto :goto_0

    .line 211
    :cond_9
    aget-byte v0, p0, v3

    if-ne v0, v5, :cond_a

    const v0, 0x7f02021c

    goto :goto_0

    .line 212
    :cond_a
    aget-byte v0, p0, v3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const v0, 0x7f020225

    goto :goto_0

    .line 213
    :cond_b
    aget-byte v0, p0, v3

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    const v0, 0x7f02021d

    goto :goto_0

    .line 214
    :cond_c
    const v0, 0x7f020225

    goto :goto_0

    .line 217
    :pswitch_7
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_d

    move v0, v1

    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 218
    goto/16 :goto_0

    .line 221
    :pswitch_8
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_e

    const v0, 0x7f020238

    goto/16 :goto_0

    .line 222
    :cond_e
    const v0, 0x7f020238

    goto/16 :goto_0

    .line 225
    :pswitch_9
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_f

    const v0, 0x7f020242

    goto/16 :goto_0

    .line 226
    :cond_f
    const v0, 0x7f020242

    goto/16 :goto_0

    .line 229
    :pswitch_a
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_10

    const v0, 0x7f020227

    goto/16 :goto_0

    .line 230
    :cond_10
    const v0, 0x7f020227

    goto/16 :goto_0

    .line 233
    :pswitch_b
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_11

    const v0, 0x7f020229

    goto/16 :goto_0

    .line 234
    :cond_11
    const v0, 0x7f020229

    goto/16 :goto_0

    .line 237
    :pswitch_c
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_12

    const v0, 0x7f02021b

    goto/16 :goto_0

    .line 238
    :cond_12
    const v0, 0x7f02021b

    goto/16 :goto_0

    .line 241
    :pswitch_d
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_13

    const v0, 0x7f02023e

    goto/16 :goto_0

    .line 242
    :cond_13
    const v0, 0x7f02023e

    goto/16 :goto_0

    .line 245
    :pswitch_e
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_14

    const v0, 0x7f02021a

    goto/16 :goto_0

    .line 246
    :cond_14
    const v0, 0x7f02021a

    goto/16 :goto_0

    .line 249
    :pswitch_f
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_15

    const v0, 0x7f020234

    goto/16 :goto_0

    .line 250
    :cond_15
    const v0, 0x7f020234

    goto/16 :goto_0

    .line 253
    :pswitch_10
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_16

    const v0, 0x7f020237

    goto/16 :goto_0

    .line 254
    :cond_16
    const v0, 0x7f020237

    goto/16 :goto_0

    .line 257
    :pswitch_11
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_17

    const v0, 0x7f020224

    goto/16 :goto_0

    .line 258
    :cond_17
    const v0, 0x7f020224

    goto/16 :goto_0

    .line 261
    :pswitch_12
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_18

    const v0, 0x7f02023b

    goto/16 :goto_0

    .line 262
    :cond_18
    const v0, 0x7f02023b

    goto/16 :goto_0

    .line 265
    :pswitch_13
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_19

    const v0, 0x7f020236

    goto/16 :goto_0

    .line 266
    :cond_19
    const v0, 0x7f020236

    goto/16 :goto_0

    .line 269
    :pswitch_14
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_1a

    const v0, 0x7f02022d

    goto/16 :goto_0

    .line 270
    :cond_1a
    aget-byte v0, p0, v3

    if-ne v0, v5, :cond_1b

    const v0, 0x7f020232

    goto/16 :goto_0

    .line 271
    :cond_1b
    const v0, 0x7f02022d

    goto/16 :goto_0

    .line 274
    :pswitch_15
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_1c

    const v0, 0x7f020225

    goto/16 :goto_0

    .line 275
    :cond_1c
    const v0, 0x7f02023c

    goto/16 :goto_0

    .line 278
    :pswitch_16
    aget-byte v1, p0, v3

    if-ne v1, v4, :cond_0

    goto/16 :goto_0

    .line 282
    :pswitch_17
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_1d

    move v0, v1

    goto/16 :goto_0

    :cond_1d
    move v0, v1

    .line 283
    goto/16 :goto_0

    .line 286
    :pswitch_18
    aget-byte v0, p0, v3

    if-ne v0, v4, :cond_1e

    const v0, 0x7f020239

    goto/16 :goto_0

    .line 287
    :cond_1e
    const v0, 0x7f020239

    goto/16 :goto_0

    .line 290
    :pswitch_19
    const v0, 0x7f020222

    goto/16 :goto_0

    .line 293
    :pswitch_1a
    const v0, 0x7f020221

    goto/16 :goto_0

    .line 299
    :cond_1f
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
    .end packed-switch
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefixType([B)Ljava/lang/String;
    .locals 10
    .param p0, "manufacturerData"    # [B

    .prologue
    const/16 v9, 0x1f

    .line 937
    const-string v2, ""

    .line 939
    .local v2, "name":Ljava/lang/String;
    if-eqz p0, :cond_4

    const/4 v6, 0x5

    aget-byte v6, p0, v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_4

    array-length v6, p0

    if-le v6, v9, :cond_4

    .line 941
    const-string v6, "BluetoothUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getPrefixType :: manufacturerData = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    aget-byte v6, p0, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 943
    .local v0, "associatedLength":I
    if-gez v0, :cond_0

    move-object v3, v2

    .line 958
    .end local v0    # "associatedLength":I
    .end local v2    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 945
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "associatedLength":I
    .restart local v2    # "name":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v0, 0x1f

    add-int/lit8 v4, v6, 0x1

    .line 946
    .local v4, "nameData":I
    array-length v6, p0

    if-le v6, v4, :cond_1

    aget-byte v6, p0, v4

    const/16 v7, 0x5b

    if-eq v6, v7, :cond_2

    :cond_1
    move-object v3, v2

    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 948
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_2
    array-length v6, p0

    sub-int/2addr v6, v4

    new-array v5, v6, [B

    .line 949
    .local v5, "parseByte":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_3

    .line 950
    add-int v6, v1, v4

    aget-byte v6, p0, v6

    aput-byte v6, v5, v1

    .line 951
    aget-byte v6, v5, v1

    const/16 v7, 0x5d

    if-ne v6, v7, :cond_5

    .line 956
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v0    # "associatedLength":I
    .end local v1    # "i":I
    .end local v4    # "nameData":I
    .end local v5    # "parseByte":[B
    :cond_4
    move-object v3, v2

    .line 958
    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 954
    .end local v3    # "name":Ljava/lang/String;
    .restart local v0    # "associatedLength":I
    .restart local v1    # "i":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v4    # "nameData":I
    .restart local v5    # "parseByte":[B
    :cond_5
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_6

    move-object v3, v2

    .end local v2    # "name":Ljava/lang/String;
    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 949
    .end local v3    # "name":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getTypeValues(Landroid/content/Context;I)[J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "availableCount"    # I

    .prologue
    .line 574
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 576
    .local v3, "mLocalManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    if-nez v3, :cond_0

    const/4 v4, 0x0

    .line 605
    :goto_0
    return-object v4

    .line 577
    :cond_0
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 579
    :cond_1
    const/4 v5, 0x5

    new-array v4, v5, [J

    const/4 v5, 0x0

    int-to-long v6, p1

    aput-wide v6, v4, v5

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x3

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v5

    .line 581
    .local v4, "values":[J
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 582
    .local v1, "cachedDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 583
    .local v0, "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_2

    .line 584
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 598
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_1

    .line 586
    :pswitch_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_1

    .line 589
    :pswitch_1
    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_1

    .line 592
    :pswitch_2
    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_1

    .line 595
    :pswitch_3
    const/4 v5, 0x4

    const/4 v6, 0x4

    aget-wide v6, v4, v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    aput-wide v6, v4, v5

    goto :goto_1

    .line 603
    .end local v0    # "cachedDevice":Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    :cond_3
    const-string v5, "BluetoothUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTypeValues :: DEVICE_TYPE_UNKNOWN = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-wide v8, v4, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , DEVICE_TYPE_CLASSIC = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    aget-wide v8, v4, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , DEVICE_TYPE_LE = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    aget-wide v8, v4, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , DEVICE_TYPE_DUAL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x4

    aget-wide v8, v4, v7

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static insertLoggingForScanList(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 557
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    .line 559
    .local v4, "mLocalManager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v1

    .line 560
    .local v1, "bondedCount":I
    invoke-static {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->getCachedDevicesNumber(Landroid/content/Context;)I

    move-result v5

    .line 561
    .local v5, "totalCount":I
    sub-int v0, v5, v1

    .line 563
    .local v0, "availableCount":I
    const-string v7, "BluetoothUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertLoggingForScanList :: totalCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , bondedCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , availableCount = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const-string v3, "BSLT"

    .line 567
    .local v3, "features":Ljava/lang/String;
    const/4 v7, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "Total"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "Unknown"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, "Classic"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "BLE"

    aput-object v8, v2, v7

    const/4 v7, 0x4

    const-string v8, "Dual"

    aput-object v8, v2, v7

    .line 568
    .local v2, "extras":[Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/Utils;->getTypeValues(Landroid/content/Context;I)[J

    move-result-object v6

    .line 570
    .local v6, "values":[J
    const-string v7, "com.android.bluetooth"

    invoke-static {p0, v7, v3, v2, v6}, Lcom/android/settings/Utils;->insertMultipleStatusLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 571
    return-void
.end method

.method static insertMDMLog(Landroid/content/Context;IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "severity"    # I
    .param p2, "group"    # I
    .param p3, "outcome"    # Z
    .param p4, "uid"    # I
    .param p5, "component"    # Ljava/lang/String;
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userid"    # I

    .prologue
    .line 374
    const-string v2, "BluetoothUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertMDMLog :: logging to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v2, "content://com.sec.knox.provider/AuditLog"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 377
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 378
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "severity"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 379
    const-string v2, "group"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    const-string v2, "outcome"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 381
    const-string v2, "uid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 382
    const-string v2, "component"

    invoke-virtual {v0, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v2, "message"

    invoke-virtual {v0, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string v2, "userid"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 386
    return-void
.end method

.method public static makeBitmapIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 609
    move-object/from16 v5, p1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 610
    .local v5, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0069

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v5, v14}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 611
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 613
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c00ac

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 615
    .local v2, "appSize":F
    float-to-int v14, v2

    float-to-int v15, v2

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 616
    .local v3, "background":Landroid/graphics/Bitmap;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 618
    .local v6, "canvas":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v9, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 619
    .local v9, "paint":Landroid/graphics/Paint;
    new-instance v12, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v12, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 620
    .local v12, "strokePaint":Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0c00ac

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v10, v14

    .line 622
    .local v10, "radius":F
    const/4 v14, 0x1

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 623
    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 624
    if-eqz p2, :cond_0

    .line 625
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/Utils;->getContactTint(Landroid/content/Context;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 630
    :goto_0
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v2, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v10, v16

    move/from16 v0, v16

    invoke-virtual {v6, v14, v15, v0, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 632
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 633
    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 634
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0029

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 635
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0064

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 637
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v2, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    const/high16 v16, 0x3f800000    # 1.0f

    sub-float v16, v10, v16

    move/from16 v0, v16

    invoke-virtual {v6, v14, v15, v0, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 639
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 640
    .local v7, "mode":Landroid/graphics/PorterDuff$Mode;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0069

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 641
    .local v13, "tint":I
    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v14, v13, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 643
    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v2, v14

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v2, v15

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    invoke-virtual {v6, v4, v14, v15, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 645
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 646
    .local v8, "opts":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v8, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 647
    const/16 v14, 0x32

    iput v14, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 648
    const/16 v14, 0x32

    iput v14, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 649
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-direct {v11, v14, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 651
    .local v11, "retDrawable":Landroid/graphics/drawable/Drawable;
    return-object v11

    .line 627
    .end local v7    # "mode":Landroid/graphics/PorterDuff$Mode;
    .end local v8    # "opts":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "retDrawable":Landroid/graphics/drawable/Drawable;
    .end local v13    # "tint":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0065

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v9, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0
.end method

.method public static makeNotiSound(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 475
    const/4 v3, 0x2

    :try_start_0
    invoke-static {v3}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 476
    .local v1, "notification":Landroid/net/Uri;
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v2

    .line 477
    .local v2, "r":Landroid/media/Ringtone;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 478
    invoke-virtual {v2}, Landroid/media/Ringtone;->play()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .end local v1    # "notification":Landroid/net/Uri;
    .end local v2    # "r":Landroid/media/Ringtone;
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static retrieveContactId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    .line 517
    const/4 v6, 0x0

    .line 518
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 520
    .local v8, "id":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 521
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 522
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/bluetooth/Utils;->CONTACT_ID_PROJ:[Ljava/lang/String;

    const-string v3, "data1=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lt v1, v9, :cond_0

    .line 527
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 528
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 534
    :cond_0
    if-eqz v6, :cond_1

    .line 535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 538
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    return v8

    .line 531
    :catch_0
    move-exception v7

    .line 532
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    if-eqz v6, :cond_1

    .line 535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 534
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 535
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 366
    if-eqz p1, :cond_0

    .line 367
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f0f0238

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 368
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object p0, v0

    .line 370
    .end local v0    # "context":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messageResId"    # I

    .prologue
    const/4 v4, 0x0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u200e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 360
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v2, 0x7f0f0238

    invoke-direct {v0, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 362
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 363
    return-void
.end method
