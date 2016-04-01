.class final Lcom/android/server/display/DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "DisplayDeviceInfo.java"


# static fields
.field public static final DIFF_OTHER:I = 0x2

.field public static final DIFF_STATE:I = 0x1

.field public static final FLAG_DEFAULT_DISPLAY:I = 0x1

.field public static final FLAG_NEVER_BLANK:I = 0x20

.field public static final FLAG_OWN_CONTENT_ONLY:I = 0x80

.field public static final FLAG_PRESENTATION:I = 0x40

.field public static final FLAG_PRIVATE:I = 0x10

.field public static final FLAG_ROTATES_WITH_CONTENT:I = 0x2

.field public static final FLAG_ROUND:I = 0x100

.field public static final FLAG_SECURE:I = 0x4

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x8

.field public static final FLAG_VIRTUAL_SCREEN:I = 0x100000

.field public static final TOUCH_EXTERNAL:I = 0x2

.field public static final TOUCH_INTERNAL:I = 0x1

.field public static final TOUCH_NONE:I


# instance fields
.field public address:Ljava/lang/String;

.field public appVsyncOffsetNanos:J

.field public colorTransformId:I

.field public defaultColorTransformId:I

.field public defaultModeId:I

.field public densityDpi:I

.field public displayToMirror:I

.field public fixedOrientation:I

.field public flags:I

.field public height:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public presentationDeadlineNanos:J

.field public rotation:I

.field public state:I

.field public supportedColorTransforms:[Landroid/view/Display$ColorTransform;

.field public supportedModes:[Landroid/view/Display$Mode;

.field public touch:I

.field public type:I

.field public uniqueId:Ljava/lang/String;

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 169
    sget-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    iput-object v0, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 224
    const/4 v0, 0x0

    iput v0, p0, rotation:I

    .line 229
    iput v1, p0, fixedOrientation:I

    .line 245
    const/4 v0, 0x2

    iput v0, p0, state:I

    .line 268
    iput v1, p0, displayToMirror:I

    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "flags"    # I

    .prologue
    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .local v0, "msg":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_e

    .line 405
    const-string v1, ", FLAG_DEFAULT_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    :cond_e
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_17

    .line 408
    const-string v1, ", FLAG_ROTATES_WITH_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    :cond_17
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_20

    .line 411
    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_20
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_29

    .line 414
    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    :cond_29
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_32

    .line 417
    const-string v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    :cond_32
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3b

    .line 420
    const-string v1, ", FLAG_NEVER_BLANK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_3b
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_44

    .line 423
    const-string v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :cond_44
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_4d

    .line 426
    const-string v1, ", FLAG_OWN_CONTENT_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_4d
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_56

    .line 429
    const-string v1, ", FLAG_ROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    :cond_56
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_60

    .line 433
    const-string v1, ", FLAG_VIRTUAL_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static touchToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "touch"    # I

    .prologue
    .line 390
    packed-switch p0, :pswitch_data_12

    .line 398
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    .line 392
    :pswitch_8
    const-string v0, "NONE"

    goto :goto_7

    .line 394
    :pswitch_b
    const-string v0, "INTERNAL"

    goto :goto_7

    .line 396
    :pswitch_e
    const-string v0, "EXTERNAL"

    goto :goto_7

    .line 390
    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    .prologue
    .line 330
    iget-object v0, p1, name:Ljava/lang/String;

    iput-object v0, p0, name:Ljava/lang/String;

    .line 331
    iget-object v0, p1, uniqueId:Ljava/lang/String;

    iput-object v0, p0, uniqueId:Ljava/lang/String;

    .line 332
    iget v0, p1, width:I

    iput v0, p0, width:I

    .line 333
    iget v0, p1, height:I

    iput v0, p0, height:I

    .line 334
    iget v0, p1, modeId:I

    iput v0, p0, modeId:I

    .line 335
    iget v0, p1, defaultModeId:I

    iput v0, p0, defaultModeId:I

    .line 336
    iget-object v0, p1, supportedModes:[Landroid/view/Display$Mode;

    iput-object v0, p0, supportedModes:[Landroid/view/Display$Mode;

    .line 337
    iget v0, p1, colorTransformId:I

    iput v0, p0, colorTransformId:I

    .line 338
    iget v0, p1, defaultColorTransformId:I

    iput v0, p0, defaultColorTransformId:I

    .line 339
    iget-object v0, p1, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    iput-object v0, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    .line 340
    iget v0, p1, densityDpi:I

    iput v0, p0, densityDpi:I

    .line 341
    iget v0, p1, xDpi:F

    iput v0, p0, xDpi:F

    .line 342
    iget v0, p1, yDpi:F

    iput v0, p0, yDpi:F

    .line 343
    iget-wide v0, p1, appVsyncOffsetNanos:J

    iput-wide v0, p0, appVsyncOffsetNanos:J

    .line 344
    iget-wide v0, p1, presentationDeadlineNanos:J

    iput-wide v0, p0, presentationDeadlineNanos:J

    .line 345
    iget v0, p1, flags:I

    iput v0, p0, flags:I

    .line 346
    iget v0, p1, touch:I

    iput v0, p0, touch:I

    .line 347
    iget v0, p1, rotation:I

    iput v0, p0, rotation:I

    .line 348
    iget v0, p1, type:I

    iput v0, p0, type:I

    .line 349
    iget-object v0, p1, address:Ljava/lang/String;

    iput-object v0, p0, address:Ljava/lang/String;

    .line 350
    iget v0, p1, state:I

    iput v0, p0, state:I

    .line 351
    iget v0, p1, ownerUid:I

    iput v0, p0, ownerUid:I

    .line 352
    iget-object v0, p1, ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, ownerPackageName:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public diff(Lcom/android/server/display/DisplayDeviceInfo;)I
    .registers 8
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "diff":I
    iget v1, p0, state:I

    iget v2, p1, state:I

    if-eq v1, v2, :cond_9

    .line 295
    or-int/lit8 v0, v0, 0x1

    .line 297
    :cond_9
    iget-object v1, p0, name:Ljava/lang/String;

    iget-object v2, p1, name:Ljava/lang/String;

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    iget-object v1, p0, uniqueId:Ljava/lang/String;

    iget-object v2, p1, uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    iget v1, p0, width:I

    iget v2, p1, width:I

    if-ne v1, v2, :cond_ad

    iget v1, p0, height:I

    iget v2, p1, height:I

    if-ne v1, v2, :cond_ad

    iget v1, p0, modeId:I

    iget v2, p1, modeId:I

    if-ne v1, v2, :cond_ad

    iget v1, p0, defaultModeId:I

    iget v2, p1, defaultModeId:I

    if-ne v1, v2, :cond_ad

    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    iget v1, p0, colorTransformId:I

    iget v2, p1, colorTransformId:I

    if-ne v1, v2, :cond_ad

    iget v1, p0, defaultColorTransformId:I

    iget v2, p1, defaultColorTransformId:I

    if-ne v1, v2, :cond_ad

    iget-object v1, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    iget-object v2, p1, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    iget v1, p0, densityDpi:I

    iget v2, p1, densityDpi:I

    if-ne v1, v2, :cond_ad

    iget v1, p0, xDpi:F

    iget v2, p1, xDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_ad

    iget v1, p0, yDpi:F

    iget v2, p1, yDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_ad

    iget-wide v2, p0, appVsyncOffsetNanos:J

    iget-wide v4, p1, appVsyncOffsetNanos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_ad

    iget-wide v2, p0, presentationDeadlineNanos:J

    iget-wide v4, p1, presentationDeadlineNanos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_ad

    iget v1, p0, flags:I

    iget v2, p1, flags:I

    if-ne v1, v2, :cond_ad

    iget v1, p0, touch:I

    iget v2, p1, touch:I

    if-ne v1, v2, :cond_ad

    iget v1, p0, rotation:I

    iget v2, p1, rotation:I

    if-ne v1, v2, :cond_ad

    iget v1, p0, type:I

    iget v2, p1, type:I

    if-ne v1, v2, :cond_ad

    iget-object v1, p0, address:Ljava/lang/String;

    iget-object v2, p1, address:Ljava/lang/String;

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ad

    iget v1, p0, ownerUid:I

    iget v2, p1, ownerUid:I

    if-ne v1, v2, :cond_ad

    iget-object v1, p0, ownerPackageName:Ljava/lang/String;

    iget-object v2, p1, ownerPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_af

    .line 319
    :cond_ad
    or-int/lit8 v0, v0, 0x2

    .line 321
    :cond_af
    return v0
.end method

.method public equals(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .registers 3
    .param p1, "other"    # Lcom/android/server/display/DisplayDeviceInfo;

    .prologue
    .line 285
    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 281
    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceInfo;

    if-eqz v0, :cond_e

    check-cast p1, Lcom/android/server/display/DisplayDeviceInfo;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, equals(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 326
    const/4 v0, 0x0

    return v0
.end method

.method public setAssumedDensityForExternalDisplay(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 272
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x140

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, densityDpi:I

    .line 275
    iget v0, p0, densityDpi:I

    int-to-float v0, v0

    iput v0, p0, xDpi:F

    .line 276
    iget v0, p0, densityDpi:I

    int-to-float v0, v0

    iput v0, p0, yDpi:F

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "DisplayDeviceInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\": uniqueId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, uniqueId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget v1, p0, width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    const-string v1, ", modeId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, modeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    const-string v1, ", defaultModeId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, defaultModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, ", supportedModes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    const-string v1, ", colorTransformId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, colorTransformId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, ", defaultColorTransformId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, defaultColorTransformId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    const-string v1, ", supportedColorTransforms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, supportedColorTransforms:[Landroid/view/Display$ColorTransform;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, ", density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 369
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, xDpi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, yDpi:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dpi"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, ", appVsyncOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, appVsyncOffsetNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, ", presDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, presentationDeadlineNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, ", touch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, touch:I

    invoke-static {v2}, touchToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    const-string v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, rotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    const-string v1, ", fixedOrientation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, fixedOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, type:I

    invoke-static {v2}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget-object v1, p0, address:Ljava/lang/String;

    if-eqz v1, :cond_fd

    .line 377
    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_fd
    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, state:I

    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    iget v1, p0, ownerUid:I

    if-nez v1, :cond_114

    iget-object v1, p0, ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_130

    .line 381
    :cond_114
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, ownerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, ownerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_130
    iget v1, p0, flags:I

    invoke-static {v1}, flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
