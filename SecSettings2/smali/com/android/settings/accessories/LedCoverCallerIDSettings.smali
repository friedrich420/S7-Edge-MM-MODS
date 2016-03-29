.class public Lcom/android/settings/accessories/LedCoverCallerIDSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedCoverCallerIDSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;,
        Lcom/android/settings/accessories/LedCoverCallerIDSettings$ViewHolder;,
        Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;
    }
.end annotation


# instance fields
.field private mCallerIDInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

.field private mChangeMode:Ljava/lang/Boolean;

.field private mGridList:Landroid/widget/GridView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mChangeMode:Ljava/lang/Boolean;

    .line 64
    iput-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mGridList:Landroid/widget/GridView;

    .line 122
    iput-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessories/LedCoverCallerIDSettings;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessories/LedCoverCallerIDSettings;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->encircle(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private checkCallerIDContactCount()V
    .locals 15

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 237
    const-string v0, "LedCoverCallerIDSettings"

    const-string v1, "checkCallerIDContactCount, mCallerIDInfoList is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    .line 241
    .local v13, "listSize":I
    if-nez v13, :cond_1

    .line 242
    const-string v0, "LedCoverCallerIDSettings"

    const-string v1, "checkCallerIDContactCount, mCallerIDInfoList size is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_1
    add-int/lit8 v0, v13, 0x1

    new-array v6, v0, [I

    .line 246
    .local v6, "ListIndexByCallerIDIndex":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v13, :cond_2

    .line 247
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    invoke-virtual {v0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->resetCallerIDCount()V

    .line 248
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v0, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mId:I

    aput v12, v6, v0

    .line 246
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 251
    :cond_2
    const/4 v7, 0x0

    .line 253
    .local v7, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "sec_led"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 262
    const/4 v9, 0x0

    .line 265
    .local v9, "contactCount":I
    if-eqz v7, :cond_6

    .line 266
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 267
    const-string v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCallerIDCount() Count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-lez v9, :cond_4

    .line 269
    :cond_3
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, "contact_id":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 272
    .local v8, "callerID":Ljava/lang/String;
    const-string v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkCallerIDContactCount() contact_id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    if-eqz v8, :cond_3

    const-string v0, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 275
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aget v1, v6, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    invoke-virtual {v0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->increaseCallerIDCount()V

    goto :goto_2

    .line 256
    .end local v8    # "callerID":Ljava/lang/String;
    .end local v9    # "contactCount":I
    .end local v10    # "contact_id":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 257
    .local v11, "e":Landroid/database/sqlite/SQLiteException;
    const-string v0, "LedCoverCallerIDSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQL Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 280
    .end local v11    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v9    # "contactCount":I
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    if-eqz v0, :cond_5

    .line 281
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    .line 282
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 287
    .local v14, "logger":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    :goto_3
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    .line 288
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    const v0, 0x7f0e12cd

    invoke-virtual {p0, v0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v0, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mCallerIDCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 292
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.android.settings"

    const-string v2, "LVCC"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13
    .param p0, "input"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v12, 0x0

    .line 316
    if-nez p0, :cond_0

    .line 317
    const/4 v6, 0x0

    .line 334
    :goto_0
    return-object v6

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 319
    .local v4, "inWidth":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 320
    .local v3, "inHeight":I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 321
    .local v6, "output":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 322
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 323
    .local v7, "paint":Landroid/graphics/Paint;
    new-instance v9, Landroid/graphics/BitmapShader;

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v9, p0, v10, v11}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 324
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 325
    new-instance v8, Landroid/graphics/RectF;

    int-to-float v9, v4

    int-to-float v10, v3

    invoke-direct {v8, v12, v12, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 326
    .local v8, "srcRect":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v9, p1

    int-to-float v10, p2

    invoke-direct {v2, v12, v12, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 327
    .local v2, "dstRect":Landroid/graphics/RectF;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 328
    .local v5, "m":Landroid/graphics/Matrix;
    sget-object v9, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v5, v8, v2, v9}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 329
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 330
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 331
    .local v0, "bgpaint":Landroid/graphics/Paint;
    const v9, -0x3c3e3f

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 333
    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    invoke-virtual {v1, v9, v10, v11, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private encircle(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resID"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 298
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 299
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 300
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->encircle(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .line 302
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static encircle(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "icon"    # Landroid/graphics/Bitmap;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c038d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 310
    .local v0, "shortcutSize":I
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p0, v0, v0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->createCircularClip(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private makeCallerIDList()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 132
    .local v9, "name_array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 134
    .local v7, "icon_array":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f11009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 136
    .local v8, "index_array":Landroid/content/res/TypedArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v7, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v9, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-direct {v1, p0, v2, v3, v5}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;-><init>(Lcom/android/settings/accessories/LedCoverCallerIDSettings;III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 128
    .end local v6    # "i":I
    .end local v7    # "icon_array":Landroid/content/res/TypedArray;
    .end local v8    # "index_array":Landroid/content/res/TypedArray;
    .end local v9    # "name_array":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 140
    .restart local v6    # "i":I
    .restart local v7    # "icon_array":Landroid/content/res/TypedArray;
    .restart local v8    # "index_array":Landroid/content/res/TypedArray;
    .restart local v9    # "name_array":Landroid/content/res/TypedArray;
    :cond_1
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 141
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 143
    new-instance v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040120

    iget-object v5, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIDInfoList:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;-><init>(Lcom/android/settings/accessories/LedCoverCallerIDSettings;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    .line 146
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mGridList:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mGridList:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 94
    const/16 v0, 0x28

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->makeCallerIDList()V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "change_mode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mChangeMode:Ljava/lang/Boolean;

    .line 72
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mChangeMode:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mChangeMode:Ljava/lang/Boolean;

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mChangeMode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0e0ecf

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 76
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const v1, 0x7f040121

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 81
    .local v0, "mView":Landroid/view/View;
    const v1, 0x7f0d0323

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mGridList:Landroid/widget/GridView;

    .line 82
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    const/4 v3, 0x0

    .line 152
    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mChangeMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 154
    .local v7, "result":Landroid/content/Intent;
    const-string v1, "selected_id"

    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v0, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mId:I

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v1, "contact_count"

    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v0, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mCallerIDCount:I

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v7}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 165
    .end local v7    # "result":Landroid/content/Intent;
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v2, "args":Landroid/os/Bundle;
    const-string v1, "selected_id"

    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v0, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mId:I

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 161
    const-string v1, "contact_count"

    iget-object v0, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v0, v0, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mCallerIDCount:I

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/accessories/LedCoverCallerIDList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->mCallerIdAdapter:Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    invoke-virtual {v5, p3}, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;

    iget v5, v5, Lcom/android/settings/accessories/LedCoverCallerIDSettings$CallerIDInfo;->mName:I

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 222
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 232
    invoke-direct {p0}, Lcom/android/settings/accessories/LedCoverCallerIDSettings;->checkCallerIDContactCount()V

    .line 233
    return-void
.end method
