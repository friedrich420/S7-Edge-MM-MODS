.class public Lcom/samsung/android/cover/CoverState;
.super Ljava/lang/Object;
.source "CoverState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLOR_BLACK:I = 0x1

.field public static final COLOR_BLUE:I = 0x5

.field public static final COLOR_BLUSH_PINK:I = 0x8

.field public static final COLOR_BRONZE:I = 0xe

.field public static final COLOR_CARBON_METAL:I = 0x6

.field public static final COLOR_CHARCOAL:I = 0xa

.field public static final COLOR_CHARCOAL_GRAY:I = 0xa

.field public static final COLOR_CLASSIC_WHITE:I = 0x2

.field public static final COLOR_DEFAULT:I = 0x0

.field public static final COLOR_GOLD:I = 0x7

.field public static final COLOR_GRAYISH_BLUE:I = 0x9

.field public static final COLOR_GREEN:I = 0xb

.field public static final COLOR_INDIGO_BLUE:I = 0x5

.field public static final COLOR_JET_BLACK:I = 0x1

.field public static final COLOR_MAGENTA:I = 0x3

.field public static final COLOR_MINT:I = 0x9

.field public static final COLOR_MINT_BLUE:I = 0x9

.field public static final COLOR_MUSTARD_YELLOW:I = 0xc

.field public static final COLOR_NAVY:I = 0x4

.field public static final COLOR_NFC_SMART_COVER:I = 0xff

.field public static final COLOR_OATMEAL:I = 0xc

.field public static final COLOR_OATMEAL_BEIGE:I = 0xc

.field public static final COLOR_ORANGE:I = 0xd

.field public static final COLOR_PEAKCOCK_GREEN:I = 0xb

.field public static final COLOR_PEARL_WHITE:I = 0x2

.field public static final COLOR_PINK:I = 0x8

.field public static final COLOR_PLUM:I = 0x3

.field public static final COLOR_PLUM_RED:I = 0x3

.field public static final COLOR_ROSE_GOLD:I = 0x7

.field public static final COLOR_SILVER:I = 0x6

.field public static final COLOR_SOFT_PINK:I = 0x8

.field public static final COLOR_WHITE:I = 0x2

.field public static final COLOR_WILD_ORANGE:I = 0xd

.field public static final COLOR_YELLOW:I = 0xc

.field public static final COVER_ATTACHED:Z = true

.field public static final COVER_DETACHED:Z = false

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/cover/CoverState;",
            ">;"
        }
    .end annotation
.end field

.field public static final MODEL_DEFAULT:I = 0x0

.field public static final MODEL_TB:I = 0x3

.field public static final MODEL_TR:I = 0x2

.field public static final SWITCH_STATE_COVER_CLOSE:Z = false

.field public static final SWITCH_STATE_COVER_OPEN:Z = true

.field private static final TAG:Ljava/lang/String; = "CoverState"

.field public static final TYPE_BRAND_MONBLANC_COVER:I = 0x64

.field public static final TYPE_CLEAR_COVER:I = 0x8

.field public static final TYPE_FLIP_COVER:I = 0x0

.field public static final TYPE_HEALTH_COVER:I = 0x4

.field public static final TYPE_KEYBOARD_KOR_COVER:I = 0x9

.field public static final TYPE_KEYBOARD_US_COVER:I = 0xa

.field public static final TYPE_LED_COVER:I = 0x7

.field public static final TYPE_NFC_SMART_COVER:I = 0xff

.field public static final TYPE_NONE:I = 0x2

.field public static final TYPE_SVIEW_CHARGER_COVER:I = 0x3

.field public static final TYPE_SVIEW_COVER:I = 0x1

.field public static final TYPE_S_CHARGER_COVER:I = 0x5

.field public static final TYPE_S_VIEW_WALLET_COVER:I = 0x6


# instance fields
.field public attached:Z

.field public color:I

.field public fakeCover:Z

.field public heightPixel:I

.field public model:I

.field public serialNumber:Ljava/lang/String;

.field public smartCoverAppUri:Ljava/lang/String;

.field public smartCoverCookie:[B

.field public switchState:Z

.field public type:I

.field public widthPixel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 527
    new-instance v0, Lcom/samsung/android/cover/CoverState$1;

    invoke-direct {v0}, Lcom/samsung/android/cover/CoverState$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, switchState:Z

    .line 341
    const/4 v0, 0x2

    iput v0, p0, type:I

    .line 342
    iput v1, p0, color:I

    .line 343
    iput v1, p0, widthPixel:I

    .line 344
    iput v1, p0, heightPixel:I

    .line 345
    iput-boolean v1, p0, attached:Z

    .line 346
    iput v1, p0, model:I

    .line 349
    iput-object v2, p0, serialNumber:Ljava/lang/String;

    .line 350
    iput-object v2, p0, smartCoverCookie:[B

    .line 351
    iput-object v2, p0, serialNumber:Ljava/lang/String;

    .line 352
    iput-boolean v1, p0, fakeCover:Z

    .line 353
    return-void
.end method

.method public constructor <init>(III)V
    .registers 6
    .param p1, "defaultType"    # I
    .param p2, "defaultWidthPixel"    # I
    .param p3, "defaultHeightPixel"    # I

    .prologue
    const/4 v1, 0x0

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, switchState:Z

    .line 365
    iput p1, p0, type:I

    .line 366
    iput v1, p0, color:I

    .line 367
    iput p2, p0, widthPixel:I

    .line 368
    iput p3, p0, heightPixel:I

    .line 369
    iput-boolean v1, p0, attached:Z

    .line 370
    iput v1, p0, model:I

    .line 371
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    invoke-direct {p0, p1}, readFromParcel(Landroid/os/Parcel;)V

    .line 442
    return-void
.end method

.method public constructor <init>(ZIIII)V
    .registers 7
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    const/4 v0, 0x0

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    iput-boolean p1, p0, switchState:Z

    .line 384
    iput p2, p0, type:I

    .line 385
    iput p3, p0, color:I

    .line 386
    iput p4, p0, widthPixel:I

    .line 387
    iput p5, p0, heightPixel:I

    .line 388
    iput-boolean v0, p0, attached:Z

    .line 389
    iput v0, p0, model:I

    .line 390
    return-void
.end method

.method public constructor <init>(ZIIIIZ)V
    .registers 8
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-boolean p1, p0, switchState:Z

    .line 403
    iput p2, p0, type:I

    .line 404
    iput p3, p0, color:I

    .line 405
    iput p4, p0, widthPixel:I

    .line 406
    iput p5, p0, heightPixel:I

    .line 407
    iput-boolean p6, p0, attached:Z

    .line 408
    const/4 v0, 0x0

    iput v0, p0, model:I

    .line 409
    return-void
.end method

.method public constructor <init>(ZIIIIZI)V
    .registers 8
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z
    .param p7, "model"    # I

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-boolean p1, p0, switchState:Z

    .line 413
    iput p2, p0, type:I

    .line 414
    iput p3, p0, color:I

    .line 415
    iput p4, p0, widthPixel:I

    .line 416
    iput p5, p0, heightPixel:I

    .line 417
    iput-boolean p6, p0, attached:Z

    .line 418
    iput p7, p0, model:I

    .line 419
    return-void
.end method

.method public constructor <init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V
    .registers 10
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "attached"    # Z
    .param p5, "model"    # I
    .param p6, "installUri"    # Ljava/lang/String;
    .param p7, "vendorData"    # [B
    .param p8, "serialNumber"    # Ljava/lang/String;
    .param p9, "isFake"    # Z

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-boolean p1, p0, switchState:Z

    .line 423
    iput p2, p0, type:I

    .line 424
    iput p3, p0, color:I

    .line 425
    iput-boolean p4, p0, attached:Z

    .line 426
    iput p5, p0, model:I

    .line 428
    iput-object p6, p0, smartCoverAppUri:Ljava/lang/String;

    .line 429
    iput-object p7, p0, smartCoverCookie:[B

    .line 430
    iput-object p8, p0, serialNumber:Ljava/lang/String;

    .line 431
    iput-boolean p9, p0, fakeCover:Z

    .line 432
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 500
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_66

    move v1, v2

    :goto_9
    iput-boolean v1, p0, switchState:Z

    .line 501
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, type:I

    .line 502
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, color:I

    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, widthPixel:I

    .line 504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, heightPixel:I

    .line 505
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_68

    move v1, v2

    :goto_2a
    iput-boolean v1, p0, attached:Z

    .line 506
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, model:I

    .line 507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3e

    .line 508
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, smartCoverAppUri:Ljava/lang/String;

    .line 510
    :cond_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_51

    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 512
    .local v0, "smartCoverCookieLength":I
    new-array v1, v0, [B

    iput-object v1, p0, smartCoverCookie:[B

    .line 513
    iget-object v1, p0, smartCoverCookie:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 516
    .end local v0    # "smartCoverCookieLength":I
    :cond_51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_5d

    .line 517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, serialNumber:Ljava/lang/String;

    .line 519
    :cond_5d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_6a

    :goto_63
    iput-boolean v2, p0, fakeCover:Z

    .line 520
    return-void

    :cond_66
    move v1, v3

    .line 500
    goto :goto_9

    :cond_68
    move v1, v3

    .line 505
    goto :goto_2a

    :cond_6a
    move v2, v3

    .line 519
    goto :goto_63
.end method


# virtual methods
.method public copyFrom(Lcom/samsung/android/cover/CoverState;)V
    .registers 3
    .param p1, "o"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 610
    iget-boolean v0, p1, switchState:Z

    iput-boolean v0, p0, switchState:Z

    .line 611
    iget v0, p1, type:I

    iput v0, p0, type:I

    .line 612
    iget v0, p1, color:I

    iput v0, p0, color:I

    .line 613
    iget v0, p1, widthPixel:I

    iput v0, p0, widthPixel:I

    .line 614
    iget v0, p1, heightPixel:I

    iput v0, p0, heightPixel:I

    .line 615
    iget-boolean v0, p1, attached:Z

    iput-boolean v0, p0, attached:Z

    .line 616
    iget v0, p1, model:I

    iput v0, p0, model:I

    .line 618
    iget-object v0, p1, smartCoverAppUri:Ljava/lang/String;

    iput-object v0, p0, smartCoverAppUri:Ljava/lang/String;

    .line 619
    iget-object v0, p1, smartCoverCookie:[B

    iput-object v0, p0, smartCoverCookie:[B

    .line 620
    iget-boolean v0, p1, fakeCover:Z

    iput-boolean v0, p0, fakeCover:Z

    .line 621
    iget-object v0, p1, serialNumber:Ljava/lang/String;

    iput-object v0, p0, serialNumber:Ljava/lang/String;

    .line 622
    return-void
.end method

.method public describeContents()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachState()Z
    .registers 2

    .prologue
    .line 702
    iget-boolean v0, p0, attached:Z

    return v0
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 662
    iget v0, p0, color:I

    return v0
.end method

.method public getModel()I
    .registers 2

    .prologue
    .line 710
    iget v0, p0, model:I

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 743
    iget-object v0, p0, serialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartCoverAppUri()Ljava/lang/String;
    .registers 2

    .prologue
    .line 727
    iget-object v0, p0, smartCoverAppUri:Ljava/lang/String;

    return-object v0
.end method

.method public getSmartCoverCookie()[B
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, smartCoverCookie:[B

    return-object v0
.end method

.method public getSwitchState()Z
    .registers 2

    .prologue
    .line 634
    iget-boolean v0, p0, switchState:Z

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 648
    iget v0, p0, type:I

    return v0
.end method

.method public getWindowHeight()I
    .registers 2

    .prologue
    .line 688
    iget v0, p0, heightPixel:I

    return v0
.end method

.method public getWindowWidth()I
    .registers 2

    .prologue
    .line 675
    iget v0, p0, widthPixel:I

    return v0
.end method

.method public isFakeCover()Z
    .registers 2

    .prologue
    .line 735
    iget-boolean v0, p0, fakeCover:Z

    return v0
.end method

.method public setAttachState(Z)V
    .registers 2
    .param p1, "attached"    # Z

    .prologue
    .line 706
    iput-boolean p1, p0, attached:Z

    .line 707
    return-void
.end method

.method public setColor(I)V
    .registers 2
    .param p1, "color"    # I

    .prologue
    .line 666
    iput p1, p0, color:I

    .line 667
    return-void
.end method

.method public setFakeCover(Z)V
    .registers 2
    .param p1, "faked"    # Z

    .prologue
    .line 739
    iput-boolean p1, p0, fakeCover:Z

    .line 740
    return-void
.end method

.method public setModel(I)V
    .registers 2
    .param p1, "model"    # I

    .prologue
    .line 714
    iput p1, p0, model:I

    .line 715
    return-void
.end method

.method public setSerialNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 747
    iput-object p1, p0, serialNumber:Ljava/lang/String;

    .line 748
    return-void
.end method

.method public setSmartCoverAppUri(Ljava/lang/String;)V
    .registers 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 731
    iput-object p1, p0, smartCoverAppUri:Ljava/lang/String;

    .line 732
    return-void
.end method

.method public setSmartCoverCookie([B)V
    .registers 2
    .param p1, "extraData"    # [B

    .prologue
    .line 723
    iput-object p1, p0, smartCoverCookie:[B

    .line 724
    return-void
.end method

.method public setSwitchState(Z)V
    .registers 2
    .param p1, "switchState"    # Z

    .prologue
    .line 638
    iput-boolean p1, p0, switchState:Z

    .line 639
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 652
    iput p1, p0, type:I

    .line 653
    return-void
.end method

.method public setWindowHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 692
    iput p1, p0, heightPixel:I

    .line 693
    return-void
.end method

.method public setWindowWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 679
    iput p1, p0, widthPixel:I

    .line 680
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 547
    const-string v0, "CoverState(switchState=%b type=%d color=%d widthPixel=%d heightPixel=%d model=%d attached=%b)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, switchState:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, color:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, widthPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, heightPixel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, model:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-boolean v3, p0, attached:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCoverState(IIII)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I

    .prologue
    .line 555
    iput p1, p0, type:I

    .line 556
    iput p2, p0, color:I

    .line 557
    iput p3, p0, widthPixel:I

    .line 558
    iput p4, p0, heightPixel:I

    .line 559
    return-void
.end method

.method public updateCoverState(IIIII)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "model"    # I

    .prologue
    .line 584
    iput p1, p0, type:I

    .line 585
    iput p2, p0, color:I

    .line 586
    iput p3, p0, widthPixel:I

    .line 587
    iput p4, p0, heightPixel:I

    .line 588
    iput p5, p0, model:I

    .line 589
    return-void
.end method

.method public updateCoverState(IIIIZI)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "color"    # I
    .param p3, "widthPixel"    # I
    .param p4, "heightPixel"    # I
    .param p5, "attached"    # Z
    .param p6, "model"    # I

    .prologue
    .line 594
    iput p1, p0, type:I

    .line 595
    iput p2, p0, color:I

    .line 596
    iput p3, p0, widthPixel:I

    .line 597
    iput p4, p0, heightPixel:I

    .line 598
    iput-boolean p5, p0, attached:Z

    .line 599
    iput p6, p0, model:I

    .line 600
    return-void
.end method

.method public updateCoverState(ZIIII)V
    .registers 6
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I

    .prologue
    .line 564
    iput-boolean p1, p0, switchState:Z

    .line 565
    iput p2, p0, type:I

    .line 566
    iput p3, p0, color:I

    .line 567
    iput p4, p0, widthPixel:I

    .line 568
    iput p5, p0, heightPixel:I

    .line 569
    return-void
.end method

.method public updateCoverState(ZIIIIZ)V
    .registers 7
    .param p1, "switchState"    # Z
    .param p2, "type"    # I
    .param p3, "color"    # I
    .param p4, "widthPixel"    # I
    .param p5, "heightPixel"    # I
    .param p6, "attached"    # Z

    .prologue
    .line 574
    iput-boolean p1, p0, switchState:Z

    .line 575
    iput p2, p0, type:I

    .line 576
    iput p3, p0, color:I

    .line 577
    iput p4, p0, widthPixel:I

    .line 578
    iput p5, p0, heightPixel:I

    .line 579
    iput-boolean p6, p0, attached:Z

    .line 580
    return-void
.end method

.method public updateCoverWindowSize(II)V
    .registers 3
    .param p1, "widthPixel"    # I
    .param p2, "heightPixel"    # I

    .prologue
    .line 604
    iput p1, p0, widthPixel:I

    .line 605
    iput p2, p0, heightPixel:I

    .line 606
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 463
    iget-boolean v0, p0, switchState:Z

    if-eqz v0, :cond_48

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget v0, p0, type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget v0, p0, color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    iget v0, p0, widthPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    iget v0, p0, heightPixel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-boolean v0, p0, attached:Z

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    iget v0, p0, model:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 471
    iget-object v0, p0, smartCoverAppUri:Ljava/lang/String;

    if-nez v0, :cond_4c

    .line 472
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    :goto_32
    iget-object v0, p0, smartCoverCookie:[B

    if-nez v0, :cond_55

    .line 478
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    :goto_39
    iget-object v0, p0, serialNumber:Ljava/lang/String;

    if-nez v0, :cond_64

    .line 485
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    :goto_40
    iget-boolean v0, p0, fakeCover:Z

    if-eqz v0, :cond_6d

    :goto_44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    return-void

    :cond_48
    move v0, v2

    .line 463
    goto :goto_7

    :cond_4a
    move v0, v2

    .line 468
    goto :goto_23

    .line 474
    :cond_4c
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    iget-object v0, p0, smartCoverAppUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_32

    .line 480
    :cond_55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v0, p0, smartCoverCookie:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    iget-object v0, p0, smartCoverCookie:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_39

    .line 487
    :cond_64
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    iget-object v0, p0, serialNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_40

    :cond_6d
    move v1, v2

    .line 490
    goto :goto_44
.end method
